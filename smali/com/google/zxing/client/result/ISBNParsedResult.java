package com.google.zxing.client.result;

public final class ISBNParsedResult
  extends ParsedResult
{
  private final String isbn;
  
  ISBNParsedResult(String paramString)
  {
    super(ParsedResultType.ISBN);
    this.isbn = paramString;
  }
  
  public String getDisplayResult()
  {
    return this.isbn;
  }
  
  public String getISBN()
  {
    return this.isbn;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\google\zxing\client\result\ISBNParsedResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */