package com.mi.milink.sdk.client.ipc;

import android.os.AsyncTask;
import com.mi.milink.sdk.debug.MiLinkTracer;
import com.mi.milink.sdk.util.CommonUtils;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;

final class ClientLog$1
  extends AsyncTask<Void, Void, Void>
{
  protected final Void doInBackground(Void... paramVarArgs)
  {
    paramVarArgs = MiLinkTracer.getLogFilePath().getAbsolutePath() + File.separator + CommonUtils.createDataFormat("yyyy-MM-dd").format(Long.valueOf(System.currentTimeMillis())) + File.separator;
    paramVarArgs = String.format("logcat -v time -f %s -t %d", new Object[] { paramVarArgs + "1.system.log", Integer.valueOf(8000) });
    ClientLog.v("Command", paramVarArgs);
    try
    {
      Runtime.getRuntime().exec(paramVarArgs);
      Runtime.getRuntime().exec("logcat -c");
      return null;
    }
    catch (IOException paramVarArgs)
    {
      for (;;) {}
    }
  }
  
  protected final void onPostExecute(Void paramVoid)
  {
    ClientLog.access$002(null);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\ipc\ClientLog$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */