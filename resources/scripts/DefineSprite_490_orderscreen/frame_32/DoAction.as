stop();
pizza.text = _root.LocaleText.getText("pizza_pinkmarshmallow");
topping1.text = _root.LocaleText.getText("topping_sprinkles");
topping2.text = _root.LocaleText.getText("topping_pinkicing");
topping3.text = "5 " + _root.LocaleText.getText("topping_marshmallows");
_parent.normalsauceREQUESTED = false;
_parent.hotsauceREQUESTED = true;
_parent.cheeseREQUESTED = true;
_parent.topping1REQUESTED = false;
_parent.topping2REQUESTED = false;
_parent.topping3REQUESTED = true;
_parent.Ntopping3REQUESTED = 5;
_parent.topping4REQUESTED = false;
_global.pizzatron_dl.setPizzaType = "5 TOPPINGS";