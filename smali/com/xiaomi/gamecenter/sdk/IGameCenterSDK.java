package com.xiaomi.gamecenter.sdk;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.widget.RemoteViews;
import com.xiaomi.gamecenter.sdk.account.MilinkAccountProps;
import com.xiaomi.gamecenter.sdk.entry.CardBuyInfo;
import com.xiaomi.gamecenter.sdk.entry.LifecycleInfo;
import com.xiaomi.gamecenter.sdk.entry.LoginResult;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfo;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfoOffline;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfoOnline;
import com.xiaomi.gamecenter.sdk.entry.SdkJarInfo;
import com.xiaomi.gamecenter.sdk.entry.ServiceInfo;
import com.xiaomi.gamecenter.sdk.gam.GamMetaInfo;
import com.xiaomi.gamecenter.sdk.gam.MiGamMessageResponse;
import com.xiaomi.gamecenter.sdk.gam.MiliaoInfo;
import com.xiaomi.gamecenter.sdk.gam.ScoresEntry;

public abstract interface IGameCenterSDK
  extends IInterface
{
  public abstract boolean ConnService(MiAppInfo paramMiAppInfo, String paramString)
    throws RemoteException;
  
  public abstract int ConnServiceNew(MiAppInfo paramMiAppInfo, String paramString)
    throws RemoteException;
  
  public abstract MiGamMessageResponse acceptAllMessage()
    throws RemoteException;
  
  public abstract MiGamMessageResponse acceptMessage(String paramString)
    throws RemoteException;
  
  public abstract int appExit()
    throws RemoteException;
  
  public abstract int authAccount(boolean paramBoolean)
    throws RemoteException;
  
  public abstract boolean canPayForWX(Bundle paramBundle)
    throws RemoteException;
  
  public abstract MiGamMessageResponse checkJoinedUnion(String paramString)
    throws RemoteException;
  
  public abstract MiGamMessageResponse checkMiTalkStatus()
    throws RemoteException;
  
  public abstract MiGamMessageResponse checkVipIsScubscribed(String paramString)
    throws RemoteException;
  
  public abstract MiGamMessageResponse deleteMe()
    throws RemoteException;
  
  public abstract ServiceInfo exchangeInfo(SdkJarInfo paramSdkJarInfo)
    throws RemoteException;
  
  public abstract String getDeviceID()
    throws RemoteException;
  
  public abstract String getFuid(String paramString)
    throws RemoteException;
  
  public abstract MilinkAccountProps getMilinkProps(String paramString)
    throws RemoteException;
  
  public abstract RemoteViews getRemoteViews(String paramString)
    throws RemoteException;
  
  public abstract MiGamMessageResponse getUnionList()
    throws RemoteException;
  
  public abstract MiGamMessageResponse getVipList()
    throws RemoteException;
  
  public abstract Bundle isMiAccountLogin()
    throws RemoteException;
  
  public abstract MiGamMessageResponse joinUnion(String paramString1, String paramString2)
    throws RemoteException;
  
  public abstract void lifecycleCallback(LifecycleInfo paramLifecycleInfo)
    throws RemoteException;
  
  public abstract MiGamMessageResponse loadGameFriends()
    throws RemoteException;
  
  public abstract MiGamMessageResponse loadGameInfo()
    throws RemoteException;
  
  public abstract MiGamMessageResponse loadGameMe()
    throws RemoteException;
  
  public abstract MiGamMessageResponse loadGameMessage()
    throws RemoteException;
  
  public abstract MiGamMessageResponse loadLeaderBoard(String paramString, int paramInt1, int paramInt2)
    throws RemoteException;
  
  public abstract MiGamMessageResponse loadLotteryPrize()
    throws RemoteException;
  
  public abstract MiGamMessageResponse messageBlock(boolean paramBoolean)
    throws RemoteException;
  
  public abstract int miCardPay(CardBuyInfo paramCardBuyInfo, String paramString, Bundle paramBundle)
    throws RemoteException;
  
  public abstract MiAccountInfo miGetAccountInfo(String paramString)
    throws RemoteException;
  
  public abstract LoginResult miLogin(String paramString1, String paramString2, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void miLogout(String paramString)
    throws RemoteException;
  
  public abstract int miPayForWX(MiBuyInfo paramMiBuyInfo)
    throws RemoteException;
  
  public abstract int miUniPay(MiBuyInfo paramMiBuyInfo, String paramString1, String paramString2)
    throws RemoteException;
  
  public abstract int miUniPayOffline(MiBuyInfoOffline paramMiBuyInfoOffline, String paramString1, Bundle paramBundle, String paramString2)
    throws RemoteException;
  
  public abstract int miUniPayOnline(MiBuyInfoOnline paramMiBuyInfoOnline, String paramString1, Bundle paramBundle, String paramString2)
    throws RemoteException;
  
  public abstract int miWindow()
    throws RemoteException;
  
  public abstract void openAppReport(MiAppInfo paramMiAppInfo, String paramString)
    throws RemoteException;
  
  public abstract void openAppReportForInit(MiAppInfo paramMiAppInfo, String paramString)
    throws RemoteException;
  
  public abstract void openMiTalkUpdateSite()
    throws RemoteException;
  
  public abstract void registCallback(IServiceCallback paramIServiceCallback, String paramString)
    throws RemoteException;
  
  public abstract MiGamMessageResponse sendGameMessage(String paramString1, boolean paramBoolean, String paramString2, String paramString3, int paramInt, byte[] paramArrayOfByte, GamMetaInfo[] paramArrayOfGamMetaInfo)
    throws RemoteException;
  
  public abstract MiGamMessageResponse sendInviteMessage(String paramString1, boolean paramBoolean, String paramString2, GamMetaInfo[] paramArrayOfGamMetaInfo, MiliaoInfo paramMiliaoInfo)
    throws RemoteException;
  
  public abstract MiGamMessageResponse sendInviteMessageNew(String paramString1, String paramString2, String paramString3, MiliaoInfo paramMiliaoInfo)
    throws RemoteException;
  
  public abstract void sendLogToService(String paramString)
    throws RemoteException;
  
  public abstract MiGamMessageResponse sendTextMsgToFriend()
    throws RemoteException;
  
  public abstract MiGamMessageResponse shareToMiTalkForImgAndUrl(String paramString1, String paramString2, String paramString3, String paramString4, MiliaoInfo paramMiliaoInfo)
    throws RemoteException;
  
  public abstract MiGamMessageResponse shareToMiliao(MiliaoInfo paramMiliaoInfo, String paramString1, String paramString2, String paramString3)
    throws RemoteException;
  
  public abstract MiGamMessageResponse shareToMiliaoForLargeImg(String paramString1, String paramString2, MiliaoInfo paramMiliaoInfo)
    throws RemoteException;
  
  public abstract MiGamMessageResponse subscribeVip(String paramString)
    throws RemoteException;
  
  public abstract MiGamMessageResponse syncResult(String paramString, int paramInt1, int paramInt2, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws RemoteException;
  
  public abstract MiGamMessageResponse syncResults(ScoresEntry[] paramArrayOfScoresEntry, int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws RemoteException;
  
  public abstract void unregistCallBack(IServiceCallback paramIServiceCallback, String paramString)
    throws RemoteException;
  
  public abstract MiGamMessageResponse updateMe(int paramInt1, int paramInt2, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws RemoteException;
  
  public abstract MiGamMessageResponse updateResult(String paramString1, int paramInt1, int paramInt2, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, String paramString2, int paramInt3, String paramString3)
    throws RemoteException;
  
  public abstract MiGamMessageResponse updateResults(ScoresEntry[] paramArrayOfScoresEntry, int paramInt1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, String paramString1, int paramInt2, String paramString2)
    throws RemoteException;
  
  public abstract MiGamMessageResponse useHeart(int paramInt, boolean paramBoolean)
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements IGameCenterSDK
  {
    private static final String DESCRIPTOR = "com.xiaomi.gamecenter.sdk.IGameCenterSDK";
    static final int TRANSACTION_ConnService = 1;
    static final int TRANSACTION_ConnServiceNew = 49;
    static final int TRANSACTION_acceptAllMessage = 21;
    static final int TRANSACTION_acceptMessage = 20;
    static final int TRANSACTION_appExit = 47;
    static final int TRANSACTION_authAccount = 52;
    static final int TRANSACTION_canPayForWX = 51;
    static final int TRANSACTION_checkJoinedUnion = 38;
    static final int TRANSACTION_checkMiTalkStatus = 36;
    static final int TRANSACTION_checkVipIsScubscribed = 40;
    static final int TRANSACTION_deleteMe = 28;
    static final int TRANSACTION_exchangeInfo = 54;
    static final int TRANSACTION_getDeviceID = 53;
    static final int TRANSACTION_getFuid = 56;
    static final int TRANSACTION_getMilinkProps = 57;
    static final int TRANSACTION_getRemoteViews = 12;
    static final int TRANSACTION_getUnionList = 42;
    static final int TRANSACTION_getVipList = 43;
    static final int TRANSACTION_isMiAccountLogin = 48;
    static final int TRANSACTION_joinUnion = 37;
    static final int TRANSACTION_lifecycleCallback = 55;
    static final int TRANSACTION_loadGameFriends = 16;
    static final int TRANSACTION_loadGameInfo = 14;
    static final int TRANSACTION_loadGameMe = 15;
    static final int TRANSACTION_loadGameMessage = 19;
    static final int TRANSACTION_loadLeaderBoard = 25;
    static final int TRANSACTION_loadLotteryPrize = 29;
    static final int TRANSACTION_messageBlock = 26;
    static final int TRANSACTION_miCardPay = 6;
    static final int TRANSACTION_miGetAccountInfo = 7;
    static final int TRANSACTION_miLogin = 2;
    static final int TRANSACTION_miLogout = 3;
    static final int TRANSACTION_miPayForWX = 50;
    static final int TRANSACTION_miUniPay = 13;
    static final int TRANSACTION_miUniPayOffline = 4;
    static final int TRANSACTION_miUniPayOnline = 5;
    static final int TRANSACTION_miWindow = 11;
    static final int TRANSACTION_openAppReport = 10;
    static final int TRANSACTION_openAppReportForInit = 46;
    static final int TRANSACTION_openMiTalkUpdateSite = 44;
    static final int TRANSACTION_registCallback = 8;
    static final int TRANSACTION_sendGameMessage = 18;
    static final int TRANSACTION_sendInviteMessage = 27;
    static final int TRANSACTION_sendInviteMessageNew = 35;
    static final int TRANSACTION_sendLogToService = 31;
    static final int TRANSACTION_sendTextMsgToFriend = 41;
    static final int TRANSACTION_shareToMiTalkForImgAndUrl = 45;
    static final int TRANSACTION_shareToMiliao = 30;
    static final int TRANSACTION_shareToMiliaoForLargeImg = 34;
    static final int TRANSACTION_subscribeVip = 39;
    static final int TRANSACTION_syncResult = 32;
    static final int TRANSACTION_syncResults = 33;
    static final int TRANSACTION_unregistCallBack = 9;
    static final int TRANSACTION_updateMe = 17;
    static final int TRANSACTION_updateResult = 23;
    static final int TRANSACTION_updateResults = 24;
    static final int TRANSACTION_useHeart = 22;
    
    public Stub()
    {
      attachInterface(this, "com.xiaomi.gamecenter.sdk.IGameCenterSDK");
    }
    
    public static IGameCenterSDK asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
      if ((localIInterface != null) && ((localIInterface instanceof IGameCenterSDK))) {
        return (IGameCenterSDK)localIInterface;
      }
      return new a(paramIBinder);
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      Object localObject1 = null;
      Object localObject2 = null;
      boolean bool = false;
      int i = 0;
      label569:
      String str1;
      label761:
      label853:
      label939:
      String str2;
      Object localObject3;
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        if (paramParcel1.readInt() != 0)
        {
          localObject1 = (MiAppInfo)MiAppInfo.CREATOR.createFromParcel(paramParcel1);
          bool = ConnService((MiAppInfo)localObject1, paramParcel1.readString());
          paramParcel2.writeNoException();
          if (!bool) {
            break label569;
          }
        }
        for (paramInt1 = 1;; paramInt1 = 0)
        {
          paramParcel2.writeInt(paramInt1);
          return true;
          localObject1 = null;
          break;
        }
      case 2: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        localObject1 = paramParcel1.readString();
        localObject2 = paramParcel1.readString();
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          paramParcel1 = miLogin((String)localObject1, (String)localObject2, paramParcel1);
          paramParcel2.writeNoException();
          if (paramParcel1 == null) {
            break;
          }
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 3: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        miLogout(paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 4: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        if (paramParcel1.readInt() != 0)
        {
          localObject1 = (MiBuyInfoOffline)MiBuyInfoOffline.CREATOR.createFromParcel(paramParcel1);
          str1 = paramParcel1.readString();
          if (paramParcel1.readInt() == 0) {
            break label761;
          }
        }
        for (localObject2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; localObject2 = null)
        {
          paramInt1 = miUniPayOffline((MiBuyInfoOffline)localObject1, str1, (Bundle)localObject2, paramParcel1.readString());
          paramParcel2.writeNoException();
          paramParcel2.writeInt(paramInt1);
          return true;
          localObject1 = null;
          break;
        }
      case 5: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        if (paramParcel1.readInt() != 0)
        {
          localObject1 = (MiBuyInfoOnline)MiBuyInfoOnline.CREATOR.createFromParcel(paramParcel1);
          str1 = paramParcel1.readString();
          if (paramParcel1.readInt() == 0) {
            break label853;
          }
        }
        for (localObject2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; localObject2 = null)
        {
          paramInt1 = miUniPayOnline((MiBuyInfoOnline)localObject1, str1, (Bundle)localObject2, paramParcel1.readString());
          paramParcel2.writeNoException();
          paramParcel2.writeInt(paramInt1);
          return true;
          localObject1 = null;
          break;
        }
      case 6: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        if (paramParcel1.readInt() != 0)
        {
          localObject1 = (CardBuyInfo)CardBuyInfo.CREATOR.createFromParcel(paramParcel1);
          localObject2 = paramParcel1.readString();
          if (paramParcel1.readInt() == 0) {
            break label939;
          }
        }
        for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          paramInt1 = miCardPay((CardBuyInfo)localObject1, (String)localObject2, paramParcel1);
          paramParcel2.writeNoException();
          paramParcel2.writeInt(paramInt1);
          return true;
          localObject1 = null;
          break;
        }
      case 7: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = miGetAccountInfo(paramParcel1.readString());
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 8: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        registCallback(IServiceCallback.Stub.asInterface(paramParcel1.readStrongBinder()), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 9: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        unregistCallBack(IServiceCallback.Stub.asInterface(paramParcel1.readStrongBinder()), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 10: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        if (paramParcel1.readInt() != 0) {}
        for (localObject1 = (MiAppInfo)MiAppInfo.CREATOR.createFromParcel(paramParcel1);; localObject1 = null)
        {
          openAppReport((MiAppInfo)localObject1, paramParcel1.readString());
          paramParcel2.writeNoException();
          return true;
        }
      case 11: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramInt1 = miWindow();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 12: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = getRemoteViews(paramParcel1.readString());
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 13: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        if (paramParcel1.readInt() != 0) {}
        for (localObject1 = (MiBuyInfo)MiBuyInfo.CREATOR.createFromParcel(paramParcel1);; localObject1 = null)
        {
          paramInt1 = miUniPay((MiBuyInfo)localObject1, paramParcel1.readString(), paramParcel1.readString());
          paramParcel2.writeNoException();
          paramParcel2.writeInt(paramInt1);
          return true;
        }
      case 14: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = loadGameInfo();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 15: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = loadGameMe();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 16: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = loadGameFriends();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 17: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = updateMe(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.createByteArray(), paramParcel1.createByteArray());
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 18: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        localObject1 = paramParcel1.readString();
        if (paramParcel1.readInt() != 0) {}
        for (bool = true;; bool = false)
        {
          paramParcel1 = sendGameMessage((String)localObject1, bool, paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readInt(), paramParcel1.createByteArray(), (GamMetaInfo[])paramParcel1.createTypedArray(GamMetaInfo.CREATOR));
          paramParcel2.writeNoException();
          if (paramParcel1 == null) {
            break;
          }
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 19: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = loadGameMessage();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 20: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = acceptMessage(paramParcel1.readString());
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 21: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = acceptAllMessage();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 22: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramInt1 = paramParcel1.readInt();
        if (paramParcel1.readInt() != 0) {}
        for (bool = true;; bool = false)
        {
          paramParcel1 = useHeart(paramInt1, bool);
          paramParcel2.writeNoException();
          if (paramParcel1 == null) {
            break;
          }
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 23: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = updateResult(paramParcel1.readString(), paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.createByteArray(), paramParcel1.createByteArray(), paramParcel1.readString(), paramParcel1.readInt(), paramParcel1.readString());
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 24: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = updateResults((ScoresEntry[])paramParcel1.createTypedArray(ScoresEntry.CREATOR), paramParcel1.readInt(), paramParcel1.createByteArray(), paramParcel1.createByteArray(), paramParcel1.readString(), paramParcel1.readInt(), paramParcel1.readString());
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 25: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = loadLeaderBoard(paramParcel1.readString(), paramParcel1.readInt(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 26: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        if (paramParcel1.readInt() != 0) {}
        for (bool = true;; bool = false)
        {
          paramParcel1 = messageBlock(bool);
          paramParcel2.writeNoException();
          if (paramParcel1 == null) {
            break;
          }
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 27: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        str1 = paramParcel1.readString();
        if (paramParcel1.readInt() != 0) {}
        for (bool = true;; bool = false)
        {
          str2 = paramParcel1.readString();
          localObject3 = (GamMetaInfo[])paramParcel1.createTypedArray(GamMetaInfo.CREATOR);
          localObject1 = localObject2;
          if (paramParcel1.readInt() != 0) {
            localObject1 = (MiliaoInfo)MiliaoInfo.CREATOR.createFromParcel(paramParcel1);
          }
          paramParcel1 = sendInviteMessage(str1, bool, str2, (GamMetaInfo[])localObject3, (MiliaoInfo)localObject1);
          paramParcel2.writeNoException();
          if (paramParcel1 == null) {
            break;
          }
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 28: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = deleteMe();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 29: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = loadLotteryPrize();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 30: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        if (paramParcel1.readInt() != 0) {}
        for (localObject1 = (MiliaoInfo)MiliaoInfo.CREATOR.createFromParcel(paramParcel1);; localObject1 = null)
        {
          paramParcel1 = shareToMiliao((MiliaoInfo)localObject1, paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString());
          paramParcel2.writeNoException();
          if (paramParcel1 == null) {
            break;
          }
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 31: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        sendLogToService(paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 32: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = syncResult(paramParcel1.readString(), paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.createByteArray(), paramParcel1.createByteArray());
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 33: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = syncResults((ScoresEntry[])paramParcel1.createTypedArray(ScoresEntry.CREATOR), paramParcel1.readInt(), paramParcel1.createByteArray(), paramParcel1.createByteArray());
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 34: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        localObject1 = paramParcel1.readString();
        localObject2 = paramParcel1.readString();
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (MiliaoInfo)MiliaoInfo.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          paramParcel1 = shareToMiliaoForLargeImg((String)localObject1, (String)localObject2, paramParcel1);
          paramParcel2.writeNoException();
          if (paramParcel1 == null) {
            break;
          }
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 35: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        localObject1 = paramParcel1.readString();
        localObject2 = paramParcel1.readString();
        str1 = paramParcel1.readString();
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (MiliaoInfo)MiliaoInfo.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          paramParcel1 = sendInviteMessageNew((String)localObject1, (String)localObject2, str1, paramParcel1);
          paramParcel2.writeNoException();
          if (paramParcel1 == null) {
            break;
          }
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 36: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = checkMiTalkStatus();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 37: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = joinUnion(paramParcel1.readString(), paramParcel1.readString());
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 38: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = checkJoinedUnion(paramParcel1.readString());
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 39: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = subscribeVip(paramParcel1.readString());
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 40: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = checkVipIsScubscribed(paramParcel1.readString());
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 41: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = sendTextMsgToFriend();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 42: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = getUnionList();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 43: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = getVipList();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 44: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        openMiTalkUpdateSite();
        paramParcel2.writeNoException();
        return true;
      case 45: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        localObject2 = paramParcel1.readString();
        str1 = paramParcel1.readString();
        str2 = paramParcel1.readString();
        localObject3 = paramParcel1.readString();
        if (paramParcel1.readInt() != 0) {
          localObject1 = (MiliaoInfo)MiliaoInfo.CREATOR.createFromParcel(paramParcel1);
        }
        paramParcel1 = shareToMiTalkForImgAndUrl((String)localObject2, str1, str2, (String)localObject3, (MiliaoInfo)localObject1);
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 46: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        if (paramParcel1.readInt() != 0) {}
        for (localObject1 = (MiAppInfo)MiAppInfo.CREATOR.createFromParcel(paramParcel1);; localObject1 = null)
        {
          openAppReportForInit((MiAppInfo)localObject1, paramParcel1.readString());
          paramParcel2.writeNoException();
          return true;
        }
      case 47: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramInt1 = appExit();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 48: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = isMiAccountLogin();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 49: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        if (paramParcel1.readInt() != 0) {}
        for (localObject1 = (MiAppInfo)MiAppInfo.CREATOR.createFromParcel(paramParcel1);; localObject1 = null)
        {
          paramInt1 = ConnServiceNew((MiAppInfo)localObject1, paramParcel1.readString());
          paramParcel2.writeNoException();
          paramParcel2.writeInt(paramInt1);
          return true;
        }
      case 50: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (MiBuyInfo)MiBuyInfo.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          paramInt1 = miPayForWX(paramParcel1);
          paramParcel2.writeNoException();
          paramParcel2.writeInt(paramInt1);
          return true;
        }
      case 51: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          bool = canPayForWX(paramParcel1);
          paramParcel2.writeNoException();
          paramInt1 = i;
          if (bool) {
            paramInt1 = 1;
          }
          paramParcel2.writeInt(paramInt1);
          return true;
        }
      case 52: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        if (paramParcel1.readInt() != 0) {
          bool = true;
        }
        paramInt1 = authAccount(bool);
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 53: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = getDeviceID();
        paramParcel2.writeNoException();
        paramParcel2.writeString(paramParcel1);
        return true;
      case 54: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (SdkJarInfo)SdkJarInfo.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          paramParcel1 = exchangeInfo(paramParcel1);
          paramParcel2.writeNoException();
          if (paramParcel1 == null) {
            break;
          }
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 55: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (LifecycleInfo)LifecycleInfo.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          lifecycleCallback(paramParcel1);
          paramParcel2.writeNoException();
          return true;
        }
      case 56: 
        paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
        paramParcel1 = getFuid(paramParcel1.readString());
        paramParcel2.writeNoException();
        paramParcel2.writeString(paramParcel1);
        return true;
      }
      paramParcel1.enforceInterface("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
      paramParcel1 = getMilinkProps(paramParcel1.readString());
      paramParcel2.writeNoException();
      if (paramParcel1 != null)
      {
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    }
    
    private static final class a
      implements IGameCenterSDK
    {
      private IBinder a;
      
      a(IBinder paramIBinder)
      {
        this.a = paramIBinder;
      }
      
      public final boolean ConnService(MiAppInfo paramMiAppInfo, String paramString)
        throws RemoteException
      {
        boolean bool = true;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
            if (paramMiAppInfo != null)
            {
              localParcel1.writeInt(1);
              paramMiAppInfo.writeToParcel(localParcel1, 0);
              localParcel1.writeString(paramString);
              this.a.transact(1, localParcel1, localParcel2, 0);
              localParcel2.readException();
              int i = localParcel2.readInt();
              if (i != 0) {
                return bool;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            bool = false;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      /* Error */
      public final int ConnServiceNew(MiAppInfo paramMiAppInfo, String paramString)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore 4
        //   5: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   8: astore 5
        //   10: aload 4
        //   12: ldc 31
        //   14: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   17: aload_1
        //   18: ifnull +62 -> 80
        //   21: aload 4
        //   23: iconst_1
        //   24: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   27: aload_1
        //   28: aload 4
        //   30: iconst_0
        //   31: invokevirtual 45	com/xiaomi/gamecenter/sdk/entry/MiAppInfo:writeToParcel	(Landroid/os/Parcel;I)V
        //   34: aload 4
        //   36: aload_2
        //   37: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   40: aload_0
        //   41: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   44: bipush 49
        //   46: aload 4
        //   48: aload 5
        //   50: iconst_0
        //   51: invokeinterface 54 5 0
        //   56: pop
        //   57: aload 5
        //   59: invokevirtual 57	android/os/Parcel:readException	()V
        //   62: aload 5
        //   64: invokevirtual 61	android/os/Parcel:readInt	()I
        //   67: istore_3
        //   68: aload 5
        //   70: invokevirtual 64	android/os/Parcel:recycle	()V
        //   73: aload 4
        //   75: invokevirtual 64	android/os/Parcel:recycle	()V
        //   78: iload_3
        //   79: ireturn
        //   80: aload 4
        //   82: iconst_0
        //   83: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   86: goto -52 -> 34
        //   89: astore_1
        //   90: aload 5
        //   92: invokevirtual 64	android/os/Parcel:recycle	()V
        //   95: aload 4
        //   97: invokevirtual 64	android/os/Parcel:recycle	()V
        //   100: aload_1
        //   101: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	102	0	this	a
        //   0	102	1	paramMiAppInfo	MiAppInfo
        //   0	102	2	paramString	String
        //   67	12	3	i	int
        //   3	93	4	localParcel1	Parcel
        //   8	83	5	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   10	17	89	finally
        //   21	34	89	finally
        //   34	68	89	finally
        //   80	86	89	finally
      }
      
      /* Error */
      public final MiGamMessageResponse acceptAllMessage()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   18: bipush 21
        //   20: aload_2
        //   21: aload_3
        //   22: iconst_0
        //   23: invokeinterface 54 5 0
        //   28: pop
        //   29: aload_3
        //   30: invokevirtual 57	android/os/Parcel:readException	()V
        //   33: aload_3
        //   34: invokevirtual 61	android/os/Parcel:readInt	()I
        //   37: ifeq +26 -> 63
        //   40: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_3
        //   44: invokeinterface 81 2 0
        //   49: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   52: astore_1
        //   53: aload_3
        //   54: invokevirtual 64	android/os/Parcel:recycle	()V
        //   57: aload_2
        //   58: invokevirtual 64	android/os/Parcel:recycle	()V
        //   61: aload_1
        //   62: areturn
        //   63: aconst_null
        //   64: astore_1
        //   65: goto -12 -> 53
        //   68: astore_1
        //   69: aload_3
        //   70: invokevirtual 64	android/os/Parcel:recycle	()V
        //   73: aload_2
        //   74: invokevirtual 64	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   52	13	1	localMiGamMessageResponse	MiGamMessageResponse
        //   68	10	1	localObject	Object
        //   3	71	2	localParcel1	Parcel
        //   7	63	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	53	68	finally
      }
      
      /* Error */
      public final MiGamMessageResponse acceptMessage(String paramString)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_2
        //   15: aload_1
        //   16: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   19: aload_0
        //   20: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   23: bipush 20
        //   25: aload_2
        //   26: aload_3
        //   27: iconst_0
        //   28: invokeinterface 54 5 0
        //   33: pop
        //   34: aload_3
        //   35: invokevirtual 57	android/os/Parcel:readException	()V
        //   38: aload_3
        //   39: invokevirtual 61	android/os/Parcel:readInt	()I
        //   42: ifeq +26 -> 68
        //   45: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   48: aload_3
        //   49: invokeinterface 81 2 0
        //   54: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   57: astore_1
        //   58: aload_3
        //   59: invokevirtual 64	android/os/Parcel:recycle	()V
        //   62: aload_2
        //   63: invokevirtual 64	android/os/Parcel:recycle	()V
        //   66: aload_1
        //   67: areturn
        //   68: aconst_null
        //   69: astore_1
        //   70: goto -12 -> 58
        //   73: astore_1
        //   74: aload_3
        //   75: invokevirtual 64	android/os/Parcel:recycle	()V
        //   78: aload_2
        //   79: invokevirtual 64	android/os/Parcel:recycle	()V
        //   82: aload_1
        //   83: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	84	0	this	a
        //   0	84	1	paramString	String
        //   3	76	2	localParcel1	Parcel
        //   7	68	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	58	73	finally
      }
      
      public final int appExit()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
          this.a.transact(47, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final IBinder asBinder()
      {
        return this.a;
      }
      
      public final int authAccount(boolean paramBoolean)
        throws RemoteException
      {
        int i = 0;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
          if (paramBoolean) {
            i = 1;
          }
          localParcel1.writeInt(i);
          this.a.transact(52, localParcel1, localParcel2, 0);
          localParcel2.readException();
          i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final boolean canPayForWX(Bundle paramBundle)
        throws RemoteException
      {
        boolean bool = true;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
            if (paramBundle != null)
            {
              localParcel1.writeInt(1);
              paramBundle.writeToParcel(localParcel1, 0);
              this.a.transact(51, localParcel1, localParcel2, 0);
              localParcel2.readException();
              int i = localParcel2.readInt();
              if (i != 0) {
                return bool;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            bool = false;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      /* Error */
      public final MiGamMessageResponse checkJoinedUnion(String paramString)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_2
        //   15: aload_1
        //   16: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   19: aload_0
        //   20: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   23: bipush 38
        //   25: aload_2
        //   26: aload_3
        //   27: iconst_0
        //   28: invokeinterface 54 5 0
        //   33: pop
        //   34: aload_3
        //   35: invokevirtual 57	android/os/Parcel:readException	()V
        //   38: aload_3
        //   39: invokevirtual 61	android/os/Parcel:readInt	()I
        //   42: ifeq +26 -> 68
        //   45: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   48: aload_3
        //   49: invokeinterface 81 2 0
        //   54: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   57: astore_1
        //   58: aload_3
        //   59: invokevirtual 64	android/os/Parcel:recycle	()V
        //   62: aload_2
        //   63: invokevirtual 64	android/os/Parcel:recycle	()V
        //   66: aload_1
        //   67: areturn
        //   68: aconst_null
        //   69: astore_1
        //   70: goto -12 -> 58
        //   73: astore_1
        //   74: aload_3
        //   75: invokevirtual 64	android/os/Parcel:recycle	()V
        //   78: aload_2
        //   79: invokevirtual 64	android/os/Parcel:recycle	()V
        //   82: aload_1
        //   83: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	84	0	this	a
        //   0	84	1	paramString	String
        //   3	76	2	localParcel1	Parcel
        //   7	68	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	58	73	finally
      }
      
      /* Error */
      public final MiGamMessageResponse checkMiTalkStatus()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   18: bipush 36
        //   20: aload_2
        //   21: aload_3
        //   22: iconst_0
        //   23: invokeinterface 54 5 0
        //   28: pop
        //   29: aload_3
        //   30: invokevirtual 57	android/os/Parcel:readException	()V
        //   33: aload_3
        //   34: invokevirtual 61	android/os/Parcel:readInt	()I
        //   37: ifeq +26 -> 63
        //   40: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_3
        //   44: invokeinterface 81 2 0
        //   49: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   52: astore_1
        //   53: aload_3
        //   54: invokevirtual 64	android/os/Parcel:recycle	()V
        //   57: aload_2
        //   58: invokevirtual 64	android/os/Parcel:recycle	()V
        //   61: aload_1
        //   62: areturn
        //   63: aconst_null
        //   64: astore_1
        //   65: goto -12 -> 53
        //   68: astore_1
        //   69: aload_3
        //   70: invokevirtual 64	android/os/Parcel:recycle	()V
        //   73: aload_2
        //   74: invokevirtual 64	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   52	13	1	localMiGamMessageResponse	MiGamMessageResponse
        //   68	10	1	localObject	Object
        //   3	71	2	localParcel1	Parcel
        //   7	63	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	53	68	finally
      }
      
      /* Error */
      public final MiGamMessageResponse checkVipIsScubscribed(String paramString)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_2
        //   15: aload_1
        //   16: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   19: aload_0
        //   20: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   23: bipush 40
        //   25: aload_2
        //   26: aload_3
        //   27: iconst_0
        //   28: invokeinterface 54 5 0
        //   33: pop
        //   34: aload_3
        //   35: invokevirtual 57	android/os/Parcel:readException	()V
        //   38: aload_3
        //   39: invokevirtual 61	android/os/Parcel:readInt	()I
        //   42: ifeq +26 -> 68
        //   45: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   48: aload_3
        //   49: invokeinterface 81 2 0
        //   54: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   57: astore_1
        //   58: aload_3
        //   59: invokevirtual 64	android/os/Parcel:recycle	()V
        //   62: aload_2
        //   63: invokevirtual 64	android/os/Parcel:recycle	()V
        //   66: aload_1
        //   67: areturn
        //   68: aconst_null
        //   69: astore_1
        //   70: goto -12 -> 58
        //   73: astore_1
        //   74: aload_3
        //   75: invokevirtual 64	android/os/Parcel:recycle	()V
        //   78: aload_2
        //   79: invokevirtual 64	android/os/Parcel:recycle	()V
        //   82: aload_1
        //   83: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	84	0	this	a
        //   0	84	1	paramString	String
        //   3	76	2	localParcel1	Parcel
        //   7	68	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	58	73	finally
      }
      
      /* Error */
      public final MiGamMessageResponse deleteMe()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   18: bipush 28
        //   20: aload_2
        //   21: aload_3
        //   22: iconst_0
        //   23: invokeinterface 54 5 0
        //   28: pop
        //   29: aload_3
        //   30: invokevirtual 57	android/os/Parcel:readException	()V
        //   33: aload_3
        //   34: invokevirtual 61	android/os/Parcel:readInt	()I
        //   37: ifeq +26 -> 63
        //   40: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_3
        //   44: invokeinterface 81 2 0
        //   49: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   52: astore_1
        //   53: aload_3
        //   54: invokevirtual 64	android/os/Parcel:recycle	()V
        //   57: aload_2
        //   58: invokevirtual 64	android/os/Parcel:recycle	()V
        //   61: aload_1
        //   62: areturn
        //   63: aconst_null
        //   64: astore_1
        //   65: goto -12 -> 53
        //   68: astore_1
        //   69: aload_3
        //   70: invokevirtual 64	android/os/Parcel:recycle	()V
        //   73: aload_2
        //   74: invokevirtual 64	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   52	13	1	localMiGamMessageResponse	MiGamMessageResponse
        //   68	10	1	localObject	Object
        //   3	71	2	localParcel1	Parcel
        //   7	63	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	53	68	finally
      }
      
      public final ServiceInfo exchangeInfo(SdkJarInfo paramSdkJarInfo)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
            if (paramSdkJarInfo != null)
            {
              localParcel1.writeInt(1);
              paramSdkJarInfo.writeToParcel(localParcel1, 0);
              this.a.transact(54, localParcel1, localParcel2, 0);
              localParcel2.readException();
              if (localParcel2.readInt() != 0)
              {
                paramSdkJarInfo = (ServiceInfo)ServiceInfo.CREATOR.createFromParcel(localParcel2);
                return paramSdkJarInfo;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            paramSdkJarInfo = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public final String getDeviceID()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
          this.a.transact(53, localParcel1, localParcel2, 0);
          localParcel2.readException();
          String str = localParcel2.readString();
          return str;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final String getFuid(String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
          localParcel1.writeString(paramString);
          this.a.transact(56, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramString = localParcel2.readString();
          return paramString;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public final MilinkAccountProps getMilinkProps(String paramString)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_2
        //   15: aload_1
        //   16: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   19: aload_0
        //   20: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   23: bipush 57
        //   25: aload_2
        //   26: aload_3
        //   27: iconst_0
        //   28: invokeinterface 54 5 0
        //   33: pop
        //   34: aload_3
        //   35: invokevirtual 57	android/os/Parcel:readException	()V
        //   38: aload_3
        //   39: invokevirtual 61	android/os/Parcel:readInt	()I
        //   42: ifeq +26 -> 68
        //   45: getstatic 117	com/xiaomi/gamecenter/sdk/account/MilinkAccountProps:CREATOR	Landroid/os/Parcelable$Creator;
        //   48: aload_3
        //   49: invokeinterface 81 2 0
        //   54: checkcast 116	com/xiaomi/gamecenter/sdk/account/MilinkAccountProps
        //   57: astore_1
        //   58: aload_3
        //   59: invokevirtual 64	android/os/Parcel:recycle	()V
        //   62: aload_2
        //   63: invokevirtual 64	android/os/Parcel:recycle	()V
        //   66: aload_1
        //   67: areturn
        //   68: aconst_null
        //   69: astore_1
        //   70: goto -12 -> 58
        //   73: astore_1
        //   74: aload_3
        //   75: invokevirtual 64	android/os/Parcel:recycle	()V
        //   78: aload_2
        //   79: invokevirtual 64	android/os/Parcel:recycle	()V
        //   82: aload_1
        //   83: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	84	0	this	a
        //   0	84	1	paramString	String
        //   3	76	2	localParcel1	Parcel
        //   7	68	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	58	73	finally
      }
      
      /* Error */
      public final RemoteViews getRemoteViews(String paramString)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_2
        //   15: aload_1
        //   16: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   19: aload_0
        //   20: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   23: bipush 12
        //   25: aload_2
        //   26: aload_3
        //   27: iconst_0
        //   28: invokeinterface 54 5 0
        //   33: pop
        //   34: aload_3
        //   35: invokevirtual 57	android/os/Parcel:readException	()V
        //   38: aload_3
        //   39: invokevirtual 61	android/os/Parcel:readInt	()I
        //   42: ifeq +26 -> 68
        //   45: getstatic 122	android/widget/RemoteViews:CREATOR	Landroid/os/Parcelable$Creator;
        //   48: aload_3
        //   49: invokeinterface 81 2 0
        //   54: checkcast 121	android/widget/RemoteViews
        //   57: astore_1
        //   58: aload_3
        //   59: invokevirtual 64	android/os/Parcel:recycle	()V
        //   62: aload_2
        //   63: invokevirtual 64	android/os/Parcel:recycle	()V
        //   66: aload_1
        //   67: areturn
        //   68: aconst_null
        //   69: astore_1
        //   70: goto -12 -> 58
        //   73: astore_1
        //   74: aload_3
        //   75: invokevirtual 64	android/os/Parcel:recycle	()V
        //   78: aload_2
        //   79: invokevirtual 64	android/os/Parcel:recycle	()V
        //   82: aload_1
        //   83: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	84	0	this	a
        //   0	84	1	paramString	String
        //   3	76	2	localParcel1	Parcel
        //   7	68	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	58	73	finally
      }
      
      /* Error */
      public final MiGamMessageResponse getUnionList()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   18: bipush 42
        //   20: aload_2
        //   21: aload_3
        //   22: iconst_0
        //   23: invokeinterface 54 5 0
        //   28: pop
        //   29: aload_3
        //   30: invokevirtual 57	android/os/Parcel:readException	()V
        //   33: aload_3
        //   34: invokevirtual 61	android/os/Parcel:readInt	()I
        //   37: ifeq +26 -> 63
        //   40: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_3
        //   44: invokeinterface 81 2 0
        //   49: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   52: astore_1
        //   53: aload_3
        //   54: invokevirtual 64	android/os/Parcel:recycle	()V
        //   57: aload_2
        //   58: invokevirtual 64	android/os/Parcel:recycle	()V
        //   61: aload_1
        //   62: areturn
        //   63: aconst_null
        //   64: astore_1
        //   65: goto -12 -> 53
        //   68: astore_1
        //   69: aload_3
        //   70: invokevirtual 64	android/os/Parcel:recycle	()V
        //   73: aload_2
        //   74: invokevirtual 64	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   52	13	1	localMiGamMessageResponse	MiGamMessageResponse
        //   68	10	1	localObject	Object
        //   3	71	2	localParcel1	Parcel
        //   7	63	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	53	68	finally
      }
      
      /* Error */
      public final MiGamMessageResponse getVipList()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   18: bipush 43
        //   20: aload_2
        //   21: aload_3
        //   22: iconst_0
        //   23: invokeinterface 54 5 0
        //   28: pop
        //   29: aload_3
        //   30: invokevirtual 57	android/os/Parcel:readException	()V
        //   33: aload_3
        //   34: invokevirtual 61	android/os/Parcel:readInt	()I
        //   37: ifeq +26 -> 63
        //   40: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_3
        //   44: invokeinterface 81 2 0
        //   49: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   52: astore_1
        //   53: aload_3
        //   54: invokevirtual 64	android/os/Parcel:recycle	()V
        //   57: aload_2
        //   58: invokevirtual 64	android/os/Parcel:recycle	()V
        //   61: aload_1
        //   62: areturn
        //   63: aconst_null
        //   64: astore_1
        //   65: goto -12 -> 53
        //   68: astore_1
        //   69: aload_3
        //   70: invokevirtual 64	android/os/Parcel:recycle	()V
        //   73: aload_2
        //   74: invokevirtual 64	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   52	13	1	localMiGamMessageResponse	MiGamMessageResponse
        //   68	10	1	localObject	Object
        //   3	71	2	localParcel1	Parcel
        //   7	63	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	53	68	finally
      }
      
      /* Error */
      public final Bundle isMiAccountLogin()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   18: bipush 48
        //   20: aload_2
        //   21: aload_3
        //   22: iconst_0
        //   23: invokeinterface 54 5 0
        //   28: pop
        //   29: aload_3
        //   30: invokevirtual 57	android/os/Parcel:readException	()V
        //   33: aload_3
        //   34: invokevirtual 61	android/os/Parcel:readInt	()I
        //   37: ifeq +26 -> 63
        //   40: getstatic 127	android/os/Bundle:CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_3
        //   44: invokeinterface 81 2 0
        //   49: checkcast 92	android/os/Bundle
        //   52: astore_1
        //   53: aload_3
        //   54: invokevirtual 64	android/os/Parcel:recycle	()V
        //   57: aload_2
        //   58: invokevirtual 64	android/os/Parcel:recycle	()V
        //   61: aload_1
        //   62: areturn
        //   63: aconst_null
        //   64: astore_1
        //   65: goto -12 -> 53
        //   68: astore_1
        //   69: aload_3
        //   70: invokevirtual 64	android/os/Parcel:recycle	()V
        //   73: aload_2
        //   74: invokevirtual 64	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   52	13	1	localBundle	Bundle
        //   68	10	1	localObject	Object
        //   3	71	2	localParcel1	Parcel
        //   7	63	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	53	68	finally
      }
      
      /* Error */
      public final MiGamMessageResponse joinUnion(String paramString1, String paramString2)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore 4
        //   9: aload_3
        //   10: ldc 31
        //   12: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   15: aload_3
        //   16: aload_1
        //   17: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   20: aload_3
        //   21: aload_2
        //   22: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   25: aload_0
        //   26: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   29: bipush 37
        //   31: aload_3
        //   32: aload 4
        //   34: iconst_0
        //   35: invokeinterface 54 5 0
        //   40: pop
        //   41: aload 4
        //   43: invokevirtual 57	android/os/Parcel:readException	()V
        //   46: aload 4
        //   48: invokevirtual 61	android/os/Parcel:readInt	()I
        //   51: ifeq +28 -> 79
        //   54: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   57: aload 4
        //   59: invokeinterface 81 2 0
        //   64: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   67: astore_1
        //   68: aload 4
        //   70: invokevirtual 64	android/os/Parcel:recycle	()V
        //   73: aload_3
        //   74: invokevirtual 64	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: areturn
        //   79: aconst_null
        //   80: astore_1
        //   81: goto -13 -> 68
        //   84: astore_1
        //   85: aload 4
        //   87: invokevirtual 64	android/os/Parcel:recycle	()V
        //   90: aload_3
        //   91: invokevirtual 64	android/os/Parcel:recycle	()V
        //   94: aload_1
        //   95: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	96	0	this	a
        //   0	96	1	paramString1	String
        //   0	96	2	paramString2	String
        //   3	88	3	localParcel1	Parcel
        //   7	79	4	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   9	68	84	finally
      }
      
      /* Error */
      public final void lifecycleCallback(LifecycleInfo paramLifecycleInfo)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_1
        //   15: ifnull +42 -> 57
        //   18: aload_2
        //   19: iconst_1
        //   20: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 134	com/xiaomi/gamecenter/sdk/entry/LifecycleInfo:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   33: bipush 55
        //   35: aload_2
        //   36: aload_3
        //   37: iconst_0
        //   38: invokeinterface 54 5 0
        //   43: pop
        //   44: aload_3
        //   45: invokevirtual 57	android/os/Parcel:readException	()V
        //   48: aload_3
        //   49: invokevirtual 64	android/os/Parcel:recycle	()V
        //   52: aload_2
        //   53: invokevirtual 64	android/os/Parcel:recycle	()V
        //   56: return
        //   57: aload_2
        //   58: iconst_0
        //   59: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   62: goto -33 -> 29
        //   65: astore_1
        //   66: aload_3
        //   67: invokevirtual 64	android/os/Parcel:recycle	()V
        //   70: aload_2
        //   71: invokevirtual 64	android/os/Parcel:recycle	()V
        //   74: aload_1
        //   75: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	76	0	this	a
        //   0	76	1	paramLifecycleInfo	LifecycleInfo
        //   3	68	2	localParcel1	Parcel
        //   7	60	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	65	finally
        //   18	29	65	finally
        //   29	48	65	finally
        //   57	62	65	finally
      }
      
      /* Error */
      public final MiGamMessageResponse loadGameFriends()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   18: bipush 16
        //   20: aload_2
        //   21: aload_3
        //   22: iconst_0
        //   23: invokeinterface 54 5 0
        //   28: pop
        //   29: aload_3
        //   30: invokevirtual 57	android/os/Parcel:readException	()V
        //   33: aload_3
        //   34: invokevirtual 61	android/os/Parcel:readInt	()I
        //   37: ifeq +26 -> 63
        //   40: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_3
        //   44: invokeinterface 81 2 0
        //   49: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   52: astore_1
        //   53: aload_3
        //   54: invokevirtual 64	android/os/Parcel:recycle	()V
        //   57: aload_2
        //   58: invokevirtual 64	android/os/Parcel:recycle	()V
        //   61: aload_1
        //   62: areturn
        //   63: aconst_null
        //   64: astore_1
        //   65: goto -12 -> 53
        //   68: astore_1
        //   69: aload_3
        //   70: invokevirtual 64	android/os/Parcel:recycle	()V
        //   73: aload_2
        //   74: invokevirtual 64	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   52	13	1	localMiGamMessageResponse	MiGamMessageResponse
        //   68	10	1	localObject	Object
        //   3	71	2	localParcel1	Parcel
        //   7	63	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	53	68	finally
      }
      
      /* Error */
      public final MiGamMessageResponse loadGameInfo()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   18: bipush 14
        //   20: aload_2
        //   21: aload_3
        //   22: iconst_0
        //   23: invokeinterface 54 5 0
        //   28: pop
        //   29: aload_3
        //   30: invokevirtual 57	android/os/Parcel:readException	()V
        //   33: aload_3
        //   34: invokevirtual 61	android/os/Parcel:readInt	()I
        //   37: ifeq +26 -> 63
        //   40: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_3
        //   44: invokeinterface 81 2 0
        //   49: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   52: astore_1
        //   53: aload_3
        //   54: invokevirtual 64	android/os/Parcel:recycle	()V
        //   57: aload_2
        //   58: invokevirtual 64	android/os/Parcel:recycle	()V
        //   61: aload_1
        //   62: areturn
        //   63: aconst_null
        //   64: astore_1
        //   65: goto -12 -> 53
        //   68: astore_1
        //   69: aload_3
        //   70: invokevirtual 64	android/os/Parcel:recycle	()V
        //   73: aload_2
        //   74: invokevirtual 64	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   52	13	1	localMiGamMessageResponse	MiGamMessageResponse
        //   68	10	1	localObject	Object
        //   3	71	2	localParcel1	Parcel
        //   7	63	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	53	68	finally
      }
      
      /* Error */
      public final MiGamMessageResponse loadGameMe()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   18: bipush 15
        //   20: aload_2
        //   21: aload_3
        //   22: iconst_0
        //   23: invokeinterface 54 5 0
        //   28: pop
        //   29: aload_3
        //   30: invokevirtual 57	android/os/Parcel:readException	()V
        //   33: aload_3
        //   34: invokevirtual 61	android/os/Parcel:readInt	()I
        //   37: ifeq +26 -> 63
        //   40: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_3
        //   44: invokeinterface 81 2 0
        //   49: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   52: astore_1
        //   53: aload_3
        //   54: invokevirtual 64	android/os/Parcel:recycle	()V
        //   57: aload_2
        //   58: invokevirtual 64	android/os/Parcel:recycle	()V
        //   61: aload_1
        //   62: areturn
        //   63: aconst_null
        //   64: astore_1
        //   65: goto -12 -> 53
        //   68: astore_1
        //   69: aload_3
        //   70: invokevirtual 64	android/os/Parcel:recycle	()V
        //   73: aload_2
        //   74: invokevirtual 64	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   52	13	1	localMiGamMessageResponse	MiGamMessageResponse
        //   68	10	1	localObject	Object
        //   3	71	2	localParcel1	Parcel
        //   7	63	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	53	68	finally
      }
      
      /* Error */
      public final MiGamMessageResponse loadGameMessage()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   18: bipush 19
        //   20: aload_2
        //   21: aload_3
        //   22: iconst_0
        //   23: invokeinterface 54 5 0
        //   28: pop
        //   29: aload_3
        //   30: invokevirtual 57	android/os/Parcel:readException	()V
        //   33: aload_3
        //   34: invokevirtual 61	android/os/Parcel:readInt	()I
        //   37: ifeq +26 -> 63
        //   40: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_3
        //   44: invokeinterface 81 2 0
        //   49: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   52: astore_1
        //   53: aload_3
        //   54: invokevirtual 64	android/os/Parcel:recycle	()V
        //   57: aload_2
        //   58: invokevirtual 64	android/os/Parcel:recycle	()V
        //   61: aload_1
        //   62: areturn
        //   63: aconst_null
        //   64: astore_1
        //   65: goto -12 -> 53
        //   68: astore_1
        //   69: aload_3
        //   70: invokevirtual 64	android/os/Parcel:recycle	()V
        //   73: aload_2
        //   74: invokevirtual 64	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   52	13	1	localMiGamMessageResponse	MiGamMessageResponse
        //   68	10	1	localObject	Object
        //   3	71	2	localParcel1	Parcel
        //   7	63	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	53	68	finally
      }
      
      /* Error */
      public final MiGamMessageResponse loadLeaderBoard(String paramString, int paramInt1, int paramInt2)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore 4
        //   5: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   8: astore 5
        //   10: aload 4
        //   12: ldc 31
        //   14: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   17: aload 4
        //   19: aload_1
        //   20: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   23: aload 4
        //   25: iload_2
        //   26: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   29: aload 4
        //   31: iload_3
        //   32: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   35: aload_0
        //   36: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   39: bipush 25
        //   41: aload 4
        //   43: aload 5
        //   45: iconst_0
        //   46: invokeinterface 54 5 0
        //   51: pop
        //   52: aload 5
        //   54: invokevirtual 57	android/os/Parcel:readException	()V
        //   57: aload 5
        //   59: invokevirtual 61	android/os/Parcel:readInt	()I
        //   62: ifeq +29 -> 91
        //   65: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   68: aload 5
        //   70: invokeinterface 81 2 0
        //   75: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   78: astore_1
        //   79: aload 5
        //   81: invokevirtual 64	android/os/Parcel:recycle	()V
        //   84: aload 4
        //   86: invokevirtual 64	android/os/Parcel:recycle	()V
        //   89: aload_1
        //   90: areturn
        //   91: aconst_null
        //   92: astore_1
        //   93: goto -14 -> 79
        //   96: astore_1
        //   97: aload 5
        //   99: invokevirtual 64	android/os/Parcel:recycle	()V
        //   102: aload 4
        //   104: invokevirtual 64	android/os/Parcel:recycle	()V
        //   107: aload_1
        //   108: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	109	0	this	a
        //   0	109	1	paramString	String
        //   0	109	2	paramInt1	int
        //   0	109	3	paramInt2	int
        //   3	100	4	localParcel1	Parcel
        //   8	90	5	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   10	79	96	finally
      }
      
      /* Error */
      public final MiGamMessageResponse loadLotteryPrize()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   18: bipush 29
        //   20: aload_2
        //   21: aload_3
        //   22: iconst_0
        //   23: invokeinterface 54 5 0
        //   28: pop
        //   29: aload_3
        //   30: invokevirtual 57	android/os/Parcel:readException	()V
        //   33: aload_3
        //   34: invokevirtual 61	android/os/Parcel:readInt	()I
        //   37: ifeq +26 -> 63
        //   40: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_3
        //   44: invokeinterface 81 2 0
        //   49: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   52: astore_1
        //   53: aload_3
        //   54: invokevirtual 64	android/os/Parcel:recycle	()V
        //   57: aload_2
        //   58: invokevirtual 64	android/os/Parcel:recycle	()V
        //   61: aload_1
        //   62: areturn
        //   63: aconst_null
        //   64: astore_1
        //   65: goto -12 -> 53
        //   68: astore_1
        //   69: aload_3
        //   70: invokevirtual 64	android/os/Parcel:recycle	()V
        //   73: aload_2
        //   74: invokevirtual 64	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   52	13	1	localMiGamMessageResponse	MiGamMessageResponse
        //   68	10	1	localObject	Object
        //   3	71	2	localParcel1	Parcel
        //   7	63	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	53	68	finally
      }
      
      /* Error */
      public final MiGamMessageResponse messageBlock(boolean paramBoolean)
        throws RemoteException
      {
        // Byte code:
        //   0: iconst_0
        //   1: istore_2
        //   2: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   5: astore 4
        //   7: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   10: astore 5
        //   12: aload 4
        //   14: ldc 31
        //   16: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   19: iload_1
        //   20: ifeq +5 -> 25
        //   23: iconst_1
        //   24: istore_2
        //   25: aload 4
        //   27: iload_2
        //   28: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   31: aload_0
        //   32: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   35: bipush 26
        //   37: aload 4
        //   39: aload 5
        //   41: iconst_0
        //   42: invokeinterface 54 5 0
        //   47: pop
        //   48: aload 5
        //   50: invokevirtual 57	android/os/Parcel:readException	()V
        //   53: aload 5
        //   55: invokevirtual 61	android/os/Parcel:readInt	()I
        //   58: ifeq +29 -> 87
        //   61: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   64: aload 5
        //   66: invokeinterface 81 2 0
        //   71: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   74: astore_3
        //   75: aload 5
        //   77: invokevirtual 64	android/os/Parcel:recycle	()V
        //   80: aload 4
        //   82: invokevirtual 64	android/os/Parcel:recycle	()V
        //   85: aload_3
        //   86: areturn
        //   87: aconst_null
        //   88: astore_3
        //   89: goto -14 -> 75
        //   92: astore_3
        //   93: aload 5
        //   95: invokevirtual 64	android/os/Parcel:recycle	()V
        //   98: aload 4
        //   100: invokevirtual 64	android/os/Parcel:recycle	()V
        //   103: aload_3
        //   104: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	105	0	this	a
        //   0	105	1	paramBoolean	boolean
        //   1	27	2	i	int
        //   74	15	3	localMiGamMessageResponse	MiGamMessageResponse
        //   92	12	3	localObject	Object
        //   5	94	4	localParcel1	Parcel
        //   10	84	5	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   12	19	92	finally
        //   25	75	92	finally
      }
      
      public final int miCardPay(CardBuyInfo paramCardBuyInfo, String paramString, Bundle paramBundle)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
            if (paramCardBuyInfo != null)
            {
              localParcel1.writeInt(1);
              paramCardBuyInfo.writeToParcel(localParcel1, 0);
              localParcel1.writeString(paramString);
              if (paramBundle != null)
              {
                localParcel1.writeInt(1);
                paramBundle.writeToParcel(localParcel1, 0);
                this.a.transact(6, localParcel1, localParcel2, 0);
                localParcel2.readException();
                int i = localParcel2.readInt();
                return i;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            localParcel1.writeInt(0);
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      /* Error */
      public final MiAccountInfo miGetAccountInfo(String paramString)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_2
        //   15: aload_1
        //   16: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   19: aload_0
        //   20: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   23: bipush 7
        //   25: aload_2
        //   26: aload_3
        //   27: iconst_0
        //   28: invokeinterface 54 5 0
        //   33: pop
        //   34: aload_3
        //   35: invokevirtual 57	android/os/Parcel:readException	()V
        //   38: aload_3
        //   39: invokevirtual 61	android/os/Parcel:readInt	()I
        //   42: ifeq +26 -> 68
        //   45: getstatic 153	com/xiaomi/gamecenter/sdk/entry/MiAccountInfo:CREATOR	Landroid/os/Parcelable$Creator;
        //   48: aload_3
        //   49: invokeinterface 81 2 0
        //   54: checkcast 152	com/xiaomi/gamecenter/sdk/entry/MiAccountInfo
        //   57: astore_1
        //   58: aload_3
        //   59: invokevirtual 64	android/os/Parcel:recycle	()V
        //   62: aload_2
        //   63: invokevirtual 64	android/os/Parcel:recycle	()V
        //   66: aload_1
        //   67: areturn
        //   68: aconst_null
        //   69: astore_1
        //   70: goto -12 -> 58
        //   73: astore_1
        //   74: aload_3
        //   75: invokevirtual 64	android/os/Parcel:recycle	()V
        //   78: aload_2
        //   79: invokevirtual 64	android/os/Parcel:recycle	()V
        //   82: aload_1
        //   83: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	84	0	this	a
        //   0	84	1	paramString	String
        //   3	76	2	localParcel1	Parcel
        //   7	68	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	58	73	finally
      }
      
      public final LoginResult miLogin(String paramString1, String paramString2, Bundle paramBundle)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
            localParcel1.writeString(paramString1);
            localParcel1.writeString(paramString2);
            if (paramBundle != null)
            {
              localParcel1.writeInt(1);
              paramBundle.writeToParcel(localParcel1, 0);
              this.a.transact(2, localParcel1, localParcel2, 0);
              localParcel2.readException();
              if (localParcel2.readInt() != 0)
              {
                paramString1 = (LoginResult)LoginResult.CREATOR.createFromParcel(localParcel2);
                return paramString1;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            paramString1 = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public final void miLogout(String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
          localParcel1.writeString(paramString);
          this.a.transact(3, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public final int miPayForWX(MiBuyInfo paramMiBuyInfo)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore 4
        //   9: aload_3
        //   10: ldc 31
        //   12: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   15: aload_1
        //   16: ifnull +52 -> 68
        //   19: aload_3
        //   20: iconst_1
        //   21: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   24: aload_1
        //   25: aload_3
        //   26: iconst_0
        //   27: invokevirtual 164	com/xiaomi/gamecenter/sdk/entry/MiBuyInfo:writeToParcel	(Landroid/os/Parcel;I)V
        //   30: aload_0
        //   31: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   34: bipush 50
        //   36: aload_3
        //   37: aload 4
        //   39: iconst_0
        //   40: invokeinterface 54 5 0
        //   45: pop
        //   46: aload 4
        //   48: invokevirtual 57	android/os/Parcel:readException	()V
        //   51: aload 4
        //   53: invokevirtual 61	android/os/Parcel:readInt	()I
        //   56: istore_2
        //   57: aload 4
        //   59: invokevirtual 64	android/os/Parcel:recycle	()V
        //   62: aload_3
        //   63: invokevirtual 64	android/os/Parcel:recycle	()V
        //   66: iload_2
        //   67: ireturn
        //   68: aload_3
        //   69: iconst_0
        //   70: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   73: goto -43 -> 30
        //   76: astore_1
        //   77: aload 4
        //   79: invokevirtual 64	android/os/Parcel:recycle	()V
        //   82: aload_3
        //   83: invokevirtual 64	android/os/Parcel:recycle	()V
        //   86: aload_1
        //   87: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	88	0	this	a
        //   0	88	1	paramMiBuyInfo	MiBuyInfo
        //   56	11	2	i	int
        //   3	80	3	localParcel1	Parcel
        //   7	71	4	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   9	15	76	finally
        //   19	30	76	finally
        //   30	57	76	finally
        //   68	73	76	finally
      }
      
      /* Error */
      public final int miUniPay(MiBuyInfo paramMiBuyInfo, String paramString1, String paramString2)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore 5
        //   5: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   8: astore 6
        //   10: aload 5
        //   12: ldc 31
        //   14: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   17: aload_1
        //   18: ifnull +70 -> 88
        //   21: aload 5
        //   23: iconst_1
        //   24: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   27: aload_1
        //   28: aload 5
        //   30: iconst_0
        //   31: invokevirtual 164	com/xiaomi/gamecenter/sdk/entry/MiBuyInfo:writeToParcel	(Landroid/os/Parcel;I)V
        //   34: aload 5
        //   36: aload_2
        //   37: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   40: aload 5
        //   42: aload_3
        //   43: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   46: aload_0
        //   47: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   50: bipush 13
        //   52: aload 5
        //   54: aload 6
        //   56: iconst_0
        //   57: invokeinterface 54 5 0
        //   62: pop
        //   63: aload 6
        //   65: invokevirtual 57	android/os/Parcel:readException	()V
        //   68: aload 6
        //   70: invokevirtual 61	android/os/Parcel:readInt	()I
        //   73: istore 4
        //   75: aload 6
        //   77: invokevirtual 64	android/os/Parcel:recycle	()V
        //   80: aload 5
        //   82: invokevirtual 64	android/os/Parcel:recycle	()V
        //   85: iload 4
        //   87: ireturn
        //   88: aload 5
        //   90: iconst_0
        //   91: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   94: goto -60 -> 34
        //   97: astore_1
        //   98: aload 6
        //   100: invokevirtual 64	android/os/Parcel:recycle	()V
        //   103: aload 5
        //   105: invokevirtual 64	android/os/Parcel:recycle	()V
        //   108: aload_1
        //   109: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	110	0	this	a
        //   0	110	1	paramMiBuyInfo	MiBuyInfo
        //   0	110	2	paramString1	String
        //   0	110	3	paramString2	String
        //   73	13	4	i	int
        //   3	101	5	localParcel1	Parcel
        //   8	91	6	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   10	17	97	finally
        //   21	34	97	finally
        //   34	75	97	finally
        //   88	94	97	finally
      }
      
      public final int miUniPayOffline(MiBuyInfoOffline paramMiBuyInfoOffline, String paramString1, Bundle paramBundle, String paramString2)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
            if (paramMiBuyInfoOffline != null)
            {
              localParcel1.writeInt(1);
              paramMiBuyInfoOffline.writeToParcel(localParcel1, 0);
              localParcel1.writeString(paramString1);
              if (paramBundle != null)
              {
                localParcel1.writeInt(1);
                paramBundle.writeToParcel(localParcel1, 0);
                localParcel1.writeString(paramString2);
                this.a.transact(4, localParcel1, localParcel2, 0);
                localParcel2.readException();
                int i = localParcel2.readInt();
                return i;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            localParcel1.writeInt(0);
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public final int miUniPayOnline(MiBuyInfoOnline paramMiBuyInfoOnline, String paramString1, Bundle paramBundle, String paramString2)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
            if (paramMiBuyInfoOnline != null)
            {
              localParcel1.writeInt(1);
              paramMiBuyInfoOnline.writeToParcel(localParcel1, 0);
              localParcel1.writeString(paramString1);
              if (paramBundle != null)
              {
                localParcel1.writeInt(1);
                paramBundle.writeToParcel(localParcel1, 0);
                localParcel1.writeString(paramString2);
                this.a.transact(5, localParcel1, localParcel2, 0);
                localParcel2.readException();
                int i = localParcel2.readInt();
                return i;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            localParcel1.writeInt(0);
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public final int miWindow()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
          this.a.transact(11, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public final void openAppReport(MiAppInfo paramMiAppInfo, String paramString)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore 4
        //   9: aload_3
        //   10: ldc 31
        //   12: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   15: aload_1
        //   16: ifnull +50 -> 66
        //   19: aload_3
        //   20: iconst_1
        //   21: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   24: aload_1
        //   25: aload_3
        //   26: iconst_0
        //   27: invokevirtual 45	com/xiaomi/gamecenter/sdk/entry/MiAppInfo:writeToParcel	(Landroid/os/Parcel;I)V
        //   30: aload_3
        //   31: aload_2
        //   32: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   35: aload_0
        //   36: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   39: bipush 10
        //   41: aload_3
        //   42: aload 4
        //   44: iconst_0
        //   45: invokeinterface 54 5 0
        //   50: pop
        //   51: aload 4
        //   53: invokevirtual 57	android/os/Parcel:readException	()V
        //   56: aload 4
        //   58: invokevirtual 64	android/os/Parcel:recycle	()V
        //   61: aload_3
        //   62: invokevirtual 64	android/os/Parcel:recycle	()V
        //   65: return
        //   66: aload_3
        //   67: iconst_0
        //   68: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   71: goto -41 -> 30
        //   74: astore_1
        //   75: aload 4
        //   77: invokevirtual 64	android/os/Parcel:recycle	()V
        //   80: aload_3
        //   81: invokevirtual 64	android/os/Parcel:recycle	()V
        //   84: aload_1
        //   85: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	86	0	this	a
        //   0	86	1	paramMiAppInfo	MiAppInfo
        //   0	86	2	paramString	String
        //   3	78	3	localParcel1	Parcel
        //   7	69	4	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   9	15	74	finally
        //   19	30	74	finally
        //   30	56	74	finally
        //   66	71	74	finally
      }
      
      /* Error */
      public final void openAppReportForInit(MiAppInfo paramMiAppInfo, String paramString)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore 4
        //   9: aload_3
        //   10: ldc 31
        //   12: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   15: aload_1
        //   16: ifnull +50 -> 66
        //   19: aload_3
        //   20: iconst_1
        //   21: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   24: aload_1
        //   25: aload_3
        //   26: iconst_0
        //   27: invokevirtual 45	com/xiaomi/gamecenter/sdk/entry/MiAppInfo:writeToParcel	(Landroid/os/Parcel;I)V
        //   30: aload_3
        //   31: aload_2
        //   32: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   35: aload_0
        //   36: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   39: bipush 46
        //   41: aload_3
        //   42: aload 4
        //   44: iconst_0
        //   45: invokeinterface 54 5 0
        //   50: pop
        //   51: aload 4
        //   53: invokevirtual 57	android/os/Parcel:readException	()V
        //   56: aload 4
        //   58: invokevirtual 64	android/os/Parcel:recycle	()V
        //   61: aload_3
        //   62: invokevirtual 64	android/os/Parcel:recycle	()V
        //   65: return
        //   66: aload_3
        //   67: iconst_0
        //   68: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   71: goto -41 -> 30
        //   74: astore_1
        //   75: aload 4
        //   77: invokevirtual 64	android/os/Parcel:recycle	()V
        //   80: aload_3
        //   81: invokevirtual 64	android/os/Parcel:recycle	()V
        //   84: aload_1
        //   85: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	86	0	this	a
        //   0	86	1	paramMiAppInfo	MiAppInfo
        //   0	86	2	paramString	String
        //   3	78	3	localParcel1	Parcel
        //   7	69	4	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   9	15	74	finally
        //   19	30	74	finally
        //   30	56	74	finally
        //   66	71	74	finally
      }
      
      public final void openMiTalkUpdateSite()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
          this.a.transact(44, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public final void registCallback(IServiceCallback paramIServiceCallback, String paramString)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore 4
        //   9: aload_3
        //   10: ldc 31
        //   12: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   15: aload_1
        //   16: ifnull +51 -> 67
        //   19: aload_1
        //   20: invokeinterface 187 1 0
        //   25: astore_1
        //   26: aload_3
        //   27: aload_1
        //   28: invokevirtual 190	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   31: aload_3
        //   32: aload_2
        //   33: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   36: aload_0
        //   37: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   40: bipush 8
        //   42: aload_3
        //   43: aload 4
        //   45: iconst_0
        //   46: invokeinterface 54 5 0
        //   51: pop
        //   52: aload 4
        //   54: invokevirtual 57	android/os/Parcel:readException	()V
        //   57: aload 4
        //   59: invokevirtual 64	android/os/Parcel:recycle	()V
        //   62: aload_3
        //   63: invokevirtual 64	android/os/Parcel:recycle	()V
        //   66: return
        //   67: aconst_null
        //   68: astore_1
        //   69: goto -43 -> 26
        //   72: astore_1
        //   73: aload 4
        //   75: invokevirtual 64	android/os/Parcel:recycle	()V
        //   78: aload_3
        //   79: invokevirtual 64	android/os/Parcel:recycle	()V
        //   82: aload_1
        //   83: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	84	0	this	a
        //   0	84	1	paramIServiceCallback	IServiceCallback
        //   0	84	2	paramString	String
        //   3	76	3	localParcel1	Parcel
        //   7	67	4	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   9	15	72	finally
        //   19	26	72	finally
        //   26	57	72	finally
      }
      
      /* Error */
      public final MiGamMessageResponse sendGameMessage(String paramString1, boolean paramBoolean, String paramString2, String paramString3, int paramInt, byte[] paramArrayOfByte, GamMetaInfo[] paramArrayOfGamMetaInfo)
        throws RemoteException
      {
        // Byte code:
        //   0: iconst_0
        //   1: istore 8
        //   3: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   6: astore 9
        //   8: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   11: astore 10
        //   13: aload 9
        //   15: ldc 31
        //   17: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   20: aload 9
        //   22: aload_1
        //   23: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   26: iload_2
        //   27: ifeq +6 -> 33
        //   30: iconst_1
        //   31: istore 8
        //   33: aload 9
        //   35: iload 8
        //   37: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   40: aload 9
        //   42: aload_3
        //   43: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   46: aload 9
        //   48: aload 4
        //   50: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   53: aload 9
        //   55: iload 5
        //   57: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   60: aload 9
        //   62: aload 6
        //   64: invokevirtual 196	android/os/Parcel:writeByteArray	([B)V
        //   67: aload 9
        //   69: aload 7
        //   71: iconst_0
        //   72: invokevirtual 200	android/os/Parcel:writeTypedArray	([Landroid/os/Parcelable;I)V
        //   75: aload_0
        //   76: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   79: bipush 18
        //   81: aload 9
        //   83: aload 10
        //   85: iconst_0
        //   86: invokeinterface 54 5 0
        //   91: pop
        //   92: aload 10
        //   94: invokevirtual 57	android/os/Parcel:readException	()V
        //   97: aload 10
        //   99: invokevirtual 61	android/os/Parcel:readInt	()I
        //   102: ifeq +29 -> 131
        //   105: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   108: aload 10
        //   110: invokeinterface 81 2 0
        //   115: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   118: astore_1
        //   119: aload 10
        //   121: invokevirtual 64	android/os/Parcel:recycle	()V
        //   124: aload 9
        //   126: invokevirtual 64	android/os/Parcel:recycle	()V
        //   129: aload_1
        //   130: areturn
        //   131: aconst_null
        //   132: astore_1
        //   133: goto -14 -> 119
        //   136: astore_1
        //   137: aload 10
        //   139: invokevirtual 64	android/os/Parcel:recycle	()V
        //   142: aload 9
        //   144: invokevirtual 64	android/os/Parcel:recycle	()V
        //   147: aload_1
        //   148: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	149	0	this	a
        //   0	149	1	paramString1	String
        //   0	149	2	paramBoolean	boolean
        //   0	149	3	paramString2	String
        //   0	149	4	paramString3	String
        //   0	149	5	paramInt	int
        //   0	149	6	paramArrayOfByte	byte[]
        //   0	149	7	paramArrayOfGamMetaInfo	GamMetaInfo[]
        //   1	35	8	i	int
        //   6	137	9	localParcel1	Parcel
        //   11	127	10	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   13	26	136	finally
        //   33	119	136	finally
      }
      
      public final MiGamMessageResponse sendInviteMessage(String paramString1, boolean paramBoolean, String paramString2, GamMetaInfo[] paramArrayOfGamMetaInfo, MiliaoInfo paramMiliaoInfo)
        throws RemoteException
      {
        int i = 1;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        label154:
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
            localParcel1.writeString(paramString1);
            if (paramBoolean)
            {
              localParcel1.writeInt(i);
              localParcel1.writeString(paramString2);
              localParcel1.writeTypedArray(paramArrayOfGamMetaInfo, 0);
              if (paramMiliaoInfo != null)
              {
                localParcel1.writeInt(1);
                paramMiliaoInfo.writeToParcel(localParcel1, 0);
                this.a.transact(27, localParcel1, localParcel2, 0);
                localParcel2.readException();
                if (localParcel2.readInt() == 0) {
                  break label154;
                }
                paramString1 = (MiGamMessageResponse)MiGamMessageResponse.CREATOR.createFromParcel(localParcel2);
                return paramString1;
              }
            }
            else
            {
              i = 0;
              continue;
            }
            localParcel1.writeInt(0);
            continue;
            paramString1 = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public final MiGamMessageResponse sendInviteMessageNew(String paramString1, String paramString2, String paramString3, MiliaoInfo paramMiliaoInfo)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
            localParcel1.writeString(paramString1);
            localParcel1.writeString(paramString2);
            localParcel1.writeString(paramString3);
            if (paramMiliaoInfo != null)
            {
              localParcel1.writeInt(1);
              paramMiliaoInfo.writeToParcel(localParcel1, 0);
              this.a.transact(35, localParcel1, localParcel2, 0);
              localParcel2.readException();
              if (localParcel2.readInt() != 0)
              {
                paramString1 = (MiGamMessageResponse)MiGamMessageResponse.CREATOR.createFromParcel(localParcel2);
                return paramString1;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            paramString1 = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public final void sendLogToService(String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
          localParcel1.writeString(paramString);
          this.a.transact(31, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public final MiGamMessageResponse sendTextMsgToFriend()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   18: bipush 41
        //   20: aload_2
        //   21: aload_3
        //   22: iconst_0
        //   23: invokeinterface 54 5 0
        //   28: pop
        //   29: aload_3
        //   30: invokevirtual 57	android/os/Parcel:readException	()V
        //   33: aload_3
        //   34: invokevirtual 61	android/os/Parcel:readInt	()I
        //   37: ifeq +26 -> 63
        //   40: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_3
        //   44: invokeinterface 81 2 0
        //   49: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   52: astore_1
        //   53: aload_3
        //   54: invokevirtual 64	android/os/Parcel:recycle	()V
        //   57: aload_2
        //   58: invokevirtual 64	android/os/Parcel:recycle	()V
        //   61: aload_1
        //   62: areturn
        //   63: aconst_null
        //   64: astore_1
        //   65: goto -12 -> 53
        //   68: astore_1
        //   69: aload_3
        //   70: invokevirtual 64	android/os/Parcel:recycle	()V
        //   73: aload_2
        //   74: invokevirtual 64	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   52	13	1	localMiGamMessageResponse	MiGamMessageResponse
        //   68	10	1	localObject	Object
        //   3	71	2	localParcel1	Parcel
        //   7	63	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	53	68	finally
      }
      
      public final MiGamMessageResponse shareToMiTalkForImgAndUrl(String paramString1, String paramString2, String paramString3, String paramString4, MiliaoInfo paramMiliaoInfo)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
            localParcel1.writeString(paramString1);
            localParcel1.writeString(paramString2);
            localParcel1.writeString(paramString3);
            localParcel1.writeString(paramString4);
            if (paramMiliaoInfo != null)
            {
              localParcel1.writeInt(1);
              paramMiliaoInfo.writeToParcel(localParcel1, 0);
              this.a.transact(45, localParcel1, localParcel2, 0);
              localParcel2.readException();
              if (localParcel2.readInt() != 0)
              {
                paramString1 = (MiGamMessageResponse)MiGamMessageResponse.CREATOR.createFromParcel(localParcel2);
                return paramString1;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            paramString1 = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public final MiGamMessageResponse shareToMiliao(MiliaoInfo paramMiliaoInfo, String paramString1, String paramString2, String paramString3)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
            if (paramMiliaoInfo != null)
            {
              localParcel1.writeInt(1);
              paramMiliaoInfo.writeToParcel(localParcel1, 0);
              localParcel1.writeString(paramString1);
              localParcel1.writeString(paramString2);
              localParcel1.writeString(paramString3);
              this.a.transact(30, localParcel1, localParcel2, 0);
              localParcel2.readException();
              if (localParcel2.readInt() != 0)
              {
                paramMiliaoInfo = (MiGamMessageResponse)MiGamMessageResponse.CREATOR.createFromParcel(localParcel2);
                return paramMiliaoInfo;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            paramMiliaoInfo = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public final MiGamMessageResponse shareToMiliaoForLargeImg(String paramString1, String paramString2, MiliaoInfo paramMiliaoInfo)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.xiaomi.gamecenter.sdk.IGameCenterSDK");
            localParcel1.writeString(paramString1);
            localParcel1.writeString(paramString2);
            if (paramMiliaoInfo != null)
            {
              localParcel1.writeInt(1);
              paramMiliaoInfo.writeToParcel(localParcel1, 0);
              this.a.transact(34, localParcel1, localParcel2, 0);
              localParcel2.readException();
              if (localParcel2.readInt() != 0)
              {
                paramString1 = (MiGamMessageResponse)MiGamMessageResponse.CREATOR.createFromParcel(localParcel2);
                return paramString1;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            paramString1 = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      /* Error */
      public final MiGamMessageResponse subscribeVip(String paramString)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 31
        //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_2
        //   15: aload_1
        //   16: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   19: aload_0
        //   20: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   23: bipush 39
        //   25: aload_2
        //   26: aload_3
        //   27: iconst_0
        //   28: invokeinterface 54 5 0
        //   33: pop
        //   34: aload_3
        //   35: invokevirtual 57	android/os/Parcel:readException	()V
        //   38: aload_3
        //   39: invokevirtual 61	android/os/Parcel:readInt	()I
        //   42: ifeq +26 -> 68
        //   45: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   48: aload_3
        //   49: invokeinterface 81 2 0
        //   54: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   57: astore_1
        //   58: aload_3
        //   59: invokevirtual 64	android/os/Parcel:recycle	()V
        //   62: aload_2
        //   63: invokevirtual 64	android/os/Parcel:recycle	()V
        //   66: aload_1
        //   67: areturn
        //   68: aconst_null
        //   69: astore_1
        //   70: goto -12 -> 58
        //   73: astore_1
        //   74: aload_3
        //   75: invokevirtual 64	android/os/Parcel:recycle	()V
        //   78: aload_2
        //   79: invokevirtual 64	android/os/Parcel:recycle	()V
        //   82: aload_1
        //   83: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	84	0	this	a
        //   0	84	1	paramString	String
        //   3	76	2	localParcel1	Parcel
        //   7	68	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	58	73	finally
      }
      
      /* Error */
      public final MiGamMessageResponse syncResult(String paramString, int paramInt1, int paramInt2, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore 6
        //   5: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   8: astore 7
        //   10: aload 6
        //   12: ldc 31
        //   14: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   17: aload 6
        //   19: aload_1
        //   20: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   23: aload 6
        //   25: iload_2
        //   26: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   29: aload 6
        //   31: iload_3
        //   32: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   35: aload 6
        //   37: aload 4
        //   39: invokevirtual 196	android/os/Parcel:writeByteArray	([B)V
        //   42: aload 6
        //   44: aload 5
        //   46: invokevirtual 196	android/os/Parcel:writeByteArray	([B)V
        //   49: aload_0
        //   50: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   53: bipush 32
        //   55: aload 6
        //   57: aload 7
        //   59: iconst_0
        //   60: invokeinterface 54 5 0
        //   65: pop
        //   66: aload 7
        //   68: invokevirtual 57	android/os/Parcel:readException	()V
        //   71: aload 7
        //   73: invokevirtual 61	android/os/Parcel:readInt	()I
        //   76: ifeq +29 -> 105
        //   79: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   82: aload 7
        //   84: invokeinterface 81 2 0
        //   89: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   92: astore_1
        //   93: aload 7
        //   95: invokevirtual 64	android/os/Parcel:recycle	()V
        //   98: aload 6
        //   100: invokevirtual 64	android/os/Parcel:recycle	()V
        //   103: aload_1
        //   104: areturn
        //   105: aconst_null
        //   106: astore_1
        //   107: goto -14 -> 93
        //   110: astore_1
        //   111: aload 7
        //   113: invokevirtual 64	android/os/Parcel:recycle	()V
        //   116: aload 6
        //   118: invokevirtual 64	android/os/Parcel:recycle	()V
        //   121: aload_1
        //   122: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	123	0	this	a
        //   0	123	1	paramString	String
        //   0	123	2	paramInt1	int
        //   0	123	3	paramInt2	int
        //   0	123	4	paramArrayOfByte1	byte[]
        //   0	123	5	paramArrayOfByte2	byte[]
        //   3	114	6	localParcel1	Parcel
        //   8	104	7	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   10	93	110	finally
      }
      
      /* Error */
      public final MiGamMessageResponse syncResults(ScoresEntry[] paramArrayOfScoresEntry, int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore 5
        //   5: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   8: astore 6
        //   10: aload 5
        //   12: ldc 31
        //   14: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   17: aload 5
        //   19: aload_1
        //   20: iconst_0
        //   21: invokevirtual 200	android/os/Parcel:writeTypedArray	([Landroid/os/Parcelable;I)V
        //   24: aload 5
        //   26: iload_2
        //   27: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   30: aload 5
        //   32: aload_3
        //   33: invokevirtual 196	android/os/Parcel:writeByteArray	([B)V
        //   36: aload 5
        //   38: aload 4
        //   40: invokevirtual 196	android/os/Parcel:writeByteArray	([B)V
        //   43: aload_0
        //   44: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   47: bipush 33
        //   49: aload 5
        //   51: aload 6
        //   53: iconst_0
        //   54: invokeinterface 54 5 0
        //   59: pop
        //   60: aload 6
        //   62: invokevirtual 57	android/os/Parcel:readException	()V
        //   65: aload 6
        //   67: invokevirtual 61	android/os/Parcel:readInt	()I
        //   70: ifeq +29 -> 99
        //   73: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   76: aload 6
        //   78: invokeinterface 81 2 0
        //   83: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   86: astore_1
        //   87: aload 6
        //   89: invokevirtual 64	android/os/Parcel:recycle	()V
        //   92: aload 5
        //   94: invokevirtual 64	android/os/Parcel:recycle	()V
        //   97: aload_1
        //   98: areturn
        //   99: aconst_null
        //   100: astore_1
        //   101: goto -14 -> 87
        //   104: astore_1
        //   105: aload 6
        //   107: invokevirtual 64	android/os/Parcel:recycle	()V
        //   110: aload 5
        //   112: invokevirtual 64	android/os/Parcel:recycle	()V
        //   115: aload_1
        //   116: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	117	0	this	a
        //   0	117	1	paramArrayOfScoresEntry	ScoresEntry[]
        //   0	117	2	paramInt	int
        //   0	117	3	paramArrayOfByte1	byte[]
        //   0	117	4	paramArrayOfByte2	byte[]
        //   3	108	5	localParcel1	Parcel
        //   8	98	6	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   10	87	104	finally
      }
      
      /* Error */
      public final void unregistCallBack(IServiceCallback paramIServiceCallback, String paramString)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore 4
        //   9: aload_3
        //   10: ldc 31
        //   12: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   15: aload_1
        //   16: ifnull +51 -> 67
        //   19: aload_1
        //   20: invokeinterface 187 1 0
        //   25: astore_1
        //   26: aload_3
        //   27: aload_1
        //   28: invokevirtual 190	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   31: aload_3
        //   32: aload_2
        //   33: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   36: aload_0
        //   37: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   40: bipush 9
        //   42: aload_3
        //   43: aload 4
        //   45: iconst_0
        //   46: invokeinterface 54 5 0
        //   51: pop
        //   52: aload 4
        //   54: invokevirtual 57	android/os/Parcel:readException	()V
        //   57: aload 4
        //   59: invokevirtual 64	android/os/Parcel:recycle	()V
        //   62: aload_3
        //   63: invokevirtual 64	android/os/Parcel:recycle	()V
        //   66: return
        //   67: aconst_null
        //   68: astore_1
        //   69: goto -43 -> 26
        //   72: astore_1
        //   73: aload 4
        //   75: invokevirtual 64	android/os/Parcel:recycle	()V
        //   78: aload_3
        //   79: invokevirtual 64	android/os/Parcel:recycle	()V
        //   82: aload_1
        //   83: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	84	0	this	a
        //   0	84	1	paramIServiceCallback	IServiceCallback
        //   0	84	2	paramString	String
        //   3	76	3	localParcel1	Parcel
        //   7	67	4	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   9	15	72	finally
        //   19	26	72	finally
        //   26	57	72	finally
      }
      
      /* Error */
      public final MiGamMessageResponse updateMe(int paramInt1, int paramInt2, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore 5
        //   5: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   8: astore 6
        //   10: aload 5
        //   12: ldc 31
        //   14: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   17: aload 5
        //   19: iload_1
        //   20: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   23: aload 5
        //   25: iload_2
        //   26: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   29: aload 5
        //   31: aload_3
        //   32: invokevirtual 196	android/os/Parcel:writeByteArray	([B)V
        //   35: aload 5
        //   37: aload 4
        //   39: invokevirtual 196	android/os/Parcel:writeByteArray	([B)V
        //   42: aload_0
        //   43: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   46: bipush 17
        //   48: aload 5
        //   50: aload 6
        //   52: iconst_0
        //   53: invokeinterface 54 5 0
        //   58: pop
        //   59: aload 6
        //   61: invokevirtual 57	android/os/Parcel:readException	()V
        //   64: aload 6
        //   66: invokevirtual 61	android/os/Parcel:readInt	()I
        //   69: ifeq +29 -> 98
        //   72: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   75: aload 6
        //   77: invokeinterface 81 2 0
        //   82: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   85: astore_3
        //   86: aload 6
        //   88: invokevirtual 64	android/os/Parcel:recycle	()V
        //   91: aload 5
        //   93: invokevirtual 64	android/os/Parcel:recycle	()V
        //   96: aload_3
        //   97: areturn
        //   98: aconst_null
        //   99: astore_3
        //   100: goto -14 -> 86
        //   103: astore_3
        //   104: aload 6
        //   106: invokevirtual 64	android/os/Parcel:recycle	()V
        //   109: aload 5
        //   111: invokevirtual 64	android/os/Parcel:recycle	()V
        //   114: aload_3
        //   115: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	116	0	this	a
        //   0	116	1	paramInt1	int
        //   0	116	2	paramInt2	int
        //   0	116	3	paramArrayOfByte1	byte[]
        //   0	116	4	paramArrayOfByte2	byte[]
        //   3	107	5	localParcel1	Parcel
        //   8	97	6	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   10	86	103	finally
      }
      
      /* Error */
      public final MiGamMessageResponse updateResult(String paramString1, int paramInt1, int paramInt2, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, String paramString2, int paramInt3, String paramString3)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore 9
        //   5: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   8: astore 10
        //   10: aload 9
        //   12: ldc 31
        //   14: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   17: aload 9
        //   19: aload_1
        //   20: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   23: aload 9
        //   25: iload_2
        //   26: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   29: aload 9
        //   31: iload_3
        //   32: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   35: aload 9
        //   37: aload 4
        //   39: invokevirtual 196	android/os/Parcel:writeByteArray	([B)V
        //   42: aload 9
        //   44: aload 5
        //   46: invokevirtual 196	android/os/Parcel:writeByteArray	([B)V
        //   49: aload 9
        //   51: aload 6
        //   53: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   56: aload 9
        //   58: iload 7
        //   60: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   63: aload 9
        //   65: aload 8
        //   67: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   70: aload_0
        //   71: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   74: bipush 23
        //   76: aload 9
        //   78: aload 10
        //   80: iconst_0
        //   81: invokeinterface 54 5 0
        //   86: pop
        //   87: aload 10
        //   89: invokevirtual 57	android/os/Parcel:readException	()V
        //   92: aload 10
        //   94: invokevirtual 61	android/os/Parcel:readInt	()I
        //   97: ifeq +29 -> 126
        //   100: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   103: aload 10
        //   105: invokeinterface 81 2 0
        //   110: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   113: astore_1
        //   114: aload 10
        //   116: invokevirtual 64	android/os/Parcel:recycle	()V
        //   119: aload 9
        //   121: invokevirtual 64	android/os/Parcel:recycle	()V
        //   124: aload_1
        //   125: areturn
        //   126: aconst_null
        //   127: astore_1
        //   128: goto -14 -> 114
        //   131: astore_1
        //   132: aload 10
        //   134: invokevirtual 64	android/os/Parcel:recycle	()V
        //   137: aload 9
        //   139: invokevirtual 64	android/os/Parcel:recycle	()V
        //   142: aload_1
        //   143: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	144	0	this	a
        //   0	144	1	paramString1	String
        //   0	144	2	paramInt1	int
        //   0	144	3	paramInt2	int
        //   0	144	4	paramArrayOfByte1	byte[]
        //   0	144	5	paramArrayOfByte2	byte[]
        //   0	144	6	paramString2	String
        //   0	144	7	paramInt3	int
        //   0	144	8	paramString3	String
        //   3	135	9	localParcel1	Parcel
        //   8	125	10	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   10	114	131	finally
      }
      
      /* Error */
      public final MiGamMessageResponse updateResults(ScoresEntry[] paramArrayOfScoresEntry, int paramInt1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, String paramString1, int paramInt2, String paramString2)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore 8
        //   5: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   8: astore 9
        //   10: aload 8
        //   12: ldc 31
        //   14: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   17: aload 8
        //   19: aload_1
        //   20: iconst_0
        //   21: invokevirtual 200	android/os/Parcel:writeTypedArray	([Landroid/os/Parcelable;I)V
        //   24: aload 8
        //   26: iload_2
        //   27: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   30: aload 8
        //   32: aload_3
        //   33: invokevirtual 196	android/os/Parcel:writeByteArray	([B)V
        //   36: aload 8
        //   38: aload 4
        //   40: invokevirtual 196	android/os/Parcel:writeByteArray	([B)V
        //   43: aload 8
        //   45: aload 5
        //   47: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   50: aload 8
        //   52: iload 6
        //   54: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   57: aload 8
        //   59: aload 7
        //   61: invokevirtual 48	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   64: aload_0
        //   65: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   68: bipush 24
        //   70: aload 8
        //   72: aload 9
        //   74: iconst_0
        //   75: invokeinterface 54 5 0
        //   80: pop
        //   81: aload 9
        //   83: invokevirtual 57	android/os/Parcel:readException	()V
        //   86: aload 9
        //   88: invokevirtual 61	android/os/Parcel:readInt	()I
        //   91: ifeq +29 -> 120
        //   94: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   97: aload 9
        //   99: invokeinterface 81 2 0
        //   104: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   107: astore_1
        //   108: aload 9
        //   110: invokevirtual 64	android/os/Parcel:recycle	()V
        //   113: aload 8
        //   115: invokevirtual 64	android/os/Parcel:recycle	()V
        //   118: aload_1
        //   119: areturn
        //   120: aconst_null
        //   121: astore_1
        //   122: goto -14 -> 108
        //   125: astore_1
        //   126: aload 9
        //   128: invokevirtual 64	android/os/Parcel:recycle	()V
        //   131: aload 8
        //   133: invokevirtual 64	android/os/Parcel:recycle	()V
        //   136: aload_1
        //   137: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	138	0	this	a
        //   0	138	1	paramArrayOfScoresEntry	ScoresEntry[]
        //   0	138	2	paramInt1	int
        //   0	138	3	paramArrayOfByte1	byte[]
        //   0	138	4	paramArrayOfByte2	byte[]
        //   0	138	5	paramString1	String
        //   0	138	6	paramInt2	int
        //   0	138	7	paramString2	String
        //   3	129	8	localParcel1	Parcel
        //   8	119	9	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   10	108	125	finally
      }
      
      /* Error */
      public final MiGamMessageResponse useHeart(int paramInt, boolean paramBoolean)
        throws RemoteException
      {
        // Byte code:
        //   0: iconst_0
        //   1: istore_3
        //   2: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   5: astore 5
        //   7: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   10: astore 6
        //   12: aload 5
        //   14: ldc 31
        //   16: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   19: aload 5
        //   21: iload_1
        //   22: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   25: iload_3
        //   26: istore_1
        //   27: iload_2
        //   28: ifeq +5 -> 33
        //   31: iconst_1
        //   32: istore_1
        //   33: aload 5
        //   35: iload_1
        //   36: invokevirtual 39	android/os/Parcel:writeInt	(I)V
        //   39: aload_0
        //   40: getfield 18	com/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub$a:a	Landroid/os/IBinder;
        //   43: bipush 22
        //   45: aload 5
        //   47: aload 6
        //   49: iconst_0
        //   50: invokeinterface 54 5 0
        //   55: pop
        //   56: aload 6
        //   58: invokevirtual 57	android/os/Parcel:readException	()V
        //   61: aload 6
        //   63: invokevirtual 61	android/os/Parcel:readInt	()I
        //   66: ifeq +31 -> 97
        //   69: getstatic 75	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse:CREATOR	Landroid/os/Parcelable$Creator;
        //   72: aload 6
        //   74: invokeinterface 81 2 0
        //   79: checkcast 71	com/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse
        //   82: astore 4
        //   84: aload 6
        //   86: invokevirtual 64	android/os/Parcel:recycle	()V
        //   89: aload 5
        //   91: invokevirtual 64	android/os/Parcel:recycle	()V
        //   94: aload 4
        //   96: areturn
        //   97: aconst_null
        //   98: astore 4
        //   100: goto -16 -> 84
        //   103: astore 4
        //   105: aload 6
        //   107: invokevirtual 64	android/os/Parcel:recycle	()V
        //   110: aload 5
        //   112: invokevirtual 64	android/os/Parcel:recycle	()V
        //   115: aload 4
        //   117: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	118	0	this	a
        //   0	118	1	paramInt	int
        //   0	118	2	paramBoolean	boolean
        //   1	25	3	i	int
        //   82	17	4	localMiGamMessageResponse	MiGamMessageResponse
        //   103	13	4	localObject	Object
        //   5	106	5	localParcel1	Parcel
        //   10	96	6	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   12	25	103	finally
        //   33	84	103	finally
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\IGameCenterSDK.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */