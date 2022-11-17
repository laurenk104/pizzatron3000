function addSound(clip, loops, volume)
{
   if(volume == undefined)
   {
      volume = 100;
   }
   undefined + clip;
   mySound = new Sound(createEmptyMovieClip(clip + "Sfx",getNextHighestDepth() + 100));
   mySound.setVolume(volume);
   mySound.attachSound(clip);
   mySound.start(0,loops);
}
function makeorder()
{
   orderScreenFrame = orderscreen.frame;
   if(candyMODE == true)
   {
      possibleorders = 24;
   }
   else
   {
      possibleorders = Math.round(pizzasmade);
   }
   if(possibleorders > maxpossibleorders)
   {
      possibleorders = maxpossibleorders;
   }
   if(perfectpizza == true)
   {
      order = random(possibleorders) + 1;
      perfectpizza = false;
   }
   if(candyMODE == true)
   {
      orderscreen.gotoAndStop(order + 24);
   }
   else
   {
      orderscreen.gotoAndStop(order);
   }
   gameMODE = "loadpizzas";
   if(orderScreenFrame == orderscreen.frame)
   {
      _global.pizzatron_dl.setPizzaType = _global.pizzatron_dl.lastPizzaType;
   }
}
function loadpizzas()
{
   _global.pizzatron_dl.startPizza(candyMODE);
   if(topping1REQUESTED == true)
   {
      if(topping1 >= Ntopping1REQUESTED)
      {
         perfecttopping1 = true;
      }
      else
      {
         perfecttopping1 = false;
      }
   }
   else if(topping1 == 0)
   {
      perfecttopping1 = true;
   }
   else
   {
      perfecttopping1 = false;
      speedboost += 1;
   }
   if(topping2REQUESTED == true)
   {
      if(topping2 >= Ntopping2REQUESTED)
      {
         perfecttopping2 = true;
      }
      else
      {
         perfecttopping2 = false;
      }
   }
   else if(topping2 == 0)
   {
      perfecttopping2 = true;
   }
   else
   {
      perfecttopping2 = false;
      speedboost += 1;
   }
   if(topping3REQUESTED == true)
   {
      if(topping3 >= Ntopping3REQUESTED)
      {
         perfecttopping3 = true;
      }
      else
      {
         perfecttopping3 = false;
      }
   }
   else if(topping3 == 0)
   {
      perfecttopping3 = true;
   }
   else
   {
      perfecttopping3 = false;
      speedboost += 1;
   }
   if(topping4REQUESTED == true)
   {
      if(topping4 >= Ntopping4REQUESTED)
      {
         perfecttopping4 = true;
      }
      else
      {
         perfecttopping4 = false;
      }
   }
   else if(topping4 == 0)
   {
      perfecttopping4 = true;
   }
   else
   {
      perfecttopping4 = false;
      speedboost += 1;
   }
   if(normalsaucePLACED == normalsauceREQUESTED && hotsaucePLACED == hotsauceREQUESTED && cheesePLACED == cheeseREQUESTED && perfecttopping1 == true && perfecttopping2 == true && perfecttopping3 == true && perfecttopping4 == true)
   {
      perfectpizza = true;
      speedboost += 1;
   }
   else
   {
      perfectpizza = false;
   }
   if(pizza.sauce.hitTest(pizza.toppart._x + pizza._x,pizza.toppart._y + pizza._y,true) && pizza.sauce.hitTest(pizza.bottompart._x + pizza._x,pizza.bottompart._y + pizza._y,true) && pizza.sauce.hitTest(pizza.leftpart._x + pizza._x,pizza.leftpart._y + pizza._y,true) && pizza.sauce.hitTest(pizza.midrightpart._x + pizza._x,pizza.midrightpart._y + pizza._y,true) && pizza.sauce.hitTest(pizza.midleftpart._x + pizza._x,pizza.midleftpart._y + pizza._y,true) && pizza.sauce.hitTest(pizza.rightpart._x + pizza._x,pizza.rightpart._y + pizza._y,true))
   {
      normalsaucePLACED = true;
   }
   else
   {
      normalsaucePLACED = false;
   }
   if(pizza.hotsauce.hitTest(pizza.toppart._x + pizza._x,pizza.toppart._y + pizza._y,true) && pizza.hotsauce.hitTest(pizza.bottompart._x + pizza._x,pizza.bottompart._y + pizza._y,true) && pizza.hotsauce.hitTest(pizza.leftpart._x + pizza._x,pizza.leftpart._y + pizza._y,true) && pizza.hotsauce.hitTest(pizza.midrightpart._x + pizza._x,pizza.midrightpart._y + pizza._y,true) && pizza.hotsauce.hitTest(pizza.midleftpart._x + pizza._x,pizza.midleftpart._y + pizza._y,true) && pizza.hotsauce.hitTest(pizza.rightpart._x + pizza._x,pizza.rightpart._y + pizza._y,true))
   {
      hotsaucePLACED = true;
   }
   else
   {
      hotsaucePLACED = false;
   }
   if(pizza._x < 900)
   {
      pizza._x += pizzaspeed + speedboost;
   }
   else if(pizza._x >= 900)
   {
      gameMODE = "removepizza";
   }
}
function sendStamp410()
{
   clearInterval(stampTimeoutID);
   com.clubpenguin.util.Stamp.sendStamp(410);
}
function removepizza()
{
   if(perfectpizza == true)
   {
      consecutivePizzas++;
      if(order == 6 && candyMODE == false)
      {
         numOfShrimpPizzas++;
         if(numOfShrimpPizzas == 3)
         {
            com.clubpenguin.util.Stamp.sendStamp(398);
            _global.pizzatron_dl.sendStampOpcodes(398);
         }
      }
      if(order == 8 && candyMODE == false)
      {
         numOfSquidPizzas++;
         if(numOfSquidPizzas == 3)
         {
            com.clubpenguin.util.Stamp.sendStamp(402);
            _global.pizzatron_dl.sendStampOpcodes(402);
         }
      }
      if(order == 9 && candyMODE == true)
      {
         numOfJellyBeanPizzas++;
         if(numOfJellyBeanPizzas == 3)
         {
            com.clubpenguin.util.Stamp.sendStamp(400);
            _global.pizzatron_dl.sendStampOpcodes(400);
         }
      }
      if(order == 8 && candyMODE == true)
      {
         numOfMarshmallowPizzas++;
         if(numOfMarshmallowPizzas == 3)
         {
            com.clubpenguin.util.Stamp.sendStamp(404);
            _global.pizzatron_dl.sendStampOpcodes(404);
         }
      }
      if(consecutivePizzas == 20)
      {
         com.clubpenguin.util.Stamp.sendStamp(396);
         _global.pizzatron_dl.sendStampOpcodes(396);
      }
      if(consecutivePizzas == 30)
      {
         com.clubpenguin.util.Stamp.sendStamp(406);
         _global.pizzatron_dl.sendStampOpcodes(406);
      }
      if(consecutivePizzas == 40)
      {
         com.clubpenguin.util.Stamp.sendStamp(408);
         _global.pizzatron_dl.sendStampOpcodes(408);
      }
      if(candyMODE == true && consecutivePizzas == 40)
      {
         clearInterval(stampTimeoutID);
         stampTimeoutID = setInterval(sendStamp410,1000);
         _global.pizzatron_dl.sendStampOpcodes(410);
      }
      _global.pizzatron_dl.scorePizza(candyMODE,100);
      handicap += 1;
      txt_popup.gotoAndStop("perfect");
      if(candyMODE == true)
      {
         txt_popup.earned.gotoAndStop("tip10");
      }
      pizzasmade += 1;
      score += 5;
      if(candyMODE == true)
      {
         score += 5;
      }
   }
   else
   {
      consecutivePizzas = 0;
      handicap -= 1;
      failures += 1;
      if(failures == 3 && messOfKitchen)
      {
         com.clubpenguin.util.Stamp.sendStamp(392);
         _global.pizzatron_dl.sendStampOpcodes(392);
      }
      _global.pizzatron_dl.scorePizza(candyMODE,0);
   }
   ordersmade += 1;
   pizzasleft -= 1;
   var _loc3_ = 30;
   while(_loc3_ > 0)
   {
      this["perfectpizzas" + _loc3_] = this["perfectpizzas" + (_loc3_ - 1)];
      _loc3_ -= 1;
   }
   if(perfectpizza == true)
   {
      perfectpizzas1 = true;
   }
   else
   {
      perfectpizzas1 = false;
   }
   if(perfectpizzas1 == true && perfectpizzas2 == true && perfectpizzas3 == true && perfectpizzas4 == true && perfectpizzas5 == true && perfectpizzas6 == true && perfectpizzas7 == true && perfectpizzas8 == true && perfectpizzas9 == true && perfectpizzas10 == true && perfectpizzas11 == true && perfectpizzas12 == true && perfectpizzas13 == true && perfectpizzas14 == true && perfectpizzas15 == true && perfectpizzas16 == true && perfectpizzas17 == true && perfectpizzas18 == true && perfectpizzas19 == true && perfectpizzas20 == true && perfectpizzas21 == true && perfectpizzas22 == true && perfectpizzas23 == true && perfectpizzas24 == true && perfectpizzas25 == true && perfectpizzas26 == true && perfectpizzas27 == true && perfectpizzas28 == true && perfectpizzas29 == true && perfectpizzas30 == true)
   {
      txt_popup.gotoAndStop("combo35");
      tips += 35;
   }
   else if(perfectpizzas1 == true && perfectpizzas2 == true && perfectpizzas3 == true && perfectpizzas4 == true && perfectpizzas5 == true && perfectpizzas6 == true && perfectpizzas7 == true && perfectpizzas8 == true && perfectpizzas9 == true && perfectpizzas10 == true && perfectpizzas11 == true && perfectpizzas12 == true && perfectpizzas13 == true && perfectpizzas14 == true && perfectpizzas15 == true && perfectpizzas16 == true && perfectpizzas17 == true && perfectpizzas18 == true && perfectpizzas19 == true && perfectpizzas20 == true && perfectpizzas21 == true && perfectpizzas22 == true && perfectpizzas23 == true && perfectpizzas24 == true && perfectpizzas25 == true)
   {
      txt_popup.gotoAndStop("combo30");
      tips += 30;
   }
   else if(perfectpizzas1 == true && perfectpizzas2 == true && perfectpizzas3 == true && perfectpizzas4 == true && perfectpizzas5 == true && perfectpizzas6 == true && perfectpizzas7 == true && perfectpizzas8 == true && perfectpizzas9 == true && perfectpizzas10 == true && perfectpizzas11 == true && perfectpizzas12 == true && perfectpizzas13 == true && perfectpizzas14 == true && perfectpizzas15 == true && perfectpizzas16 == true && perfectpizzas17 == true && perfectpizzas18 == true && perfectpizzas19 == true && perfectpizzas20 == true)
   {
      txt_popup.gotoAndStop("combo25");
      tips += 25;
   }
   else if(perfectpizzas1 == true && perfectpizzas2 == true && perfectpizzas3 == true && perfectpizzas4 == true && perfectpizzas5 == true && perfectpizzas6 == true && perfectpizzas7 == true && perfectpizzas8 == true && perfectpizzas9 == true && perfectpizzas10 == true && perfectpizzas11 == true && perfectpizzas12 == true && perfectpizzas13 == true && perfectpizzas14 == true && perfectpizzas15 == true)
   {
      txt_popup.gotoAndStop("combo20");
      tips += 20;
   }
   else if(perfectpizzas1 == true && perfectpizzas2 == true && perfectpizzas3 == true && perfectpizzas4 == true && perfectpizzas5 == true && perfectpizzas6 == true && perfectpizzas7 == true && perfectpizzas8 == true && perfectpizzas9 == true && perfectpizzas10 == true)
   {
      txt_popup.gotoAndStop("combo15");
      tips += 15;
   }
   else if(perfectpizzas1 == true && perfectpizzas2 == true && perfectpizzas3 == true && perfectpizzas4 == true && perfectpizzas5 == true)
   {
      txt_popup.gotoAndStop("combo10");
      tips += 10;
   }
   removeMovieClip(pizza);
   normalsaucePLACED = false;
   hotsaucePLACED = false;
   cheesePLACED = false;
   topping1 = 0;
   topping2 = 0;
   topping3 = 0;
   topping4 = 0;
   perfecttopping1 = false;
   perfecttopping2 = false;
   perfecttopping3 = false;
   perfecttopping4 = false;
   splatN = -300;
   speedboost = 0;
   normalsauceFULL = false;
   hotsauceFULL = false;
   _global.pizzatron_dl.stopPizza(candyMODE);
   gameMODE = "placepizza";
}
function placepizza()
{
   attachMovie("pizza","pizza",1);
   pizza._x = -240;
   pizza._y = 375;
   gameMODE = "makeorder";
}
function ingredientnone()
{
   if(candyMODE == true)
   {
      ingredients_sauces.gotoAndStop("normalcandy");
   }
   else
   {
      ingredients_sauces.gotoAndStop("normal");
   }
   hand.gotoAndStop("none");
}
function ingredientnormalsauce()
{
   if(candyMODE == true)
   {
      ingredients_sauces.gotoAndStop("usingchocolatesauce");
   }
   else
   {
      ingredients_sauces.gotoAndStop("usingnormalsauce");
   }
   if(mouseisdown == false)
   {
      if(candyMODE == true)
      {
         hand.gotoAndStop("chocolatesauce");
      }
      else
      {
         hand.gotoAndStop("normalsauce");
      }
   }
   else if(mouseisdown == true && splatN < -10)
   {
      if(candyMODE == true)
      {
         hand.gotoAndStop("chocolatesauce_use");
      }
      else
      {
         hand.gotoAndStop("normalsauce_use");
      }
   }
   if(pizza.hitTest(_xmouse,_ymouse + 100,true) && mouseisdown == true && splatN < -10)
   {
      if(normalsaucePLACED == false)
      {
         if(candyMODE == true)
         {
            pizza.sauce.attachMovie("splat_chocolatesauce","splat" + splatN,splatN);
         }
         else
         {
            pizza.sauce.attachMovie("splat_normalsauce","splat" + splatN,splatN);
         }
         this.pizza.sauce["splat" + splatN]._x = _xmouse - pizza._x;
         this.pizza.sauce["splat" + splatN]._y = _ymouse - pizza._y + 100;
         this.pizza.sauce["splat" + splatN].gotoAndStop(random(4) + 1);
         i = -300;
         while(i < -1)
         {
            this.pizza.hotsauce["splat" + i].gotoAndStop("gone");
            i++;
         }
      }
      splatN += 1;
      if(splatN > -2)
      {
         splatN = -300;
      }
   }
   else if(mouseisdown == false)
   {
      ingredient = "none";
      hand.gotoAndStop("none");
      sauce0Thrown = true;
      checkForMessOfKitchen();
      if(candyMODE == true)
      {
         attachMovie("dropchocolatesauce","droppedtopping" + dropN,dropN);
      }
      else
      {
         attachMovie("dropsauce","droppedtopping" + dropN,dropN);
      }
      this["droppedtopping" + dropN]._x = _xmouse;
      this["droppedtopping" + dropN]._y = _ymouse;
      this["droprotate" + dropN] = true;
      this["dropspeedX" + dropN] -= strengthX;
      this["dropspeedY" + dropN] -= strengthY;
      dropN += 1;
      if(dropN > 1010)
      {
         dropN = 1001;
      }
      if(strengthX >= 30)
      {
         zipSound.start(0,1);
      }
      else if(strengthX <= -30)
      {
         zipSound.start(0,1);
      }
   }
}
function ingredienthotsauce()
{
   if(candyMODE == true)
   {
      ingredients_sauces.gotoAndStop("usingpinkicing");
   }
   else
   {
      ingredients_sauces.gotoAndStop("usinghotsauce");
   }
   if(mouseisdown == false)
   {
      if(candyMODE == true)
      {
         hand.gotoAndStop("pinkicing");
      }
      else
      {
         hand.gotoAndStop("hotsauce");
      }
   }
   else if(mouseisdown == true && splatN < -10)
   {
      if(candyMODE == true)
      {
         hand.gotoAndStop("pinkicing_use");
      }
      else
      {
         hand.gotoAndStop("hotsauce_use");
      }
   }
   if(pizza.hitTest(_xmouse,_ymouse + 100,true) && mouseisdown == true && splatN < -10)
   {
      if(hotsaucePLACED == false)
      {
         if(candyMODE == true)
         {
            pizza.hotsauce.attachMovie("splat_pinkicing","splat" + splatN,splatN);
         }
         else
         {
            pizza.hotsauce.attachMovie("splat_hotsauce","splat" + splatN,splatN);
         }
         this.pizza.hotsauce["splat" + splatN]._x = _xmouse - pizza._x;
         this.pizza.hotsauce["splat" + splatN]._y = _ymouse - pizza._y + 100;
         this.pizza.hotsauce["splat" + splatN].gotoAndStop(random(4) + 1);
         i = -300;
         while(i < -1)
         {
            this.pizza.sauce["splat" + i].gotoAndStop("gone");
            i++;
         }
      }
      splatN += 1;
      if(splatN > -2)
      {
         splatN = -300;
      }
   }
   else if(mouseisdown == false)
   {
      ingredient = "none";
      hand.gotoAndStop("none");
      sauce1Thrown = true;
      checkForMessOfKitchen();
      if(candyMODE == true)
      {
         attachMovie("droppinkicing","droppedtopping" + dropN,dropN);
      }
      else
      {
         attachMovie("drophotsauce","droppedtopping" + dropN,dropN);
      }
      this["droppedtopping" + dropN]._x = _xmouse;
      this["droppedtopping" + dropN]._y = _ymouse;
      this["droprotate" + dropN] = true;
      this["dropspeedX" + dropN] -= strengthX;
      this["dropspeedY" + dropN] -= strengthY;
      dropN += 1;
      if(dropN > 1010)
      {
         dropN = 1001;
      }
      if(strengthX >= 30)
      {
         zipSound.start(0,1);
      }
      else if(strengthX <= -30)
      {
         zipSound.start(0,1);
      }
   }
}
function ingredientcheese()
{
   if(candyMODE == true)
   {
      hand.gotoAndStop("sprinkles");
   }
   else
   {
      hand.gotoAndStop("cheese");
   }
   if(pizza.hitTest(_xmouse,_ymouse,true) && mouseisdown == false)
   {
      if(candyMODE == true)
      {
         this.pizza.cheese.gotoAndStop("placedcandy");
      }
      else
      {
         this.pizza.cheese.gotoAndStop("placed");
      }
      cheesePLACED = true;
      ingredient = "none";
      toppingSound.start(0,1);
   }
   else if(mouseisdown == false)
   {
      ingredient = "none";
      hand.gotoAndStop("none");
      topping0Thrown = true;
      checkForMessOfKitchen();
      if(candyMODE == true)
      {
         attachMovie("dropsprinkles","droppedtopping" + dropN,dropN);
      }
      else
      {
         attachMovie("dropcheese","droppedtopping" + dropN,dropN);
      }
      this["droppedtopping" + dropN]._x = _xmouse;
      this["droppedtopping" + dropN]._y = _ymouse;
      this["droprotate" + dropN] = false;
      this["dropspeedX" + dropN] -= strengthX;
      this["dropspeedY" + dropN] -= strengthY;
      dropN += 1;
      if(dropN > 1010)
      {
         dropN = 1001;
      }
      if(strengthX >= 30)
      {
         zipSound.start(0,1);
      }
      else if(strengthX <= -30)
      {
         zipSound.start(0,1);
      }
   }
}
function ingredienttopping1()
{
   if(candyMODE == true)
   {
      hand.gotoAndStop("topping1candy");
   }
   else
   {
      hand.gotoAndStop("topping1");
   }
   hand.topping.gotoAndStop(toppingframe);
   if(pizza.hitTest(_xmouse,_ymouse,true) && mouseisdown == false && perfectpizza == false)
   {
      pizza.topping.attachMovie("toppings","splat" + toppingsN,toppingsN);
      this.pizza.topping["splat" + toppingsN]._x = _xmouse - pizza._x;
      this.pizza.topping["splat" + toppingsN]._y = _ymouse - pizza._y;
      if(candyMODE == true)
      {
         this.pizza.topping["splat" + toppingsN].gotoAndStop("topping1candy");
      }
      else
      {
         this.pizza.topping["splat" + toppingsN].gotoAndStop("topping1");
      }
      this.pizza.topping["splat" + toppingsN].topping.gotoAndStop(toppingframe);
      toppingSound.start(0,1);
      toppingsN += 1;
      if(toppingsN > -2)
      {
         toppingsN = -300;
      }
      topping1 += 1;
      ingredient = "none";
   }
   else if(mouseisdown == false)
   {
      ingredient = "none";
      hand.gotoAndStop("none");
      topping1Thrown = true;
      checkForMessOfKitchen();
      if(candyMODE == true)
      {
         attachMovie("dropliquorice","droppedtopping" + dropN,dropN);
      }
      else
      {
         attachMovie("dropseaweed","droppedtopping" + dropN,dropN);
      }
      this["droppedtopping" + dropN]._x = _xmouse;
      this["droppedtopping" + dropN]._y = _ymouse;
      this["droppedtopping" + dropN].gotoAndStop(toppingframe);
      this["droprotate" + dropN] = true;
      this["dropspeedX" + dropN] -= strengthX;
      this["dropspeedY" + dropN] -= strengthY;
      dropN += 1;
      if(dropN > 1010)
      {
         dropN = 1001;
      }
      if(strengthX >= 30)
      {
         zipSound.start(0,1);
      }
      else if(strengthX <= -30)
      {
         zipSound.start(0,1);
      }
   }
}
function ingredienttopping2()
{
   if(candyMODE == true)
   {
      hand.gotoAndStop("topping2candy");
   }
   else
   {
      hand.gotoAndStop("topping2");
   }
   hand.topping.gotoAndStop(toppingframe);
   if(pizza.hitTest(_xmouse,_ymouse,true) && mouseisdown == false && perfectpizza == false)
   {
      pizza.topping.attachMovie("toppings","splat" + toppingsN,toppingsN);
      this.pizza.topping["splat" + toppingsN]._x = _xmouse - pizza._x;
      this.pizza.topping["splat" + toppingsN]._y = _ymouse - pizza._y;
      if(candyMODE == true)
      {
         this.pizza.topping["splat" + toppingsN].gotoAndStop("topping2candy");
      }
      else
      {
         this.pizza.topping["splat" + toppingsN].gotoAndStop("topping2");
      }
      this.pizza.topping["splat" + toppingsN].topping.gotoAndStop(toppingframe);
      toppingSound.start(0,1);
      toppingsN += 1;
      if(toppingsN > -2)
      {
         toppingsN = -300;
      }
      topping2 += 1;
      ingredient = "none";
   }
   else if(mouseisdown == false)
   {
      ingredient = "none";
      hand.gotoAndStop("none");
      topping2Thrown = true;
      checkForMessOfKitchen();
      if(candyMODE == true)
      {
         attachMovie("dropchocolatechip","droppedtopping" + dropN,dropN);
      }
      else
      {
         attachMovie("dropshrimp","droppedtopping" + dropN,dropN);
      }
      this["droppedtopping" + dropN]._x = _xmouse;
      this["droppedtopping" + dropN]._y = _ymouse;
      this["droppedtopping" + dropN].gotoAndStop(toppingframe);
      this["droprotate" + dropN] = true;
      this["dropspeedX" + dropN] -= strengthX;
      this["dropspeedY" + dropN] -= strengthY;
      dropN += 1;
      if(dropN > 1010)
      {
         dropN = 1001;
      }
      if(strengthX >= 30)
      {
         zipSound.start(0,1);
      }
      else if(strengthX <= -30)
      {
         zipSound.start(0,1);
      }
   }
}
function ingredienttopping3()
{
   if(candyMODE == true)
   {
      hand.gotoAndStop("topping3candy");
   }
   else
   {
      hand.gotoAndStop("topping3");
   }
   hand.topping.gotoAndStop(toppingframe);
   if(pizza.hitTest(_xmouse,_ymouse,true) && mouseisdown == false && perfectpizza == false)
   {
      pizza.topping.attachMovie("toppings","splat" + toppingsN,toppingsN);
      this.pizza.topping["splat" + toppingsN]._x = _xmouse - pizza._x;
      this.pizza.topping["splat" + toppingsN]._y = _ymouse - pizza._y;
      if(candyMODE == true)
      {
         this.pizza.topping["splat" + toppingsN].gotoAndStop("topping3candy");
      }
      else
      {
         this.pizza.topping["splat" + toppingsN].gotoAndStop("topping3");
      }
      this.pizza.topping["splat" + toppingsN].topping.gotoAndStop(toppingframe);
      toppingSound.start(0,1);
      toppingsN += 1;
      if(toppingsN > -2)
      {
         toppingsN = -300;
      }
      topping3 += 1;
      ingredient = "none";
   }
   else if(mouseisdown == false)
   {
      ingredient = "none";
      hand.gotoAndStop("none");
      topping3Thrown = true;
      checkForMessOfKitchen();
      if(candyMODE == true)
      {
         attachMovie("dropmarshmellow","droppedtopping" + dropN,dropN);
      }
      else
      {
         attachMovie("dropsquid","droppedtopping" + dropN,dropN);
      }
      this["droppedtopping" + dropN]._x = _xmouse;
      this["droppedtopping" + dropN]._y = _ymouse;
      this["droppedtopping" + dropN].gotoAndStop(toppingframe);
      this["droprotate" + dropN] = true;
      this["dropspeedX" + dropN] -= strengthX;
      this["dropspeedY" + dropN] -= strengthY;
      dropN += 1;
      if(dropN > 1010)
      {
         dropN = 1001;
      }
      if(strengthX >= 30)
      {
         zipSound.start(0,1);
      }
      else if(strengthX <= -30)
      {
         zipSound.start(0,1);
      }
   }
}
function ingredienttopping4()
{
   if(candyMODE == true)
   {
      hand.gotoAndStop("topping4candy");
   }
   else
   {
      hand.gotoAndStop("topping4");
   }
   hand.topping.gotoAndStop(toppingframe);
   if(pizza.hitTest(_xmouse,_ymouse,true) && mouseisdown == false && perfectpizza == false)
   {
      pizza.topping.attachMovie("toppings","splat" + toppingsN,toppingsN);
      this.pizza.topping["splat" + toppingsN]._x = _xmouse - pizza._x;
      this.pizza.topping["splat" + toppingsN]._y = _ymouse - pizza._y;
      if(candyMODE == true)
      {
         this.pizza.topping["splat" + toppingsN].gotoAndStop("topping4candy");
      }
      else
      {
         this.pizza.topping["splat" + toppingsN].gotoAndStop("topping4");
      }
      this.pizza.topping["splat" + toppingsN].topping.gotoAndStop(toppingframe);
      toppingSound.start(0,1);
      toppingsN += 1;
      if(toppingsN > -2)
      {
         toppingsN = -300;
      }
      topping4 += 1;
      ingredient = "none";
   }
   else if(mouseisdown == false)
   {
      ingredient = "none";
      hand.gotoAndStop("none");
      topping4Thrown = true;
      checkForMessOfKitchen();
      if(candyMODE == true)
      {
         attachMovie("dropjellybean","droppedtopping" + dropN,dropN);
      }
      else
      {
         attachMovie("dropfish","droppedtopping" + dropN,dropN);
      }
      this["droppedtopping" + dropN]._x = _xmouse;
      this["droppedtopping" + dropN]._y = _ymouse;
      this["droppedtopping" + dropN].gotoAndStop(toppingframe);
      this["droprotate" + dropN] = true;
      this["dropspeedX" + dropN] -= strengthX;
      this["dropspeedY" + dropN] -= strengthY;
      dropN += 1;
      if(dropN > 1010)
      {
         dropN = 1001;
      }
      if(strengthX >= 30)
      {
         zipSound.start(0,1);
      }
      else if(strengthX <= -30)
      {
         zipSound.start(0,1);
      }
   }
}
function checkForMessOfKitchen()
{
   if(earnedFoodFiasco)
   {
      return undefined;
   }
   if(sauce0Thrown && sauce1Thrown && topping0Thrown && topping1Thrown && topping2Thrown && topping3Thrown && topping4Thrown)
   {
      messOfKitchen = true;
      if(failures == 3)
      {
         earnedFoodFiasco = true;
         com.clubpenguin.util.Stamp.sendStamp(392);
         _global.pizzatron_dl.sendStampOpcodes(392);
      }
   }
}
function getCoins()
{
   var _loc3_ = new Object();
   _loc3_.score = coins * 10;
   _loc3_.coins = coins;
   _root.showWindow("Game Over",_loc3_);
   _global.pizzatron_dl.stopGame(candyMODE);
   if(quit)
   {
      _global.pizzatron_dl.sendGameScore(candyMODE,"quit",pizzasmade,_loc3_.coins);
   }
}
stop();
status_made.text = _root.LocaleText.getText("status_made");
status_left.text = _root.LocaleText.getText("status_left");
status_mistakes.text = _root.LocaleText.getText("status_mistakes");
score_coins.text = _root.LocaleText.getText("score_coins");
var quit = false;
var consecutivePizzas = 0;
speedboost = 0;
gameplay = true;
score = 0;
servedpizzas = 0;
tips = 0;
coins = 0;
failures = 0;
handicap = 0;
possibleorders = 2;
maxpossibleorders = 24;
splatN = -300;
toppingsN = -300;
dropN = 1001;
dropspeedY = 20;
dropspeedX = 0;
threw = 1001;
while(threw < 1021)
{
   this["dropspeedY" + threw] = dropspeedY;
   this["dropspeedX" + threw] = dropspeedX;
   threw += 1;
}
ingredient = "none";
mouseisdown = false;
normalsaucePLACED = false;
hotsaucePLACED = false;
cheesePLACED = false;
topping1 = 0;
topping2 = 0;
topping3 = 0;
topping4 = 0;
toppingframe = 1;
perfecttopping1 = false;
perfecttopping2 = false;
perfecttopping3 = false;
perfecttopping4 = false;
perfectpizza = false;
order = 1;
ordersmade = 0;
pizzasmade = 0;
pizzasleft = 40;
normalsauceREQUESTED = false;
hotsauceREQUESTED = false;
cheeseREQUESTED = false;
topping1REQUESTED = false;
Ntopping1REQUESTED = 0;
topping2REQUESTED = false;
Ntopping2REQUESTED = 0;
topping3REQUESTED = false;
Ntopping3REQUESTED = 0;
topping4REQUESTED = false;
Ntopping4REQUESTED = 0;
var sauce0Thrown = false;
var sauce1Thrown = false;
var topping0Thrown = false;
var topping1Thrown = false;
var topping2Thrown = false;
var topping3Thrown = false;
var topping4Thrown = false;
var messOfKitchen = false;
var stampTimeoutID;
clearInterval(stampTimeoutID);
this.createEmptyMovieClip("soundInstance",this.getNextHighestDepth());
toppingSound = new Sound(this.soundInstance);
toppingSound.attachSound("3");
chachingSound = new Sound(this.soundInstance);
chachingSound.attachSound("4");
zipSound = new Sound(this.soundInstance);
zipSound.attachSound("zip");
attachMovie("hand","hand",1000);
hand._x = _xmouse;
hand._y = _ymouse;
placepizza();
if(candyMODE == true)
{
   com.clubpenguin.util.Stamp.sendStamp(394);
   _global.pizzatron_dl.sendStampOpcodes(394);
   ingredients_sauces.gotoAndStop("normalcandy");
   ingredients_cheese.gotoAndStop("sprinkles");
   ingredients_topping1.gotoAndStop("liquorice");
   ingredients_topping2.gotoAndStop("chocolatechips");
   ingredients_topping3.gotoAndStop("marshmellows");
   ingredients_topping4.gotoAndStop("jellybeans");
   orderscreen.gotoAndStop(25);
}
var numOfShrimpPizzas = 0;
var numOfSquidPizzas = 0;
var numOfJellyBeanPizzas = 0;
var numOfMarshmallowPizzas = 0;
var earnedFoodFiasco = false;
onEnterFrame = function()
{
   if(gameplay == true)
   {
      hand._x = _xmouse;
      hand._y = _ymouse;
      this[gameMODE]();
      this["ingredient" + ingredient]();
      coins = score + tips;
      if(splatN > -111)
      {
         pizzaspeed += 1;
         if(normalsaucePLACED)
         {
            if(candyMODE == true)
            {
               pizza.overflow.gotoAndStop("explodecandy");
            }
            else
            {
               pizza.overflow.gotoAndStop("explode");
            }
         }
         else if(hotsaucePLACED)
         {
            if(candyMODE == true)
            {
               pizza.overflow.gotoAndStop("explodehotcandy");
            }
            else
            {
               pizza.overflow.gotoAndStop("explodehot");
            }
         }
      }
      else if(handicap <= -2)
      {
         if(candyMODE == true)
         {
            pizzaspeed = 2;
         }
         else
         {
            pizzaspeed = 1;
         }
      }
      else if(handicap <= -1)
      {
         if(candyMODE == true)
         {
            pizzaspeed = 3;
         }
         else
         {
            pizzaspeed = 2;
         }
      }
      else if(handicap <= 4)
      {
         if(candyMODE == true)
         {
            pizzaspeed = 4;
         }
         else
         {
            pizzaspeed = 3;
         }
      }
      else if(handicap <= 8)
      {
         if(candyMODE == true)
         {
            pizzaspeed = 5;
         }
         else
         {
            pizzaspeed = 4;
         }
      }
      else if(handicap <= 13)
      {
         if(candyMODE == true)
         {
            pizzaspeed = 6;
         }
         else
         {
            pizzaspeed = 5;
         }
      }
      else if(handicap <= 19)
      {
         if(candyMODE == true)
         {
            pizzaspeed = 7;
         }
         else
         {
            pizzaspeed = 6;
         }
      }
      else if(handicap <= 26)
      {
         if(candyMODE == true)
         {
            pizzaspeed = 8;
         }
         else
         {
            pizzaspeed = 7;
         }
      }
      else if(handicap <= 34)
      {
         if(candyMODE == true)
         {
            pizzaspeed = 9;
         }
         else
         {
            pizzaspeed = 8;
         }
      }
      if(normalsaucePLACED == true)
      {
         orderscreen.sauce.gotoAndStop("check");
      }
      else
      {
         orderscreen.sauce.gotoAndStop("none");
      }
      if(hotsaucePLACED == true)
      {
         orderscreen.hotsauce.gotoAndStop("check");
      }
      else
      {
         orderscreen.hotsauce.gotoAndStop("none");
      }
      if(cheesePLACED == true)
      {
         orderscreen.cheese.gotoAndStop("check");
      }
      else
      {
         orderscreen.cheese.gotoAndStop("none");
      }
      if(topping1 >= Ntopping1REQUESTED)
      {
         orderscreen.top1.gotoAndStop("check");
      }
      else
      {
         orderscreen.top1.gotoAndStop("none");
      }
      if(topping2 >= Ntopping2REQUESTED)
      {
         orderscreen.top2.gotoAndStop("check");
      }
      else
      {
         orderscreen.top2.gotoAndStop("none");
      }
      if(topping3 >= Ntopping3REQUESTED)
      {
         orderscreen.top3.gotoAndStop("check");
      }
      else
      {
         orderscreen.top3.gotoAndStop("none");
      }
      if(topping4 >= Ntopping4REQUESTED)
      {
         orderscreen.top4.gotoAndStop("check");
      }
      else
      {
         orderscreen.top4.gotoAndStop("none");
      }
      if(normalsaucePLACED == true)
      {
         if(candyMODE == true)
         {
            pizza.base.gotoAndStop("chocolatesauce");
         }
         else
         {
            pizza.base.gotoAndStop("normalsauce");
         }
      }
      else if(hotsaucePLACED == true)
      {
         if(candyMODE == true)
         {
            pizza.base.gotoAndStop("pinkicing");
         }
         else
         {
            pizza.base.gotoAndStop("hotsauce");
         }
      }
      else
      {
         pizza.base.gotoAndStop("empty");
      }
      handposY2 = handposY1;
      handposY1 = handposY;
      handposY = _ymouse;
      handposX2 = handposX1;
      handposX1 = handposX;
      handposX = _xmouse;
      strengthY = (handposY2 - handposY + 60) / 3;
      if(strengthY > 40)
      {
         strengthY = 40;
      }
      else if(strengthY < -20)
      {
         strengthY = -20;
      }
      strengthX = (handposX2 - handposX) / 3;
      if(strengthX > 30)
      {
         strengthX = 30;
      }
      else if(strengthX < -30)
      {
         strengthX = -30;
      }
      threw = 1001;
      while(threw < 1011)
      {
         if(Math.round(this["dropspeedY" + threw]) > 20)
         {
            this["dropspeedY" + threw] -= 1;
         }
         else if(Math.round(this["dropspeedY" + threw]) < 20)
         {
            this["dropspeedY" + threw] += 1;
         }
         else
         {
            this["dropspeedY" + threw] = 20;
         }
         this["droppedtopping" + threw]._y += this["dropspeedY" + threw];
         if(Math.round(this["dropspeedX" + threw]) > 0)
         {
            this["dropspeedX" + threw] -= 0.5;
         }
         else if(Math.round(this["dropspeedX" + threw]) < 0)
         {
            this["dropspeedX" + threw] += 0.5;
         }
         else
         {
            this["dropspeedX" + threw] = 0;
         }
         this["droppedtopping" + threw]._x += this["dropspeedX" + threw];
         if(this["droprotate" + threw] == true)
         {
            this["droppedtopping" + threw]._rotation += this["dropspeedX" + threw];
         }
         threw += 1;
      }
      if(failures >= 5)
      {
         if(pizzasmade <= 1)
         {
            gameplay = false;
            this.gotoAndStop("endlame");
         }
         else
         {
            gameplay = false;
            this.gotoAndStop("endlose");
         }
      }
      if(ordersmade >= 40)
      {
         if(pizzasmade >= 40)
         {
            gameplay = false;
            this.gotoAndStop("endperfect");
         }
         else
         {
            gameplay = false;
            this.gotoAndStop("endwin");
         }
      }
   }
};
