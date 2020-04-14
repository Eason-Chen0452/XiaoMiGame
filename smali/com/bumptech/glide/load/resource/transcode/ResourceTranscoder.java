package com.bumptech.glide.load.resource.transcode;

import com.bumptech.glide.load.engine.Resource;

public abstract interface ResourceTranscoder<Z, R>
{
  public abstract Resource<R> transcode(Resource<Z> paramResource);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\load\resource\transcode\ResourceTranscoder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */