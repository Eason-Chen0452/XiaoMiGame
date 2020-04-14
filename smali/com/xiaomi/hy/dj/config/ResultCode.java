package com.xiaomi.hy.dj.config;

import java.util.HashMap;
import java.util.Map;

public class ResultCode
{
  public static final int CREATE_UNDEFINEORDER_ERROR = 3062;
  public static final int GET_PAYINTO_ERROR = 3063;
  public static final int GET_SESSION_ERROR = 3061;
  public static final int NET_ERROR = 3060;
  public static final int NOT_INSTALL_QQ = 3067;
  public static final int ORDER_HAS_BUY = 184;
  public static final int PAY_CANCEL = 185;
  public static final int QUERY_ORDER_ERROR = 3064;
  public static final int REPOR_ALI_CALLED = 168;
  public static final int REPOR_ALI_CANCEL = 170;
  public static final int REPOR_ALI_FAIL = 171;
  public static final int REPOR_ALI_SUCCESS = 169;
  public static final int REPOR_PAYECO_CALLED = 186;
  public static final int REPOR_PAYECO_CANCEL = 188;
  public static final int REPOR_PAYECO_FAIL = 189;
  public static final int REPOR_PAYECO_SUCCESS = 187;
  public static final int REPOR_QQWAP_CALLED = 180;
  public static final int REPOR_QQWAP_CANCEL = 182;
  public static final int REPOR_QQWAP_FAIL = 183;
  public static final int REPOR_QQWAP_SUCCESS = 181;
  public static final int REPOR_SZFPAY_CALLED = 190;
  public static final int REPOR_SZFPAY_CANCEL = 192;
  public static final int REPOR_SZFPAY_FAIL = 193;
  public static final int REPOR_SZFPAY_SUCCESS = 191;
  public static final int REPOR_WXSCAN_CALLED = 176;
  public static final int REPOR_WXSCAN_CANCEL = 178;
  public static final int REPOR_WXSCAN_FAIL = 179;
  public static final int REPOR_WXSCAN_SUCCESS = 177;
  public static final int REPOR_WXWAP_CALLED = 172;
  public static final int REPOR_WXWAP_CANCEL = 174;
  public static final int REPOR_WXWAP_FAIL = 175;
  public static final int REPOR_WXWAP_SUCCESS = 173;
  public static final int VERIFY_ERROR = 3066;
  public static final int VERIFY_FAIL = 3065;
  public static Map<Integer, String> errorMap;
  
  static
  {
    HashMap localHashMap = new HashMap();
    errorMap = localHashMap;
    localHashMap.put(Integer.valueOf(173), "支付成功");
    errorMap.put(Integer.valueOf(174), "取消支付");
    errorMap.put(Integer.valueOf(175), "支付失败");
    errorMap.put(Integer.valueOf(177), "支付成功");
    errorMap.put(Integer.valueOf(178), "取消支付");
    errorMap.put(Integer.valueOf(179), "支付失败");
    errorMap.put(Integer.valueOf(169), "支付成功");
    errorMap.put(Integer.valueOf(170), "取消支付");
    errorMap.put(Integer.valueOf(171), "支付失败");
    errorMap.put(Integer.valueOf(181), "支付成功");
    errorMap.put(Integer.valueOf(182), "取消支付");
    errorMap.put(Integer.valueOf(183), "支付失败");
    errorMap.put(Integer.valueOf(187), "支付成功");
    errorMap.put(Integer.valueOf(188), "取消支付");
    errorMap.put(Integer.valueOf(189), "支付失败");
    errorMap.put(Integer.valueOf(191), "支付成功");
    errorMap.put(Integer.valueOf(192), "取消支付");
    errorMap.put(Integer.valueOf(193), "支付失败");
    errorMap.put(Integer.valueOf(3067), "未安装QQ");
    errorMap.put(Integer.valueOf(3061), "获取session错误");
    errorMap.put(Integer.valueOf(3062), "创建预订单错误");
    errorMap.put(Integer.valueOf(184), "创建预订单错误");
    errorMap.put(Integer.valueOf(3063), "获取支付信息错误");
    errorMap.put(Integer.valueOf(3064), "查询订单错误");
    errorMap.put(Integer.valueOf(184), "用户已购买");
    errorMap.put(Integer.valueOf(3060), "网络错误");
    errorMap.put(Integer.valueOf(3065), "实名认证失败");
    errorMap.put(Integer.valueOf(185), "支付取消");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\config\ResultCode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */