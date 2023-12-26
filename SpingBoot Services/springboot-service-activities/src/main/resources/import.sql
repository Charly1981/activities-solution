-- PAYMENTS
INSERT INTO activities (user_id, activity_id, activity_type, data_json, create_at) VALUES (113411,'8c051207aadd416d8e7e094971e395c0', 'PAYMENT', '{"payment_id": "8c051207aadd416d8e7e094971e395c0", "card_id": 12341234, "user_id": 113411, "payment_amount": 10, "payment_currency": "EUR", "status": "COMPLETED", "created_at": "2023-12-14 13:37:31", "merchant_name": "TFL*LONDON", "merchant_id": 12309, "mcc_code": 7399}',NOW()-1);
INSERT INTO activities (user_id, activity_id, activity_type, data_json, create_at) VALUES (113411,'8c051307aadd416d8e7e094971e395c1', 'PAYMENT', '{"payment_id": "8c051307aadd416d8e7e094971e395c1", "card_id": 12341234, "user_id": 113411, "payment_amount": 11, "payment_currency": "EUR", "status": "COMPLETED", "created_at": "2023-12-14 18:37:31", "merchant_name": "TFL*LONDON", "merchant_id": 12303, "mcc_code": 7399}',NOW()-2);
INSERT INTO activities (user_id, activity_id, activity_type, data_json, create_at) VALUES (113411,'8c051407aadd416d8e7e094971e395c2', 'PAYMENT', '{"payment_id": "8c051407aadd416d8e7e094971e395c2", "card_id": 12341234, "user_id": 113411, "payment_amount": 800, "payment_currency": "EUR", "status": "COMPLETED", "created_at": "2023-12-14 21:37:31", "merchant_name": "TFL*LONDON", "merchant_id": 12305, "mcc_code": 7399}',NOW()-3);
INSERT INTO activities (user_id, activity_id, activity_type, data_json, create_at) VALUES (113411,'8c051507aadd416d8e7e094971e395c3', 'PAYMENT', '{"payment_id": "8c051507aadd416d8e7e094971e395c3", "card_id": 12341234, "user_id": 113411, "payment_amount": 25, "payment_currency": "EUR", "status": "COMPLETED", "created_at": "2023-12-14 23:37:31", "merchant_name": "TFL*LONDON", "merchant_id": 12303, "mcc_code": 7399}',NOW()-4);

INSERT INTO activities (user_id, activity_id, activity_type, data_json, create_at) VALUES (222222,'8c051767aadd416d8e7e094971e395c2', 'PAYMENT', '{"payment_id": "8c051767aadd416d8e7e094971e395c2", "card_id": 999999, "user_id": 222222, "payment_amount": 500, "payment_currency": "EUR", "status": "COMPLETED", "created_at": "2023-12-14 21:37:31", "merchant_name": "TFL*LONDON", "merchant_id": 12305, "mcc_code": 7399}',NOW());
INSERT INTO activities (user_id, activity_id, activity_type, data_json, create_at) VALUES (222222,'8c051707aadd416d8e7e094971e395c3', 'PAYMENT', '{"payment_id": "8c051707aadd416d8e7e094971e395c3", "card_id": 999999, "user_id": 222222, "payment_amount": 25, "payment_currency": "EUR", "status": "COMPLETED", "created_at": "2023-12-14 23:37:31", "merchant_name": "TFL*LONDON", "merchant_id": 12303, "mcc_code": 7399}',NOW());

INSERT INTO activities (user_id, activity_id, activity_type, data_json, create_at) VALUES (333333,'8c05176743add416d8ee094971e395c2', 'PAYMENT', '{"payment_id": "8c05176743add416d8ee094971e395c2", "card_id": 999999, "user_id": 333333, "payment_amount": 500, "payment_currency": "EUR", "status": "COMPLETED", "created_at": "2023-12-14 21:37:31", "merchant_name": "TFL*LONDON", "merchant_id": 12305, "mcc_code": 7399}',NOW());
INSERT INTO activities (user_id, activity_id, activity_type, data_json, create_at) VALUES (333333,'8c05170744dd416d8e73094971e395c3', 'PAYMENT', '{"payment_id": "8c05170744dd416d8e73094971e395c3", "card_id": 999999, "user_id": 333333, "payment_amount": 25, "payment_currency": "EUR", "status": "COMPLETED", "created_at": "2023-12-14 23:37:31", "merchant_name": "TFL*LONDON", "merchant_id": 12303, "mcc_code": 7399}',NOW());

-- DEPOSIT
INSERT INTO activities (user_id, activity_id, activity_type, data_json, create_at) VALUES (113411,'071d5008f9d74c72a963d77d2b9a0107', 'DEPOSIT', '{"deposit_id": "071d5008f9d74c72a963d77d2b9a0107","user_id": 113411,"deposit_amount": 12.99,"deposit_currency": "GBP","status": "PENDING","created_at": "2023-12-02 13:54:30","expires_at": "2023-12-04 13:54:30","payment_method_code": "BANK_TRANSFER"}',NOW()-5);
INSERT INTO activities (user_id, activity_id, activity_type, data_json, create_at) VALUES (113411,'071d5006f9d74c72a963d77d2b9a0108', 'DEPOSIT', '{"deposit_id": "071d5006f9d74c72a963d77d2b9a0108","user_id": 113411,"deposit_amount": 13.99,"deposit_currency": "GBP","status": "PENDING","created_at": "2023-12-02 13:54:30","expires_at": "2023-12-04 13:54:30","payment_method_code": "BANK_TRANSFER"}',NOW()-80);

-- TRANSFER
INSERT INTO activities (user_id, activity_id, activity_type, data_json, create_at) VALUES (44444,'071d500b59d74c72a963d77d2b9a0107', 'TRANSFER', '{"deposit_id": "071d200b59d74c72a963d77d2b9a0107","user_id": 44444,"deposit_amount": 12.99,"deposit_currency": "GBP","status": "PENDING","created_at": "2023-12-02 13:54:30","expires_at": "2023-12-04 13:54:30","payment_method_code": "BANK_TRANSFER"}',NOW()-2);
INSERT INTO activities (user_id, activity_id, activity_type, data_json, create_at) VALUES (44444,'071d500459d74c72a963d77d2b9a0202', 'TRANSFER', '{"deposit_id": "071d400459d74c72a963d77d2b9a0202","user_id": 44444,"deposit_amount": 12.99,"deposit_currency": "GBP","status": "PENDING","created_at": "2023-12-02 13:54:30","expires_at": "2023-12-04 13:54:30","payment_method_code": "BANK_TRANSFER"}',NOW()-5);
INSERT INTO activities (user_id, activity_id, activity_type, data_json, create_at) VALUES (7777,'071d500b59d74c72a9463d77d2b9a0107', 'TRANSFER', '{"deposit_id": "071d550b59d74c72a963d77d2b9a0107","user_id": 7777,"deposit_amount": 12.99,"deposit_currency": "GBP","status": "PENDING","created_at": "2023-12-02 13:54:30","expires_at": "2023-12-04 13:54:30","payment_method_code": "BANK_TRANSFER"}',NOW()-2);
INSERT INTO activities (user_id, activity_id, activity_type, data_json, create_at) VALUES (7777,'071d500459d74c72a9633d77d2b9a0202', 'TRANSFER', '{"deposit_id": "071d570459d74c72a963d77d2b9a0202","user_id": 7777,"deposit_amount": 12.99,"deposit_currency": "GBP","status": "PENDING","created_at": "2023-12-02 13:54:30","expires_at": "2023-12-04 13:54:30","payment_method_code": "BANK_TRANSFER"}',NOW()-5);
