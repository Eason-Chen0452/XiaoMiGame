package com.xiaomi.gamecenter.sdk.protocol;

public final class ProDefine
{
  public static String A = "/order-manager/order/v3/queryReceiptStatus";
  public static String B = "https://mis.migc.xiaomi.com/api/game/sdk/loadConfigInfo.do?";
  public static String C = "http://game.xiaomi.com";
  public static String D = "http://staging.support.miliao.xiaomi.com";
  public static String E = "mibi_payment_show_prod";
  public static String F = "mibi_payment_show_round";
  public static String G = "mibi_payment_show_userlevelexpiretime";
  public static String H = "http://notice.game.xiaomi.com";
  public static String I = "https://mibi.api.xiaomi.com";
  public static String J = "http://api.mibimagic.xiaomi.com";
  public static String K = "https://quan.mis.migc.xiaomi.com";
  public static String L = "http://lg-g-test-bill00.bj";
  public static String M = "http://miliao.migc.xiaomi.com";
  public static String N = "http://miliao.migc.g.srv:8080";
  public static String O = "http://pmall.migc.xiaomi.com/pointmall/";
  public static String P = "http://10.38.163.9/pointmall/pointmall/";
  public static String Q = "http://app.migc.xiaomi.com/cms/interface/v5";
  public static String R = "http://mis.g.mi.com";
  public static String S = "http://tj-g-vm-staging-migc-bill010.kscn";
  public static String T = "http://mis.migc.xiaomi.com";
  public static String U = "http://debug.mis.migc.xiaomi.com";
  public static String V = "https://mis.migc.xiaomi.com";
  public static String W = "http://debug.mis.migc.xiaomi.com";
  public static String X = "/quan/giftcard/list";
  public static String Y = "/quan/giftcard/consume/list";
  public static String Z = "/quan/giftcard/consume/mid/list";
  public static String a;
  public static String aA;
  public static String aB;
  public static String aC;
  public static String aD;
  public static String aE;
  public static String aF;
  public static String aG;
  public static String aH;
  public static String aI;
  public static String aJ;
  public static String aK;
  public static String aL;
  public static String aM;
  public static String aN;
  public static String aO;
  public static String aP;
  public static String aQ;
  public static String aR;
  public static String aS;
  public static String aT;
  public static String aa = "/quan/giftcard/receive";
  public static String ab = "/quan/giftcard/isExists";
  public static String ac = "/giftcard-web/giftcard/isExists";
  public static String ad = "sign.php";
  public static String ae = "/gamenotice/get";
  public static String af = "promoinfo.php";
  public static String ag = "gamepromolist.php";
  public static String ah = "/api/sdk/order/create.do";
  public static String ai = "/api/biz/order/queryOrderStatus.do";
  public static String aj = "convertCommodity.htm";
  public static String ak = "getGameCommodity.htm";
  public static String al = "getCommodityInfo.htm";
  public static String am = "/api/biz/account/createAppAccount.do";
  public static String an = "/api/biz/account/getAppAccounts.do";
  public static String ao = "/api/biz/account/getLastLoginInfo.do";
  public static String ap = "/api/sdk/verify/getMibiVerify.do";
  public static String aq = "/api/account/logout.do";
  public static String ar = "/api/account/modifyUserInfo.do";
  public static String as = "/api/biz/account/updateAppAccount.do";
  public static String at = "/api/account/uploadLoginErr.do";
  public static String au = "/api/biz/account/uploadLoginInfo.do";
  public static String av = "/api/account/verifyServiceToken.do";
  public static String aw = "/api/biz/auth/verifyApp.do";
  public static String ax = "/api/leaderboard/message/sendGameMessage";
  public static String ay = "/api/leaderboard/message/loadGameMessages";
  public static String az = "/api/leaderboard/message/acceptMessage";
  public static String b;
  public static String c;
  public static String d;
  public static String e;
  public static String f;
  public static String g;
  public static String h;
  public static String i;
  public static String j;
  public static String k;
  public static String l;
  public static String m;
  public static String n;
  public static String o;
  public static String p;
  public static String q;
  public static String r;
  public static String s;
  public static String t;
  public static String u;
  public static String v;
  public static String w;
  public static String x;
  public static String y;
  public static String z;
  
  static
  {
    aA = "/api/leaderboard/message/acceptAllMessages";
    aB = "/api/leaderboard/message/messageBlock";
    aC = "/api/leaderboard/message/sendInviteMessage";
    aD = "/api/leaderboard/gameinfo/loadGameInfo";
    aE = "/api/leaderboard/userinfo/loadGameMe";
    aF = "/api/leaderboard/friend/loadGameFriends";
    aG = "/api/leaderboard/userinfo/loadLeaderBoard";
    aH = "/api/leaderboard/heart/useHeart";
    aI = "/api/leaderboard/score/updateResult";
    aJ = "/api/leaderboard/score/updateResults";
    aK = "/api/leaderboard/me/updateMe";
    aL = "/api/leaderboard/me/deleteMe";
    aM = "/api/leaderboard/lottery/loadLotteryPrize";
    aN = "/api/leaderboard/result/syncResult";
    aO = "/api/leaderboard/result/syncResults";
    aP = "/api/leaderboard/control/callInterfaceControl";
    aQ = "/api/leaderboard/vip/getVipList";
    aR = "/api/leaderboard/group/getGroupList";
    aS = "migamecenter://acc_exchange";
    aT = aS + "?url=";
    a = "appId";
    b = "session";
    c = "key";
    d = "uid";
    e = "mid";
    f = "t";
    g = "msgId";
    h = "nonce";
    i = "nickName";
    j = "akey";
    k = "imei";
    l = "ua";
    m = ".migame";
    n = "_____";
    o = "waligamesdktoken";
    p = "errorWith40";
    q = "appAccountId";
    r = "sdkVersionCode";
    s = "platform";
    t = "channelId";
    u = "seimei";
    v = "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBALwhAzG7H7jLSmN0zs+tt+bCFr6tEpHDn4Xx6AihxDa0xbX5A/3E1zbLnvZUYIsieaq7e1Sa3gdWrj6d0uuverGp2Ox6V4dOc2AWHkRKxDRXkDYnp4Ckf3P4dVuT+KWxcvruuOwtA2hNf5gRlArtvrwO5899MdOZ43YJCyZedGODAgMBAAECgYAfRx3Q1tufTa1Ae9smjCtXIk3FxeCge3W6P03koYCN1+BHMO+I8YEWiyQSsFSczU6NJD6NAnKHpdGyd2rp5HLxbccUyfb3m26rITNqGgvwWRcsVl7YXNKwL79yfYfXIX0PW751g8fiNJp1pTlPreMyrdccegnY+gThLr59t88BAQJBAOerxpuqEqFblrv602DQ11SPT2hbsJcTFcmMgZCS/g2b61CfhCzozgeTnlF8QySA1U3xrlNERY41T9tbs9c6UMsCQQDP4qfprct07wiCZVZIijzwyGLbmmjG3fcf4agWU4BTS5NbnPKpU/o29qLruU9SwpZIcA93+GK5Z5beX9X/mPkpAkEAnPdyFb5h6RoZQzxrQ8m8W/rNnrOhLnsr4+djUgWGRMpD4dhywcrq7Y9DUYqUI4N3AtyhdKFpTzUn6kRz0XwdiQJAWsSFOlPG/RSNa5nhlaS+PQfRmj8ONp6eE06M/MqSwkvCWILrtSFUpAEGW9Q6nVEXGyPKrUBHotpnFktT/dkGGQJAD7hHlMuBKkB6X5mKsNW4lNOxKDDPAryxKlYqD5U1PMVYBmpP8fEhpFsWSUPLiD1Xqj9bg6vgB0NreOCxtVK/ew==";
    w = "timeStamp";
    x = "num";
    y = "/order-manager/order/v1/createNunifiedOrder";
    z = "/order-manager/order/v1/getNTransactionData";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\protocol\ProDefine.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */