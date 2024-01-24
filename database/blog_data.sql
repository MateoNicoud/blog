-- users
INSERT INTO `users` (`id`, `nickname`, `last_name`, `first_name`) VALUES
(1, 'julie', 'Dupont', 'Julie'),
(2, 'tom', 'Martin', 'Tom'),
(3, 'lucie', 'Leroy', 'Lucie'),
(4, 'max', 'Durand', 'Max'),
(5, 'sophie', 'Petit', 'Sophie');

-- posts
INSERT INTO `posts` (`id`, `title`, `content`, `dateFrom`, `dateUntil`, `priority`, `users_id`) VALUES
(1, 'Mon premier article', 'Bonjour, je suis Julie et je viens de créer ce blog. Je vais partager avec vous mes passions, mes voyages et mes astuces.', '2024-01-01', '2024-01-31', 1, 1),
(2, 'Comment bien choisir son appareil photo ?', 'Vous aimez la photographie et vous voulez vous équiper d\'un bon appareil photo ? Voici quelques conseils pour vous aider à faire le bon choix.', '2024-01-15', '2024-02-15', 2, 2),
(3, 'Les meilleurs endroits à visiter en France', 'La France est un pays magnifique, riche en culture, en histoire et en paysages. Voici une sélection des meilleurs endroits à visiter en France, selon moi.', '2024-01-20', '2024-02-20', 3, 3),
(4, 'Comment apprendre à coder facilement ?', 'Vous voulez apprendre à coder, mais vous ne savez pas par où commencer ? Pas de panique, il existe de nombreuses ressources en ligne pour vous initier au code. Voici quelques-unes de mes préférées.', '2024-01-25', '2024-02-25', 4, 4),
(5, 'Mes recettes préférées de gâteaux', 'J\'adore faire des gâteaux, c\'est ma passion. Je vous propose de découvrir mes recettes préférées de gâteaux, faciles à réaliser et délicieuses à déguster.', '2024-01-30', '2024-02-28', 5, 5);

-- categories
INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Voyage'),
(2, 'Photographie'),
(3, 'Code'),
(4, 'Cuisine'),
(5, 'Lifestyle');

-- comments
INSERT INTO `comments` (`id`, `content`, `addTime`, `posts_id`, `users_id`) VALUES
(1, 'Super article, merci pour le partage !', '2024-01-02 10:15:00', 1, 2),
(2, 'Très intéressant, j\'aimerais bien visiter ces endroits !', '2024-01-21 11:20:00', 3, 1),
(3, 'Bravo pour ton blog, il est très sympa !', '2024-01-22 12:25:00', 1, 3),
(4, 'Merci pour ces conseils, je vais essayer de les suivre !', '2024-01-16 13:30:00', 2, 4),
(5, 'Miam, ça a l\'air trop bon !', '2024-01-31 14:35:00', 5, 2);

-- posts_categories
INSERT INTO `posts_categories` (`posts_id`, `categories_id`) VALUES
(1, 5),
(2, 2),
(3, 1),
(4, 3),
(5, 4);

