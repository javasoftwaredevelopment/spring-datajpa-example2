
INSERT INTO users(first_name, last_name,email_address) VALUES ('SELCEN', 'İPEK','selcen.ipek@example.com');
INSERT INTO users(first_name, last_name,email_address) VALUES ('MELİH HİLMİ', 'ULUDAĞ','melih.uludag@example.com');
INSERT INTO users(first_name, last_name,email_address) VALUES ('BURCU', 'ATAK ERTEM','burcu.ertem@example.com');
INSERT INTO users(first_name, last_name,email_address) VALUES ('SERKAN', 'ERSERVER','serkan.ersever@example.com');
INSERT INTO users(first_name, last_name,email_address) VALUES ('SERDAR', 'KONUKSEVER','serdar.konuksever@example.com');

INSERT INTO address(active, address, address_type, user_id, created_time) VALUES (true, 'ETİMESGUT/ANKARA', 'HOME', 1, '2024-12-14 15:03:53.000000');
INSERT INTO address(active, address, address_type, user_id, created_time) VALUES (true, 'ETİMESGUT/ANKARA', 'WORK', 2, '2024-12-16 15:03:58.000000');
INSERT INTO address(active, address, address_type, user_id, created_time) VALUES (true, 'ETİMESGUT/ANKARA', 'HOME', 3, '2024-11-01 15:03:56.000000');
INSERT INTO address(active, address, address_type, user_id, created_time) VALUES (false, 'ÇANKAYA/ANKARA', 'WORK', 4, '2024-11-16 15:04:00.000000');
INSERT INTO address(active, address, address_type, user_id, created_time) VALUES (true, 'MAMAK/ANKARA', 'OTHER', 5, '2024-12-16 15:04:02.000000');

INSERT INTO product(product_name, stock, price, available, created_date_time, modified_date_time)
VALUES
    ('Patlamış mısır', 50, 45.50, true, '2025-01-08 10:00:00', '2025-01-08 10:00:00'),
    ('Ülker çikolatalı gofret', 200, 15.75, true, '2025-01-08 10:00:00', '2025-01-08 10:00:00'),
    ('Elma', 150, 5.50, true, '2025-01-08 10:00:00', '2025-01-08 10:00:00'),
    ('Naneli sakız', 30, 3.00, true, '2025-01-08 10:00:00', '2025-01-08 10:00:00'),
    ('Patates cips', 20, 50.00, false, '2025-01-07 12:00:00', '2025-01-08 09:00:00'),
    ('Makarna', 100, 12.50, true, '2025-01-08 11:00:00', '2025-01-08 11:00:00'),
    ('Süt (1 Litre)', 80, 25.00, true, '2025-01-08 12:00:00', '2025-01-08 12:00:00'),
    ('Krem Peynir', 60, 35.75, true, '2025-01-08 13:00:00', '2025-01-08 13:00:00'),
    ('Tam Buğday Ekmeği', 120, 10.00, true, '2025-01-08 14:00:00', '2025-01-08 14:00:00'),
    ( 'Beyaz Peynir (500 gr)', 50, 85.00, true, '2025-01-08 15:00:00', '2025-01-08 15:00:00'),
    ( 'Organik Yumurta (10lu)', 70, 55.00, true, '2025-01-08 16:00:00', '2025-01-08 16:00:00'),
    ('Zeytin (500 gr)', 40, 45.00, false, '2025-01-07 08:00:00', '2025-01-07 12:00:00'),
    ('Salatalık', 90, 6.50, true, '2025-01-08 17:00:00', '2025-01-08 17:00:00'),
    ('Domates', 100, 7.00, true, '2025-01-08 17:30:00', '2025-01-08 17:30:00'),
    ('Paket Çay (1 kg)', 30, 120.00, true, '2025-01-08 18:00:00', '2025-01-08 18:00:00'),
    ('Ceviz (250 gr)', 25, 60.00, true, '2025-01-08 18:30:00', '2025-01-08 18:30:00'),
    ('Badem (250 gr)', 20, 75.00, false, '2025-01-07 10:00:00', '2025-01-07 13:00:00'),
    ('Çikolatalı Kek', 40, 18.50, true, '2025-01-08 19:00:00', '2025-01-08 19:00:00'),
    ('Pizza (Dondurulmuş)', 15, 95.00, true, '2025-01-08 20:00:00', '2025-01-08 20:00:00'),
    ('Dondurma (1 kg)', 10, 125.00, true, '2025-01-08 21:00:00', '2025-01-08 21:00:00');

INSERT INTO public.orders(user_id, order_status, comments, order_date_time, created_date_time, modified_date_time)
VALUES
    (1, 'PREPARING', 'Siparişin hazırlanıyor', '2025-01-09 14:30:00', '2025-01-09 14:30:00', '2025-01-09 14:30:00'),
    (2, 'DELIVERED', 'Sipariş tamamlandı', '2025-01-08 11:00:00', '2025-01-08 11:00:00', '2025-01-08 11:00:00');

INSERT INTO public.order_product (order_id, product_id, quantity, discount)
VALUES
    (1, 2, 3, 10.00),
    (2, 2, 1, 5.00);