INSERT INTO public.person (id, name, phone, email, version) VALUES (1, 'John', '0412 345 678', 'john@test.com', 0);
INSERT INTO public.person (id, name, phone, email, version) VALUES (2, 'Fred', '0434 567 890', 'fred@test.com', 0);
INSERT INTO public.person (id, name, phone, email, version) VALUES (3, 'Jane', '0401 234 567', 'jane@test.com', 0);
INSERT INTO public.person (id, name, phone, email, version) VALUES (4, 'Kim', '0423 456 789', 'kim@test.com', 0);

INSERT INTO public.book (id, title, author, isbn, version) VALUES (1, 'Go Set a Watchman', 'Harper Lee', '9781785150289', 0);
INSERT INTO public.book (id, title, author, isbn, version) VALUES (2, 'Aussie Grit', 'Mark Webber', '3249537453457', 0);
INSERT INTO public.book (id, title, author, isbn, version) VALUES (3, 'Enchanted Forest', 'Johanna Basford', '9457345344443', 0);
INSERT INTO public.book (id, title, author, isbn, version) VALUES (4, 'Slow Cooker Central', 'Paulene Christie', '8436545634555', 0);
INSERT INTO public.book (id, title, author, isbn, version) VALUES (5, 'The Goldfinch', 'Donna Tartt', '4385763456332', 0);


INSERT INTO public.loan (id, personId, bookId, version) VALUES (1,1,4,0);
INSERT INTO public.loan (id, personId, bookId, version) VALUES (2,2,1,0);
INSERT INTO public.loan (id, personId, bookId, version) VALUES (3,3,2,0);
INSERT INTO public.loan (id, personId, bookId, version) VALUES (4,4,3,0);
INSERT INTO public.loan (id, personId, bookId, version) VALUES (5,1,5,0);