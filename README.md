# MySQL_Project

## Projection : 

* Si Nonna’s – Mumbai’s Sourdough Pizza Haven

Nestled in the vibrant Kamala Mills Compound of Lower Parel, Mumbai, Si Nonna’s – The Original Sourdough Pizza is a contemporary Italian eatery that brings the authentic taste of Neapolitan-style pizzas to the city. Founded by two passionate entrepreneurs, the restaurant is a tribute to traditional Italian culinary heritage, with a modern twist.

* Concept & Menu

At Si Nonna’s, the star of the show is their signature sourdough pizza, crafted from a 500-year-old mother dough passed down through generations in Naples. The dough undergoes a meticulous 24–36 hour fermentation process, resulting in a crust that is both airy and flavorful. The menu features a variety of pizzas, from classic Margherita to inventive options like the Mushroom Truffle and Spicy Paneer. Complementing the pizzas are a selection of appetizers, salads, desserts, and beverages, ensuring a well-rounded dining experience.

## Essentials : 

**MySQL Server Installed**

> Ensure MySQL is installed and running on your system or server.

**Database Management Tool (Optional)**

> Tools like **phpMyAdmin, MySQL Workbench,** or **command line** help manage your database easily.

**PHP Installed**

> Ensure PHP is installed (comes bundled with XAMPP/WAMP) to run ```.php``` files.

**Localhost Environment**

> Run the project locally using tools like **XAMPP** or **WAMP** for testing and development.

**Browser Access**

> Open your browser and navigate to ```http://localhost/your-folder-name``` to view the project output.

# Steps

1. To create the database (if it doesn't already exist):

```
CREATE DATABASE nonnas_restaurant;
```

2. To Use to the _nonnas_restaurant_ database :

```
USE nonnas_restaurant;
```

3. To create the table:

```
CREATE TABLE menu_items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  category VARCHAR(50),
  description TEXT,
  price DECIMAL(10, 2),
  type ENUM('veg', 'non-veg', 'vegan', 'jain') DEFAULT 'veg'
);
```

4. To Insert Values :

```
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
```

## Adding More Data :

**Pizzas**
```
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
```

**Breads**
```
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
```

**Desserts**
```
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
```

**Drinks**
```
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
```

**DIPS & SAUCES**
```
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
```

> Image ref.
![image](https://github.com/user-attachments/assets/b020d16f-55f8-431d-8ed1-379ed8948bac)


# Practice Tasks :

**1. COUNT :** Total Number of Items

```
SELECT COUNT(*) AS total FROM menu_items;
```

> Image ref.
![image](https://github.com/user-attachments/assets/8f8fa893-abaf-403d-8a74-2e09e5e9b699)

**2. MIN :** Cheapest Item

```
SELECT name, price FROM menu_items ORDER BY price ASC LIMIT 1;
```

> Image ref.
![image](https://github.com/user-attachments/assets/475a65b8-7759-4528-b754-817a2ebf63fa)

**3. MAX :** Most Expensive Item

```
SELECT name, price FROM menu_items ORDER BY price DESC LIMIT 1;
```

> Image ref.
![image](https://github.com/user-attachments/assets/ec048e3e-dc28-499b-b388-6aedb5466c5d)

**4. ORDERBY :** Category with the Most Products

```
SELECT category, COUNT(*) AS count
FROM menu_items
GROUP BY category
ORDER BY count DESC
LIMIT 1;
```

> Image ref.
![image](https://github.com/user-attachments/assets/52b8d80b-f59e-40e2-bfb7-c68ccd3a79ee)

**5. GROUPBY :**

```
SELECT 
  category,
  COUNT(*) AS total_items,
  ROUND(AVG(price), 2) AS average_price,
  MAX(price) AS highest_price,
  MIN(price) AS lowest_price
FROM menu_items
GROUP BY category
ORDER BY category;
```

> Image ref.
![image](https://github.com/user-attachments/assets/285f90de-ebdb-488b-9e50-3f3d635acbe8)

**6. WHERE, BETWEEN :**

```
SELECT * FROM menu_items
WHERE price BETWEEN 500 AND 700
  AND (category = 'pizza')
ORDER BY category, name;
```

> Image ref.
![image](https://github.com/user-attachments/assets/e3a1ab0f-fd27-4004-ab55-6e3bf9b515d2)

**7. LIKE :**

```
SELECT * FROM menu_items
WHERE name LIKE 'Calzone'
   OR category LIKE 'Calzone';
```

> Image ref.
![image](https://github.com/user-attachments/assets/3ffc0f65-4885-4117-8c07-84b8af4929a5)

**8. INNER JOIN :**

/Step 1. Create a *categories* table:

```
CREATE TABLE categories (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) UNIQUE,
  type ENUM('veg', 'non-veg', 'vegan', 'jain') NOT NULL
);
```

/Step 2. Insert the *category u want to assign*, in my case its *'Alcohol'* category:

```INSERT INTO categories (name, type) VALUES
('Alcohol', 'vegan');
```
/Step 3. INNER JOIN to get only alcohol items:

```
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
```

> Image ref.
![image](https://github.com/user-attachments/assets/c257c5e4-2890-4c81-ada9-b785b3958e6d)








