--JOIN products + productcard

-- SELECT
--   p.name,
--   pr.*
-- FROM
--   productcard AS pr
-- LEFT JOIN
--   products AS p
-- ON
--   p.id = pr.product_id ;
  


-- JOIN cart and  product+users

SELECT
  products.name as product_name,
  products.pieces,
  products.cost ,
  products.currency ,
  products.description ,
  users.id as user_id ,
  users.email ,
  users.phone ,
  c.id as cart_id,
  c.product_id
FROM
  cart AS c
join users on users.id = c.user_id
join products on products.id =c.product_id;



