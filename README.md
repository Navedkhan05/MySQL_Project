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
(.....);
```

## Adding More Data :

**Pizzas**
```
INSERT INTO menu_items (name, category, description, price, type) VALUES
('Margherita', 'Pizza', 'Tomato sauce, mozzarella, basil', 450, 'veg'),
('Quattro Formaggi', 'Pizza', 'Mozzarella, gorgonzola, parmesan, ricotta', 580, 'veg'),
('Pepperoni', 'Pizza', 'Tomato sauce, mozzarella, spicy pepperoni', 590, 'non-veg'),
(.....);
```

**Breads**
```
INSERT INTO menu_items (name, category, description, price, type) VALUES
('Focaccia Classica', 'Breads', 'Olive oil, rosemary, sea salt', 190, 'vegan'),
('Cheesy Garlic Bread', 'Breads', 'Garlic, mozzarella, parsley', 220, 'veg'),
('Bruschetta Pomodoro', 'Breads', 'Tomatoes, basil, balsamic glaze', 250, 'veg'),
(.....);
```

**Desserts**
```
INSERT INTO menu_items (name, category, description, price, type) VALUES
('Tiramisu', 'Dessert', 'Espresso-soaked biscuits, mascarpone, cocoa', 400, 'veg'),
('Panna Cotta', 'Dessert', 'Vanilla cream, berry compote', 350, 'veg'),
('Nutella Calzone', 'Dessert', 'Mini calzone filled with Nutella', 390, 'veg'),
(.....);
```

**Drinks**
```
INSERT INTO menu_items (name, category, description, price, type) VALUES
('Espresso', 'Drinks', 'Strong Italian espresso shot', 100, 'vegan'),
('Americano', 'Drinks', 'Espresso + hot water', 120, 'vegan'),
('Cappuccino', 'Drinks', 'Espresso with frothed milk', 140, 'veg'),
(.....);
```

**DIPS & SAUCES**
```
INSERT INTO menu_items (name, category, description, price, type) VALUES
('Garlic Mayo', 'Dips', 'Creamy garlic aioli', 40, 'veg'),
('Spicy Marinara', 'Dips', 'Tangy tomato sauce', 40, 'vegan'),
('Pesto Dip', 'Dips', 'Fresh basil pesto', 50, 'veg'),
(.....);
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








