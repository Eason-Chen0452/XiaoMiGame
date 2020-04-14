package com.mi.milink.sdk.speedtest;

import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import java.io.Serializable;
import org.json.JSONObject;

public class SpeedTestReportUdpTestInfo
  implements Serializable
{
  private static final String KEY_U_APN = "u_apn";
  private static final String KEY_U_B_RTT = "u_b_rtt";
  private static final String KEY_U_B_STATUS = "u_b_status";
  private static final String KEY_U_CLIENT_IP = "u_cip";
  private static final String KEY_U_CLIENT_ISP = "u_net_type";
  private static final String KEY_U_PORT = "u_port";
  private static final String KEY_U_READ_TIMEOUT = "u_read_timeout";
  private static final String KEY_U_SERVER_IP = "u_sip";
  private static final String KEY_U_S_RTT = "u_s_rtt";
  private static final String KEY_U_S_STATUS = "u_s_status";
  private static final long serialVersionUID = -7489351145667058626L;
  public String apn = NetworkDash.getApnName();
  public long bigRtt = 0L;
  public int bigStatus = 0;
  public String clientIp = Global.getClientIp();
  public String clientIsp = Global.getClientIsp();
  public int port = 0;
  public int readTimeout = 0;
  public String serverIp;
  public long smallRtt = 0L;
  public int smallStatus = 0;
  
  public JSONObject toJSONObject()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("u_cip", this.clientIp);
      localJSONObject.put("u_read_timeout", this.readTimeout);
      localJSONObject.put("u_net_type", this.clientIsp);
      localJSONObject.put("u_apn", this.apn);
      localJSONObject.put("u_sip", this.serverIp);
      localJSONObject.put("u_port", this.port);
      localJSONObject.put("u_b_status", this.bigStatus);
      localJSONObject.put("u_b_rtt", this.bigRtt);
      localJSONObject.put("u_s_status", this.smallStatus);
      localJSONObject.put("u_s_rtt", this.smallRtt);
      return localJSONObject;
    }
    catch (Exception localException) {}
    return localJSONObject;
  }
  
  public String toString()
  {
    return toJSONObject().toString();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\speedtest\SpeedTestReportUdpTestInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */