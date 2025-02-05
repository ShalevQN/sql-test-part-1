DROP TABLE IF EXISTS televisions;

CREATE TABLE televisions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    number_catalog TEXT NOT NULL UNIQUE,
    brand TEXT NOT NULL,
    model TEXT NOT NULL,
    size_screen INTEGER NOT NULL,
    resolution TEXT NOT NULL CHECK (resolution IN ('4K', '8K', 'Full HD')),
    price REAL NOT NULL,
    quantity_stock INTEGER NOT NULL,
    year_release INTEGER NOT NULL,
    tv_smart BOOLEAN NOT NULL,
    os TEXT DEFAULT NULL,
    panel_type TEXT NOT NULL CHECK (panel_type IN ('OLED', 'QLED', 'LED')),
	CHECK (tv_smart = 0 OR os IS NOT NULL)
	CHECK (tv_smart = 1 OR os IS NULL));

INSERT INTO televisions (number_catalog, brand, model, size_screen, resolution, price, quantity_stock, year_release, tv_smart, os, panel_type)
VALUES ('TV-A', 'Viewsonic', 'VX2705', 55, '4K', 1005, 10, 2021, 0, NULL, 'QLED');

INSERT INTO televisions (number_catalog, brand, model, size_screen, resolution, price, quantity_stock, year_release, tv_smart, os, panel_type)
VALUES ('TV-B', 'AOC', 'XR103', 65, '8K', 2500.5, 5, 2020, 0, NULL, 'OLED');

INSERT INTO televisions (number_catalog, brand, model, size_screen, resolution, price, quantity_stock, year_release, tv_smart, os, panel_type)
VALUES ('TV-C', 'Samsung', 'V125d', 75, 'Full HD', 3500.34, 7, 2022, 1, 'Android', 'LED');
