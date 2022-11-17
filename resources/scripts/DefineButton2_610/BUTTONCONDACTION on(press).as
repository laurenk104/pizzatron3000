on(press){
   if(_parent.ingredient == "cheese")
   {
      _parent.ingredient = "none";
   }
   else
   {
      _parent.ingredient = "cheese";
      if(_parent.candyMODE == true)
      {
         _parent.ingredients_sauces.gotoAndStop("candy");
      }
      else
      {
         _parent.ingredients_sauces.gotoAndStop("normal");
      }
   }
}
