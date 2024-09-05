SELECT
    menus.id,
    menus.name,
    categories.name AS category,
    menus.image_path,
    menus.calories,
    menus.salt,
    menus.is_drink,
    menus.is_alcohol
FROM
    menus
    JOIN categories on categories.id == menus.category_id
ORDER BY
    menus.id ASC;