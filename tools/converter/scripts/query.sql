SELECT
    menus.id,
    menus.name,
    categories.name AS category,
    menus.image_path
FROM
    menus
    JOIN categories on categories.id == menus.category_id
ORDER BY
    menus.id ASC;