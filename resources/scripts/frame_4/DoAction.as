function getCoins()
{
   var _loc2_ = new Object();
   _loc2_.score = coins * 10;
   _loc2_.coins = coins;
   _root.showWindow("Game Over",_loc2_);
}
stop();
score_label.text = _root.LocaleText.getText("score_score");
sold_label.text = _root.LocaleText.getText("score_sold");
sales_label.text = _root.LocaleText.getText("score_sales");
tips_label.text = _root.LocaleText.getText("score_tips");
total_label.text = _root.LocaleText.getText("score_total");
coins1_label.text = _root.LocaleText.getText("score_coins");
coins2_label.text = _root.LocaleText.getText("score_coins");
coins3_label.text = _root.LocaleText.getText("score_coins");
ui_done.text = _root.LocaleText.getText("ui_done");
pizzasmadeText.text = pizzasmade;
scoreText.text = score;
tipsText.text = tips;
earningsText.text = coins;
gameMODE = "gameover";
removeMovieClip("pizza");
hand.gotoAndStop("none");
threw = 1001;
while(threw < 1101)
{
   this["droppedtopping" + threw].removeMovieClip();
   threw += 1;
}
_global.pizzatron_dl.stopGame(candyMODE);
_global.pizzatron_dl.sendGameScore(candyMODE,"lame",pizzasmade,coins);
