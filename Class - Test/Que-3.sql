SELECT
    p.sub_id AS post_id,
    count(distinct c.sub_id) AS comment_id
FROM submissions p
JOIN submissions c
    ON c.parent_id = p.sub_id
WHERE p.parent_id IS NULL
group by c.parent_id;
