# Write your MySQL query statement below
select name, sumamount as balance from
(select trans_id, users.account, name, sum(amount) as sumamount, transacted_on from users, transactions
where users.account = transactions.account
group by account) as tmp
where sumamount > 10000
group by name;