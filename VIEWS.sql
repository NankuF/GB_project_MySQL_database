-- VIEWS

-- drop view paiduser 

-- CREATE VIEW Paiduser
--            AS SELECT u.id ,u.firstname ,u.lastname, u.email, p.answerpayment_id , pr.cost
--            FROM users u, paidproduct p, products pr
--            WHERE p.answerpayment_id =1;
        

-- drop view users_age_marketing 
CREATE VIEW users_age_marketing
           AS SELECT u.id as user_id, u.phone , u.email , pr.age 
           FROM users u, profiles pr
           where pr.user_id =u.id;
        

          
