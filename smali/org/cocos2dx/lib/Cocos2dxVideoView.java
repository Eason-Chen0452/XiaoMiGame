package org.cocos2dx.lib;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout.LayoutParams;
import android.widget.MediaController.MediaPlayerControl;
import android.widget.Toast;
import java.io.IOException;
import java.util.Map;

public class Cocos2dxVideoView
  extends SurfaceView
  implements MediaController.MediaPlayerControl
{
  private static final int EVENT_COMPLETED = 3;
  private static final int EVENT_PAUSED = 1;
  private static final int EVENT_PLAYING = 0;
  private static final int EVENT_STOPPED = 2;
  private static final int STATE_ERROR = -1;
  private static final int STATE_IDLE = 0;
  private static final int STATE_PAUSED = 4;
  private static final int STATE_PLAYBACK_COMPLETED = 5;
  private static final int STATE_PLAYING = 3;
  private static final int STATE_PREPARED = 2;
  private static final int STATE_PREPARING = 1;
  private String TAG = "VideoView";
  private String fileName = null;
  private boolean isAssetRouse = false;
  private boolean isComplete = false;
  private MediaPlayer.OnBufferingUpdateListener mBufferingUpdateListener = new MediaPlayer.OnBufferingUpdateListener()
  {
    public void onBufferingUpdate(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt)
    {
      Cocos2dxVideoView.access$1302(Cocos2dxVideoView.this, paramAnonymousInt);
    }
  };
  private MediaPlayer.OnCompletionListener mCompletionListener = new MediaPlayer.OnCompletionListener()
  {
    public void onCompletion(MediaPlayer paramAnonymousMediaPlayer)
    {
      Cocos2dxVideoView.access$302(Cocos2dxVideoView.this, 5);
      Cocos2dxVideoView.access$702(Cocos2dxVideoView.this, 5);
      Cocos2dxVideoView.this.release(true);
      if (Cocos2dxVideoView.this.mOnVideoEventListener != null) {
        Cocos2dxVideoView.this.mOnVideoEventListener.onVideoEvent(Cocos2dxVideoView.this.mViewTag, 3);
      }
    }
  };
  protected Context mContext = null;
  private int mCurrentBufferPercentage;
  private int mCurrentState = 0;
  private int mDuration;
  private MediaPlayer.OnErrorListener mErrorListener = new MediaPlayer.OnErrorListener()
  {
    public boolean onError(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      Log.d(Cocos2dxVideoView.this.TAG, "Error: " + paramAnonymousInt1 + "," + paramAnonymousInt2);
      Cocos2dxVideoView.access$302(Cocos2dxVideoView.this, -1);
      Cocos2dxVideoView.access$702(Cocos2dxVideoView.this, -1);
      if ((Cocos2dxVideoView.this.mOnErrorListener != null) && (Cocos2dxVideoView.this.mOnErrorListener.onError(Cocos2dxVideoView.this.mMediaPlayer, paramAnonymousInt1, paramAnonymousInt2))) {}
      while (Cocos2dxVideoView.this.getWindowToken() == null) {
        return true;
      }
      paramAnonymousMediaPlayer = Cocos2dxVideoView.this.mContext.getResources();
      if (paramAnonymousInt1 == 200) {}
      for (paramAnonymousInt1 = paramAnonymousMediaPlayer.getIdentifier("VideoView_error_text_invalid_progressive_playback", "string", "android");; paramAnonymousInt1 = paramAnonymousMediaPlayer.getIdentifier("VideoView_error_text_unknown", "string", "android"))
      {
        paramAnonymousInt2 = paramAnonymousMediaPlayer.getIdentifier("VideoView_error_title", "string", "android");
        int i = paramAnonymousMediaPlayer.getIdentifier("VideoView_error_button", "string", "android");
        new AlertDialog.Builder(Cocos2dxVideoView.this.mContext).setTitle(paramAnonymousMediaPlayer.getString(paramAnonymousInt2)).setMessage(paramAnonymousInt1).setPositiveButton(paramAnonymousMediaPlayer.getString(i), new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            if (Cocos2dxVideoView.this.mOnVideoEventListener != null) {
              Cocos2dxVideoView.this.mOnVideoEventListener.onVideoEvent(Cocos2dxVideoView.this.mViewTag, 3);
            }
          }
        }).setCancelable(false).show();
        return true;
      }
    }
  };
  private boolean mKeepRatio = false;
  private MediaPlayer mMediaPlayer = null;
  private boolean mNeedResume = false;
  private MediaPlayer.OnErrorListener mOnErrorListener;
  private MediaPlayer.OnPreparedListener mOnPreparedListener;
  private OnVideoEventListener mOnVideoEventListener;
  MediaPlayer.OnPreparedListener mPreparedListener = new MediaPlayer.OnPreparedListener()
  {
    public void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
    {
      Cocos2dxVideoView.access$302(Cocos2dxVideoView.this, 2);
      if (Cocos2dxVideoView.this.mOnPreparedListener != null) {
        Cocos2dxVideoView.this.mOnPreparedListener.onPrepared(Cocos2dxVideoView.this.mMediaPlayer);
      }
      Cocos2dxVideoView.access$102(Cocos2dxVideoView.this, paramAnonymousMediaPlayer.getVideoWidth());
      Cocos2dxVideoView.access$202(Cocos2dxVideoView.this, paramAnonymousMediaPlayer.getVideoHeight());
      int i = Cocos2dxVideoView.this.mSeekWhenPrepared;
      if (i != 0) {
        Cocos2dxVideoView.this.seekTo(i);
      }
      if ((Cocos2dxVideoView.this.mVideoWidth != 0) && (Cocos2dxVideoView.this.mVideoHeight != 0)) {
        Cocos2dxVideoView.this.fixSize();
      }
      if (Cocos2dxVideoView.this.mTargetState == 3) {
        Cocos2dxVideoView.this.start();
      }
    }
  };
  SurfaceHolder.Callback mSHCallback = new SurfaceHolder.Callback()
  {
    public void surfaceChanged(SurfaceHolder paramAnonymousSurfaceHolder, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      if ((Cocos2dxVideoView.this.mTargetState == 3) || (!Cocos2dxVideoView.this.isComplete))
      {
        paramAnonymousInt1 = 1;
        if ((Cocos2dxVideoView.this.mVideoWidth != paramAnonymousInt2) || (Cocos2dxVideoView.this.mVideoHeight != paramAnonymousInt3)) {
          break label103;
        }
      }
      label103:
      for (paramAnonymousInt2 = 1;; paramAnonymousInt2 = 0)
      {
        if ((Cocos2dxVideoView.this.mMediaPlayer != null) && (paramAnonymousInt1 != 0) && (paramAnonymousInt2 != 0))
        {
          if (Cocos2dxVideoView.this.mSeekWhenPrepared != 0) {
            Cocos2dxVideoView.this.seekTo(Cocos2dxVideoView.this.mSeekWhenPrepared);
          }
          Cocos2dxVideoView.this.start();
        }
        return;
        paramAnonymousInt1 = 0;
        break;
      }
    }
    
    public void surfaceCreated(SurfaceHolder paramAnonymousSurfaceHolder)
    {
      Cocos2dxVideoView.access$1502(Cocos2dxVideoView.this, paramAnonymousSurfaceHolder);
      Cocos2dxVideoView.this.openVideo();
    }
    
    public void surfaceDestroyed(SurfaceHolder paramAnonymousSurfaceHolder)
    {
      Cocos2dxVideoView.access$1502(Cocos2dxVideoView.this, null);
      if (Cocos2dxVideoView.this.mCurrentState == 3)
      {
        paramAnonymousSurfaceHolder = Cocos2dxVideoView.this;
        if (Cocos2dxVideoView.this.mMediaPlayer.getCurrentPosition() != Cocos2dxVideoView.this.mMediaPlayer.getDuration()) {
          break label83;
        }
      }
      label83:
      for (boolean bool = true;; bool = false)
      {
        Cocos2dxVideoView.access$1402(paramAnonymousSurfaceHolder, bool);
        Cocos2dxVideoView.access$602(Cocos2dxVideoView.this, Cocos2dxVideoView.this.mMediaPlayer.getCurrentPosition());
        Cocos2dxVideoView.this.release(true);
        return;
      }
    }
  };
  private int mSeekWhenPrepared;
  protected MediaPlayer.OnVideoSizeChangedListener mSizeChangedListener = new MediaPlayer.OnVideoSizeChangedListener()
  {
    public void onVideoSizeChanged(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      Cocos2dxVideoView.access$102(Cocos2dxVideoView.this, paramAnonymousMediaPlayer.getVideoWidth());
      Cocos2dxVideoView.access$202(Cocos2dxVideoView.this, paramAnonymousMediaPlayer.getVideoHeight());
      if ((Cocos2dxVideoView.this.mVideoWidth != 0) && (Cocos2dxVideoView.this.mVideoHeight != 0)) {
        Cocos2dxVideoView.this.getHolder().setFixedSize(Cocos2dxVideoView.this.mVideoWidth, Cocos2dxVideoView.this.mVideoHeight);
      }
    }
  };
  private SurfaceHolder mSurfaceHolder = null;
  private int mTargetState = 0;
  private Uri mUri;
  private int mVideoHeight = 0;
  private int mVideoWidth = 0;
  protected int mViewHeight = 0;
  protected int mViewLeft = 0;
  private int mViewTag = 0;
  protected int mViewTop = 0;
  protected int mViewWidth = 0;
  protected int mVisibleHeight = 0;
  protected int mVisibleLeft = 0;
  protected int mVisibleTop = 0;
  protected int mVisibleWidth = 0;
  private boolean touchOnce = false;
  
  public Cocos2dxVideoView(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.mViewTag = paramInt;
    this.mContext = paramContext;
    initVideoView();
  }
  
  public Cocos2dxVideoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
    this.mContext = paramContext;
    initVideoView();
  }
  
  public Cocos2dxVideoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.mContext = paramContext;
    initVideoView();
  }
  
  private void initVideoView()
  {
    this.mVideoWidth = 1;
    this.mVideoHeight = 1;
    getHolder().addCallback(this.mSHCallback);
    setFocusable(false);
    setFocusableInTouchMode(false);
    this.mCurrentState = 0;
    this.mTargetState = 0;
  }
  
  private void openVideo()
  {
    if (this.mSurfaceHolder == null) {}
    do
    {
      return;
      if (!this.isAssetRouse) {
        break;
      }
    } while (this.fileName == null);
    for (;;)
    {
      Object localObject = new Intent("com.android.music.musicservicecommand");
      ((Intent)localObject).putExtra("command", "pause");
      this.mContext.sendBroadcast((Intent)localObject);
      release(false);
      try
      {
        this.mMediaPlayer = new MediaPlayer();
        this.mMediaPlayer.setOnPreparedListener(this.mPreparedListener);
        this.mMediaPlayer.setOnVideoSizeChangedListener(this.mSizeChangedListener);
        this.mMediaPlayer.setOnCompletionListener(this.mCompletionListener);
        this.mMediaPlayer.setOnErrorListener(this.mErrorListener);
        this.mMediaPlayer.setOnBufferingUpdateListener(this.mBufferingUpdateListener);
        this.mMediaPlayer.setDisplay(this.mSurfaceHolder);
        this.mMediaPlayer.setAudioStreamType(3);
        this.mMediaPlayer.setScreenOnWhilePlaying(true);
        this.mDuration = -1;
        this.mCurrentBufferPercentage = 0;
        if (this.isAssetRouse)
        {
          localObject = this.mContext.getAssets().openFd(this.fileName);
          this.mMediaPlayer.setDataSource(((AssetFileDescriptor)localObject).getFileDescriptor(), ((AssetFileDescriptor)localObject).getStartOffset(), ((AssetFileDescriptor)localObject).getLength());
          this.mMediaPlayer.prepareAsync();
          this.mCurrentState = 1;
          return;
        }
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          Log.w(this.TAG, "Unable to open content: " + this.mUri, localIOException);
          this.mCurrentState = -1;
          this.mTargetState = -1;
          this.mErrorListener.onError(this.mMediaPlayer, 1, 0);
          return;
          if (this.mUri != null) {
            break;
          }
          return;
          this.mMediaPlayer.setDataSource(this.mContext, this.mUri);
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        Log.w(this.TAG, "Unable to open content: " + this.mUri, localIllegalArgumentException);
        this.mCurrentState = -1;
        this.mTargetState = -1;
        this.mErrorListener.onError(this.mMediaPlayer, 1, 0);
      }
    }
  }
  
  private void release(boolean paramBoolean)
  {
    if (this.mMediaPlayer != null)
    {
      this.mMediaPlayer.reset();
      this.mMediaPlayer.release();
      this.mMediaPlayer = null;
      this.mCurrentState = 0;
      if (paramBoolean) {
        this.mTargetState = 0;
      }
    }
  }
  
  private void setVideoURI(Uri paramUri, Map<String, String> paramMap)
  {
    this.mUri = paramUri;
    this.mSeekWhenPrepared = 0;
    this.mVideoWidth = 0;
    this.mVideoHeight = 0;
    openVideo();
    requestLayout();
    invalidate();
  }
  
  public boolean canPause()
  {
    return true;
  }
  
  public boolean canSeekBackward()
  {
    return true;
  }
  
  public boolean canSeekForward()
  {
    return true;
  }
  
  public void fixSize()
  {
    if ((this.mViewWidth != 0) && (this.mViewHeight != 0)) {
      if (this.mKeepRatio) {
        if (this.mVideoWidth * this.mViewHeight > this.mViewWidth * this.mVideoHeight)
        {
          this.mVisibleWidth = this.mViewWidth;
          this.mVisibleHeight = (this.mViewWidth * this.mVideoHeight / this.mVideoWidth);
          this.mVisibleLeft = (this.mViewLeft + (this.mViewWidth - this.mVisibleWidth) / 2);
          this.mVisibleTop = (this.mViewTop + (this.mViewHeight - this.mVisibleHeight) / 2);
        }
      }
    }
    for (;;)
    {
      getHolder().setFixedSize(this.mVisibleWidth, this.mVisibleHeight);
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -2);
      localLayoutParams.leftMargin = this.mVisibleLeft;
      localLayoutParams.topMargin = this.mVisibleTop;
      setLayoutParams(localLayoutParams);
      return;
      if (this.mVideoWidth * this.mViewHeight >= this.mViewWidth * this.mVideoHeight) {
        break;
      }
      this.mVisibleWidth = (this.mViewHeight * this.mVideoWidth / this.mVideoHeight);
      this.mVisibleHeight = this.mViewHeight;
      break;
      this.mVisibleLeft = this.mViewLeft;
      this.mVisibleTop = this.mViewTop;
      this.mVisibleWidth = this.mViewWidth;
      this.mVisibleHeight = this.mViewHeight;
      continue;
      this.mVisibleLeft = this.mViewLeft;
      this.mVisibleTop = this.mViewTop;
      this.mVisibleWidth = this.mVideoWidth;
      this.mVisibleHeight = this.mVideoHeight;
    }
  }
  
  public int getAudioSessionId()
  {
    return this.mMediaPlayer.getAudioSessionId();
  }
  
  public int getBufferPercentage()
  {
    if (this.mMediaPlayer != null) {
      return this.mCurrentBufferPercentage;
    }
    return 0;
  }
  
  public int getCurrentPosition()
  {
    if (isInPlaybackState()) {
      return this.mMediaPlayer.getCurrentPosition();
    }
    return 0;
  }
  
  public int getDuration()
  {
    if (isInPlaybackState())
    {
      if (this.mDuration > 0) {
        return this.mDuration;
      }
      this.mDuration = this.mMediaPlayer.getDuration();
      return this.mDuration;
    }
    this.mDuration = -1;
    return this.mDuration;
  }
  
  public boolean isInPlaybackState()
  {
    return (this.mMediaPlayer != null) && (this.mCurrentState != -1) && (this.mCurrentState != 0) && (this.mCurrentState != 1);
  }
  
  public boolean isPlaying()
  {
    return (isInPlaybackState()) && (this.mMediaPlayer.isPlaying());
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if ((this.mVideoWidth == 0) || (this.mVideoHeight == 0))
    {
      setMeasuredDimension(this.mViewWidth, this.mViewHeight);
      Log.e(this.TAG, "" + this.mViewWidth + ":" + this.mViewHeight);
      return;
    }
    setMeasuredDimension(this.mVisibleWidth, this.mVisibleHeight);
    Log.e(this.TAG, "" + this.mVisibleWidth + ":" + this.mVisibleHeight);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (((paramMotionEvent.getAction() & 0xFF) == 1) && (isPlaying()))
    {
      if (this.touchOnce) {
        stop();
      }
    }
    else {
      return true;
    }
    this.touchOnce = true;
    Toast.makeText(this.mContext, "再次点击跳过视频", 0).show();
    new Handler().postDelayed(new Runnable()
    {
      public void run()
      {
        Cocos2dxVideoView.access$002(Cocos2dxVideoView.this, false);
      }
    }, 2500L);
    return true;
  }
  
  public void pause()
  {
    if ((isInPlaybackState()) && (this.mMediaPlayer.isPlaying()))
    {
      this.mMediaPlayer.pause();
      this.mCurrentState = 4;
      if (this.mOnVideoEventListener != null) {
        this.mOnVideoEventListener.onVideoEvent(this.mViewTag, 1);
      }
    }
    this.mTargetState = 4;
  }
  
  public int resolveAdjustedSize(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    switch (i)
    {
    default: 
      return paramInt1;
    case 0: 
      return paramInt1;
    case -2147483648: 
      return Math.min(paramInt1, paramInt2);
    }
    return paramInt2;
  }
  
  public void restart()
  {
    if (isInPlaybackState())
    {
      this.mMediaPlayer.seekTo(0);
      this.mMediaPlayer.start();
      this.mCurrentState = 3;
      this.mTargetState = 3;
    }
  }
  
  public void resume()
  {
    if ((isInPlaybackState()) && (this.mCurrentState == 4))
    {
      this.mMediaPlayer.start();
      this.mCurrentState = 3;
      if (this.mOnVideoEventListener != null) {
        this.mOnVideoEventListener.onVideoEvent(this.mViewTag, 0);
      }
    }
  }
  
  public void seekTo(int paramInt)
  {
    if (isInPlaybackState())
    {
      this.mMediaPlayer.seekTo(paramInt);
      this.mSeekWhenPrepared = 0;
      return;
    }
    this.mSeekWhenPrepared = paramInt;
  }
  
  public void setKeepRatio(boolean paramBoolean)
  {
    this.mKeepRatio = paramBoolean;
    fixSize();
  }
  
  public void setOnCompletionListener(OnVideoEventListener paramOnVideoEventListener)
  {
    this.mOnVideoEventListener = paramOnVideoEventListener;
  }
  
  public void setOnErrorListener(MediaPlayer.OnErrorListener paramOnErrorListener)
  {
    this.mOnErrorListener = paramOnErrorListener;
  }
  
  public void setOnPreparedListener(MediaPlayer.OnPreparedListener paramOnPreparedListener)
  {
    this.mOnPreparedListener = paramOnPreparedListener;
  }
  
  public void setVideoFileName(String paramString)
  {
    if (paramString.startsWith("/"))
    {
      this.isAssetRouse = false;
      setVideoURI(Uri.parse(paramString), null);
      return;
    }
    this.fileName = paramString;
    this.isAssetRouse = true;
    setVideoURI(Uri.parse(paramString), null);
  }
  
  public void setVideoRect(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mViewLeft = paramInt1;
    this.mViewTop = paramInt2;
    this.mViewWidth = paramInt3;
    this.mViewHeight = paramInt4;
    if ((this.mVideoWidth != 0) && (this.mVideoHeight != 0)) {
      fixSize();
    }
  }
  
  public void setVideoURL(String paramString)
  {
    this.isAssetRouse = false;
    setVideoURI(Uri.parse(paramString), null);
  }
  
  public void setVisibility(int paramInt)
  {
    if (paramInt == 4)
    {
      this.mNeedResume = isPlaying();
      if (this.mNeedResume) {
        this.mSeekWhenPrepared = getCurrentPosition();
      }
    }
    for (;;)
    {
      super.setVisibility(paramInt);
      return;
      if (this.mNeedResume)
      {
        start();
        this.mNeedResume = false;
      }
    }
  }
  
  public void start()
  {
    if (isInPlaybackState())
    {
      this.mMediaPlayer.start();
      this.mCurrentState = 3;
      if (this.mOnVideoEventListener != null) {
        this.mOnVideoEventListener.onVideoEvent(this.mViewTag, 0);
      }
    }
    this.mTargetState = 3;
  }
  
  public void stop()
  {
    if ((isInPlaybackState()) && (this.mMediaPlayer.isPlaying()))
    {
      stopPlayback();
      if (this.mOnVideoEventListener != null) {
        this.mOnVideoEventListener.onVideoEvent(this.mViewTag, 2);
      }
    }
  }
  
  public void stopPlayback()
  {
    if (this.mMediaPlayer != null)
    {
      this.mMediaPlayer.stop();
      this.mMediaPlayer.release();
      this.mMediaPlayer = null;
      this.mCurrentState = 0;
      this.mTargetState = 0;
    }
  }
  
  public void suspend()
  {
    release(false);
  }
  
  public static abstract interface OnVideoEventListener
  {
    public abstract void onVideoEvent(int paramInt1, int paramInt2);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\lib\Cocos2dxVideoView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */