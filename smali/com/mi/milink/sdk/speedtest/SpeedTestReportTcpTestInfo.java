package com.mi.milink.sdk.speedtest;

import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import java.io.Serializable;
import org.json.JSONObject;

public class SpeedTestReportTcpTestInfo
  implements Serializable
{
  private static final String KEY_T_APN = "t_apn";
  private static final String KEY_T_CLIENT_IP = "t_cip";
  private static final String KEY_T_CLIENT_ISP = "t_net_type";
  private static final String KEY_T_CONNECT_TIME = "t_connect_time";
  private static final String KEY_T_CONNECT_TIMEOUT = "t_connect_timeout";
  private static final String KEY_T_PORT = "t_port";
  private static final String KEY_T_READ_TIMEOUT = "t_read_timeout";
  private static final String KEY_T_RTT = "t_rtt";
  private static final String KEY_T_SERVER_IP = "t_sip";
  private static final String KEY_T_STATUS = "t_status";
  private static final long serialVersionUID = -8004880902871144705L;
  public String apn = NetworkDash.getApnName();
  public String clientIp = Global.getClientIp();
  public String clientIsp = Global.getClientIsp();
  public long connectTime = 0L;
  public int connectTimeout = 0;
  public int port = 0;
  public int readTimeout = 0;
  public long rtt = 0L;
  public String serverIp;
  public int status = 0;
  
  public JSONObject toJSONObject()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("t_cip", this.clientIp);
      localJSONObject.put("t_connect_timeout", this.connectTimeout);
      localJSONObject.put("t_read_timeout", this.readTimeout);
      localJSONObject.put("t_net_type", this.clientIsp);
      localJSONObject.put("t_apn", this.apn);
      localJSONObject.put("t_sip", this.serverIp);
      localJSONObject.put("t_port", this.port);
      localJSONObject.put("t_connect_time", this.connectTime);
      localJSONObject.put("t_status", this.status);
      localJSONObject.put("t_rtt", this.rtt);
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


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\speedtest\SpeedTestReportTcpTestInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */