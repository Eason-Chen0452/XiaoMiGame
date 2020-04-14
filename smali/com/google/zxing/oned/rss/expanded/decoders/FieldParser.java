package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;

final class FieldParser
{
  private static final Object[][] FOUR_DIGIT_DATA_LENGTH;
  private static final Object[][] THREE_DIGIT_DATA_LENGTH;
  private static final Object[][] THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH;
  private static final Object[][] TWO_DIGIT_DATA_LENGTH;
  private static final Object VARIABLE_LENGTH = new Object();
  
  static
  {
    Object[] arrayOfObject1 = { "01", Integer.valueOf(14) };
    Object localObject1 = VARIABLE_LENGTH;
    Object localObject2 = VARIABLE_LENGTH;
    Object[] arrayOfObject2 = { "22", VARIABLE_LENGTH, Integer.valueOf(29) };
    Object localObject3 = VARIABLE_LENGTH;
    Object localObject4 = VARIABLE_LENGTH;
    Object localObject5 = VARIABLE_LENGTH;
    Object localObject6 = VARIABLE_LENGTH;
    Object[] arrayOfObject3 = { "92", VARIABLE_LENGTH, Integer.valueOf(30) };
    Object localObject7 = VARIABLE_LENGTH;
    Object localObject8 = VARIABLE_LENGTH;
    Object localObject9 = VARIABLE_LENGTH;
    Object localObject10 = VARIABLE_LENGTH;
    Object localObject11 = VARIABLE_LENGTH;
    Object localObject12 = VARIABLE_LENGTH;
    Object[] arrayOfObject4 = { "99", VARIABLE_LENGTH, Integer.valueOf(30) };
    TWO_DIGIT_DATA_LENGTH = new Object[][] { { "00", Integer.valueOf(18) }, arrayOfObject1, { "02", Integer.valueOf(14) }, { "10", localObject1, Integer.valueOf(20) }, { "11", Integer.valueOf(6) }, { "12", Integer.valueOf(6) }, { "13", Integer.valueOf(6) }, { "15", Integer.valueOf(6) }, { "17", Integer.valueOf(6) }, { "20", Integer.valueOf(2) }, { "21", localObject2, Integer.valueOf(20) }, arrayOfObject2, { "30", localObject3, Integer.valueOf(8) }, { "37", localObject4, Integer.valueOf(8) }, { "90", localObject5, Integer.valueOf(30) }, { "91", localObject6, Integer.valueOf(30) }, arrayOfObject3, { "93", localObject7, Integer.valueOf(30) }, { "94", localObject8, Integer.valueOf(30) }, { "95", localObject9, Integer.valueOf(30) }, { "96", localObject10, Integer.valueOf(30) }, { "97", localObject11, Integer.valueOf(30) }, { "98", localObject12, Integer.valueOf(30) }, arrayOfObject4 };
    localObject1 = VARIABLE_LENGTH;
    localObject2 = VARIABLE_LENGTH;
    localObject6 = new Object[] { "242", VARIABLE_LENGTH, Integer.valueOf(6) };
    localObject7 = new Object[] { "250", VARIABLE_LENGTH, Integer.valueOf(30) };
    localObject3 = VARIABLE_LENGTH;
    localObject8 = new Object[] { "253", VARIABLE_LENGTH, Integer.valueOf(17) };
    localObject9 = new Object[] { "254", VARIABLE_LENGTH, Integer.valueOf(20) };
    localObject10 = new Object[] { "400", VARIABLE_LENGTH, Integer.valueOf(30) };
    localObject11 = new Object[] { "401", VARIABLE_LENGTH, Integer.valueOf(30) };
    localObject4 = VARIABLE_LENGTH;
    localObject12 = new Object[] { "410", Integer.valueOf(13) };
    localObject5 = VARIABLE_LENGTH;
    arrayOfObject1 = new Object[] { "421", VARIABLE_LENGTH, Integer.valueOf(15) };
    arrayOfObject2 = new Object[] { "422", Integer.valueOf(3) };
    arrayOfObject3 = new Object[] { "423", VARIABLE_LENGTH, Integer.valueOf(15) };
    arrayOfObject4 = new Object[] { "424", Integer.valueOf(3) };
    Object[] arrayOfObject5 = { "425", Integer.valueOf(3) };
    Object[] arrayOfObject6 = { "426", Integer.valueOf(3) };
    THREE_DIGIT_DATA_LENGTH = new Object[][] { { "240", localObject1, Integer.valueOf(30) }, { "241", localObject2, Integer.valueOf(30) }, localObject6, localObject7, { "251", localObject3, Integer.valueOf(30) }, localObject8, localObject9, localObject10, localObject11, { "402", Integer.valueOf(17) }, { "403", localObject4, Integer.valueOf(30) }, localObject12, { "411", Integer.valueOf(13) }, { "412", Integer.valueOf(13) }, { "413", Integer.valueOf(13) }, { "414", Integer.valueOf(13) }, { "420", localObject5, Integer.valueOf(20) }, arrayOfObject1, arrayOfObject2, arrayOfObject3, arrayOfObject4, arrayOfObject5, arrayOfObject6 };
    localObject3 = new Object[] { "310", Integer.valueOf(6) };
    localObject4 = new Object[] { "311", Integer.valueOf(6) };
    localObject5 = new Object[] { "313", Integer.valueOf(6) };
    localObject6 = new Object[] { "314", Integer.valueOf(6) };
    localObject7 = new Object[] { "315", Integer.valueOf(6) };
    localObject8 = new Object[] { "320", Integer.valueOf(6) };
    localObject9 = new Object[] { "321", Integer.valueOf(6) };
    localObject10 = new Object[] { "323", Integer.valueOf(6) };
    localObject11 = new Object[] { "324", Integer.valueOf(6) };
    localObject12 = new Object[] { "327", Integer.valueOf(6) };
    arrayOfObject1 = new Object[] { "332", Integer.valueOf(6) };
    arrayOfObject2 = new Object[] { "334", Integer.valueOf(6) };
    arrayOfObject3 = new Object[] { "342", Integer.valueOf(6) };
    arrayOfObject4 = new Object[] { "345", Integer.valueOf(6) };
    arrayOfObject5 = new Object[] { "346", Integer.valueOf(6) };
    arrayOfObject6 = new Object[] { "347", Integer.valueOf(6) };
    Object[] arrayOfObject7 = { "348", Integer.valueOf(6) };
    Object[] arrayOfObject8 = { "349", Integer.valueOf(6) };
    Object[] arrayOfObject9 = { "350", Integer.valueOf(6) };
    Object[] arrayOfObject10 = { "351", Integer.valueOf(6) };
    Object[] arrayOfObject11 = { "352", Integer.valueOf(6) };
    Object[] arrayOfObject12 = { "354", Integer.valueOf(6) };
    Object[] arrayOfObject13 = { "355", Integer.valueOf(6) };
    Object[] arrayOfObject14 = { "356", Integer.valueOf(6) };
    Object[] arrayOfObject15 = { "357", Integer.valueOf(6) };
    Object[] arrayOfObject16 = { "361", Integer.valueOf(6) };
    Object[] arrayOfObject17 = { "362", Integer.valueOf(6) };
    Object[] arrayOfObject18 = { "363", Integer.valueOf(6) };
    Object[] arrayOfObject19 = { "365", Integer.valueOf(6) };
    Object[] arrayOfObject20 = { "366", Integer.valueOf(6) };
    Object[] arrayOfObject21 = { "367", Integer.valueOf(6) };
    Object[] arrayOfObject22 = { "368", Integer.valueOf(6) };
    localObject1 = VARIABLE_LENGTH;
    Object[] arrayOfObject23 = { "391", VARIABLE_LENGTH, Integer.valueOf(18) };
    Object[] arrayOfObject24 = { "392", VARIABLE_LENGTH, Integer.valueOf(15) };
    localObject2 = VARIABLE_LENGTH;
    Object[] arrayOfObject25 = { "703", VARIABLE_LENGTH, Integer.valueOf(30) };
    THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH = new Object[][] { localObject3, localObject4, { "312", Integer.valueOf(6) }, localObject5, localObject6, localObject7, { "316", Integer.valueOf(6) }, localObject8, localObject9, { "322", Integer.valueOf(6) }, localObject10, localObject11, { "325", Integer.valueOf(6) }, { "326", Integer.valueOf(6) }, localObject12, { "328", Integer.valueOf(6) }, { "329", Integer.valueOf(6) }, { "330", Integer.valueOf(6) }, { "331", Integer.valueOf(6) }, arrayOfObject1, { "333", Integer.valueOf(6) }, arrayOfObject2, { "335", Integer.valueOf(6) }, { "336", Integer.valueOf(6) }, { "340", Integer.valueOf(6) }, { "341", Integer.valueOf(6) }, arrayOfObject3, { "343", Integer.valueOf(6) }, { "344", Integer.valueOf(6) }, arrayOfObject4, arrayOfObject5, arrayOfObject6, arrayOfObject7, arrayOfObject8, arrayOfObject9, arrayOfObject10, arrayOfObject11, { "353", Integer.valueOf(6) }, arrayOfObject12, arrayOfObject13, arrayOfObject14, arrayOfObject15, { "360", Integer.valueOf(6) }, arrayOfObject16, arrayOfObject17, arrayOfObject18, { "364", Integer.valueOf(6) }, arrayOfObject19, arrayOfObject20, arrayOfObject21, arrayOfObject22, { "369", Integer.valueOf(6) }, { "390", localObject1, Integer.valueOf(15) }, arrayOfObject23, arrayOfObject24, { "393", localObject2, Integer.valueOf(18) }, arrayOfObject25 };
    localObject4 = new Object[] { "7001", Integer.valueOf(13) };
    localObject5 = new Object[] { "7002", VARIABLE_LENGTH, Integer.valueOf(30) };
    localObject6 = new Object[] { "8001", Integer.valueOf(14) };
    localObject7 = new Object[] { "8002", VARIABLE_LENGTH, Integer.valueOf(20) };
    localObject1 = VARIABLE_LENGTH;
    localObject8 = new Object[] { "8004", VARIABLE_LENGTH, Integer.valueOf(30) };
    localObject9 = new Object[] { "8005", Integer.valueOf(6) };
    localObject10 = new Object[] { "8006", Integer.valueOf(18) };
    localObject11 = new Object[] { "8007", VARIABLE_LENGTH, Integer.valueOf(30) };
    localObject2 = VARIABLE_LENGTH;
    localObject12 = new Object[] { "8020", VARIABLE_LENGTH, Integer.valueOf(25) };
    arrayOfObject1 = new Object[] { "8100", Integer.valueOf(6) };
    arrayOfObject2 = new Object[] { "8102", Integer.valueOf(2) };
    localObject3 = VARIABLE_LENGTH;
    FOUR_DIGIT_DATA_LENGTH = new Object[][] { localObject4, localObject5, { "7003", Integer.valueOf(10) }, localObject6, localObject7, { "8003", localObject1, Integer.valueOf(30) }, localObject8, localObject9, localObject10, localObject11, { "8008", localObject2, Integer.valueOf(12) }, { "8018", Integer.valueOf(18) }, localObject12, arrayOfObject1, { "8101", Integer.valueOf(10) }, arrayOfObject2, { "8110", localObject3, Integer.valueOf(30) } };
  }
  
  static String parseFieldsInGeneralPurpose(String paramString)
    throws NotFoundException
  {
    if (paramString.length() == 0) {
      return null;
    }
    if (paramString.length() < 2) {
      throw NotFoundException.getNotFoundInstance();
    }
    String str = paramString.substring(0, 2);
    Object[][] arrayOfObject = TWO_DIGIT_DATA_LENGTH;
    int j = arrayOfObject.length;
    int i = 0;
    Object[] arrayOfObject1;
    while (i < j)
    {
      arrayOfObject1 = arrayOfObject[i];
      if (arrayOfObject1[0].equals(str))
      {
        if (arrayOfObject1[1] == VARIABLE_LENGTH) {
          return processVariableAI(2, ((Integer)arrayOfObject1[2]).intValue(), paramString);
        }
        return processFixedAI(2, ((Integer)arrayOfObject1[1]).intValue(), paramString);
      }
      i += 1;
    }
    if (paramString.length() < 3) {
      throw NotFoundException.getNotFoundInstance();
    }
    str = paramString.substring(0, 3);
    arrayOfObject = THREE_DIGIT_DATA_LENGTH;
    j = arrayOfObject.length;
    i = 0;
    while (i < j)
    {
      arrayOfObject1 = arrayOfObject[i];
      if (arrayOfObject1[0].equals(str))
      {
        if (arrayOfObject1[1] == VARIABLE_LENGTH) {
          return processVariableAI(3, ((Integer)arrayOfObject1[2]).intValue(), paramString);
        }
        return processFixedAI(3, ((Integer)arrayOfObject1[1]).intValue(), paramString);
      }
      i += 1;
    }
    arrayOfObject = THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH;
    j = arrayOfObject.length;
    i = 0;
    while (i < j)
    {
      arrayOfObject1 = arrayOfObject[i];
      if (arrayOfObject1[0].equals(str))
      {
        if (arrayOfObject1[1] == VARIABLE_LENGTH) {
          return processVariableAI(4, ((Integer)arrayOfObject1[2]).intValue(), paramString);
        }
        return processFixedAI(4, ((Integer)arrayOfObject1[1]).intValue(), paramString);
      }
      i += 1;
    }
    if (paramString.length() < 4) {
      throw NotFoundException.getNotFoundInstance();
    }
    str = paramString.substring(0, 4);
    arrayOfObject = FOUR_DIGIT_DATA_LENGTH;
    j = arrayOfObject.length;
    i = 0;
    while (i < j)
    {
      arrayOfObject1 = arrayOfObject[i];
      if (arrayOfObject1[0].equals(str))
      {
        if (arrayOfObject1[1] == VARIABLE_LENGTH) {
          return processVariableAI(4, ((Integer)arrayOfObject1[2]).intValue(), paramString);
        }
        return processFixedAI(4, ((Integer)arrayOfObject1[1]).intValue(), paramString);
      }
      i += 1;
    }
    throw NotFoundException.getNotFoundInstance();
  }
  
  private static String processFixedAI(int paramInt1, int paramInt2, String paramString)
    throws NotFoundException
  {
    if (paramString.length() < paramInt1) {
      throw NotFoundException.getNotFoundInstance();
    }
    String str1 = paramString.substring(0, paramInt1);
    if (paramString.length() < paramInt1 + paramInt2) {
      throw NotFoundException.getNotFoundInstance();
    }
    String str2 = paramString.substring(paramInt1, paramInt1 + paramInt2);
    paramString = paramString.substring(paramInt1 + paramInt2);
    str1 = '(' + str1 + ')' + str2;
    paramString = parseFieldsInGeneralPurpose(paramString);
    if (paramString == null) {
      return str1;
    }
    return str1 + paramString;
  }
  
  private static String processVariableAI(int paramInt1, int paramInt2, String paramString)
    throws NotFoundException
  {
    String str1 = paramString.substring(0, paramInt1);
    if (paramString.length() < paramInt1 + paramInt2) {}
    for (paramInt2 = paramString.length();; paramInt2 = paramInt1 + paramInt2)
    {
      String str2 = paramString.substring(paramInt1, paramInt2);
      paramString = paramString.substring(paramInt2);
      str1 = '(' + str1 + ')' + str2;
      paramString = parseFieldsInGeneralPurpose(paramString);
      if (paramString != null) {
        break;
      }
      return str1;
    }
    return str1 + paramString;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\google\zxing\oned\rss\expanded\decoders\FieldParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */