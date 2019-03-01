SELECT client.name as client, product.title
FROM client
LEFT JOIN `order` ON order.id_client = client.id
LEFT JOIN order_details ON order_details.id_order = order.id 
LEFT JOIN  product ON order_details.id_product = product.id
GROUP BY client, title
ORDER BY client;