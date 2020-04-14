package com.xiaomi.accountsdk.account;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class URLs
{
  static final String A;
  static final String B;
  public static final String C;
  static final String D;
  public static final String E;
  static final String F;
  static final String G;
  static final String H;
  static final String I;
  static final String J;
  static final String K;
  @Deprecated
  public static final String L;
  static String M;
  static final String N;
  static final String O;
  static final String P;
  static final String Q;
  static final String R;
  static final String S;
  static final String T;
  static final String U;
  static final String V;
  static final String W;
  static final String X;
  static final String Y;
  static final String Z;
  static final boolean a;
  static final String aa;
  static final String ab;
  static final String ac;
  static final String ad;
  static final String ae;
  static final String af;
  static final String ag;
  static final String ah;
  static final String ai;
  static final String aj;
  public static final String ak;
  public static final String al;
  public static final String am;
  public static final String an;
  public static final String ao;
  public static final String ap;
  static final String aq;
  static final String ar;
  static final Map<String, String> as;
  public static final String b;
  public static final String c;
  static final String d;
  public static final String e;
  static final String f;
  @Deprecated
  public static final String g;
  public static final String h;
  public static final String i;
  public static final String j;
  public static final String k;
  public static final String l;
  public static final String m;
  public static final String n;
  public static final String o;
  public static final String p;
  public static final String q;
  public static final String r;
  static String s;
  static final String t;
  public static final String u;
  public static final String v;
  public static final String w;
  public static final String x;
  static final String y;
  static final String z;
  
  static
  {
    boolean bool1 = false;
    boolean bool2 = new File("/data/system/xiaomi_account_preview").exists();
    Object localObject = XMPassportSettings.d();
    if ((localObject != null) && (!"com.xiaomi.account".equals(((Context)localObject).getPackageName())))
    {
      if ((bool2) || (((Context)localObject).getSharedPreferences("staging_sp", 0).getBoolean("is_staging", false))) {
        bool1 = true;
      }
      a = bool1;
      if (!bool1) {
        break label1646;
      }
      localObject = "http://account.preview.n.xiaomi.net";
      label70:
      b = (String)localObject;
      if (!a) {
        break label1653;
      }
      localObject = "http://account.preview.n.xiaomi.net";
      label83:
      c = (String)localObject;
      if (!a) {
        break label1660;
      }
      localObject = "account.preview.n.xiaomi.net";
      label96:
      d = (String)localObject;
      if (!a) {
        break label1667;
      }
      localObject = "http://account.preview.n.xiaomi.net/pass";
      label109:
      e = (String)localObject;
      if (!a) {
        break label1674;
      }
      localObject = "http://account.preview.n.xiaomi.net/pass";
      label122:
      f = (String)localObject;
      if (!a) {
        break label1681;
      }
      localObject = "http://api.account.preview.n.xiaomi.net/pass";
      label135:
      g = (String)localObject;
      if (!a) {
        break label1688;
      }
      localObject = "http://api.account.preview.n.xiaomi.net/pass";
      label148:
      h = (String)localObject;
      if (!a) {
        break label1695;
      }
      localObject = "http://api.account.preview.n.xiaomi.net/pass/v2";
      label161:
      i = (String)localObject;
      if (!a) {
        break label1702;
      }
      localObject = "http://api.account.preview.n.xiaomi.net/pass/v2/safe";
      label174:
      j = (String)localObject;
      if (!a) {
        break label1709;
      }
      localObject = "http://api.account.preview.n.xiaomi.net/pass/v2";
      label187:
      k = (String)localObject;
      if (!a) {
        break label1716;
      }
      localObject = "http://api.account.preview.n.xiaomi.net/pass/v3";
      label200:
      l = (String)localObject;
      if (!a) {
        break label1723;
      }
      localObject = "http://account.preview.n.xiaomi.net/oauth2/";
      label213:
      m = (String)localObject;
      if (!a) {
        break label1730;
      }
      localObject = "http://api.device.preview.n.xiaomi.net";
      label226:
      n = (String)localObject;
      o = n + "/modelinfos";
      p = n + "/api/user/device/setting";
      q = n + "/api/user/devices/setting";
      r = e + "/serviceLoginAuth2";
      s = e + "/serviceLoginAuth2";
      t = f + "/serviceLoginAuth2CA";
      u = e + "/loginStep2";
      v = l + "/user@id";
      w = j + "/user/coreInfo";
      if (!a) {
        break label1737;
      }
    }
    label1646:
    label1653:
    label1660:
    label1667:
    label1674:
    label1681:
    label1688:
    label1695:
    label1702:
    label1709:
    label1716:
    label1723:
    label1730:
    label1737:
    for (localObject = "http://open.account.preview.n.xiaomi.net/third/";; localObject = "https://open.account.xiaomi.com/third/")
    {
      x = (String)localObject;
      y = j + "/user/updateIconRequest";
      z = j + "/user/updateIconCommit";
      A = i + "/user/full";
      B = h + "/user/full/@phone";
      C = h + "/sendActivateMessage";
      D = e + "/sendPhoneTicket";
      E = e + "/getCode?icodeType=register";
      F = e + "/verifyPhoneRegTicket";
      G = e + "/sendPhoneRegTicket";
      H = e + "/verifyRegPhone";
      I = e + "/tokenRegister";
      J = e + "/auth/resetPassword";
      K = m + "authorize";
      L = e + "/serviceLogin";
      M = e + "/serviceLogin";
      N = f + "/serviceLoginCA";
      O = x + "getToken";
      P = x + "refreshToken";
      Q = j + "/user/profile";
      R = j + "/user/checkSafeEmailBindParams";
      S = j + "/user/sendBindSafeEmailVerifyMessage";
      T = j + "/user/sendBindAuthPhoneVerifyMessage";
      U = j + "/user/addPhone";
      V = j + "/user/updatePhone";
      W = j + "/user/deletePhone";
      X = j + "/user/replaceSafeEmailAddress";
      Y = j + "/user/addSafeEmailAddress";
      Z = j + "/user/sendEmailActivateMessage";
      aa = j + "/user/setSafeQuestions";
      ab = j + "/user/addPhoneAuth";
      ac = j + "/user/updatePhoneAuth";
      ad = j + "/user/deletePhoneAuth";
      ae = j + "/user/replaceSafeEmailAddressAuth";
      af = j + "/user/addSafeEmailAddressAuth";
      ag = j + "/user/sendEmailActivateMessageAuth";
      ah = j + "/user/setSafeQuestionsAuth";
      ai = j + "/user/modifySafePhoneAuth";
      aj = j + "/user/checkPhoneActivateStatus";
      ak = e + "/getCode?icodeType=antispam";
      al = j + "/user/changePassword";
      am = j + "/user/region";
      an = j + "/user/setLocation";
      ao = j + "/user/setEducation";
      ap = j + "/user/setIncome";
      aq = b + "/appConf/randomPwd";
      ar = e + "/register";
      localObject = new HashMap();
      as = (Map)localObject;
      ((Map)localObject).put(M, N);
      as.put(s, t);
      return;
      bool1 = bool2;
      break;
      localObject = "https://account.xiaomi.com";
      break label70;
      localObject = "https://c.id.mi.com";
      break label83;
      localObject = "account.xiaomi.com";
      break label96;
      localObject = "https://account.xiaomi.com/pass";
      break label109;
      localObject = "http://c.id.mi.com/pass";
      break label122;
      localObject = "http://api.account.xiaomi.com/pass";
      break label135;
      localObject = "https://api.account.xiaomi.com/pass";
      break label148;
      localObject = "https://api.account.xiaomi.com/pass/v2";
      break label161;
      localObject = "https://api.account.xiaomi.com/pass/v2/safe";
      break label174;
      localObject = "https://api.account.xiaomi.com/pass/v2";
      break label187;
      localObject = "https://api.account.xiaomi.com/pass/v3";
      break label200;
      localObject = "https://account.xiaomi.com/oauth2/";
      break label213;
      localObject = "https://api.device.xiaomi.net";
      break label226;
    }
  }
  
  public static String a(String paramString)
  {
    return (String)as.get(paramString);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\URLs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */