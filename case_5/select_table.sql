SELECT orders.id_order, clients.last_name, products.name, order_items.count, status.name
FROM order_items
JOIN orders ON order_items.id_order = orders.id_order
JOIN clients ON orders.id_client = clients.id_client
JOIN products ON order_items.id_product = products.id_product
JOIN status ON order_items.id_status = status.id_status;
