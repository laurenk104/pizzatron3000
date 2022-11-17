onClipEvent(enterFrame){
   i = 0;
   while(i < 10)
   {
      mc = this["conv" + i];
      if(mc._x > 500)
      {
         mc._x -= 1000;
      }
      mc._x += _parent.pizzaspeed + _parent.speedboost;
      i++;
   }
}
