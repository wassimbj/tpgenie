CREATE TABLE IF NOT EXISTS `products` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `title` varchar(256) NOT NULL,
   `description` text NOT NULL,
   `image` text NOT NULL,
   `price` decimal(10, 2) NOT NULL,
   `category_id` int(11) NOT NULL,
   `created` datetime DEFAULT CURRENT_TIMESTAMP,
   `modified` timestamp DEFAULT CURRENT_TIMESTAMP,
   primary key (id)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `categories` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `name` varchar(256) NOT NULL,
   primary key (id)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `users` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `name` varchar(256) NOT NULL,
   `phone` varchar(255) NOT NULL,
   `address` varchar(255) NOT NULL,
   `name` varchar(100) NOT NULL,
   `password` varchar(100) NOT NULL,
   primary key (id)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `orders` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `product_id` varchar(256) NOT NULL,
   `qty` int(3) NOT NULL,
   `user_id` int(11) NOT NULL,
   primary key (id)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

INSERT INTO
   categories(name)
VALUES
   -- ID = 1
   ("informatique"),
   -- ID = 2
   ("electronique"),
   -- ID = 3
   ("Telephone & Tablette"),
   -- ID = 4
   ("Maison & Bureau"),
   -- ID = 5
   ("Mode");

INSERT INTO
   products(title, description, image, price, category_id)
VALUES
   (
      'TCL Téléviseur QLED 50" UHD 4K Android Smart - Garantie 2 Ans',
      'Avec quatre fois la résolution de la tv UHD intégrale, vous ne regardez pas simplement la QLED tv, vous faites partie de chaque moment. C’est clair, le futur du divertissement à domicile est ici.Les télés  QLED de TCL vous permettent de voir la télé d’une toute nouvelle façon.Obtenez une résolution étonnante de 4k sur un écran ULTRA HD ',
      'https://tn.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/94/3224/1.jpg?3767',
      1929,
      2
   ),
   (
      'Infinix Smart 6 - 6.6" - 2 Go - 32 Go - Light Sea Green - Garantie 1 an',
      'Ecran : 6.6" IPS ; Résolution :  720 x 1600 pixels, Mémoire RAM : 2 Go - Stockage: 32 Go , Appareil photo Arrière : 8 MP, Camera Selfie : 5 MP, Processeur : Octa-core 1.6GHz ; Chipset : Mediatek Helio A35, Capacité Batterie : 5000 , Système d’exploitation: Android 11 Garantie: 1 an ',
      'https://tn.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/59/5574/1.jpg?3865',
      359,
      3
   ),
   (
      'Sweat à capuche Unisexe - Noir',
      'Sweat à Capuche pour Homme à manches longues avec une pochette en avant, Un Sweat à Capuche de Coupe ample pour se sentir chaque jour plus à l’aise , il se porte  avec un jeans, un Jogging ou bien un short.!De plus c’est un look streetweartendance Simple, confortable et élégant. Matière de fabrication: Coton molleton doux. Composition : 65% coton, 35% polyester.Made inTunisia',
      'https://tn.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/11/9203/1.jpg?1269',
      34.90,
      4
   );
