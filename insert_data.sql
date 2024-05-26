/*
	@author Tamara
*/
INSERT INTO location 
	(shelf, aisle, floor)
VALUES 
	(1, 1, 0),
    (2, 1, 0),
    (3, 1, 0),
    (4, 1, 0),
    (1, 2, 0),
    (2, 2, 0),
    (3, 2, 0),
    (4, 2, 0),
    (1, 1, 1),
    (2, 1, 1),
    (1, 2, 1),
    (1, 2, 1);
INSERT INTO publisher
	(`name`)
VALUES
	('HarperCollins Publishers'), -- To Kill a Mockingbird, The Chronicles of Narnia
    ('Harper and Brothers'), -- Moby-Dick
    ('Charles Scribner''s Sons'), -- The Great Gatsby
    ('Little, Brown and Company'), -- The Catcher in the Rye
    ('Houghton Mifflin Harcourt'), -- The Hobbit
    ('Doubleday Group'), -- The Da Vinci Code
    ('Alfred A. Knopf'), -- The Road
    ('Editorial Sudamericana'), -- One Hundred Years of Solitude
    ('Bloomsbury'), -- Harry Potter
    ('Hachette Book Group'), -- The Witcher
    ('Scholastic'), -- Goosebumps
    ('Disney Hyperion Books'), -- Percy Jackson and the Olympians
    ('Bantam'), -- A Song of Ice and Fire 
    ('Cambridge: Cambridge University Press'), -- SIGS Reference Library
    ('Pewterschmidt Publishing, LLC'); -- Faster Than The Speed of Love
INSERT INTO series
	(`name`)
VALUES
	('To Kill a Mockingbird'),
    ('The Witcher'),
    ('The Lord of the Rings'),
    ('Harry Potter'),
    ('Robert Langdon'),
    ('Goosebumps'),
    ('Percy Jackson and the Olympians'),
    ('A Song of Ice and Fire'),
    ('The Chronicles of Narnia'),
    ('SIGS Reference Library');
INSERT INTO author
	(`name`)
VALUES
	('Harper Lee'),
    ('Andrzej Sapkowski'),
    ('Herman Melville'),
    ('J. R. R. Tolkien'),
    ('F. Scott Fitzgerald'),
    ('J.K. Rowling'),
    ('J.D. Salinger'),
    ('Dan Brown'),
    ('Cormac McCarthy'),
    ('Gabriel García Márquez'),
    ('R.L. Stine'),
    ('Rick Riordan'),
    ('George R.R. Martin'),
    ('C.S. Lewis'),
    ('Allan Vermeulen'),
    ('Scott W. Ambler'),
    ('Greg Bumgardner'),
    ('Eldon Metz'),
    ('Trevor Misfeldt'),
    ('Jim Shur'),
    ('James J. Odell'),
    ('Brian Griffin');
INSERT INTO category
	(`name`)
VALUES
	('Fiction'),
	('Classics'),
    ('Historical'),
    ('Fantasy'),
    ('Adventure'),
    ('Romance'),
    ('Magic'),
    ('Mystery'),
    ('Thriller'),
    ('Suspense'),
    ('Horror'),
    ('Mythology'),
    ('Computer Science');
INSERT INTO book 
	(ISBN, title, `year`, `description`, pages, `language`, cover_image, publisher_id, ebook_copies, book_copies, location_id)
VALUES
	-- 1
	('9780062315007', 'To Kill a Mockingbird', 1960,
    'The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it. "To Kill A Mockingbird" became both an instant bestseller and a critical success when it was first published in 1960. It went on to win the Pulitzer Prize in 1961 and was later made into an Academy Award-winning film, also a classic. 
    Compassionate, dramatic, and deeply moving, "To Kill A Mockingbird" takes readers to the roots of human behavior - to innocence and experience, kindness and cruelty, love and hatred, humor and pathos. Now with over 18 million copies in print and translated into forty languages, this regional story by a young Alabama woman claims universal appeal. Harper Lee always considered her book to be a simple love story. Today it is regarded as a masterpiece of American literature.', 
    323, 'English', 'to-kill-a-mockingbird=1960.jpg', 1, 0, 3, 1),
    -- 2
    ('9780062409850', 'Go Set a Watchman', 2015,
    'From Harper Lee comes a landmark new novel set two decades after her beloved Pulitzer Prize-winning masterpiece, To Kill a Mockingbird. Maycomb, Alabama. Twenty-six-year-old Jean Louise Finch—"Scout"—returns home from New York City to visit her aging father, Atticus. Set against the backdrop of the civil rights tensions and political turmoil that were transforming the South, Jean Louise''s homecoming turns bittersweet when she learns disturbing truths about her close-knit family, the town and the people dearest to her. Memories from her childhood flood back, and her values and assumptions are thrown into doubt. Featuring many of the iconic characters from To Kill a Mockingbird, 
    Go Set a Watchman perfectly captures a young woman, and a world, in a painful yet necessary transition out of the illusions of the past—a journey that can be guided only by one''s conscience. Written in the mid-1950s, Go Set a Watchman imparts a fuller, richer understanding and appreciation of Harper Lee. Here is an unforgettable novel of wisdom, humanity, passion, humor and effortless precision—a profoundly affecting work of art that is both wonderfully evocative of another era and relevant to our own times. It not only confirms the enduring brilliance of To Kill a Mockingbird, but also serves as its essential companion, adding depth, context and new meaning to an American classic.',
    278, 'English', 'go-set-a-watchman-2015.jpg', 1, 0, 2, 1),
    -- 3
    ('9780316029193', 'Blood of Elves', 1960,
    'For over a century, humans, dwarves, gnomes, and elves have lived together in relative peace. But times have changed, the uneasy peace is over, and now the races are fighting once again. The only good elf, it seems, is a dead elf.
	Geralt of Rivia, the cunning assassin known as The Witcher, has been waiting for the birth of a prophesied child. This child has the power to change the world - for good, or for evil.
	As the threat of war hangs over the land and the child is hunted for her extraordinary powers, it will become Geralt''s responsibility to protect them all - and the Witcher never accepts defeat.
	The Witcher returns in this sequel to The Last Wish, as the inhabitants of his world become embroiled in a state of total war.',
    398, 'English', 'blood-of-elves-1960.jpg', 10, 1, 2, 2),
    -- 4
    ('9780316219136', 'The Time of Contempt', 1995,
    'Geralt is a witcher: guardian of the innocent; protector of those in need; a defender, in dark times, against some of the most frightening creatures of myth and legend. His task, now, is to protect Ciri. A child of prophecy, she will have the power to change the world for good or for ill -- but only if she lives to use it.
    
	A coup threatens the Wizard''s Guild.
	War breaks out across the lands.
	A serious injury leaves Geralt fighting for his life...
	... and Ciri, in whose hands the world''s fate rests, has vanished...',
    331, 'English', 'the-time-of-contempt-1995.jpg', 10, 1, 2, 2),
    -- 5
    ('9780316219181', 'Baptism of Fire', 1996,
    'The Wizards Guild has been shattered by a coup and, in the uproar, Geralt was seriously injured. The Witcher is supposed to be a guardian of the innocent, a protector of those in need, a defender against powerful and dangerous monsters that prey on men in dark times.
	But now that dark times have fallen upon the world, Geralt is helpless until he has recovered from his injuries.
	While war rages across all of the lands, the future of magic is under threat and those sorcerers who survive are determined to protect it. It''s an impossible situation in which to find one girl - Ciri, the heiress to the throne of Cintra, has vanished - until a rumor places her in the Niflgaard court, preparing to marry the Emperor.
    Injured or not, Geralt has a rescue mission on his hands.',
    349, 'English', 'baptism-of-fire-1996.jpg', 10, 1, 1, 2),
    -- 6
    ('9782211304276', 'Moby-Dick or, The Whale', 1851,
    '"It is the horrible texture of a fabric that should be woven of ships'' cables and hawsers. A Polar wind blows through it, and birds of prey hover over it."
	So Melville wrote of his masterpiece, one of the greatest works of imagination in literary history. In part, Moby-Dick is the story of an eerily compelling madman pursuing an unholy war against a creature as vast and dangerous and unknowable as the sea itself. But more than just a novel of adventure, more than an encyclopaedia of whaling lore and legend, the book can be seen as part of its author''s lifelong meditation on America. Written with wonderfully redemptive humour, Moby-Dick is also a profound inquiry into character, faith, and the nature of perception.',
    720, 'English', 'moby-dick-or-the-whale-1851.jpg', 2, 0, 2, 3),
    -- 7
    ('9782267046090', 'Le Hobbit', 1937,
    'Comme tous les hobbits, Bilbo Bessac est un petit être bon vivant qui apprécie sa vie sans histoire à Cul-de-Sac. Un beau jour, Gandalf le magicien toque à sa porte, accompagné de treize nains bourrus. Ces derniers sollicitent son aide afin de récupérer un trésor qui leur a été dérobé des années auparavant. Voici Bilbo entraîné dans un voyage périlleux qui mènera leur petite équipée jusqu''à la Montagne Solitaire et son trésor, gardé par le dangereux dragon Smaug....',
    491, 'French', 'le-hobbit-1937.jpg', 5, 2, 1, 4),
	-- 8
    ('9780008376123', 'The Fellowship of the Ring', 1954,
    'One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them.
	In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell into the hands of Bilbo Baggins, as told in The Hobbit.
	In a sleepy village in the Shire, young Frodo Baggins finds himself faced with an immense task, as his elderly cousin Bilbo entrusts the Ring to his care. Frodo must leave his home and make a perilous journey across Middle-earth to the Cracks of Doom, there to destroy the Ring and foil the Dark Lord in his evil purpose.',
    432, 'English', 'the-fellowship-of-the-ring-1954.jpg', 5, 5, 2, 4),
    -- 9
    ('9780008376130', 'The Two Towers', 1954,
    'One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them.
	Frodo and his Companions of the Ring have been beset by danger during their quest to prevent the Ruling Ring from falling into the hands of the Dark Lord by destroying it in the Cracks of Doom. They have lost the wizard, Gandalf, in a battle in the Mines of Moria. And Boromir, seduced by the power of the Ring, tried to seize it by force. While Frodo and Sam made their escape, the rest of the company was attacked by Orcs. Now they continue the journey alone down the great River Anduin—alone, that is, save for the mysterious creeping figure that follows wherever they go.',
    432, 'English', 'the-fellowship-of-the-ring-1954.jpg', 5, 3, 2, 4),
    -- 10
    ('9798464205475', 'The Great Gatsby', 1925,
    'The Great Gasby is the tragic tale of the pursuit of self-made millionaire Jay Gatsby and the wealthy young woman he loved in his youth, Daisy Buchanan. The book is narrated by Nick Callaway, who recounts the events of his 1922 summer after moving into a home in the fictional West Egg Village on Long Island. There he lives in the riches of Nouveau, across the sea in the prettier village of East Egg, with his cousin Daisy and her brutal and wealthy husband Tom Buchanan. As the summer progresses, Nick is finally invited to a glamorous party hosted by his neighbor Jay Gatsby. At Gatsby''s request, Nick invites Daisy to his house, where she and Gatsby reunite and renew her relationship. Tom soon finds out about the incident and confronts Gatsby at the Plaza Hotel. As the debate escalates, Tom investigates Gatsby''s case and reveals that he made money selling illegal alcohol. Gatsby tries to deny it, but Daisy loses her resolve to break up with her husband and her claims of Gatsby appear hopeless. Gatsby and Daisy get into Gatsby''s car together, with Daisy driving. On the street, she beats Tom''s lover, Myrtle Wilson, to death, but her identity is unknown to Daisy, who only knew Tom was having an affair. A frightened Daisy drives off, but the car is seen by a witness. The next afternoon, Myrtle''s widow, George Wilson, arrives at East Egg, where Tom tells him that it was Gatsby who killed his wife. Wilson goes to Gatsby''s house, where he shoots Gatsby and then himself.',
    180, 'English', 'the-great-gatsby', 3, 0, 1, 5),
    -- 11
    ('9781408855652', 'Harry Potter and the Philosopher''s Stone', 1997,
    '"Turning the envelope over, his hand trembling, Harry saw a purple wax seal bearing a coat of arms; a lion, an eagle, a badger and a snake surrounding a large letter ''H''."
	Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry''s eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter is a wizard, and he has a place at Hogwarts School of Witchcraft and Wizardry. An incredible adventure is about to begin!',
    333, 'English', 'harry-potter-and-the-philosophers-stone-1997.jpg', 9, 5, 2, 6),
    -- 12
    ('9781408845653', 'Harry Potter and the Chamber of Secrets', 1998,
    'Ever since Harry Potter had come home for the summer, the Dursleys had been so mean and hideous that all Harry wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he’s packing his bags, Harry receives a warning from a strange impish creature who says that if Harry returns to Hogwarts, disaster will strike.
	And strike it does. For in Harry’s second year at Hogwarts, fresh torments and horrors arise, including an outrageously stuck-up new professor and a spirit who haunts the girls’ bathroom. But then the real trouble begins – someone is turning Hogwarts students to stone. Could it be Draco Malfoy, a more poisonous rival than ever? Could it possibly be Hagrid, whose mysterious past is finally told? Or could it be the one everyone at Hogwarts most suspects… Harry Potter himself!',
    352, 'English', 'harry-potter-and-the-chamber-of-secrets-1998.jpg', 9, 4, 2, 6),
    -- 13
    ('9780316769174', 'The Catcher in the Rye', 1951,
    'Fleeing the crooks at Pencey Prep, he pinballs around New York City seeking solace in fleeting encounters—shooting the bull with strangers in dive hotels, wandering alone round Central Park, getting beaten up by pimps and cut down by erstwhile girlfriends. The city is beautiful and terrible, in all its neon loneliness and seedy glamour, its mingled sense of possibility and emptiness. Holden passes through it like a ghost, thinking always of his kid sister Phoebe, the only person who really understands him, and his determination to escape the phonies and find a life of true meaning.
	The Catcher in the Rye is an all-time classic in coming-of-age literature- an elegy to teenage alienation, capturing the deeply human need for connection and the bewildering sense of loss as we leave childhood behind.',
    277, 'English', 'the-catcher-in-the-rye-1951.jpg', 4, 0, 1, 7),
    -- 14
    ('9780307277671', 'The Da Vinci Code', 2003,
    'While in Paris on business, Harvard symbologist Robert Langdon receives an urgent late-night phone call: the elderly curator of the Louvre has been murdered inside the museum. Near the body, police have found a baffling cipher. While working to solve the enigmatic riddle, Langdon is stunned to discover it leads to a trail of clues hidden in the works of Da Vinci — clues visible for all to see — yet ingeniously disguised by the painter.
	Langdon joins forces with a gifted French cryptologist, Sophie Neveu, and learns the late curator was involved in the Priory of Sion — an actual secret society whose members included Sir Isaac Newton, Botticelli, Victor Hugo, and Da Vinci, among others.
	In a breathless race through Paris, London, and beyond, Langdon and Neveu match wits with a faceless powerbroker who seems to anticipate their every move. Unless Langdon and Neveu can decipher the labyrinthine puzzle in time, the Priory’s ancient secret — and an explosive historical truth — will be lost forever.',
    480, 'English', 'the-da-vinci-code-2003.jpg', 6, 5, 3, 8),
    -- 15
    ('9781416524793', 'Angels & Demons', 2000,
    'When a world, renowned scientist is found brutally murdered in a Swiss research facility, a Harvard professor, Robert Langdon, is summoned to identify the mysterious symbol seared onto the dead man''s chest. His baffling conclusion: it is the work of the Illuminati, a secret brotherhood presumed extinct for nearly four hundred years - reborn to continue their bitter vendetta against their sworn enemy, the Catholic church.
	In Rome, the college of cardinals assembles to elect a new pope. Yet somewhere within the walls of the Vatican, an unstoppable bomb of terrifying power relentlessly counts down to oblivion. While the minutes tick away, Langdon joins forces with Vittoria Vetra, a beautiful and mysterious Italian scientist, to decipher the labyrinthine trail of ancient symbols that snakes across Rome to the long-forgotten Illuminati lair - a secret refuge wherein lies the only hope for the Vatican.
	But with each revelation comes another twist, another turn in the plot, which leaves Langdon and Vetra reeling and at the mercy of a seemingly invisible enemy...',
    736, 'English', 'angels-demons-2000.jpg', 6, 3, 2, 8),
    -- 16
    ('9782709626309', 'Digital Fortress', 1998,
    'When the National Security Agency''s invincible code-breaking machine encounters a mysterious code it cannot break, the agency calls its head cryptographer, Susan Fletcher, a brilliant and beautiful mathematician. What she uncovers sends shock waves through the corridors of power. The NSA is being held hostage... not by guns or bombs, but by a code so ingeniously complex that if released it would cripple U.S. intelligence.
	Caught in an accelerating tempest of secrecy and lies, Susan Fletcher battles to save the agency she believes in. Betrayed on all sides, she finds herself fighting not only for her country but for her life, and in the end, for the life of the man she loves.',
    510, 'English', 'digital-fortress-2000.jpg', 6, 1, 1, 8),
    -- 17
    ('9780307265432', 'The Road', 2006,
    'A father and his son walk alone through burned America. Nothing moves in the ravaged landscape save the ash on the wind. It is cold enough to crack stones, and when the snow falls it is gray. The sky is dark. Their destination is the coast, although they don’t know what, if anything, awaits them there. They have nothing; just a pistol to defend themselves against the lawless bands that stalk the road, the clothes they are wearing, a cart of scavenged food—and each other.
	The Road is the profoundly moving story of a journey. It boldly imagines a future in which no hope remains, but in which the father and his son, “each the other’s world entire,” are sustained by love. Awesome in the totality of its vision, it is an unflinching meditation on the worst and the best that we are capable of: ultimate destructiveness, desperate tenacity, and the tenderness that keeps two people alive in the face of total devastation.',
    241, 'English', 'the-road-2006.jpg', 7, 0, 1, 9),
    -- 18
    ('9780060883287', 'One Hundred Years of Solitude', 1970,
    'The brilliant, bestselling, landmark novel that tells the story of the Buendia family, and chronicles the irreconcilable conflict between the desire for solitude and the need for love—in rich, imaginative prose that has come to define an entire genre known as "magical realism."',
    417, 'English', 'one-hundred-years-of-solitude-1970.jpg', 8, 0, 2, 10),
    -- 19
    ('9780439568470', 'Welcome to Dead House', 1992,
    'Amanda and Josh think the old house they have just moved into is weird. Spooky. Possibly haunted. And the town of Dark Falls is pretty strange, too. — But their parents don''t believe them. You''ll get used to it, they say. Go out and make some new friends. — So Amanda and Josh do. But these creepy new friends are not exactly what their parents had in mind.
	Because they want to be friends...',
    126, 'English', 'welcome-to-dead-house-1992.jpg', 11,  0, 1, 1),
    -- 20
    ('9780439626293', 'Monster Blood', 1992,
    'Something scary is happening in GOOSEBUMPS HORRORLAND, the all-new, all-terrifying series by R. L. Stine. Just how scary? You''ll never know unless you crack open this classic prequel!
	Evan visits an eerie old toy store and buys a dusty can of Monster Blood. But then he notices something weird about the slimy green ooze. It keeps growing. And growing. And growing.
	And all that growing has given the Monster Blood a monstrous appetite....',
    144, 'English', 'monster-blood-1992.jpg', 11, 0, 2, 1),
    -- 21
    ('9780786838653', 'The Lightning Thief', 2005,
    'Percy Jackson is about to be kicked out of boarding school...again. And that''s the least of his troubles. Lately, mythological monsters and the gods of Mount Olympus seem to be walking straight out of the pages of Percy''s Greek mythology textbook and into his life. And worse, he''s angered a few of them. Zeus'' master lightning bolt has been stolen, and Percy is the prime suspect.
	Now Percy and his friends have just ten days to find and return Zeus'' stolen property and bring peace to a warring Mount Olympus. But to succeed on his quest, Percy will have to do more than catch the true thief: he must come to terms with the father who abandoned him; solve the riddle of the Oracle, which warns him of betrayal by a friend; and unravel a treachery more powerful than the gods themselves.',
    377, 'English', 'the-lightning-thief-2005.jpg', 12, 2, 3, 2),
    -- 22
    ('9780120000319', 'The Sea of Monsters', 2006,
    'After a year spent trying to prevent a catastropic war among the Greek gods, Percy Jackson finds his seventh-grade school year unnervingly quiet. His biggest problem is dealing with his new friend, Tyson--a six-foot-three, mentally challenged homeless kid who follows Percy everywhere, making it hard for Percy to have any "normal" friends.
	But things don''t stay quiet for long. Percy soon discovers there is trouble at Camp Half-Blood: The magical borders which protect Half-Blood Hill have been poisoned by a mysterious enemy, and the only safe haven for demigods is on the verge of being overrun by mythological monsters. To save the camp, Percy needs the help of his best friend, Grover, who has been taken prisoner by the Cyclops Polyphemus on an island somewhere in the Sea of Monsters--the dangerous waters Greek heroes have sailed for millenia--only today, the Sea of Monsters goes by a new name...the Bermuda Triangle.
	Now Percy and his friends--Grover, Annabeth, and Tyson--must retrieve the Golden Fleece from the Island of the Cyclopes by the end of the summer or Camp Half-Blood will be destroyed. But first, Percy will learn a stunning new secret about his family--one that makes him question whether being claimed as Poseidon''s son is an honor or simply a cruel joke.',
    279, 'English', 'the-sea-of-monsters-2006.jpg', 12, 2, 2, 2),
    -- 23
    ('9780553588484', 'A Game of Thrones', 1996,
    'Long ago, in a time forgotten, a preternatural event threw the seasons out of balance. In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the north of Winterfell, sinister forces are massing beyond the kingdom’s protective Wall. To the south, the king’s powers are failing—his most trusted adviser dead under mysterious circumstances and his enemies emerging from the shadows of the throne. At the center of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the frozen land they were born to. Now Lord Eddard Stark is reluctantly summoned to serve as the king’s new Hand, an appointment that threatens to sunder not only his family but the kingdom itself.
	Sweeping from a harsh land of cold to a summertime kingdom of epicurean plenty, A Game of Thrones tells a tale of lords and ladies, soldiers and sorcerers, assassins and bastards, who come together in a time of grim omens. Here an enigmatic band of warriors bear swords of no human metal; a tribe of fierce wildlings carry men off into madness; a cruel young dragon prince barters his sister to win back his throne; a child is lost in the twilight between life and death; and a determined woman undertakes a treacherous journey to protect all she holds dear. Amid plots and counter-plots, tragedy and betrayal, victory and terror, allies and enemies, the fate of the Starks hangs perilously in the balance, as each side endeavors to win that deadliest of conflicts: the game of thrones.',
	835, 'English', 'a-game-of-thrones-1996.jpg', 13, 0, 2, 3),
    -- 24
    ('9780553582024', 'A Feast for Crows', 2005,
    'Crows will fight over a dead man''s flesh, and kill each other for his eyes.
	Bloodthirsty, treacherous and cunning, the Lannisters are in power on the Iron Throne in the name of the boy-king Tommen. The war in the Seven Kingdoms has burned itself out, but in its bitter aftermath new conflicts spark to life.
	The Martells of Dorne and the Starks of Winterfell seek vengeance for their dead. Euron Crow''s Eye, as black a pirate as ever raised a sail, returns from the smoking ruins of Valyria to claim the Iron Isles. From the icy north, where Others threaten the Wall, apprentice Maester Samwell Tarly brings a mysterious babe in arms to the Citadel.
	Against a backdrop of incest and fratricide, alchemy and murder, victory will go to the men and women possessed of the coldest steel and the coldest hearts.',
    1060, 'English', 'a-feast-of-crows-2005.jpg', 13, 0, 1, 3),
    -- 25
    ('0060234814', 'The Lion, the Witch and the Wardrobe', 1950,
    'Narnia… the land beyond the wardrobe door, a secret place frozen in eternal winter, a magical country waiting to be set free.
	Lucy is the first to find the secret of the wardrobe in the professor''s mysterious old house. At first her brothers and sister don''t believe her when she tells of her visit to the land of Narnia. But soon Edmund, then Peter and Susan step through the wardrobe themselves. In Narnia they find a country buried under the evil enchantment of the White Witch. When they meet the Lion Aslan, they realize they''ve been called to a great adventure and bravely join the battle to free Narnia from the Witch''s sinister spell.',
    206, 'English', 'the-lion-the-witch-and-the-wardrobe-1950.jpg', 1, 0, 7, 4),
    -- 26
    ('9780007202300', 'Prince Caspian', 1951,
    'Narnia ... where animals talk ... where trees walk ... where a battle is about to begin.
	A prince denied his rightful throne gathers an army in a desperate attempt to rid his land of a false king. But in the end, it is a battle of honor between two men alone that will decide the fate of an entire world.
	Prince Caspian is the fourth book in C.S. Lewis’s The Chronicles of Narnia, a series that has become part of the canon of classic literature, drawing readers of all ages into a magical land with unforgettable characters for over fifty years. This is a stand-alone novel, but if you would like to see more of Lucy and Edmund’s adventures, read The Voyage of the Dawn Treader, the fifth book in The Chronicles of Narnia.',
    240, 'English', 'prince-caspian-1951.jpg', 1, 0, 2, 4),
    -- 27
    ('9780521777681', 'The Elements of Java™ Style', 2000,
    'The Elements of Java Style, written by renowned author Scott Ambler, Rogue Wave Software Vice President Alan Vermeulen, and a team of programmers from Rogue Wave, is for anyone who writes Java code. While there are many books that explain the syntax and basic use of Java, this book, first published in 2000, explains not just what you can do with the syntax, but what you ought to do. Just as Strunk and White''s The Elements of Style provides rules of usage for the English language, this book provides a set of rules for Java practitioners to follow. While illustrating these rules with parallel examples of correct and incorrect usage, the book provides a collection of standards, conventions, and guidelines for writing solid Java code which will be easy to understand, maintain, and enhance. Anyone who writes Java code or plans to should have this book next to their computer.',
    142, 'English', 'the-elements-of-java-style-2000.jpg',  14, 5, 0, NULL),
    -- 28
    ('9780521648196', 'Advanced Object-Oriented Analysis and Design Using UML', 1998,
    'This 1998 book conveys the essence of object-oriented programming and software building through the Unified Modeling Language (UML). Composed of updated versions of James Odell''s articles from The Journal of Object-Oriented Programming, ROAD, and Object Magazine, it provides concise but in-depth pieces on structural issues, dynamic issues, business rules, object complexity, object aggregation, design templates, and the process of objects.',
    246, 'English', 'advanced-object-oriented-analysis-and-design-using-uml-1998.jpg', 14, 5, 0, NULL),
    -- 29
    (NULL, 'Faster Than The Speed of Love', 2016,
    'When Roger''s father, an elite Air Force Pilot, is shot down by MiGs from a radical Middle Eastern state, no one seems able to get him out of harm''s way. Roger finds Skippy, an Air Force Colonel who is intrigued by the idea of sending in two fighters piloted by himself and Roger to rescue Roger''s father after bombing the MiG base.',
    16, 'English', NULL, 15, 0, 1, 6);
INSERT INTO book_series
	-- (book_id, series_id, book_order)
VALUES
	(1, 1, 1), -- To Kill a Mockingbird
    (2, 1, 2), -- Go Set a Watchman
    (3, 2, 1), -- Blood of Elves
    (4, 2, 2), -- The Time of Contempt
    (5, 2, 3), -- Baptism of Fire
    (7, 3, 0), -- Le Hobbit
    (8, 3, 1), -- The Fellowship of the Ring
    (9, 3, 2), -- The Two Towers
    (11, 4, 1), -- Harry Potter and the Philosopher's stone
    (12, 4, 2), -- Harry Potter and the Chamber of Secrets
    (14, 5, 2), -- The Da Vinci Code
    (15, 5, 1), -- Angel & Demons
    (19, 6, 1), -- Welcome to Dead House
    (20, 6, 3),  -- Monster Blood
    (21, 7, 1), -- The Lightning Thief
    (22, 7, 2), -- The Sea of Monsters
    (23, 8, 1), -- A Game of Thrones
    (24, 8, 4), -- A Feast for Crows
    (25, 9, 1), -- The Lion, the Witch and the Wardrobe
    (26, 9, 2), -- Prince Caspian
    (27, 10, 15), -- The Elements of Java™ Style
    (28, 10, 12); -- Advanced Object-Oriented Analysis and Design Using UML
INSERT INTO book_author
	(book_id, author_id)
VALUES 
	(1, 1), -- To Kill a Mockingbird
    (2, 1), -- Go Set a Watchman
    (3, 2), -- Blood of Elves
    (4, 2), -- The Time of Contempt
    (5, 2), -- Baptism of Fire
    (6, 3), -- Moby-Dick or, The Whale
    (7, 4), -- Le Hobbit
    (8, 4), -- The Fellowship of the Ring
    (9, 4), -- The Two Towers
    (10, 5), -- The Great Gatsby
    (11, 6), -- Harry Potter and the Philosopher's stone
    (12, 6), -- Harry Potter and the Chamber of Secrets
    (13, 7), -- The Catcher in the Rye
    (14, 8), -- The Da Vinci Code
    (15, 8), -- Angels & Demons
    (16, 8), -- Digital Fortress
    (17, 9), -- The Road
    (18, 10), -- One Hundred Years of Solitude
    (19, 11), -- Welcome to Dead House
    (20, 11), -- Monster Blood
    (21, 12), -- The Lightning Thief
    (22, 12), -- The Sea of Monsters
    (23, 13), -- A Game of Thrones
    (24, 13), -- A Feast for Crows
    (25, 14), -- The Lion, the Witch and the Wardrobe
    (26, 14), -- Prince Caspian
    (28, 21), -- Advanced Object-Oriented Analysis and Design Using UML
    (29, 22); -- Faster Than the Speed of Love
INSERT INTO book_author
	-- (book_id, author_id, author_order)
VALUES
	(27, 15, 1), -- The Elements of Java™ Style
    (27, 16, 2),
    (27, 17, 3),
    (27, 18, 4),
    (27, 19, 5),
    (27, 20, 6);
INSERT INTO book_category
	-- (book_id, category_id)
VALUES
	(1, 1), -- To Kill a Mockingbird
    (1, 3),
    (2, 1), -- Go Set a Watcher
    (2, 2),
    (3, 4), -- Blood of Elves
    (3, 5),
    (4, 4), -- The Time of Contempt
    (4, 5),
    (5, 4), -- Baptism of Fire
    (5, 5),
    (6, 1), -- Moby-Dick or, The Whale
    (6, 2),
    (7, 4), -- Le Hobbit
    (7, 1),
    (8, 4), -- The Fellowship of the Ring
    (8, 1),
    (9, 4), -- The Two Towers
    (9, 1),
    (10, 1), -- The Great Gatsby
    (10, 2),
    (11, 4), -- Harry Potter and the Philosopher's stone
    (11, 7),
    (12, 4), -- Harry Potter and the Chamber of Secrets
    (12, 7),
    (13, 2), -- The Catcher in the Rye
    (13, 1),
    (14, 7), -- The Da Vinci Code
    (14, 8),
    (15, 7), -- Angels & Demons
    (15, 8),
    (16, 8), -- Digital Fortress
    (16, 9),
    (17, 1), -- The Road
    (17, 10),
    (18, 1), -- One Hundred Years of Solitude
    (18, 4),
    (19, 1),
    (19, 11), -- Welcome to Dead House
    (20, 1),
    (20, 11), -- Monster Blood
    (21, 4), -- The Lightning Thief
    (21, 12),
    (22, 4), -- The Sea of Monsters
    (22, 12),
    (23, 1), -- A Game of Thrones
    (23, 4),
    (24, 1), -- A Feast for Crows
    (24, 4),
    (25, 1), -- The Lion, the Witch and the Wardrobe
    (25, 2),
    (25, 4),
    (26, 1), -- Prince Caspian
    (26, 2),
    (26, 4),
    (27, 13), -- The Elements of Java™ Style
    (28, 13), -- Advanced Object-Oriented Analysis and Design Using UML
    (29, 1); -- Faster Than the Speed of Love

/*
	@author Iana
*/
INSERT INTO `member` 
    (first_name, last_name, birth_date, phone, email, address, city, postal_code, province, is_student, is_newsletter, registration_date)
VALUES 
    ('John', 'Doe', '1990-05-15', '5145551234', 'johndoe@example.com', '123 Main St', 'Montreal', 'H1A 2B3', 'Quebec', 1, 1, '2024-05-02'),
    ('Jane', 'Smith', '1985-09-20', '5147779876', 'janesmith@example.com', '456 Oak Ave', 'Montreal', 'H7W 3X1', 'Quebec', 0, 0, '2023-08-15'),
    ('John', 'Michaels', '1992-03-10', '4502223333', 'michaeljohnson@example.com', '789 Elm Rd', 'Laval', 'J4H 1Z7', 'Quebec', 1, 1, '2022-11-30'),
    ('Emily', 'Brown', '1988-07-08', '5148882222', 'emilybrown@example.com', '321 Pine Blvd', 'Montreal', 'H9S 2K2', 'Quebec', 0, 1, '2023-04-25'),
    ('David', 'Newman', '1995-01-25', '4509994444', 'davidlee@example.com', '555 Cedar Ln', 'Brossard', 'J4W 1R5', 'Quebec', 1, 0, '2022-09-10'),
    ('Sarah', 'Wilson', '1983-11-30', '5143335555', 'sarahwilson@example.com', '888 Maple St', 'Montreal', 'H9R 1T4', 'Quebec', 0, 1, '2023-12-05'),
    ('Chris', 'Anderson', '1998-04-12', '4506667777', 'chrisanderson@example.com', '777 Birch Rd', 'Montreal', 'J3B 4V2', 'Quebec', 1, 1, '2023-10-20'),
    ('Laura', 'Martinez', '1991-08-18', '5144448888', 'lauramartinez@example.com', '222 Oak Ave', 'Laval', 'J4P 1A6', 'Quebec', 0, 0, '2022-12-15'),
    ('Alex', 'Willis', '1987-06-05', '4507779999', 'alexnguyen@example.com', '999 Pine St', 'Montreal', 'J6J 3S8', 'Quebec', 1, 1, '2023-05-08'),
    ('Julia', 'Garcia', '1994-02-28', '5142223333', 'rachelgarcia@example.com', '333 Elm Blvd', 'Montreal', 'J6A 2T3', 'Quebec', 0, 1, '2022-10-01');
-- employee role='system' needed for ebook checkout
INSERT INTO employee 
	(first_name, last_name, `role`)
VALUES 
    (NULL, NULL, 'system'),
    ('John', 'Dowson', 'Clerk'),
    ('Michael', 'Johnson', 'Librarian'),
    ('Emily', 'Brown', 'Client Services'),
    ('David', 'Lee', 'Librarian'),
    ('Sarah', 'Wilson', 'Clerk'),
    ('Chris', 'Anderson', 'Librarian'),
    ('Laura', 'Baker', 'Library Technician'),
    ('Alex', 'Adams', 'Clerk'),
    ('Rachel', 'Baker', 'Clerk');

/*
	@author Mederick
*/
-- LATE FEES
INSERT INTO late_fees
	(amount_due, payment_date)
VALUES
	(3.00, '2024-03-30'),
	(1.00, '2024-03-26'),
	(0.50, '2024-03-27'),
	(0.50, '2024-03-27'),
	(4.50, '2024-04-10'),
	(0.50, '2024-04-03'),
	(2.00, '2024-04-06'),
	(0.50, '2024-04-04'),
	(8.00, '2024-04-21'),
	(0.50,  NULL);        -- not paid yet
-- CHECKOUT
INSERT INTO checkout
	(book_id, member_id, start_date, end_date, return_date, late_fees_id, employee_id)
VALUES
	( 2, 1, '2024-03-10', '2024-03-24', '2024-03-30', 1,     6), -- late
	(26, 1, '2024-03-10', '2024-03-24', '2024-03-26', 2,     2), -- late
	(25, 2, '2024-03-12', '2024-03-26', '2024-03-27', 3,     2), -- late
	(25, 2, '2024-03-12', '2024-03-26', '2024-03-27', 4,     6), -- late
	(25, 7, '2024-03-18', '2024-04-01', '2024-04-10', 5,    10), -- late
	(25, 4, '2024-03-19', '2024-04-02', '2024-04-03', 6,     6), -- late
	(25, 8, '2024-03-19', '2024-04-02', '2024-04-06', 7,    10), -- late
	(25, 4, '2024-03-20', '2024-04-03', '2024-04-04', 8,     2), -- late
	(25, 1, '2024-03-22', '2024-04-05', '2024-04-21', 9,     2), -- late
	-- time skip
	( 3, 1, '2024-04-12', '2024-04-26', '2024-04-14', NULL,  1), -- ebook
	( 1, 3, '2024-04-15', '2024-04-29', '2024-04-30', 10,    6), -- late
	( 8, 4, '2024-04-15', '2024-04-29', '2024-05-01', NULL,  1), -- ebook
    ( 4,10, '2024-04-19', '2024-05-03',  NULL,		  NULL,  6), -- late, not returned
	(17, 4, '2024-04-20', '2024-05-04', '2024-05-03', NULL,  2), -- on time
	(20, 2, '2024-04-21', '2024-05-05',  NULL,        NULL,  6), -- not due
	( 1, 8, '2024-04-25', '2024-05-09',  NULL,        NULL,  6), -- not due
	( 2, 2, '2024-04-25', '2024-05-09',  NULL,        NULL, 10), -- not due
	( 6, 4, '2024-04-26', '2024-05-10',  NULL,        NULL,  2), -- not due
	(23, 4,  DEFAULT,     '2024-05-17',  NULL,        NULL,  6), -- not due
	(11, 9,  DEFAULT,     '2024-05-17',  NULL,        NULL,  1); -- ebook


/*
	Queries
*/

/*
	Get the books that belong to a series, in the correct order.
    @author Tamara
*/
SELECT 
	id AS book_id, 
    book_order AS '#',
    title, 
    `year`
FROM book
JOIN book_series ON id = book_id
WHERE series_id = 6
ORDER BY 2;
/*
	Get how many available copies of a specific book (book/ebook).
    @author Tamara
*/
SELECT 
	title, 
    `year`, 
    fn_Book_GetAvailable(id, TRUE) AS book_avail,
    fn_Book_GetAvailable(id, FALSE) AS ebook_avail
FROM book WHERE id = 8;
/*
	Checkout a book with different outcomes.
    @author Tamara
*/
-- Checkout denied due to having already another copy on hand.
CALL usp_Checkout_AddBook(20, 2, 6);
-- Checkout denied due to late fees
CALL usp_Checkout_AddBook(29, 3, 6);
-- Checkout denied due to late return still pending
CALL usp_Checkout_AddBook(19, 2, 6);
-- Checkout succesful
CALL usp_Checkout_AddBook(29, 1, 6);
/*
	Return a book and generate late fees if any.
    @author Tamara
*/
CALL usp_Checkout_ReturnBook(29, 1);
/*
	Return a book's location, available quantity, earliest return date.
    @author Tamara
*/
CALL usp_Book_GetStatus(20);
/*
	Return a book location (format: "Floor: -, Aisle: -, Shelf: -").
    @author Tamara
*/
SELECT fn_Location_Format(1) AS location;
/*
	Update the member's phone, email, student status and newsletter subscription.
    @author Tamara
    @author Iana
*/
-- Update the email address for Julia Garcia (id = 10)
CALL usp_Member_UpdateInfo(10, NULL, 'juliagarcia@example.com', NULL, NULL);

/*
	Retrieve all rows of the books with author(s), category(ies), and location details.
    @author Iana
*/
SELECT * FROM BookDisplayData;
/*
	Show quantity of borrowed e-books or printed books during one month.
    @author Iana
*/
SELECT
    SUM(CASE WHEN b.ebook_copies > 0 THEN 1 ELSE 0 END) AS 'eBooks Checked Out',
    SUM(CASE WHEN b.book_copies > 0 THEN 1 ELSE 0 END) AS 'Printed Books Checked Out'
FROM checkout AS c
JOIN book AS b ON c.book_id = b.id
WHERE c.start_date >= DATE_SUB(NOW(), INTERVAL 1 MONTH);
/*
	Get the total number of people subscribed to newsletter.
    @author Iana
*/
SELECT COUNT(*) AS 'Number of members' FROM `member` WHERE is_newsletter=TRUE;
/*
	Which books were most borrowed during 6 months.
    @author Iana
*/
SELECT 	
       b.id, b.title AS 'Title', 
	   GROUP_CONCAT(DISTINCT(a.`name`) ORDER BY ba.author_order ASC SEPARATOR ', ') as 'Author(s)',
       COUNT(*) AS 'No of times borrowed' 
FROM checkout AS ch 
JOIN book AS b ON ch.book_id=b.id 
JOIN book_author AS ba ON b.id = ba.book_id    
JOIN author AS a ON ba.author_id = a.id      
WHERE ch.start_date >= DATE_SUB(NOW(), INTERVAL 6 MONTH)
GROUP BY b.id;
/*
	Getting books by a category.
    @author Iana
*/
SELECT 
	c.`name` as 'Category', 
	b.id,
	b.ISBN, 
	b.title AS 'Title', 
	GROUP_CONCAT(DISTINCT(a.`name`) ORDER BY ba.author_order ASC SEPARATOR ', ') as 'Author(s)',  
	s.`name` AS 'Series',
    fnBookFormat(b.id) AS 'Book Format'
FROM book AS b
JOIN book_author AS ba ON b.id = ba.book_id    
JOIN author AS a ON ba.author_id = a.id  
JOIN book_category AS bc ON b.id = bc.book_id 
JOIN category AS c ON bc.category_id = c.id
JOIN book_series AS bs ON b.id = bs.book_id
JOIN series AS s ON bs.series_id = s.id
WHERE c.name LIKE '%fiction%'
GROUP BY b.id;
/*
	Get the expected end date/return date for a book borrowed by a member.
    @author Iana
*/
SELECT
    id AS checkout_id,
    book_id,
    member_id,
    start_date,
    end_date,
    CASE
        WHEN return_date IS NULL AND end_date IS NOT NULL THEN end_date
        ELSE DATE_ADD(start_date, INTERVAL 14 DAY) 
    END AS expected_return_date
FROM checkout
WHERE book_id = 20 AND member_id=2; 
/*
	Update the member’s address, city, postal code, and province.
    @author Iana
*/
CALL usp_Member_ChangeAddress(3,'114 Boul des Prairies', NULL, 'H7N 2T5', NULL);
/*
	Return a book format total copies (format: "eBooks: x, Printed books: x").
    @author Iana
*/
SELECT fnBookFormat(20) AS 'Book Format';

/*
	Get the count of student and non-student members.
    @author Mederick
    @author Tamara
*/
SELECT IF(is_student = TRUE, 'Student', 'Non-Student') AS type, COUNT(*) AS count
FROM `member`
GROUP BY is_student;
/*
	How many members by year.
    @author Mederick
*/
SELECT YEAR(registration_date) AS years, COUNT(*) AS year_count
FROM `member`
GROUP BY YEAR(registration_date)
ORDER BY years ASC;
/*
	Members with unpaid fees.
    @author Mederick
*/
SELECT `member`.id, `member`.first_name, `member`.last_name, late_fees.amount_due
FROM late_fees
JOIN checkout ON late_fees.id = checkout.late_fees_id
JOIN `member` ON checkout.member_id = `member`.id
WHERE late_fees.payment_date IS NULL;
/*
	Get books by author.
    @author Mederick
*/
SELECT author.`name`, book.title, book.`description`, book.pages, book.`language`, book.id
FROM book
JOIN book_author ON book.id = book_author.book_id
JOIN author ON book_author.author_id = author.id
WHERE author.`name` LIKE '%Tolkien%';
/*
	Get total of fees charged during current year
	@author Mederick
*/
SELECT SUM(late_fees.amount_due) AS yearly_fee_total
FROM late_fees
JOIN checkout ON late_fees.id = checkout.late_fees_id
WHERE YEAR(checkout.end_date) = YEAR(NOW());