/*
	Drop views, stored procedures, functions, tables
*/
DROP VIEW IF EXISTS BookDisplayData;

DROP PROCEDURE IF EXISTS usp_Checkout_AddBook;
DROP PROCEDURE IF EXISTS usp_Checkout_ReturnBook;
DROP PROCEDURE IF EXISTS usp_Book_GetStatus;
DROP PROCEDURE IF EXISTS usp_Member_UpdateInfo;
DROP PROCEDURE IF EXISTS usp_Member_ChangeAddress;

DROP FUNCTION IF EXISTS fnBookFormat;
DROP FUNCTION IF EXISTS fn_Book_GetAvailable;
DROP FUNCTION IF EXISTS fn_Location_Format;

DROP TABLE IF EXISTS checkout;
DROP TABLE IF EXISTS late_fees;
DROP TABLE IF EXISTS `member`;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS book_series;
DROP TABLE IF EXISTS book_author;
DROP TABLE IF EXISTS book_category;
DROP TABLE IF EXISTS book;
DROP TABLE IF EXISTS series;
DROP TABLE IF EXISTS author;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS location;
DROP TABLE IF EXISTS publisher;

/*
	Create tables
*/

/*
	@author Tamara
*/
CREATE TABLE location (
	id INT PRIMARY KEY AUTO_INCREMENT,
    shelf MEDIUMINT NOT NULL,
    aisle MEDIUMINT,
    floor SMALLINT
);
CREATE TABLE publisher (
	id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) UNIQUE NOT NULL
);
CREATE TABLE series (
	id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) UNIQUE NOT NULL
);
CREATE TABLE author (
	id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) UNIQUE NOT NULL
);
CREATE TABLE category (
	id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) UNIQUE NOT NULL
);
CREATE TABLE book (
	id INT PRIMARY KEY AUTO_INCREMENT,
    ISBN VARCHAR(20),
    title VARCHAR(100) NOT NULL,
    `year` SMALLINT NOT NULL,
    `description` TEXT,
    pages SMALLINT NOT NULL,
    `language` VARCHAR(20) NOT NULL,
    cover_image VARCHAR(200),
    publisher_id INT NOT NULL,
    ebook_copies SMALLINT DEFAULT 0 NOT NULL,
    book_copies TINYINT NOT NULL,
    location_id INT,
    FOREIGN KEY (publisher_id) REFERENCES publisher(id),
    FOREIGN KEY (location_id) REFERENCES location(id)
);
CREATE TABLE book_series (
	book_id INT UNIQUE NOT NULL,
    series_id INT NOT NULL,
    book_order TINYINT NOT NULL,
    PRIMARY KEY (book_id, series_id),
    FOREIGN KEY (book_id) REFERENCES book(id),
    FOREIGN KEY (series_id) REFERENCES series(id)
);
CREATE TABLE book_author (
	book_id INT NOT NULL,
    author_id INT NOT NULL,
    author_order TINYINT DEFAULT NULL,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES book(id),
    FOREIGN KEY (author_id) REFERENCES author(id)
);
CREATE TABLE book_category (
	book_id INT NOT NULL,
    category_id INT NOT NULL,
    PRIMARY KEY (book_id, category_id),
    FOREIGN KEY (book_id) REFERENCES book(id),
    FOREIGN KEY (category_id) REFERENCES category(id)
);

/*
	@author Iana
*/
CREATE TABLE `member` ( 
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birth_date DATE NOT NULL, 
	phone VARCHAR(50) NOT NULL,  
	email VARCHAR(100),    
	address VARCHAR(150) NOT NULL,    
	city VARCHAR(50) NOT NULL,   
	postal_code VARCHAR(20) NOT NULL,   
	province VARCHAR(50) NOT NULL,   
	is_student BOOLEAN DEFAULT FALSE,
	is_newsletter BOOLEAN DEFAULT FALSE,  
	registration_date DATE NOT NULL
);
CREATE TABLE employee ( 
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
	last_name VARCHAR(50),
	`role` VARCHAR(50) NOT NULL  
);

/*
	@author Mederick
*/
CREATE TABLE late_fees (
	id INT PRIMARY KEY AUTO_INCREMENT,
    amount_due DECIMAL(5,2) NOT NULL,
    payment_date DATE
);
CREATE TABLE checkout (
	id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT NOT NULL,
    member_id INT NOT NULL,
    start_date DATE DEFAULT (NOW()) NOT NULL,
    end_date DATE NOT NULL,
    return_date DATE,
    late_fees_id INT,
    employee_id INT NOT NULL,
    FOREIGN KEY (book_id) REFERENCES book(id),
    FOREIGN KEY (member_id) REFERENCES `member`(id),
    FOREIGN KEY (late_fees_id) REFERENCES late_fees(id),
    FOREIGN KEY (employee_id) REFERENCES employee(id)
);

/*
    Functions
    Stored procedures
*/
DELIMITER //

/*
	Get the available number of books/ebooks by book_id.
    @author Tamara
*/
CREATE FUNCTION fn_Book_GetAvailable(arg_book_id INT, arg_is_book BOOLEAN)
RETURNS INT NOT DETERMINISTIC
BEGIN
	DECLARE val_total INT;
    DECLARE val_borrowed INT;
    
    -- Total borrowed book
    IF arg_is_book = TRUE THEN
		SELECT COUNT(*) INTO val_borrowed
		FROM checkout
		WHERE 
			employee_id <> 1 
            AND return_date IS NULL 
            AND book_id = arg_book_id;
        
        SELECT book_copies INTO val_total FROM book
        WHERE id = arg_book_id;
	-- Total borrowed ebook
    ELSE
		SELECT COUNT(*) INTO val_borrowed
		FROM checkout
		WHERE 
			employee_id = 1 
            AND return_date IS NULL 
            AND book_id = arg_book_id;
        
        SELECT ebook_copies INTO val_total FROM book
        WHERE id = arg_book_id;
    END IF;
    
    RETURN val_total - val_borrowed;
END //
/*
	Return a book location (format: "Floor: -, Aisle: -, Shelf: -").
    @author Tamara
*/
CREATE FUNCTION fn_Location_Format(arg_location_id INT)
RETURNS VARCHAR(50) NOT DETERMINISTIC
BEGIN
	DECLARE val_location VARCHAR(50);
	
    SELECT CONCAT_WS(', ',
		CONCAT('Floor: ', COALESCE(floor, '-')),
        CONCAT('Aisle: ', COALESCE(aisle, '-')),
        CONCAT('Shelf: ', COALESCE(shelf, '-')))
    INTO val_location
    FROM location
    WHERE id = arg_location_id;
    
    RETURN val_location;
END //

/*
	Return a book format total copies (format: "eBooks: x, Printed books: x").
    @author Iana
*/
CREATE FUNCTION fnBookFormat(argBookID INT)
RETURNS VARCHAR(50) NOT DETERMINISTIC
BEGIN
	DECLARE bookFormatString VARCHAR(50);
    DECLARE ebook_copies_var INT;    
    DECLARE book_copies_var INT;
    
    SELECT ebook_copies, book_copies INTO ebook_copies_var, book_copies_var FROM book WHERE id=argBookID;
    
    IF ebook_copies_var > 0 AND book_copies_var > 0 THEN
        SET bookFormatString = CONCAT('eBooks: ', ebook_copies_var, ', Printed books: ', book_copies_var);
    ELSEIF ebook_copies_var > 0 THEN
        SET bookFormatString = CONCAT('eBooks: ', ebook_copies_var);
    ELSEIF book_copies_var > 0 THEN
        SET bookFormatString = CONCAT('Printed books: ', book_copies_var);
	ELSE
        SET bookFormatString = 'Unknown format';
    END IF;
    
	RETURN bookFormatString;
END //

/*
	Checkout a physical book if the member doesn't have a late fees, late book or reached the maximum of borrowed books.
	@author Tamara
*/
CREATE PROCEDURE usp_Checkout_AddBook(arg_book_id INT, arg_member_id INT, arg_employee_id INT)
BEGIN
	DECLARE val_book_limit TINYINT DEFAULT 10;
	DECLARE val_book_count TINYINT;
    DECLARE val_has_book TINYINT;
	DECLARE val_fees DECIMAL(5, 2);
    DECLARE val_late_books TINYINT;
    DECLARE error_msg VARCHAR(50);
    
    -- Get the member's currently borrowed books (ignoring ebooks)
    SELECT COUNT(*), SUM(IF(book_id = arg_book_id, 1, 0)) 
	INTO val_book_count, val_has_book
	FROM checkout
	WHERE 
		member_id = arg_member_id 
        AND employee_id <> 1 
        AND return_date IS NULL;
    
    IF val_has_book > 0 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Checkout denied. Book already checked out by this member.';
    ELSEIF val_book_count = val_book_limit THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Checkout denied. Book limit reached.';
	END IF;

    -- Get the member's unpaid late fees
    SELECT SUM(amount_due) INTO val_fees
	FROM checkout
	JOIN late_fees ON late_fees_id = late_fees.id
	WHERE 
		member_id = arg_member_id 
        AND payment_date IS NULL;

    IF val_fees IS NOT NULL THEN
		SET error_msg = CONCAT('Checkout denied. Late fees due: ', val_fees, '$');
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = error_msg;
	END IF;
    
    -- If there's any checkout that are late and not returned
    SELECT SUM(IF(DATEDIFF(CURDATE(), end_date) > 0, 1, 0))
    INTO val_late_books
    FROM checkout
    WHERE 
		member_id = arg_member_id 
		AND return_date IS NULL;
	
    IF val_late_books IS NOT NULL THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Checkout denied. Late book has not been returned.';
	END IF;

	-- Checkout
	INSERT INTO checkout (book_id, member_id, start_date, end_date, employee_id)
	VALUES (arg_book_id, arg_member_id, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 14 DAY), arg_employee_id);

    SELECT * FROM checkout WHERE id = LAST_INSERT_ID();
END //
/*
	Return a physical book and generate late fees.
    @author Tamara
*/
CREATE PROCEDURE usp_Checkout_ReturnBook(arg_book_id INT, arg_member_id INT)
BEGIN
	DECLARE val_today DATE DEFAULT CURDATE();
    DECLARE val_late_days INT DEFAULT 0;
    DECLARE val_fees DECIMAL(5, 2) DEFAULT 0;
    DECLARE val_amount_per DECIMAL(5, 2) DEFAULT 0.50;
	DECLARE val_id INT;
    DECLARE val_end_date DATE;
    DECLARE insert_lfi INT;
    
    -- Get checkout infos
    SELECT id, end_date 
    INTO val_id, val_end_date
    FROM checkout
    WHERE 
		member_id = arg_member_id 
        AND book_id = arg_book_id 
        AND return_date IS NULL;
    
    -- Check if the return was late
    SET val_late_days = DATEDIFF(val_today, val_end_date);
    IF val_late_days > 0 THEN
		SET val_fees = val_amount_per * val_late_days;
		INSERT INTO late_fees (amount_due) VALUES (val_fees);
        SET insert_lfi = LAST_INSERT_ID();
    END IF;

    -- Update the checkout entry with return date and late_fees if any
    UPDATE checkout
    SET return_date = val_today, late_fees_id = insert_lfi
    WHERE id = val_id;
    
    SELECT 
		member_id, 
        book_id, 
        late_fees_id, 
        val_late_days AS days_late,
        val_fees AS amount_due 
	FROM checkout
    WHERE id = val_id;
END //
/*
	Return the book's location, quantity available and the earliest returned date.
    @author Tamara
*/
CREATE PROCEDURE usp_Book_GetStatus(arg_book_id INT)
BEGIN
	SELECT 
		fn_Book_GetAvailable(book.id, TRUE) AS available,
		fn_Location_Format(location.id) AS location,
		(SELECT end_date FROM checkout 
		 WHERE 
		     book_id = book.id 
             AND employee_id <> 1
			 AND return_date IS NULL
			 ORDER BY end_date
		 LIMIT 1) AS earliest_return
	FROM book
    JOIN location ON location_id = location.id
	WHERE book.id = arg_book_id;
END //
/*
	Update the member's phone, email, student status and newsletter subscription.
    @author Tamara
    @author Iana
*/
CREATE PROCEDURE usp_Member_UpdateInfo(arg_member_id INT, arg_phone VARCHAR(50), arg_email VARCHAR(100), arg_is_newsletter BOOLEAN, arg_is_student BOOLEAN)
BEGIN
	UPDATE `member`
    SET
		phone = COALESCE(arg_phone, phone),
        email = COALESCE(arg_email, email),
        is_student = COALESCE(arg_is_student, is_student),
        is_newsletter = COALESCE(arg_is_newsletter, is_newsletter)
    WHERE id = arg_member_id;
    
    SELECT id, first_name, last_name, phone, email, is_student, is_newsletter
    FROM `member` WHERE id = arg_member_id;
END //
/*
	Update the member’s address, city, postal code, and province.
    @author Iana
*/
CREATE PROCEDURE usp_Member_ChangeAddress(arg_member_id INT, arg_adress VARCHAR(150), arg_city VARCHAR(50), arg_postal_code VARCHAR(20), arg_province VARCHAR(50))
BEGIN
	UPDATE `member`
    SET 
		address = COALESCE(arg_adress, address),
        city = COALESCE(arg_city, city),
        postal_code = COALESCE(arg_postal_code, postal_code),
        province = COALESCE(arg_province, province)
	WHERE id = arg_member_id;
	
    SELECT id, first_name, last_name, address, city, postal_code, province    
    FROM `member` WHERE id = arg_member_id;
END //

DELIMITER ;


/*
	Views
*/

/*
	Retrieve all rows of the books with author(s), category(ies), and location details.
    @author Iana
*/
CREATE VIEW BookDisplayData AS 
	SELECT 
		b.id AS book_id,
        b.ISBN, 
        b.title AS 'Title', 
		GROUP_CONCAT(DISTINCT(a.`name`) ORDER BY ba.author_order ASC SEPARATOR ', ') as 'Author(s)',  
        GROUP_CONCAT(DISTINCT(c.`name`) ORDER BY c.`name` ASC SEPARATOR ', ') as 'Category', 
        s.`name` AS 'Series',  
		b.`description` AS 'Description',
		p.`name` AS 'Publisher''s name',
        b.cover_image AS 'Cover image',
		fnBookFormat(b.id) AS 'Book Format',
		b.pages AS 'Number of pages',       
		b.`language` AS 'Language',
        b.`year` AS 'Year',
		fn_Location_Format(b.location_id) AS 'Location'
        
	FROM book AS b
    
    LEFT JOIN book_author AS ba ON b.id = ba.book_id    
    LEFT JOIN author AS a ON ba.author_id = a.id  
    LEFT JOIN book_category AS bc ON b.id = bc.book_id
    LEFT JOIN category AS c ON bc.category_id = c.id
	LEFT JOIN publisher AS p ON b.publisher_id = p.id 
    LEFT JOIN book_series AS bs ON b.id = bs.book_id
    LEFT JOIN series AS s ON bs.series_id = s.id
    
    GROUP BY b.id;   

