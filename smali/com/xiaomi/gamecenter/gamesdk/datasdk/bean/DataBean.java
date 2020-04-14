package com.xiaomi.gamecenter.gamesdk.datasdk.bean;

import java.util.List;

public class DataBean
  extends BaseEntity
{
  private List<BBean> B;
  private HBean H;
  
  public DataBean(HBean paramHBean, List<BBean> paramList)
  {
    this.H = paramHBean;
    this.B = paramList;
  }
  
  public List<BBean> getB()
  {
    return this.B;
  }
  
  public HBean getH()
  {
    return this.H;
  }
  
  public void setB(List<BBean> paramList)
  {
    this.B = paramList;
  }
  
  public void setH(HBean paramHBean)
  {
    this.H = paramHBean;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\bean\DataBean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */