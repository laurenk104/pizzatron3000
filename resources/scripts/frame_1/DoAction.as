function playbackgroundAudio()
{
   var _loc3_ = this.createEmptyMovieClip("bgSoundClip",this.getNextHighestDepth());
   var _loc4_ = 45;
   var _loc2_ = new Sound(_loc3_);
   _loc2_.attachSound("backgroundLoop");
   _loc2_.setVolume(_loc4_);
   _loc2_.start(0,99);
}
stop();
var listener = new Object();
listener.onLoadComplete = function()
{
   gotoAndPlay(2);
   com.clubpenguin.util.Loader.removeEventListener(listener);
};
com.clubpenguin.util.Loader.addEventListener(listener);
playbackgroundAudio();
