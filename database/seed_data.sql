-- ===============================
-- Тестовые данные для базы ЛР4
-- ===============================

-- Пользователи
INSERT INTO users (username, email, password_hash)
VALUES 
    ('roman', 'roman@example.com', 'hash1'),
    ('alex', 'alex@example.com', 'hash2');

-- Списки покупок
INSERT INTO shopping_lists (user_id, name)
VALUES
    (1, 'Основной список'),
    (1, 'Список для праздника'),
    (2, 'Покупки на неделю');

-- Категории
INSERT INTO categories (name, description)
VALUES
    ('Бакалея', 'Крупы, макароны, мука'),
    ('Молочные', 'Молоко, сыр, йогурт'),
    ('Овощи', 'Свежие овощи'),
    ('Фрукты', 'Свежие фрукты');

-- Товары
INSERT INTO items (list_id, name, quantity, unit, is_purchased)
VALUES
    (1, 'Гречка', 1, 'упаковка', false),
    (1, 'Макароны', 2, 'упаковки', false),
    (1, 'Молоко', 1, 'литр', true),
    (2, 'Сыр', 1, 'шт', false),
    (3, 'Бананы', 6, 'шт', false),
    (3, 'Помидоры', 4, 'шт', false);

-- Связи "товар — категория"
INSERT INTO item_categories (item_id, category_id)
VALUES
    (1, 1), -- гречка → бакалея
    (2, 1), -- макароны → бакалея
    (3, 2), -- молоко → молочные
    (4, 2), -- сыр → молочные
    (5, 4), -- бананы → фрукты
    (6, 3); -- помидоры → овощи
