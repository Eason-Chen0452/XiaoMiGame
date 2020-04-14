package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class EmailDoCoMoResultParser
  extends AbstractDoCoMoResultParser
{
  private static final Pattern ATEXT_ALPHANUMERIC = Pattern.compile("[a-zA-Z0-9@.!#$%&'*+\\-/=?^_`{|}~]+");
  
  static boolean isBasicallyValidEmailAddress(String paramString)
  {
    return (paramString != null) && (ATEXT_ALPHANUMERIC.matcher(paramString).matches()) && (paramString.indexOf('@') >= 0);
  }
  
  public EmailAddressParsedResult parse(Result paramResult)
  {
    paramResult = getMassagedText(paramResult);
    if (!paramResult.startsWith("MATMSG:")) {}
    Object localObject;
    do
    {
      do
      {
        return null;
        localObject = matchDoCoMoPrefixedField("TO:", paramResult, true);
      } while (localObject == null);
      localObject = localObject[0];
    } while (!isBasicallyValidEmailAddress((String)localObject));
    return new EmailAddressParsedResult((String)localObject, matchSingleDoCoMoPrefixedField("SUB:", paramResult, false), matchSingleDoCoMoPrefixedField("BODY:", paramResult, false), "mailto:" + (String)localObject);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\google\zxing\client\result\EmailDoCoMoResultParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */