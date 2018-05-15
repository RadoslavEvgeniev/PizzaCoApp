INSERT INTO DoughTypes(Name, Calories, Price) 
VALUES('Crispy', 0.9, 1.9),('Chewy', 1.1, 2.1),('Homemade', 1.0, 2);

INSERT INTO Doughs(Name, Calories, Price) 
VALUES('White', 1.5, 2.5),('Wholegrain', 1.0, 2);

INSERT INTO Toppings(Name, Calories, Price)
VALUES('Meat', 1.2, 2.2), ('Veggies', 0.8, 1.8), ('Cheese', 1.1, 2.1), ('Sauce', 0.9, 1.9);

INSERT INTO Pizzas(Name, DoughTypeId, DoughId)
VALUES('Dough of Hands Pizza', 1, 1),('SweetSensationsPizza', 1, 2),('The Octopizza Pizza', 2,1),
	('The Pizzavant Pizza', 2,2),('TheFunkyAnchovyPizza', 3,1),('Pi Pie Pizza', 3,2);
    
INSERT INTO PizzasToppings(PizzaId, ToppingId)
VALUES(1,1),(1,2),(1,3),(1,4),(2,1),(2,2),(2,3),(3,1),(3,2),(4,1),(5,1),(5,2),(6,1),(6,2),(6,3);

