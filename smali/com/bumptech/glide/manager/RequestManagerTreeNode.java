package com.bumptech.glide.manager;

import com.bumptech.glide.RequestManager;
import java.util.Set;

public abstract interface RequestManagerTreeNode
{
  public abstract Set<RequestManager> getDescendants();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\manager\RequestManagerTreeNode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */