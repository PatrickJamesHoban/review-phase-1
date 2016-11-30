Paste your queries and results in this file
================================================================================
RELEASE 0

SELECT * FROM books

1|Rails 4 Test Prescriptions|1|1
2|Metaprogramming Ruby 2|2|1
3|Programming Ruby 1.9 & 2.0|3|1
4|Pragmatic Programmer|3|2
5|Practical Object Oriented Design in Ruby|4|2
6|The Rails 4 Way|5|2
7|Objective-C Programming|6|3
8|iOS Programming|6|3
9|JavaScript: The Good Parts|7|4
10|JavaScript: The Definitive Guide|8|4
11|Functional JavaScript|9|4
12|Build iOS Games with SpriteKit|10|1
13|Test iOS Apps with UI Automation|10|1
14|Design Patterns in Ruby|11|2
15|Eloquent Ruby|11|2
16|Web Design with HTML & CSS|12|5
17|JavaScript and jQuery|12|5
18|Well-Grounded Rubyist|13|6
19|Essential Algorithms|14|5
20|Introduction to Algorithms|15|7

RELEASE 1
show all the books containing "Ruby" in the title
SELECT * FROM books WHERE title LIKE '%Ruby%';
2|Metaprogramming Ruby 2|2|1
3|Programming Ruby 1.9 & 2.0|3|1
5|Practical Object Oriented Design in Ruby|4|2
14|Design Patterns in Ruby|11|2
15|Eloquent Ruby|11|2
18|Well-Grounded Rubyist|13|6

show the authors with a name starting with "Dav"
SELECT * FROM authors WHERE name Like 'Dav%';
2|Metaprogramming Ruby 2|2|1
3|Programming Ruby 1.9 & 2.0|3|1
5|Practical Object Oriented Design in Ruby|4|2
14|Design Patterns in Ruby|11|2
15|Eloquent Ruby|11|2
18|Well-Grounded Rubyist|13|6
sqlite> SELECT * FROM authors WHERE name Like 'Dav%';
3|Dave Thomas
8|David Flanagan
13|David Black

RELEASE 2
show all the books published by "Addison-Wesley"
SELECT * FROM books JOIN publishers ON books.publisher_id=publishers.id WHERE publishers.name='Addison-Wesley';
4|Pragmatic Programmer|3|2|2|Addison-Wesley
5|Practical Object Oriented Design in Ruby|4|2|2|Addison-Wesley
6|The Rails 4 Way|5|2|2|Addison-Wesley
14|Design Patterns in Ruby|11|2|2|Addison-Wesley
15|Eloquent Ruby|11|2|2|Addison-Wesley

show all the books authored by "Jonathan Penn"
SELECT * FROM books JOIN authors ON books.author_id=authors.id WHERE authors.name='Jonathan Penn';
12|Build iOS Games with SpriteKit|10|1|10|Jonathan Penn
13|Test iOS Apps with UI Automation|10|1|10|Jonathan Penn

show all the publishers where the book title contains "iOS"
SELECT publishers.name FROM publishers JOIN books ON publishers.id=books.publisher_id WHERE books.title LIKE '%iOS%';
Big Nerd Ranch
Pragmatic Programmers
Pragmatic Programmers

show all the publishers for the author "Sandi Metz"
SELECT * FROM publishers JOIN books ON publishers.id=books.publisher_id JOIN authors ON books.author_id=authors.id WHERE authors.name='Sandi Metz';
2|Addison-Wesley|5|Practical Object Oriented Design in Ruby|4|2|4|Sandi Metz

RELEASE 3
add a new author to the authors table
INSERT INTO authors(name) VALUES('Patrick Hoban');

add a new publisher to the publishers table
INSERT INTO publishers(name) VALUES('Patrick Clearing House');

add a new book to the books table with the new author and publisher you created in release 3
INSERT INTO books(title,author_id,publisher_id) VALUES('Pats Code World', (SELECT authors.id FROM authors WHERE name='Patrick Hoban'), (SELECT id FROM publishers WHERE name='Patrick Clearing House'));
22|Pats Code World|16|8

RELEASE 4
update the author named "David Black" to "David A. Black"
UPDATE authors SET name='David A. Black' WHERE name='David Black';
1|Noel Rappin
2|Paolo Perrotta
3|Dave Thomas
4|Sandi Metz
5|Obie Fernandez
6|Aaron Hillegass
7|Douglas Crockford
8|David Flanagan
9|Michael Fogus
10|Jonathan Penn
11|Russ Olsen
12|Jon Duckett
13|David A. Black
14|Rod Stephens
15|Thomas Corman
16|Patrick Hoban

RELEASE 5
Delete the book created in Release 3
DELETE FROM books WHERE title='Pats Code World';

Delete the author created in Release 3
DELETE FROM authors WHERE name='Patrick Hoban';

Delete the publisher created in Release 3
DELETE FROM publishers WHERE name='Patrick Clearing House';

SELECT authors.name, books.title, publishers.name FROM authors, books, publishers WHERE authors.id=books.author_id AND books.publisher_id=publishers.id;
Noel Rappin|Rails 4 Test Prescriptions|Pragmatic Programmers
Paolo Perrotta|Metaprogramming Ruby 2|Pragmatic Programmers
Dave Thomas|Programming Ruby 1.9 & 2.0|Pragmatic Programmers
Dave Thomas|Pragmatic Programmer|Addison-Wesley
Sandi Metz|Practical Object Oriented Design in Ruby|Addison-Wesley
Obie Fernandez|The Rails 4 Way|Addison-Wesley
Aaron Hillegass|Objective-C Programming|Big Nerd Ranch
Aaron Hillegass|iOS Programming|Big Nerd Ranch
Douglas Crockford|JavaScript: The Good Parts|O'Reilly
David Flanagan|JavaScript: The Definitive Guide|O'Reilly
Michael Fogus|Functional JavaScript|O'Reilly
Jonathan Penn|Build iOS Games with SpriteKit|Pragmatic Programmers
Jonathan Penn|Test iOS Apps with UI Automation|Pragmatic Programmers
Russ Olsen|Design Patterns in Ruby|Addison-Wesley
Russ Olsen|Eloquent Ruby|Addison-Wesley
Jon Duckett|Web Design with HTML & CSS|Wiley
Jon Duckett|JavaScript and jQuery|Wiley
David A. Black|Well-Grounded Rubyist|Manning Publications
Rod Stephens|Essential Algorithms|Wiley
Thomas Corman|Introduction to Algorithms|MIT Press

