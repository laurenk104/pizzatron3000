stop();
pizza.text = _root.LocaleText.getText("pizza_supremesizzle");
topping1.text = _root.LocaleText.getText("topping_cheese");
topping2.text = _root.LocaleText.getText("topping_hotsauce");
topping3.text = "1 " + _root.LocaleText.getText("topping_seaweed") + "\n\n" + "1 " + _root.LocaleText.getText("topping_shrimp") + "\n\n" + "1 " + _root.LocaleText.getText("topping_squid") + "\n\n" + "1 " + _root.LocaleText.getText("topping_fish");
_parent.normalsauceREQUESTED = false;
_parent.hotsauceREQUESTED = true;
_parent.cheeseREQUESTED = true;
_parent.topping1REQUESTED = true;
_parent.Ntopping1REQUESTED = 1;
_parent.topping2REQUESTED = true;
_parent.Ntopping2REQUESTED = 1;
_parent.topping3REQUESTED = true;
_parent.Ntopping3REQUESTED = 1;
_parent.topping4REQUESTED = true;
_parent.Ntopping4REQUESTED = 1;
_global.pizzatron_dl.setPizzaType = "4 TOPPINGS";
