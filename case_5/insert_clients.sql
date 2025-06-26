INSERT INTO floor (name) VALUES
  ('мужской'),
  ('женский');

INSERT INTO clients (last_name, first_name, middle_name, phone, email, id_floor) VALUES
  ('Сидоров', 'Андрей', 'Николаевич', '89990009999', 'sidorov@mail.ru', 1),
  ('Кузнецова', 'Марина', 'Игоревна', '89995554433', 'kuznetsova@mail.ru', 2);

INSERT INTO employees (last_name, first_name, middle_name, phone, id_floor) VALUES
  ('Петров', 'Петр', 'Сергеевич', '89998887766', 1),
  ('Иванова', 'Анна', 'Викторовна', '89997776655', 2);

INSERT INTO status (name) VALUES
  ('Ожидает'),
  ('Выдан'),
  ('Отменён');

INSERT INTO products (name, description, price) VALUES
  ('Наушники', 'Беспроводные наушники', 2999.99),
  ('Клавиатура', 'Механическая клавиатура', 3890.50),
  ('Мышь', 'Игровая мышка с RGB', 1599.00);

INSERT INTO orders (id_client, order_date) VALUES
  (1, '2025-06-18'),
  (2, '2025-06-19');

INSERT INTO order_items (id_order, id_product, count, id_status) VALUES
  (1, 1, 2, 1), 
  (1, 2, 1, 2),  
  (2, 3, 1, 1);  
