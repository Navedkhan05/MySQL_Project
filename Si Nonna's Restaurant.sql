-- STEP 1: Create the database for the restaurant
CREATE DATABASE nonnas_restaurant;

-- STEP 2: Use the newly created database
USE nonnas_restaurant;

-- STEP 3: Create a table to store all menu items
CREATE TABLE menu_items (
  id INT AUTO_INCREMENT PRIMARY KEY,       -- Unique ID for each menu item
  name VARCHAR(100),                       -- Name of the dish
  category VARCHAR(50),                    -- Type of item (Pizza, Dessert, Salad, etc.)
  description TEXT,                        -- Description of the dish
  price DECIMAL(10, 2),                    -- Price of the item
  type ENUM('veg', 'non-veg', 'vegan', 'jain') DEFAULT 'veg'  -- Dietary type
);

-- STEP 4: Insert Values
INSERT INTO menu_items (name, category, description, price, type) VALUES
('Mozzarella & Jalapeño Croquettes', 'Fried', 'Lightly seasoned mashed potatoes, jalapeños, mozzarella', 320, 'veg'),
('Chicken, Mozzarella & Pesto Croquettes', 'Fried', 'Mashed potatoes, chicken, fresh basil pesto, mozzarella', 340, 'non-veg'),
('Pesto, Cheese & Tomato Calzone', 'Calzone', 'Sourdough pizza dough, sun-dried tomatoes, ricotta, mozzarella, parmesan, basil, pesto, chilli oil', 270, 'veg'),
('Lamb Calzone', 'Calzone', 'Spiced lamb, pickled cabbage, mozzarella, ricotta, parmesan, basil', 290, 'non-veg'),
('Focaccia al Rosmarino', 'Bites to Start', 'Sourdough dough, sea salt flakes, rosemary, EVOO', 180, 'vegan'),
('Garlic Sourdough', 'Bites to Start', 'Garlic bread with oregano, EVOO', 180, 'vegan'),
('Eggplant Parmigiana', 'Bites to Start', 'Seasoned eggplant, mozzarella, tomatoes, parmesan, basil, EVOO', 350, 'veg'),
('Lamb & Potato', 'Bites to Start', 'Spiced lamb, oven-baked potatoes, mozzarella, tomatoes, parmesan, basil, EVOO', 380, 'non-veg'),
('Chicken & Spinach', 'Bites to Start', 'Slow cooked chicken, spinach, mozzarella, tomatoes, parmesan, basil, chilli oil, EVOO', 380, 'non-veg'),
('Casareccia Salad', 'Salads', 'Arugula, tomatoes, olives, parmesan, sesame seeds, balsamic vinegar, EVOO', 280, 'veg'),
('Contadina Salad', 'Salads', 'Arugula, chicken, cherry tomatoes, buffalo mozzarella, sesame seeds, balsamic vinegar, EVOO', 320, 'non-veg'),
('Nonna’s Cooler', 'Drinks', 'Homemade lemonade', 150, 'vegan'),
('Coca Cola', 'Drinks', 'Regular / Zero', 150, 'vegan'),
('Espresso', 'Coffee', 'Espresso shot', 100, 'vegan'),
('Nonna’s Tiramisu', 'Dessert', 'Mascarpone cream, eggs, biscuit, espresso, rum', 400, 'veg'),
('Hazelnut & Chocolate Dough Balls', 'Dessert', 'Fried dough, hazelnut chocolate sauce', 350, 'veg');

-- Insert More Data --

-- Pizzas
INSERT INTO menu_items (name, category, description, price, type) VALUES
('Margherita', 'Pizza', 'Tomato sauce, mozzarella, basil', 450, 'veg'),
('Quattro Formaggi', 'Pizza', 'Mozzarella, gorgonzola, parmesan, ricotta', 580, 'veg'),
('Pepperoni', 'Pizza', 'Tomato sauce, mozzarella, spicy pepperoni', 590, 'non-veg'),
('BBQ Chicken', 'Pizza', 'Grilled chicken, BBQ sauce, onions, mozzarella', 610, 'non-veg'),
('Spicy Paneer', 'Pizza', 'Paneer tikka, capsicum, onions, green chili', 540, 'veg'),
('Pesto Veggie', 'Pizza', 'Zucchini, bell peppers, pesto base, mozzarella', 520, 'vegan'),
('Burrata Blast', 'Pizza', 'Burrata cheese, cherry tomato, basil', 620, 'veg'),
('Meat Lovers', 'Pizza', 'Chicken, lamb, pepperoni, sausage', 650, 'non-veg'),
('Jain Delight', 'Pizza', 'No onion/garlic, cheese, tomato, corn', 490, 'jain'),
('Mushroom Truffle', 'Pizza', 'Truffle oil, mushrooms, ricotta', 600, 'veg'),
('Tandoori Chicken', 'Pizza', 'Tandoori chicken, onion, capsicum', 590, 'non-veg'),
('Roasted Veggie', 'Pizza', 'Zucchini, peppers, onion, tomato', 500, 'vegan'),
('Spinach & Ricotta', 'Pizza', 'Spinach, garlic, ricotta, mozzarella', 520, 'veg'),
('Pineapple Express', 'Pizza', 'Pineapple, chicken ham, cheese', 580, 'non-veg'),
('Aglio e Olio Pizza', 'Pizza', 'Olive oil, garlic, oregano', 490, 'vegan'),
('Cheese Burst', 'Pizza', 'Stuffed crust with double cheese', 630, 'veg'),
('Italian Sausage', 'Pizza', 'Spicy sausage, caramelized onions, garlic', 610, 'non-veg'),
('Garlic Margherita', 'Pizza', 'Extra garlic on margherita base', 470, 'jain'),
('Veggie Overload', 'Pizza', 'All seasonal vegetables, double cheese', 560, 'veg'),
('Basil Chicken', 'Pizza', 'Chicken, basil, tomato base, mozzarella', 600, 'non-veg');


-- BREADS
INSERT INTO menu_items (name, category, description, price, type) VALUES
('Focaccia Classica', 'Breads', 'Olive oil, rosemary, sea salt', 190, 'vegan'),
('Cheesy Garlic Bread', 'Breads', 'Garlic, mozzarella, parsley', 220, 'veg'),
('Bruschetta Pomodoro', 'Breads', 'Tomatoes, basil, balsamic glaze', 250, 'veg'),
('Herbed Flatbread', 'Breads', 'Fresh herbs, sea salt, EVOO', 200, 'vegan'),
('Stuffed Paneer Bread', 'Breads', 'Spiced paneer stuffing in sourdough', 260, 'veg'),
('Lamb Keema Bread', 'Breads', 'Minced lamb baked inside bread', 280, 'non-veg'),
('Olive & Cheese Bread', 'Breads', 'Black olives, cheese blend', 240, 'veg'),
('Chili Cheese Bread', 'Breads', 'Green chilies, cheddar, oregano', 230, 'veg'),
('Jain Garlic Bread', 'Breads', 'No onion/garlic, herbed butter', 210, 'jain'),
('Truffle Bread', 'Breads', 'Truffle oil, cheese', 300, 'veg');

-- DESSERTS
INSERT INTO menu_items (name, category, description, price, type) VALUES
('Tiramisu', 'Dessert', 'Espresso-soaked biscuits, mascarpone, cocoa', 400, 'veg'),
('Panna Cotta', 'Dessert', 'Vanilla cream, berry compote', 350, 'veg'),
('Nutella Calzone', 'Dessert', 'Mini calzone filled with Nutella', 390, 'veg'),
('Gelato Cup', 'Dessert', 'Italian-style ice cream', 300, 'veg'),
('Molten Chocolate Cake', 'Dessert', 'Lava cake with vanilla gelato', 420, 'veg'),
('Lemon Cheesecake', 'Dessert', 'Zesty lemon curd, cream cheese base', 370, 'veg'),
('Choco Hazelnut Tart', 'Dessert', 'Crunchy base, creamy filling', 360, 'veg'),
('Vegan Chocolate Mousse', 'Dessert', 'Dark chocolate, aquafaba, maple syrup', 350, 'vegan'),
('Jain Fruit Bowl', 'Dessert', 'Seasonal fruits with honey drizzle', 310, 'jain'),
('Almond Biscotti', 'Dessert', 'Italian almond cookies', 290, 'veg');

-- DRINKS
INSERT INTO menu_items (name, category, description, price, type) VALUES
('Espresso', 'Drinks', 'Strong Italian espresso shot', 100, 'vegan'),
('Americano', 'Drinks', 'Espresso + hot water', 120, 'vegan'),
('Cappuccino', 'Drinks', 'Espresso with frothed milk', 140, 'veg'),
('Iced Latte', 'Drinks', 'Cold coffee with milk', 150, 'veg'),
('Limonata', 'Drinks', 'Lemon, soda, mint', 130, 'vegan'),
('Nonna’s Cooler', 'Drinks', 'Lime, basil, sugar', 140, 'vegan'),
('Orange Spritz', 'Drinks', 'Orange juice, fizz', 160, 'vegan'),
('Red Wine', 'Alcohol', 'Italian Chianti glass', 450, 'vegan'),
('White Wine', 'Alcohol', 'Pinot Grigio', 450, 'vegan'),
('Sangria', 'Alcohol', 'Fruit wine cocktail', 480, 'vegan'),
('Beer (Imported)', 'Alcohol', 'Italian craft beer', 300, 'vegan'),
('Negroni', 'Alcohol', 'Gin, vermouth, Campari', 520, 'vegan'),
('Whiskey Shot', 'Alcohol', 'Premium single malt', 350, 'vegan'),
('Gin & Tonic', 'Alcohol', 'Classic cocktail', 400, 'vegan'),
('Mocktail Mix', 'Drinks', 'Blend of seasonal juices', 160, 'vegan');

-- DIPS & SAUCES
INSERT INTO menu_items (name, category, description, price, type) VALUES
('Garlic Mayo', 'Dips', 'Creamy garlic aioli', 40, 'veg'),
('Spicy Marinara', 'Dips', 'Tangy tomato sauce', 40, 'vegan'),
('Pesto Dip', 'Dips', 'Fresh basil pesto', 50, 'veg'),
('Truffle Aioli', 'Dips', 'Garlic mayo with truffle oil', 60, 'veg'),
('Cheese Sauce', 'Dips', 'Melty cheddar sauce', 50, 'veg'),
('Smoky BBQ', 'Dips', 'Sweet & smoky BBQ', 40, 'vegan'),
('Tzatziki', 'Dips', 'Greek yogurt + cucumber', 50, 'veg'),
('Honey Mustard', 'Dips', 'Sweet & tangy', 45, 'veg'),
('Mint Yogurt', 'Dips', 'Cool mint & yogurt', 40, 'veg'),
('Arrabbiata', 'Dips', 'Spicy tomato-chili', 45, 'vegan'),
('Chimichurri', 'Dips', 'Parsley, garlic, vinegar', 50, 'vegan'),
('Olive Tapenade', 'Dips', 'Crushed olives, herbs', 55, 'vegan'),
('Ranch', 'Dips', 'Herbed cream dressing', 45, 'veg'),
('Blue Cheese Dip', 'Dips', 'Bold and creamy', 60, 'veg'),
('Sweet Chili', 'Dips', 'Asian sweet & spicy', 45, 'vegan'),
('Wasabi Mayo', 'Dips', 'Spicy mayo fusion', 50, 'veg'),
('Garlic Butter', 'Dips', 'Melted garlic butter', 40, 'jain'),
('Lemon Aioli', 'Dips', 'Citrus mayo blend', 50, 'veg'),
('Roasted Tomato Salsa', 'Dips', 'Smoky and zesty', 45, 'vegan'),
('Hummus', 'Dips', 'Chickpea tahini dip', 50, 'vegan');



-- To View --

-- 1. COUNT: Get the total number of menu items
SELECT COUNT(*) AS total 
FROM menu_items;
-- This counts all rows in the menu_items table, giving the total number of items.

-- 2. MIN: Find the cheapest item on the menu
SELECT name, price 
FROM menu_items 
ORDER BY price ASC 
LIMIT 1;
-- Orders items by price in ascending order and returns the first one (cheapest).

-- 3. MAX: Find the most expensive item on the menu
SELECT name, price 
FROM menu_items 
ORDER BY price DESC 
LIMIT 1;
-- Orders items by price in descending order and returns the first one (most expensive).

-- 4. ORDERBY: Find the category with the most items
SELECT category, COUNT(*) AS count
FROM menu_items
GROUP BY category
ORDER BY count DESC
LIMIT 1;
-- Groups items by category, counts the number in each group, then orders to find the one with the highest count.

-- 5. GROUPBY: Show item stats for each category
SELECT 
  category,
  COUNT(*) AS total_items,          -- Total items in this category
  ROUND(AVG(price), 2) AS average_price,  -- Average price (rounded to 2 decimal places)
  MAX(price) AS highest_price,      -- Most expensive item in the category
  MIN(price) AS lowest_price        -- Cheapest item in the category
FROM menu_items
GROUP BY category
ORDER BY category;
-- Summarizes item statistics per category.

-- 6. WHERE, BETWEEN: Find pizzas priced between ₹500 and ₹700
SELECT * 
FROM menu_items
WHERE price BETWEEN 500 AND 700
  AND category = 'pizza'
ORDER BY category, name;
-- Filters for pizza items whose price falls in the ₹500–₹700 range.

-- 7. LIKE: Find any item or category exactly matching 'Calzone'
SELECT * 
FROM menu_items
WHERE name LIKE 'Calzone'
   OR category LIKE 'Calzone';
-- Looks for items with the name or category exactly 'Calzone'.
-- Use '%' wildcards if you want partial matches (e.g., LIKE '%Calzone%').

-- 8. INNER JOIN: Show alcohol items by joining with categories table

-- Step 1: Create categories table
CREATE TABLE categories (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) UNIQUE,
  type ENUM('veg', 'non-veg', 'vegan', 'jain') NOT NULL
);
-- This creates a separate table for categories with unique names and type constraints.

-- Step 2: Insert a category record (e.g., Alcohol is considered 'vegan' here)
INSERT INTO categories (name, type) 
VALUES ('Alcohol', 'vegan');
-- Adds the 'Alcohol' category to the categories table with its type.

-- Step 3: Join to show only alcohol menu items
SELECT 
  mi.name, 
  mi.description, 
  mi.price, 
  mi.type
FROM 
  menu_items mi
INNER JOIN 
  categories c 
ON 
  mi.category = c.name
WHERE 
  c.name = 'Alcohol';
-- Joins the menu_items with categories based on matching category names,
-- and filters the result to show only items from the 'Alcohol' category.
