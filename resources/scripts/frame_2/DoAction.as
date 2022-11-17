function getCoins()
{
   if(coins == undefined)
   {
      coins = 0;
   }
   var _loc3_ = new Object();
   _loc3_.score = coins * 10;
   _loc3_.coins = coins;
   _root.showWindow("Game Over",_loc3_);
   _global.pizzatron_dl.stopGame(candyMODE);
   if(quit)
   {
      _global.pizzatron_dl.sendGameScore(candyMODE,"quit",_loc3_.score,_loc3_.coins);
   }
   else
   {
      _global.pizzatron_dl.sendGameScore(candyMODE,"lose",_loc3_.score,_loc3_.coins);
   }
}
if(_global.dlearning_learner_id == undefined)
{
   var SHELL = _global.getCurrentShell();
   _global.dlearning_learner_id = SHELL.getMyPlayerId();
}
stop();
com.clubpenguin.security.Security.doSecurityCheck(this._url,this._parent);
_root.LocaleText = com.clubpenguin.util.LocaleText;
var SHELL = _global.getCurrentShell();
var gameDirectory = com.clubpenguin.util.LocaleText.getGameDirectory();
var localeDirectory = "lang/" + com.clubpenguin.util.LocaleText.getLocale(com.clubpenguin.util.LocaleText.getLocaleID()) + "/";
var loader = new MovieClipLoader();
loader.loadClip(gameDirectory + localeDirectory + "title.swf",title_mc.titlescreen_mc.titleImage);
title_mc.ui_play.text = _root.LocaleText.getText("ui_play");
title_mc.ui_instructions.text = _root.LocaleText.getText("title_instructions");
title_mc.titlescreen_mc.switch_mc.switch_handle.onRelease = function()
{
   if(candyMODE)
   {
      candyMODE = false;
      title_mc.titlescreen_mc.switch_mc.gotoAndStop(1);
   }
   else
   {
      candyMODE = true;
      title_mc.titlescreen_mc.switch_mc.gotoAndStop(2);
   }
};
var penguinColor = SHELL.getMyPlayerHex();
var colorObject = new Color(title_mc.titlescreen_mc.penguin_mc);
colorObject.setRGB(penguinColor);
candyMODE = false;
