CREATE DATABASE pizza_co_db;

DROP DATABASE pizza_co_db;

USE pizza_co_db;

CREATE TABLE DoughTypes(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(20),
    Calories DOUBLE,
    Price DECIMAL(19,6)
);

CREATE TABLE Doughs(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(20),
    Calories DOUBLE,
    Price DECIMAL(19,6)
);

CREATE TABLE Pizzas(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(20),
    DoughId INT,
    DoughTypeId INT,
    CONSTRAINT fk_Pizzas_Doughs FOREIGN KEY(DoughId) REFERENCES Doughs(Id),
    CONSTRAINT fk_Pizzas_DoughTypes FOREIGN KEY(DoughTypeId) REFERENCES DoughTypes(Id)
);

CREATE TABLE CreatedPizzas(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(20),
    DoughId INT,
    DoughTypeId INT,
    CONSTRAINT fk_CreatedPizzas_Doughs FOREIGN KEY(DoughId) REFERENCES Doughs(Id),
    CONSTRAINT fk_CreatedPizzas_DoughTypes FOREIGN KEY(DoughTypeId) REFERENCES DoughTypes(Id)
);

CREATE TABLE Toppings(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(20),
    Calories DOUBLE,
    Price DECIMAL(19,6)
);

CREATE TABLE PizzasToppings(
	PizzaId INT,
    ToppingId INT,
    FOREIGN KEY(PizzaId) REFERENCES Pizzas(Id),
    FOREIGN KEY(ToppingId) REFERENCES Toppings(Id)
);

CREATE TABLE CreatedPizzasToppings(
	PizzaId INT,
    ToppingId INT,
    FOREIGN KEY(PizzaId) REFERENCES CreatedPizzas(Id),
    FOREIGN KEY(ToppingId) REFERENCES Toppings(Id)
);

CREATE TABLE Orders(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    TotalPrice DECIMAL(19,6)
);

CREATE TABLE OrdersPizzas(
	OrderId INT,
    PizzaId INT,
    CreatedPizzaId INT,
    FOREIGN KEY(OrderId) REFERENCES Orders(Id),
    FOREIGN KEY(PizzaId) REFERENCES Pizzas(Id)
);


