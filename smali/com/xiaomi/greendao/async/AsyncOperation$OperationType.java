package com.xiaomi.greendao.async;

public enum AsyncOperation$OperationType
{
  static
  {
    InsertInTxArray = new OperationType("InsertInTxArray", 2);
    InsertOrReplace = new OperationType("InsertOrReplace", 3);
    InsertOrReplaceInTxIterable = new OperationType("InsertOrReplaceInTxIterable", 4);
    InsertOrReplaceInTxArray = new OperationType("InsertOrReplaceInTxArray", 5);
    Update = new OperationType("Update", 6);
    UpdateInTxIterable = new OperationType("UpdateInTxIterable", 7);
    UpdateInTxArray = new OperationType("UpdateInTxArray", 8);
    Delete = new OperationType("Delete", 9);
    DeleteInTxIterable = new OperationType("DeleteInTxIterable", 10);
    DeleteInTxArray = new OperationType("DeleteInTxArray", 11);
    DeleteByKey = new OperationType("DeleteByKey", 12);
    DeleteAll = new OperationType("DeleteAll", 13);
    TransactionRunnable = new OperationType("TransactionRunnable", 14);
    TransactionCallable = new OperationType("TransactionCallable", 15);
    QueryList = new OperationType("QueryList", 16);
    QueryUnique = new OperationType("QueryUnique", 17);
    Load = new OperationType("Load", 18);
    LoadAll = new OperationType("LoadAll", 19);
  }
  
  private AsyncOperation$OperationType() {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\async\AsyncOperation$OperationType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */