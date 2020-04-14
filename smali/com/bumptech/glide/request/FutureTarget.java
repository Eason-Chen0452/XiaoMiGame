package com.bumptech.glide.request;

import com.bumptech.glide.request.target.Target;
import java.util.concurrent.Future;

public abstract interface FutureTarget<R>
  extends Future<R>, Target<R>
{}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\request\FutureTarget.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */