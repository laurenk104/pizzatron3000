stop();
pizza.text = _root.LocaleText.getText("pizza_pinkliquoricechip");
topping1.text = _root.LocaleText.getText("topping_sprinkles");
topping2.text = _root.LocaleText.getText("topping_pinkicing");
topping3.text = "2 " + _root.LocaleText.getText("topping_liquorices");
topping4.text = "2 " + _root.LocaleText.getText("topping_chocolatechips");
_parent.normalsauceREQUESTED = false;
_parent.hotsauceREQUESTED = true;
_parent.cheeseREQUESTED = true;
_parent.topping1REQUESTED = true;
_parent.Ntopping1REQUESTED = 2;
_parent.topping2REQUESTED = true;
_parent.Ntopping2REQUESTED = 2;
_parent.topping3REQUESTED = false;
_parent.topping4REQUESTED = false;
_global.pizzatron_dl.setPizzaType = "2x2 TOPPINGS";
