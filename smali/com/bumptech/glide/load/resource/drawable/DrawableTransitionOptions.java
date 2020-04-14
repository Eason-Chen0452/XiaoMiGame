package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.TransitionOptions;
import com.bumptech.glide.request.transition.DrawableCrossFadeFactory;
import com.bumptech.glide.request.transition.DrawableCrossFadeFactory.Builder;
import com.bumptech.glide.request.transition.TransitionFactory;

public final class DrawableTransitionOptions
  extends TransitionOptions<DrawableTransitionOptions, Drawable>
{
  public static DrawableTransitionOptions with(TransitionFactory<Drawable> paramTransitionFactory)
  {
    return (DrawableTransitionOptions)new DrawableTransitionOptions().transition(paramTransitionFactory);
  }
  
  public static DrawableTransitionOptions withCrossFade()
  {
    return new DrawableTransitionOptions().crossFade();
  }
  
  public static DrawableTransitionOptions withCrossFade(int paramInt)
  {
    return new DrawableTransitionOptions().crossFade(paramInt);
  }
  
  public static DrawableTransitionOptions withCrossFade(int paramInt1, int paramInt2)
  {
    return new DrawableTransitionOptions().crossFade(paramInt1, paramInt2);
  }
  
  public static DrawableTransitionOptions withCrossFade(DrawableCrossFadeFactory.Builder paramBuilder)
  {
    return new DrawableTransitionOptions().crossFade(paramBuilder);
  }
  
  public static DrawableTransitionOptions withCrossFade(DrawableCrossFadeFactory paramDrawableCrossFadeFactory)
  {
    return new DrawableTransitionOptions().crossFade(paramDrawableCrossFadeFactory);
  }
  
  public DrawableTransitionOptions crossFade()
  {
    return crossFade(new DrawableCrossFadeFactory.Builder());
  }
  
  public DrawableTransitionOptions crossFade(int paramInt)
  {
    return crossFade(new DrawableCrossFadeFactory.Builder(paramInt));
  }
  
  public DrawableTransitionOptions crossFade(int paramInt1, int paramInt2)
  {
    return crossFade(new DrawableCrossFadeFactory.Builder(paramInt2).setDefaultAnimationId(paramInt1));
  }
  
  public DrawableTransitionOptions crossFade(DrawableCrossFadeFactory.Builder paramBuilder)
  {
    return crossFade(paramBuilder.build());
  }
  
  public DrawableTransitionOptions crossFade(DrawableCrossFadeFactory paramDrawableCrossFadeFactory)
  {
    return (DrawableTransitionOptions)transition(paramDrawableCrossFadeFactory);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\load\resource\drawable\DrawableTransitionOptions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */