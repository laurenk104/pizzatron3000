on(press){
   if(_parent.ingredient == "topping4")
   {
      _parent.ingredient = "none";
   }
   else
   {
      _parent.ingredient = "topping4";
      if(_parent.candyMODE == true)
      {
         _parent.ingredients_sauces.gotoAndStop("candy");
      }
      else
      {
         _parent.ingredients_sauces.gotoAndStop("normal");
      }
      _parent.toppingframe = random(3) + 1;
   }
}
