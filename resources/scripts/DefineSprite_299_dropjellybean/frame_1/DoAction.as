stop();
onEnterFrame = function()
{
   if(this._y >= 600)
   {
      removeMovieClip(this);
   }
};
