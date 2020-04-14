package com.bumptech.glide.request.transition;

import com.bumptech.glide.load.DataSource;

public abstract interface TransitionFactory<R>
{
  public abstract Transition<R> build(DataSource paramDataSource, boolean paramBoolean);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\request\transition\TransitionFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */