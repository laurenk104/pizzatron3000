stop();
pizza.text = _root.LocaleText.getText("pizza_hotshrimpsquid");
topping1.text = _root.LocaleText.getText("topping_cheese");
topping2.text = _root.LocaleText.getText("topping_hotsauce");
topping3.text = "2 " + _root.LocaleText.getText("topping_shrimps");
topping4.text = "2 " + _root.LocaleText.getText("topping_squids");
_parent.normalsauceREQUESTED = false;
_parent.hotsauceREQUESTED = true;
_parent.cheeseREQUESTED = true;
_parent.topping1REQUESTED = false;
_parent.topping2REQUESTED = true;
_parent.Ntopping2REQUESTED = 2;
_parent.topping3REQUESTED = true;
_parent.Ntopping3REQUESTED = 2;
_parent.topping4REQUESTED = false;
_global.pizzatron_dl.setPizzaType = "2x2 TOPPINGS";
