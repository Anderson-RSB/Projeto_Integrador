USE ecommerce;

create table category (id integer not null auto_increment, name varchar(255), primary key (id)) engine=MyISAM;
create table harmony (id integer not null auto_increment, image TEXT, nameplate varchar(255), primary key (id)) engine=MyISAM;
create table harmony_product (id_harmony integer not null, id_product integer not null, primary key (id_harmony, id_product)) engine=MyISAM;
create table product (id integer not null auto_increment, description TEXT, image TEXT, price double precision, title varchar(255), primary key (id)) engine=MyISAM;
create table product_category (id_product integer not null, id_category integer not null, primary key (id_product, id_category)) engine=MyISAM;
alter table harmony_product add constraint FKfxcbt2iy96tuj999rgknrc197 foreign key (id_product) references product (id);
alter table harmony_product add constraint FKj58rp9ojjqv6e4ryruj7r1m3j foreign key (id_harmony) references harmony (id);
alter table product_category add constraint FK4y2ucymplqxycf58myn6abcv2 foreign key (id_category) references category (id);
alter table product_category add constraint FKt4sn9fs5ju7d8mcoporlyhfun foreign key (id_product) references product (id);
INSERT INTO category (name) VALUES ('Vinho Tinto');
INSERT INTO category (name) VALUES ('Vinho Branco');
INSERT INTO category (name) VALUES ('Vinho Verde');
INSERT INTO product (title, description, image, price) VALUES ('Caliterra','Tributo Carmenere, Chile','https://images.vivino.com/thumbs/Zd5vi77OT2ivNVvgeQ_cWg_pb_x600.png', 136.00);
INSERT INTO product (title, description, image, price) VALUES ('Codici','Masserie Primitivo di Manduria, Italia','https://images.vivino.com/thumbs/wlfktNoYQiytu9BGATCOOA_pb_x600.png', 162.70);
INSERT INTO product (title, description, image, price) VALUES ('Cordero Con Piel de Lobo','Chardonnay, Argentina','https://images.vivino.com/thumbs/mD3DwyB4RpSFYuXfCQWqUA_pb_x600.png', 52.90);
INSERT INTO product (title, description, image, price) VALUES ('Manikay','Syrah, Australia','https://images.vivino.com/thumbs/vJgjvSB0SpiaxL4wb7lEaw_pb_x600.png', 99.80);
INSERT INTO product (title, description, image, price) VALUES ('Porta 6','Blend, Douro','https://images.vivino.com/thumbs/08Vil51tQWCeQRgCvXcTvw_pb_x600.png', 99.00);
INSERT INTO product (title, description, image, price) VALUES ('Guarda rios','Sao Milon, Portugal','https://images.vivino.com/thumbs/Ng39v1XASnOStMFWu6D0Eg_pb_x600.png', 55.86);
INSERT INTO product (title, description, image, price) VALUES ('Green Company','Verdejo, Espanha','https://images.vivino.com/thumbs/Z43ErVC1QJm71CPKrcnaiw_pb_x600.png', 57.90);
INSERT INTO product (title, description, image, price) VALUES ('Vik','Vina Vik Winery, Chile','https://images.vivino.com/thumbs/nkPhwXDDRA6HM38m2zQejg_pb_x600.png', 998.00);
INSERT INTO product (title, description, image, price) VALUES ('Aveleda','Trajadura, Portugal','https://images.vivino.com/thumbs/I_rfaqsVT3W0TAuDbgnTow_pb_x600.png', 189.99);
INSERT INTO product (title, description, image, price) VALUES ('Casal Garcia','Trajadura, Portugal','https://images.vivino.com/thumbs/muxyF_iZT7GnFBGSwbl_dg_pb_x600.png', 68.99);
INSERT INTO product (title, description, image, price) VALUES ('Gatão','Avesso, Portugal','https://images.vivino.com/thumbs/xXw44FC9RHivZJohyugYnQ_pb_x600.png', 59.49);
INSERT INTO product (title, description, image, price) VALUES ('Lindeza','Blend, Portugal','https://images.vivino.com/thumbs/QAN8rpBJSkG-HpdY6VZXZQ_pb_x600.png', 199.80);
INSERT INTO product (title, description, image, price) VALUES ('Rio Flor Branco','Chardonnay, Portugal','https://images.vivino.com/thumbs/E5r-0AXsQJ-Msxetjn1zHA_pb_x600.png', 99.9);
INSERT INTO product (title, description, image, price) VALUES ('Santa Margherita','Pinot Grigio, Italia, ','https://images.vivino.com/thumbs/W0id9D39TXW_hRUjpEJcPw_pb_x600.png', 71.73);
INSERT INTO product (title, description, image, price) VALUES ('Veuve Clicquot','Pinot Noir, França','https://images.vivino.com/thumbs/s2PDIn8CQm-hAVb8u00QQw_pb_x600.png', 415);
INSERT INTO product (title, description, image, price) VALUES ('Anna Spinato','Prosecco Brut, Italia','https://images.vivino.com/thumbs/OsACuq5PTAixbWjQ2Qwycw_pb_x600.png', 79.90);
INSERT INTO harmony (nameplate, image) VALUES ('Aperitivos e Lanches', 'https://images.vivino.com/backgrounds/foods/thumbs/27_appetizers-snacks_932x810.png');
INSERT INTO harmony (nameplate, image) VALUES ('Aves', 'https://images.vivino.com/backgrounds/foods/thumbs/20_chicken_932x810.png');
INSERT INTO harmony (nameplate, image) VALUES ('Carne de caca (Cervo, Veado)', 'https://images.vivino.com/backgrounds/foods/thumbs/11_venison_932x810.png');
INSERT INTO harmony (nameplate, image) VALUES ('Carne Curada', 'https://images.vivino.com/backgrounds/foods/thumbs/41_curedmeat_932x810.png');
INSERT INTO harmony (nameplate, image) VALUES ('Carne de Vaca', 'https://images.vivino.com/backgrounds/foods/thumbs/4_beef_932x810.png');
INSERT INTO harmony (nameplate, image) VALUES ('Comida Picante', 'https://images.vivino.com/backgrounds/foods/thumbs/15_spicyfood_932x810.png');
INSERT INTO harmony (nameplate, image) VALUES ('Cordeiro', 'https://images.vivino.com/backgrounds/foods/thumbs/8_lamb_932x810.png');
INSERT INTO harmony (nameplate, image) VALUES ('Mariscos', 'https://images.vivino.com/backgrounds/foods/thumbs/13_shellfish_932x810.png');
INSERT INTO harmony (nameplate, image) VALUES ('Massa', 'https://images.vivino.com/backgrounds/foods/thumbs/5_pasta_932x810.png');
INSERT INTO harmony (nameplate, image) VALUES ('Peixes (Salmao, Atum, etc)', 'https://images.vivino.com/backgrounds/foods/thumbs/12_richfish_932x810.png');
INSERT INTO harmony (nameplate, image) VALUES ('Peixes Magros', 'https://images.vivino.com/backgrounds/foods/thumbs/28_leanfish_932x810.png');
INSERT INTO harmony (nameplate, image) VALUES ('Porco', 'https://images.vivino.com/backgrounds/foods/thumbs/10_pork_932x810.png');
INSERT INTO harmony (nameplate, image) VALUES ('Queijo de Cabra', 'https://images.vivino.com/backgrounds/foods/thumbs/39_goatcheese_932x810.png');
INSERT INTO harmony (nameplate, image) VALUES ('Queijos Maduros', 'https://images.vivino.com/backgrounds/foods/thumbs/17_hardcheese_932x810.png');
INSERT INTO harmony (nameplate, image) VALUES ('Queijos suaves', 'https://images.vivino.com/backgrounds/foods/thumbs/35_softcheese_932x810.png');
INSERT INTO harmony (nameplate, image) VALUES ('Sobremesas com Frutas', 'https://images.vivino.com/backgrounds/foods/thumbs/37_fruitydessert_932x810.png');
INSERT INTO harmony (nameplate, image) VALUES ('Vegetariano', 'https://images.vivino.com/backgrounds/foods/thumbs/19_vegetarian_932x810.png');
INSERT INTO harmony (nameplate, image) VALUES ('Vitela', 'https://images.vivino.com/backgrounds/foods/thumbs/9_veal_932x810.png');
INSERT INTO product_category (id_product, id_category) VALUES (1,1);
INSERT INTO product_category (id_product, id_category) VALUES (2,1);
INSERT INTO product_category (id_product, id_category) VALUES (3,2);
INSERT INTO product_category (id_product, id_category) VALUES (4,1);
INSERT INTO product_category (id_product, id_category) VALUES (5,1);
INSERT INTO product_category (id_product, id_category) VALUES (6,3);
INSERT INTO product_category (id_product, id_category) VALUES (7,3);
INSERT INTO product_category (id_product, id_category) VALUES (8,1);
INSERT INTO product_category (id_product, id_category) VALUES (9,3);
INSERT INTO product_category (id_product, id_category) VALUES (10,3);
INSERT INTO product_category (id_product, id_category) VALUES (11,3);
INSERT INTO product_category (id_product, id_category) VALUES (12,3);
INSERT INTO product_category (id_product, id_category) VALUES (13,2);
INSERT INTO product_category (id_product, id_category) VALUES (14,2);
INSERT INTO product_category (id_product, id_category) VALUES (15,2);
INSERT INTO product_category (id_product, id_category) VALUES (16,1);

INSERT INTO harmony_product (id_harmony, id_product) VALUES (2, 1);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (5, 1);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (7, 1);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (9, 1);

INSERT INTO harmony_product (id_harmony, id_product) VALUES (2, 2);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (5, 2);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (7, 2);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (9, 2);

INSERT INTO harmony_product (id_harmony, id_product) VALUES (2, 3);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (10, 3);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (12, 3);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (17, 3);

INSERT INTO harmony_product (id_harmony, id_product) VALUES (2, 4);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (3, 4);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (5, 4);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (7, 4);

INSERT INTO harmony_product (id_harmony, id_product) VALUES (2, 5);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (5, 5);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (9, 5);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (18, 5);

INSERT INTO harmony_product (id_harmony, id_product) VALUES (8, 6);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (9, 6);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (11, 6);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (12, 6);

INSERT INTO harmony_product (id_harmony, id_product) VALUES (1, 7);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (4, 7);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (8, 7);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (17, 7);

INSERT INTO harmony_product (id_harmony, id_product) VALUES (2, 8);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (5, 8);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (9, 8);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (18, 8);

INSERT INTO harmony_product (id_harmony, id_product) VALUES (1, 9);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (8, 9);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (17, 9);

INSERT INTO harmony_product (id_harmony, id_product) VALUES (1, 10);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (8, 10);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (17, 10);

INSERT INTO harmony_product (id_harmony, id_product) VALUES (1, 11);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (8, 11);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (17, 11);

INSERT INTO harmony_product (id_harmony, id_product) VALUES (1, 12);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (8, 12);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (17, 12);

INSERT INTO harmony_product (id_harmony, id_product) VALUES (1, 13);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (4, 13);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (8, 13);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (11, 13);

INSERT INTO harmony_product (id_harmony, id_product) VALUES (1, 14);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (8, 14);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (17, 14);

INSERT INTO harmony_product (id_harmony, id_product) VALUES (8, 15);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (10, 15);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (12, 15);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (15, 15);

INSERT INTO harmony_product (id_harmony, id_product) VALUES (1, 16);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (4, 16);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (8, 16);
INSERT INTO harmony_product (id_harmony, id_product) VALUES (17, 16);