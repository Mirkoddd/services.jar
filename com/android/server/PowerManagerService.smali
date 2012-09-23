.class public Lcom/android/server/PowerManagerService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/LocalPowerManager;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerManagerService$DVFSLockList;,
        Lcom/android/server/PowerManagerService$DVFSLock;,
        Lcom/android/server/PowerManagerService$LockList;,
        Lcom/android/server/PowerManagerService$BrightnessState;,
        Lcom/android/server/PowerManagerService$TimeoutTask;,
        Lcom/android/server/PowerManagerService$PokeLock;,
        Lcom/android/server/PowerManagerService$WakeLock;,
        Lcom/android/server/PowerManagerService$SettingsObserver;,
        Lcom/android/server/PowerManagerService$DockReceiver;,
        Lcom/android/server/PowerManagerService$BootCompletedReceiver;,
        Lcom/android/server/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    }
.end annotation


# static fields
.field private static final ALL_BRIGHT:I = 0xf

.field private static final ANIM_SETTING_OFF:I = 0x10

.field private static final ANIM_SETTING_ON:I = 0x1

.field static final ANIM_STEPS:I = 0x14

.field static final AUTOBRIGHTNESS_ANIM_STEPS:I = 0x14

.field private static final BATTERY_LOW_BIT:I = 0x10

.field private static final BUTTON_BRIGHT_BIT:I = 0x4

.field static final DEBUG_SCREEN_ON:Z = false

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field static final INITIAL_BUTTON_BRIGHTNESS:I = 0x0

.field static final INITIAL_KEYBOARD_BRIGHTNESS:I = 0x0

.field static final INITIAL_SCREEN_BRIGHTNESS:I = 0xff

.field public static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final KEYBOARD_BRIGHT_BIT:I = 0x8

.field private static final LIGHTS_MASK:I = 0xe

.field private static final LIGHT_SENSOR_DELAY:I = 0xbb8

.field private static final LIGHT_SENSOR_RATE:I = 0xf4240

.field private static final LOCK_MASK:I = 0x3f

.field private static final LOG_PARTIAL_WL:Z = true

.field private static final LOG_TOUCH_DOWNS:Z = true

.field private static final LONG_DIM_TIME:I = 0x1b58

.field private static final LONG_KEYLIGHT_DELAY:I = 0x1770

.field private static final MEDIUM_KEYLIGHT_DELAY:I = 0x3a98

.field static final PARTIAL_NAME:Ljava/lang/String; = "PowerManagerService"

.field static POWERSAVEMODE_BRIGHTNESS_OFFSET:I = 0x0

.field private static final PROXIMITY_SENSOR_DELAY:I = 0x3e8

.field private static final PROXIMITY_THRESHOLD:F = 5.0f

.field public static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final SAMSUNG_PHONECALL_DIM_DELAY:I = 0xfa0

.field private static final SAMSUNG_PHONECALL_KEYLIGHT_DELAY:I = 0x1770

.field private static final SAMSUNG_PHONECALL_SCREENOFF_DELAY:I = 0x4e20

.field private static final SCREEN_BRIGHT:I = 0x3

.field private static final SCREEN_BRIGHT_BIT:I = 0x2

.field private static final SCREEN_BUTTON_BRIGHT:I = 0x7

.field private static final SCREEN_DIM:I = 0x1

.field private static final SCREEN_KEYBOARD_BRIGHT:I = 0xb

.field private static final SCREEN_OFF:I = 0x0

.field private static final SCREEN_ON_BIT:I = 0x1

.field private static final SHORT_KEYLIGHT_DELAY_DEFAULT:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field private static final mAutoBrightnessWithTiltEnabled:Z = true

.field private static final mDebugDVFSLock:Z = false

.field private static final mDebugLightSensor:Z = true

.field private static final mDebugProximitySensor:Z = true

.field private static final mSpew:Z


# instance fields
.field private final MY_PID:I

.field private final MY_UID:I

.field private mActivityService:Landroid/app/IActivityManager;

.field mAnimateScreenLights:Z

.field private mAnimationSetting:I

.field private mAttentionLight:Lcom/android/server/LightsService$Light;

.field private mAutoBrightessEnabled:Z

.field private mAutoBrightnessHysteresisLevels:[I

.field private mAutoBrightnessLevels:[I

.field private mAutoBrightnessLevels_PowerSavingMode:[I

.field private mAutoBrightnessTask:Ljava/lang/Runnable;

.field private mBatteryService:Lcom/android/server/BatteryService;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBeforeIsLockZone:Z

.field private mBootCompleted:Z

.field private final mBroadcastQueue:[I

.field private mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private final mBroadcastWhy:[I

.field private mButtonBacklightValues:[I

.field private mButtonBrightnessOverride:I

.field private mButtonLight:Lcom/android/server/LightsService$Light;

.field private mButtonOffTimeoutSetting:I

.field private mContext:Landroid/content/Context;

.field private mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

.field private mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

.field private final mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

.field private mDimDelay:I

.field private mDimScreen:Z

.field private mDoneBooting:Z

.field private mForceReenableScreenTask:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHighestLightSensorValue:I

.field private volatile mInitComplete:Z

.field private mInitialized:Z

.field private mIsDocked:Z

.field private mIsLockZone:Z

.field private mIsPowerSavingMode:Z

.field private mIsPowered:Z

.field public mIsSipVisible:Z

.field private mKeyboardBacklightValues:[I

.field private mKeyboardLight:Lcom/android/server/LightsService$Light;

.field private mKeyboardVisible:Z

.field private mKeylightDelay:I

.field private mLastEventTime:J

.field private mLastProximityEventTime:J

.field private mLastScreenOnTime:J

.field private mLastTouchDown:J

.field private mLcdBacklightValues:[I

.field private mLcdBacklightValues_PowerSavingMode:[I

.field private mLcdLight:Lcom/android/server/LightsService$Light;

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorButtonBrightness:I

.field private mLightSensorEnabled:Z

.field private mLightSensorKeyboardBrightness:I

.field private mLightSensorLatestValue:F

.field private mLightSensorPendingDecrease:Z

.field private mLightSensorPendingIncrease:Z

.field private mLightSensorPendingValue:F

.field private mLightSensorScreenBrightness:I

.field private mLightSensorScreenBrightnessLowerLimit:I

.field private mLightSensorScreenBrightnessUpperLimit:I

.field private mLightSensorValue:F

.field private mLightSensorWarmupTime:I

.field private mLightsService:Lcom/android/server/LightsService;

.field private final mLocks:Lcom/android/server/PowerManagerService$LockList;

.field private final mMapPersistentDVFSLock:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxBrightness:I

.field private mMaximumScreenOffTimeout:I

.field private mNextTimeout:J

.field private mNotificationTask:Ljava/lang/Runnable;

.field private mPartialCount:I

.field private volatile mPersistentDVFSLocksInfo:I

.field private volatile mPokeAwakeOnSet:Z

.field private final mPokeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/PowerManagerService$PokeLock;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPokey:I

.field private volatile mPolicy:Landroid/view/WindowManagerPolicy;

.field private mPowerState:I

.field private mPreparingForScreenOn:Z

.field private mPrevAutoBrightnessLevel:I

.field private mPreventScreenOn:Z

.field private mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mProxIgnoredBecauseScreenTurnedOff:Z

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mProximityPendingValue:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorActive:Z

.field private mProximitySensorEnabled:Z

.field private mProximityTask:Ljava/lang/Runnable;

.field private mProximityWakeLockCount:I

.field private final mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

.field private mScreenBrightnessDim:I

.field private mScreenBrightnessOverride:I

.field private mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

.field private mScreenOffDelay:I

.field private mScreenOffHandler:Landroid/os/Handler;

.field private mScreenOffIntent:Landroid/content/Intent;

.field private mScreenOffReason:I

.field mScreenOffStart:J

.field private mScreenOffThread:Landroid/os/HandlerThread;

.field private mScreenOffTime:J

.field private mScreenOffTimeoutSetting:I

.field private mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

.field private mScreenOnIntent:Landroid/content/Intent;

.field private mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

.field mScreenOnStart:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mShortKeylightDelay:I

.field private mSipIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSkippedScreenOn:Z

.field private mStayOnConditions:I

.field private mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mStillNeedSleepNotification:Z

.field private mSupportedFrequency:[I

.field private mSystemPowerSaveModeEnabled:Z

.field private mTiltAngle:F

.field mTiltListener:Landroid/hardware/SensorEventListener;

.field private mTiltSensor:Landroid/hardware/Sensor;

.field private final mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

.field private mTotalTouchDownTime:J

.field private mTouchCycles:I

.field mUnplugTurnsOnScreen:Z

.field private mUseSoftwareAutoBrightness:Z

.field private mUserActivityAllowed:Z

.field private mUserState:I

.field private mWakeLockState:I

.field private mWarningSpewThrottleCount:I

.field private mWarningSpewThrottleTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 334
    const/16 v0, 0x14

    sput v0, Lcom/android/server/PowerManagerService;->POWERSAVEMODE_BRIGHTNESS_OFFSET:I

    return-void
.end method

.method constructor <init>()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/high16 v7, -0x4080

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 578
    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    .line 151
    const/16 v2, 0x1770

    iput v2, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    .line 186
    iput-boolean v8, p0, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    .line 202
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    .line 203
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    .line 204
    iput v4, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    .line 205
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_124

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    .line 206
    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    .line 207
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    .line 208
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    .line 209
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    .line 210
    iput v4, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 216
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    .line 217
    iput-boolean v8, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 218
    iput v4, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 219
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    .line 220
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 221
    iput v5, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    .line 225
    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 230
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 233
    new-instance v2, Lcom/android/server/PowerManagerService$LockList;

    invoke-direct {v2, p0, v6}, Lcom/android/server/PowerManagerService$LockList;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    .line 234
    new-instance v2, Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-direct {v2, p0, v6}, Lcom/android/server/PowerManagerService$DVFSLockList;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    .line 235
    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    .line 236
    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    .line 237
    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    .line 238
    iput v4, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    .line 239
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    .line 257
    new-instance v2, Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-direct {v2, p0, v6}, Lcom/android/server/PowerManagerService$TimeoutTask;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    .line 258
    new-instance v2, Lcom/android/server/PowerManagerService$BrightnessState;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/server/PowerManagerService$BrightnessState;-><init>(Lcom/android/server/PowerManagerService;I)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    .line 261
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    .line 269
    iput v7, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 270
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    .line 271
    iput v5, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 272
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 273
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 274
    iput v7, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    .line 275
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    .line 280
    iput v7, p0, Lcom/android/server/PowerManagerService;->mTiltAngle:F

    .line 281
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsLockZone:Z

    .line 282
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mBeforeIsLockZone:Z

    .line 283
    iput v7, p0, Lcom/android/server/PowerManagerService;->mLightSensorLatestValue:F

    .line 285
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    .line 286
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    .line 287
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    .line 288
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    .line 289
    iput-boolean v8, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    .line 290
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    .line 292
    iput v4, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 293
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 294
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 295
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    .line 299
    iput v5, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 300
    iput v5, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 309
    iput-object v6, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessHysteresisLevels:[I

    .line 310
    iput v5, p0, Lcom/android/server/PowerManagerService;->mPrevAutoBrightnessLevel:I

    .line 312
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsPowerSavingMode:Z

    .line 320
    const/16 v2, 0x10

    iput v2, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    .line 331
    const/16 v2, 0xff

    iput v2, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 333
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mSystemPowerSaveModeEnabled:Z

    .line 1565
    new-instance v2, Lcom/android/server/PowerManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$4;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 1580
    new-instance v2, Lcom/android/server/PowerManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$5;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mNotificationTask:Ljava/lang/Runnable;

    .line 1661
    new-instance v2, Lcom/android/server/PowerManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$6;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 1672
    new-instance v2, Lcom/android/server/PowerManagerService$7;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$7;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 1685
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsSipVisible:Z

    .line 1686
    new-instance v2, Lcom/android/server/PowerManagerService$8;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$8;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mSipIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1880
    new-instance v2, Lcom/android/server/PowerManagerService$9;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$9;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    .line 2804
    new-instance v2, Lcom/android/server/PowerManagerService$10;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$10;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    .line 2818
    new-instance v2, Lcom/android/server/PowerManagerService$11;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$11;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    .line 3542
    new-instance v2, Lcom/android/server/PowerManagerService$14;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$14;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 3586
    new-instance v2, Lcom/android/server/PowerManagerService$15;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$15;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    .line 3645
    new-instance v2, Lcom/android/server/PowerManagerService$16;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$16;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mTiltListener:Landroid/hardware/SensorEventListener;

    .line 580
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 581
    .local v0, token:J
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->MY_UID:I

    .line 582
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->MY_PID:I

    .line 583
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 586
    const-wide/32 v2, 0x240c8400

    invoke-static {v2, v3}, Landroid/os/Power;->setLastUserActivityTimeout(J)I

    .line 589
    iput v8, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    iput v8, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 592
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 593
    return-void

    .line 205
    :array_124
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private static DVFSLockType(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 4220
    packed-switch p0, :pswitch_data_c

    .line 4227
    const-string v0, "???                           "

    :goto_5
    return-object v0

    .line 4223
    :pswitch_6
    const-string v0, "DVFS_MIN_LIMIT"

    goto :goto_5

    .line 4225
    :pswitch_9
    const-string v0, "DVFS_MAX_LIMIT"

    goto :goto_5

    .line 4220
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/android/server/PowerManagerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/PowerManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/PowerManagerService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->dockStateChanged(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/PowerManagerService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/PowerManagerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/PowerManagerService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/PowerManagerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/PowerManagerService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/PowerManagerService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->setScreenBrightnessMode(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/PowerManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$TimeoutTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/PowerManagerService;JI)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/PowerManagerService;JJZIZ)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 106
    invoke-direct/range {p0 .. p7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/PowerManagerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/PowerManagerService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return p1
.end method

.method static synthetic access$2276(Lcom/android/server/PowerManagerService;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/PowerManagerService;)Landroid/os/HandlerThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/PowerManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/PowerManagerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/PowerManagerService;->MY_UID:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/PowerManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateSettingsValues()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/PowerManagerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/PowerManagerService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/PowerManagerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/PowerManagerService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->printCurLock(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/PowerManagerService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/PowerManagerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/PowerManagerService;JJI)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 106
    invoke-direct/range {p0 .. p5}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/PowerManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/PowerManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/PowerManagerService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PowerManagerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/PowerManagerService;->MY_PID:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/PowerManagerService;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/PowerManagerService;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/PowerManagerService;)Landroid/view/WindowManagerPolicy$ScreenOnListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/PowerManagerService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/PowerManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceReenableScreen()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;IZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;IZ)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/PowerManagerService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/PowerManagerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/PowerManagerService;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/PowerManagerService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->nativeStartSurfaceFlingerAnimation(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/PowerManagerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    return v0
.end method

.method static synthetic access$5502(Lcom/android/server/PowerManagerService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    return p1
.end method

.method static synthetic access$5600(Lcom/android/server/PowerManagerService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->proximityChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/PowerManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    return v0
.end method

.method static synthetic access$5802(Lcom/android/server/PowerManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/android/server/PowerManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/android/server/PowerManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/PowerManagerService;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    return v0
.end method

.method static synthetic access$6002(Lcom/android/server/PowerManagerService;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    return p1
.end method

.method static synthetic access$6100(Lcom/android/server/PowerManagerService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/PowerManagerService;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/PowerManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    return v0
.end method

.method static synthetic access$6302(Lcom/android/server/PowerManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/android/server/PowerManagerService;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    return-wide v0
.end method

.method static synthetic access$6402(Lcom/android/server/PowerManagerService;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    return-wide p1
.end method

.method static synthetic access$6500(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/PowerManagerService;)Landroid/hardware/Sensor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/PowerManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/android/server/PowerManagerService;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorLatestValue:F

    return v0
.end method

.method static synthetic access$6802(Lcom/android/server/PowerManagerService;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorLatestValue:F

    return p1
.end method

.method static synthetic access$6900(Lcom/android/server/PowerManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsLockZone:Z

    return v0
.end method

.method static synthetic access$6902(Lcom/android/server/PowerManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mIsLockZone:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/PowerManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/server/PowerManagerService;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/PowerManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/android/server/PowerManagerService;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    return-wide v0
.end method

.method static synthetic access$7200(Lcom/android/server/PowerManagerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I

    return v0
.end method

.method static synthetic access$7300(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/server/PowerManagerService;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/PowerManagerService;->mTiltAngle:F

    return v0
.end method

.method static synthetic access$7402(Lcom/android/server/PowerManagerService;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/server/PowerManagerService;->mTiltAngle:F

    return p1
.end method

.method static synthetic access$7500(Lcom/android/server/PowerManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mBeforeIsLockZone:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/android/server/PowerManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mBeforeIsLockZone:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLockList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/BatteryService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/PowerManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V

    return-void
.end method

.method private acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V
    .registers 16
    .parameter "type"
    .parameter "frequency"
    .parameter "lock"
    .parameter "uid"
    .parameter "pid"
    .parameter "tag"

    .prologue
    .line 4077
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFSLockLocked : type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/PowerManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4079
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-virtual {v1, p3}, Lcom/android/server/PowerManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;)I

    move-result v8

    .line 4082
    .local v8, index:I
    if-gez v8, :cond_7d

    .line 4083
    new-instance v0, Lcom/android/server/PowerManagerService$DVFSLock;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p6

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService$DVFSLock;-><init>(Lcom/android/server/PowerManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 4084
    .local v0, newDVFSwl:Lcom/android/server/PowerManagerService$DVFSLock;
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-virtual {v1, v0}, Lcom/android/server/PowerManagerService$DVFSLockList;->addLock(Lcom/android/server/PowerManagerService$DVFSLock;)V

    .line 4090
    :goto_5d
    iget v1, v0, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_86

    .line 4091
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    if-eqz v1, :cond_6e

    iget v1, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    if-ge v1, v2, :cond_76

    .line 4092
    :cond_6e
    const/4 v1, 0x2

    iget v2, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-static {v1, v2}, Landroid/os/Power;->acquireDVFSLock(II)I

    .line 4093
    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    .line 4102
    :cond_76
    :goto_76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/PowerManagerService$DVFSLock;->acqTime:J

    .line 4103
    return-void

    .line 4087
    .end local v0           #newDVFSwl:Lcom/android/server/PowerManagerService$DVFSLock;
    :cond_7d
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-virtual {v1, v8}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerManagerService$DVFSLock;

    .restart local v0       #newDVFSwl:Lcom/android/server/PowerManagerService$DVFSLock;
    goto :goto_5d

    .line 4096
    :cond_86
    iget v1, v0, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_76

    .line 4097
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    if-eqz v1, :cond_97

    iget v1, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    if-le v1, v2, :cond_76

    .line 4098
    :cond_97
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-static {v1, v2}, Landroid/os/Power;->acquireDVFSLock(II)I

    .line 4099
    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    goto :goto_76
.end method

.method private applyButtonState(I)I
    .registers 5
    .parameter "state"

    .prologue
    .line 2511
    const/4 v0, -0x1

    .line 2512
    .local v0, brightness:I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_8

    .line 2514
    and-int/lit8 p1, p1, -0x5

    .line 2536
    .end local p1
    :cond_7
    :goto_7
    return p1

    .line 2517
    .restart local p1
    :cond_8
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v1, :cond_13

    .line 2518
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 2531
    :cond_e
    :goto_e
    if-lez v0, :cond_32

    .line 2532
    or-int/lit8 p1, p1, 0x4

    goto :goto_7

    .line 2519
    :cond_13
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    if-ltz v1, :cond_1f

    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1f

    .line 2522
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    goto :goto_e

    .line 2523
    :cond_1f
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_e

    .line 2525
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2c

    .line 2526
    const/16 v0, 0xff

    goto :goto_e

    .line 2527
    :cond_2c
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    if-nez v1, :cond_e

    .line 2528
    const/4 v0, 0x0

    goto :goto_e

    .line 2533
    :cond_32
    if-nez v0, :cond_7

    .line 2534
    and-int/lit8 p1, p1, -0x5

    goto :goto_7
.end method

.method private applyKeyboardState(I)I
    .registers 5
    .parameter "state"

    .prologue
    .line 2541
    const/4 v0, -0x1

    .line 2542
    .local v0, brightness:I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_8

    .line 2544
    and-int/lit8 p1, p1, -0x9

    .line 2567
    .end local p1
    :cond_7
    :goto_7
    return p1

    .line 2546
    .restart local p1
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-nez v1, :cond_12

    .line 2547
    const/4 v0, 0x0

    .line 2562
    :cond_d
    :goto_d
    if-lez v0, :cond_38

    .line 2563
    or-int/lit8 p1, p1, 0x8

    goto :goto_7

    .line 2548
    :cond_12
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v1, :cond_19

    .line 2549
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    goto :goto_d

    .line 2550
    :cond_19
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    if-ltz v1, :cond_25

    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_25

    .line 2553
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    goto :goto_d

    .line 2554
    :cond_25
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_d

    .line 2556
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_32

    .line 2557
    const/16 v0, 0xff

    goto :goto_d

    .line 2558
    :cond_32
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    if-nez v1, :cond_d

    .line 2559
    const/4 v0, 0x0

    goto :goto_d

    .line 2564
    :cond_38
    if-nez v0, :cond_7

    .line 2565
    and-int/lit8 p1, p1, -0x9

    goto :goto_7
.end method

.method private batteryIsLow()Z
    .registers 3

    .prologue
    .line 2133
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private cancelTimerLocked()V
    .registers 3

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1442
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    .line 1443
    return-void
.end method

.method private disableProximityLockLocked()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3434
    const-string v2, "PowerManagerService"

    const-string v3, "disableProximityLockLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_58

    .line 3438
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3440
    .local v0, identity:J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3441
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3442
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 3443
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 3445
    :cond_2b
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_59

    .line 3447
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3449
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v2, :cond_58

    .line 3450
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 3452
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableProximityLockLocked mProxIgnoredBecauseScreenTurnedOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3455
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v2, :cond_58

    .line 3456
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 3460
    .end local v0           #identity:J
    :cond_58
    return-void

    .line 3447
    .restart local v0       #identity:J
    :catchall_59
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private dockStateChanged(I)V
    .registers 5
    .parameter "state"

    .prologue
    .line 2832
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 2833
    if-eqz p1, :cond_21

    const/4 v1, 0x1

    :goto_6
    :try_start_6
    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    .line 2834
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    if-eqz v1, :cond_f

    .line 2835
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 2837
    :cond_f
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1f

    .line 2839
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v0, v1

    .line 2840
    .local v0, value:I
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 2841
    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V

    .line 2843
    .end local v0           #value:I
    :cond_1f
    monitor-exit v2

    .line 2844
    return-void

    .line 2833
    :cond_21
    const/4 v1, 0x0

    goto :goto_6

    .line 2843
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private static dumpPowerState(I)Ljava/lang/String;
    .registers 3
    .parameter "state"

    .prologue
    .line 1226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_32

    const-string v0, "KEYBOARD_BRIGHT_BIT "

    :goto_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_35

    const-string v0, "SCREEN_BRIGHT_BIT "

    :goto_15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_38

    const-string v0, "SCREEN_ON_BIT "

    :goto_1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_3b

    const-string v0, "BATTERY_LOW_BIT "

    :goto_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    const-string v0, ""

    goto :goto_b

    :cond_35
    const-string v0, ""

    goto :goto_15

    :cond_38
    const-string v0, ""

    goto :goto_1f

    :cond_3b
    const-string v0, ""

    goto :goto_29
.end method

.method private enableLightSensorLocked(Z)V
    .registers 8
    .parameter "enable"

    .prologue
    .line 3502
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableLightSensorLocked enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mAutoBrightessEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-nez v2, :cond_29

    .line 3506
    const/4 p1, 0x0

    .line 3508
    :cond_29
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_57

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    if-eq v2, p1, :cond_57

    .line 3509
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    .line 3512
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 3513
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3516
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3518
    .local v0, identity:J
    if-eqz p1, :cond_58

    .line 3519
    :try_start_40
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3524
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mTiltListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mTiltSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_54
    .catchall {:try_start_40 .. :try_end_54} :catchall_6e

    .line 3537
    :goto_54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3540
    .end local v0           #identity:J
    :cond_57
    return-void

    .line 3528
    .restart local v0       #identity:J
    :cond_58
    :try_start_58
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3532
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mTiltListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3534
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_6d
    .catchall {:try_start_58 .. :try_end_6d} :catchall_6e

    goto :goto_54

    .line 3537
    :catchall_6e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private enableProximityLockLocked()V
    .registers 7

    .prologue
    .line 3417
    const-string v2, "PowerManagerService"

    const-string v3, "enableProximityLockLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3419
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-nez v2, :cond_1f

    .line 3421
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3423
    .local v0, identity:J
    :try_start_f
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3425
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_20

    .line 3427
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3430
    .end local v0           #identity:J
    :cond_1f
    return-void

    .line 3427
    .restart local v0       #identity:J
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .registers 9
    .parameter "filePath"
    .parameter "value"

    .prologue
    .line 4232
    const/4 v2, 0x0

    .line 4234
    .local v2, out:Ljava/io/FileOutputStream;
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4238
    :try_start_23
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2d} :catch_3d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_42

    .line 4244
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_2d
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 4245
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3b} :catch_4f

    move-object v2, v3

    .line 4254
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_3c
    return-void

    .line 4239
    :catch_3d
    move-exception v0

    .line 4240
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_3c

    .line 4246
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_42
    move-exception v0

    .line 4247
    .local v0, e:Ljava/io/IOException;
    :goto_43
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4249
    :try_start_46
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_3c

    .line 4250
    :catch_4a
    move-exception v1

    .line 4251
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    .line 4246
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_4f
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_43
.end method

.method private forceReenableScreen()V
    .registers 3

    .prologue
    .line 1862
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    if-nez v0, :cond_c

    .line 1863
    const-string v0, "PowerManagerService"

    const-string v1, "forceReenableScreen: mPreventScreenOn is false, nothing to do"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :goto_b
    return-void

    .line 1875
    :cond_c
    const-string v0, "PowerManagerService"

    const-string v1, "App called preventScreenOn(true) but didn\'t promptly reenable the screen! Forcing the screen back on..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService;->preventScreenOn(Z)V

    goto :goto_b
.end method

.method private forceUserActivityLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2603
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2605
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iput-boolean v3, v1, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    .line 2607
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 2608
    .local v0, savedActivityAllowed:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 2609
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/PowerManagerService;->userActivity(JZ)V

    .line 2610
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 2611
    return-void
.end method

.method private getAutoBrightnessValue(I[I)I
    .registers 9
    .parameter "sensorValue"
    .parameter "values"

    .prologue
    .line 2750
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    array-length v4, v4

    if-ge v1, v4, :cond_c

    .line 2751
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    aget v4, v4, v1

    if-ge p1, v4, :cond_23

    .line 2758
    :cond_c
    iget v4, p0, Lcom/android/server/PowerManagerService;->mPrevAutoBrightnessLevel:I

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_29

    .line 2760
    const/4 v2, 0x0

    .local v2, j:I
    :goto_13
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessHysteresisLevels:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1e

    .line 2761
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessHysteresisLevels:[I

    aget v4, v4, v2

    if-gt p1, v4, :cond_26

    .line 2772
    :cond_1e
    aget v3, p2, v2

    .line 2773
    .local v3, retBacklightValue:I
    iput v2, p0, Lcom/android/server/PowerManagerService;->mPrevAutoBrightnessLevel:I

    .line 2784
    .end local v2           #j:I
    .end local v3           #retBacklightValue:I
    :goto_22
    return v3

    .line 2750
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2760
    .restart local v2       #j:I
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2776
    .end local v2           #j:I
    :cond_29
    aget v3, p2, v1

    .line 2777
    .restart local v3       #retBacklightValue:I
    iput v1, p0, Lcom/android/server/PowerManagerService;->mPrevAutoBrightnessLevel:I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2e

    goto :goto_22

    .line 2781
    .end local v3           #retBacklightValue:I
    :catch_2e
    move-exception v0

    .line 2783
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "PowerManagerService"

    const-string v5, "getAutoBrightnessValue"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2784
    const/16 v3, 0xff

    goto :goto_22
.end method

.method private getAutoBrightnessValue_PowerSavingMode(I[I)I
    .registers 7
    .parameter "sensorValue"
    .parameter "values"

    .prologue
    .line 2791
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels_PowerSavingMode:[I

    array-length v2, v2

    if-ge v1, v2, :cond_c

    .line 2792
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels_PowerSavingMode:[I

    aget v2, v2, v1

    if-ge p1, v2, :cond_f

    .line 2796
    :cond_c
    aget v2, p2, v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_12

    .line 2800
    :goto_e
    return v2

    .line 2791
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2797
    :catch_12
    move-exception v0

    .line 2799
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PowerManagerService"

    const-string v3, "getAutoBrightnessValue"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2800
    const/16 v2, 0xff

    goto :goto_e
.end method

.method private getPreferredBrightness()I
    .registers 5

    .prologue
    .line 2495
    :try_start_0
    iget v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-ltz v2, :cond_7

    .line 2496
    iget v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 2506
    :goto_6
    return v2

    .line 2497
    :cond_7
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    if-ltz v2, :cond_16

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v2, :cond_16

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v2, :cond_16

    .line 2499
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    goto :goto_6

    .line 2501
    :cond_16
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 2504
    .local v0, brightness:I
    iget v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
    :try_end_27
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_27} :catch_29

    move-result v2

    goto :goto_6

    .line 2505
    .end local v0           #brightness:I
    :catch_29
    move-exception v1

    .line 2506
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v2, 0xff

    goto :goto_6
.end method

.method private goToSleepLocked(JI)V
    .registers 16
    .parameter "time"
    .parameter "reason"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3023
    iget-wide v7, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    cmp-long v7, v7, p1

    if-gtz v7, :cond_b7

    .line 3024
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 3025
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 3026
    .local v3, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3027
    .local v5, uid:I
    const-string v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen__Off : goToSleepLocked : uid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " myUID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " myPID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " myTID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    .end local v3           #pid:I
    .end local v5           #uid:I
    :cond_62
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 3031
    iput v10, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 3032
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v7}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 3033
    .local v0, N:I
    const/4 v2, 0x0

    .line 3034
    .local v2, numCleared:I
    const/4 v4, 0x0

    .line 3035
    .local v4, proxLock:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6f
    if-ge v1, v0, :cond_9d

    .line 3036
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v7, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PowerManagerService$WakeLock;

    .line 3037
    .local v6, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v7, v6, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-direct {p0, v7}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 3038
    iget v7, v6, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v7, v7, 0x3f

    const/16 v8, 0x20

    if-ne v7, v8, :cond_90

    const/4 v7, 0x4

    if-ne p3, v7, :cond_90

    .line 3040
    const/4 v4, 0x1

    .line 3035
    :cond_8d
    :goto_8d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 3042
    :cond_90
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v7, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PowerManagerService$WakeLock;

    iput-boolean v10, v7, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    .line 3043
    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    .line 3047
    .end local v6           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_9d
    if-nez v4, :cond_a8

    .line 3048
    iput-boolean v11, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    .line 3050
    const-string v7, "PowerManagerService"

    const-string v8, "setting mProxIgnoredBecauseScreenTurnedOff"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    :cond_a8
    const/16 v7, 0xaa4

    invoke-static {v7, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3054
    iput-boolean v11, p0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    .line 3055
    iput v10, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 3056
    invoke-direct {p0, v10, v10, p3}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 3057
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->cancelTimerLocked()V

    .line 3059
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #numCleared:I
    .end local v4           #proxLock:Z
    :cond_b7
    return-void
.end method

.method private initSupportedFrequency()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 3827
    const-string v4, "PowerManagerService"

    const-string v5, "initSupportedFrequency dvfs "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3828
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    if-nez v4, :cond_87

    .line 3832
    :try_start_c
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/power/cpufreq_max_limit"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_18} :catch_7a

    .line 3834
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_18
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_72
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1b} :catch_7a

    .line 3840
    :goto_1b
    :try_start_1b
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0           #buf:Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/power/cpufreq_min_limit"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_27} :catch_7a

    .line 3842
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :try_start_27
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_88
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2a} :catch_7a

    .line 3848
    :goto_2a
    :try_start_2a
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0           #buf:Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/power/cpufreq_table"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_36} :catch_7a

    .line 3851
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :try_start_36
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3852
    .local v3, strSupportedFreq:[Ljava/lang/String;
    array-length v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    .line 3854
    const/4 v2, 0x0

    .local v2, i:I
    :goto_46
    array-length v4, v3

    if-ge v2, v4, :cond_97

    .line 3855
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v2

    .line 3856
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSupportedFrequency : DVFS : mSupportedFrequency : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_6f} :catch_90
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_6f} :catch_7a

    .line 3854
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 3835
    .end local v2           #i:I
    .end local v3           #strSupportedFreq:[Ljava/lang/String;
    :catch_72
    move-exception v1

    .line 3836
    .local v1, e:Ljava/io/IOException;
    :try_start_73
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 3837
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I
    :try_end_79
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_79} :catch_7a

    goto :goto_1b

    .line 3869
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v1           #e:Ljava/io/IOException;
    :catch_7a
    move-exception v1

    .line 3870
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v4, "PowerManagerService"

    const-string v5, "initSupportedFrequency : FileNotFoundException dvfs"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3871
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 3872
    iput-object v7, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    .line 3875
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_87
    :goto_87
    return-void

    .line 3843
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :catch_88
    move-exception v1

    .line 3844
    .local v1, e:Ljava/io/IOException;
    :try_start_89
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 3845
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    goto :goto_2a

    .line 3858
    .end local v1           #e:Ljava/io/IOException;
    :catch_90
    move-exception v1

    .line 3859
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3860
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I
    :try_end_97
    .catch Ljava/io/FileNotFoundException; {:try_start_89 .. :try_end_97} :catch_7a

    .line 3864
    .end local v1           #e:Ljava/lang/Exception;
    :cond_97
    :try_start_97
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_9a} :catch_7a

    goto :goto_87

    .line 3865
    :catch_9b
    move-exception v1

    .line 3866
    .local v1, e:Ljava/io/IOException;
    :try_start_9c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 3867
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I
    :try_end_a2
    .catch Ljava/io/FileNotFoundException; {:try_start_9c .. :try_end_a2} :catch_7a

    goto :goto_87
.end method

.method private isScreenLock(I)Z
    .registers 4
    .parameter "flags"

    .prologue
    .line 829
    and-int/lit8 v0, p1, 0x3f

    .line 830
    .local v0, n:I
    const/16 v1, 0x1a

    if-eq v0, v1, :cond_11

    const/16 v1, 0xa

    if-eq v0, v1, :cond_11

    const/4 v1, 0x6

    if-eq v0, v1, :cond_11

    const/16 v1, 0x20

    if-ne v0, v1, :cond_13

    :cond_11
    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private isScreenTurningOffLocked()Z
    .registers 2

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget v0, v0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private lightSensorChangedLocked(I)V
    .registers 11
    .parameter "value"

    .prologue
    const/4 v8, -0x2

    .line 2848
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lightSensorChangedLocked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    iget v4, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    if-ge v4, p1, :cond_1f

    .line 2853
    iput p1, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 2856
    :cond_1f
    iget v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    int-to-float v5, p1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_f4

    .line 2857
    int-to-float v4, p1

    iput v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 2858
    iget v4, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_f4

    .line 2864
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsPowerSavingMode:Z

    if-nez v4, :cond_f5

    .line 2865
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    invoke-direct {p0, p1, v4}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v2

    .line 2871
    .local v2, lcdValue:I
    :goto_39
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    invoke-direct {p0, p1, v4}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v0

    .line 2873
    .local v0, buttonValue:I
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v4, :cond_fd

    .line 2874
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mKeyboardBacklightValues:[I

    invoke-direct {p0, p1, v4}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v1

    .line 2879
    .local v1, keyboardValue:I
    :goto_49
    iget v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    if-ltz v4, :cond_71

    .line 2880
    iget v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    if-le v2, v4, :cond_71

    .line 2881
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    .line 2882
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lightSensorChangedLocked : lcdValue is changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " because of UpperLimit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    :cond_71
    iget v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    if-ltz v4, :cond_99

    .line 2886
    iget v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    if-ge v2, v4, :cond_99

    .line 2887
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    .line 2888
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lightSensorChangedLocked : lcdValue is changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " because of LowerLimit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    :cond_99
    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    .line 2893
    iput v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    .line 2894
    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    .line 2897
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lcdValue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buttonValue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyboardValue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    iget v4, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_100

    .line 2905
    const-string v4, "PowerManagerService"

    const-string v5, "dropping lightSensorChangedLocked because screen is off"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    .end local v0           #buttonValue:I
    .end local v1           #keyboardValue:I
    .end local v2           #lcdValue:I
    :cond_f4
    :goto_f4
    return-void

    .line 2868
    :cond_f5
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues_PowerSavingMode:[I

    invoke-direct {p0, p1, v4}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue_PowerSavingMode(I[I)I

    move-result v2

    .restart local v2       #lcdValue:I
    goto/16 :goto_39

    .line 2876
    .restart local v0       #buttonValue:I
    :cond_fd
    const/4 v1, 0x0

    .restart local v1       #keyboardValue:I
    goto/16 :goto_49

    .line 2910
    :cond_100
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v4, :cond_165

    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-gez v4, :cond_165

    .line 2913
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mSystemPowerSaveModeEnabled:Z

    if-eqz v4, :cond_12f

    .line 2914
    sget v4, Lcom/android/server/PowerManagerService;->POWERSAVEMODE_BRIGHTNESS_OFFSET:I

    sub-int v3, v2, v4

    .line 2915
    .local v3, powerSaveModeBrightness:I
    if-lez v2, :cond_12f

    .line 2916
    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2917
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lightSensorChangedLocked : mSystemPowerSaveModeEnabled:: lcdValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    .end local v3           #powerSaveModeBrightness:I
    :cond_12f
    iget v4, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    if-le v2, v4, :cond_153

    .line 2922
    iget v2, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 2923
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lightSensorChangedLocked : brightness is changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " because of temperature"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    :cond_153
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-nez v4, :cond_165

    .line 2927
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    const/16 v5, 0x14

    const/16 v6, 0xff

    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget v7, v7, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    float-to-int v7, v7

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/android/server/PowerManagerService$BrightnessState;->setTargetLocked(IIII)V

    .line 2931
    :cond_165
    iget v4, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    if-ne v4, v8, :cond_18a

    iget v4, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-gez v4, :cond_18a

    .line 2932
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lightSensorChangedLocked : mButtonLight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4, v0}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 2935
    :cond_18a
    iget v4, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    if-ne v4, v8, :cond_192

    iget v4, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v4, :cond_196

    :cond_192
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-nez v4, :cond_f4

    .line 2936
    :cond_196
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lightSensorChangedLocked : mKeyboardLight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto/16 :goto_f4
.end method

.method private static lockType(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 1208
    sparse-switch p0, :sswitch_data_16

    .line 1221
    const-string v0, "???                           "

    :goto_5
    return-object v0

    .line 1211
    :sswitch_6
    const-string v0, "FULL_WAKE_LOCK                "

    goto :goto_5

    .line 1213
    :sswitch_9
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK       "

    goto :goto_5

    .line 1215
    :sswitch_c
    const-string v0, "SCREEN_DIM_WAKE_LOCK          "

    goto :goto_5

    .line 1217
    :sswitch_f
    const-string v0, "PARTIAL_WAKE_LOCK             "

    goto :goto_5

    .line 1219
    :sswitch_12
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    goto :goto_5

    .line 1208
    nop

    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_f
        0x6 -> :sswitch_c
        0xa -> :sswitch_9
        0x1a -> :sswitch_6
        0x20 -> :sswitch_12
    .end sparse-switch
.end method

.method private native nativeInit()V
.end method

.method private native nativeSetPowerState(ZZ)V
.end method

.method private native nativeStartSurfaceFlingerAnimation(I)V
.end method

.method private printCurLock(I)V
    .registers 15
    .parameter "pos"

    .prologue
    .line 3749
    iget v10, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    if-nez v10, :cond_b3

    iget v10, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    if-eqz v10, :cond_b3

    .line 3751
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CurLock p:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mPS:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v10}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 3753
    .local v0, N:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3754
    .local v3, cTime:J
    const-wide/16 v5, 0x0

    .line 3755
    .local v5, eTime:J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_39
    if-ge v7, v0, :cond_b3

    .line 3757
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v10, v7}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/PowerManagerService$WakeLock;

    .line 3758
    .local v9, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v10, v9, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v10, v10, 0x3f

    invoke-static {v10}, Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;

    move-result-object v8

    .line 3759
    .local v8, type:Ljava/lang/String;
    const-string v1, ""

    .line 3760
    .local v1, acquireCausesWakeup:Ljava/lang/String;
    iget v10, v9, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v11, 0x1000

    and-int/2addr v10, v11

    if-eqz v10, :cond_56

    .line 3761
    const-string v1, " AW "

    .line 3763
    :cond_56
    const-string v2, ""

    .line 3764
    .local v2, activated:Ljava/lang/String;
    iget-boolean v10, v9, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v10, :cond_5e

    .line 3765
    const-string v2, " active"

    .line 3767
    :cond_5e
    iget-wide v10, v9, Lcom/android/server/PowerManagerService$WakeLock;->acqTime:J

    sub-long v5, v3, v10

    .line 3768
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (minState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " activeT="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    .line 3772
    .end local v0           #N:I
    .end local v1           #acquireCausesWakeup:Ljava/lang/String;
    .end local v2           #activated:Ljava/lang/String;
    .end local v3           #cTime:J
    .end local v5           #eTime:J
    .end local v7           #i:I
    .end local v8           #type:Ljava/lang/String;
    .end local v9           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_b3
    return-void
.end method

.method private printCurLockForce(Z)V
    .registers 17
    .parameter "screenOn"

    .prologue
    .line 3778
    if-nez p1, :cond_116

    .line 3780
    const-string v12, "PowerManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CurLockF mPS:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mUS="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3781
    iget-object v12, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v12}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 3782
    .local v0, N:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3783
    .local v3, cTime:J
    const-wide/16 v5, 0x0

    .line 3784
    .local v5, eTime:J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_35
    if-ge v7, v0, :cond_af

    .line 3786
    iget-object v12, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v12, v7}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/PowerManagerService$WakeLock;

    .line 3787
    .local v11, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v12, v11, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v12, v12, 0x3f

    invoke-static {v12}, Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;

    move-result-object v10

    .line 3788
    .local v10, type:Ljava/lang/String;
    const-string v1, ""

    .line 3789
    .local v1, acquireCausesWakeup:Ljava/lang/String;
    iget v12, v11, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v13, 0x1000

    and-int/2addr v12, v13

    if-eqz v12, :cond_52

    .line 3790
    const-string v1, " AW "

    .line 3792
    :cond_52
    const-string v2, ""

    .line 3793
    .local v2, activated:Ljava/lang/String;
    iget-boolean v12, v11, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v12, :cond_5a

    .line 3794
    const-string v2, " active"

    .line 3796
    :cond_5a
    iget-wide v12, v11, Lcom/android/server/PowerManagerService$WakeLock;->acqTime:J

    sub-long v5, v3, v12

    .line 3797
    const-string v12, "PowerManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "type="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " (mS="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  activeT="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3784
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    .line 3801
    .end local v1           #acquireCausesWakeup:Ljava/lang/String;
    .end local v2           #activated:Ljava/lang/String;
    .end local v10           #type:Ljava/lang/String;
    .end local v11           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_af
    const-string v12, "PowerManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mPokeLocks.size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3802
    iget-object v12, p0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_dd
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_116

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/PowerManagerService$PokeLock;

    .line 3804
    .local v9, p:Lcom/android/server/PowerManagerService$PokeLock;
    const-string v12, "PowerManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " pokeLock "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v9, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Lcom/android/server/PowerManagerService$PokeLock;->tag:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dd

    .line 3808
    .end local v0           #N:I
    .end local v3           #cTime:J
    .end local v5           #eTime:J
    .end local v7           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_116
    return-void
.end method

.method private proximityChangedLocked(Z)V
    .registers 5
    .parameter "active"

    .prologue
    .line 3464
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proximityChangedLocked, active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-nez v0, :cond_24

    .line 3467
    const-string v0, "PowerManagerService"

    const-string v1, "Ignoring proximity change after sensor is disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    :cond_23
    :goto_23
    return-void

    .line 3470
    :cond_24
    if-eqz p1, :cond_50

    .line 3472
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b mProxIgnoredBecauseScreenTurnedOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3475
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v0, :cond_4c

    .line 3476
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/PowerManagerService;->goToSleepLocked(JI)V

    .line 3479
    :cond_4c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    goto :goto_23

    .line 3484
    :cond_50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 3486
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b mProxIgnoredBecauseScreenTurnedOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3489
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v0, :cond_74

    .line 3490
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 3493
    :cond_74
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v0, :cond_23

    .line 3495
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->disableProximityLockLocked()V

    goto :goto_23
.end method

.method private releaseDVFSLockLocked(Landroid/os/IBinder;)V
    .registers 10
    .parameter "lock"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 4121
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-virtual {v3, p1}, Lcom/android/server/PowerManagerService$DVFSLockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v2

    .line 4122
    .local v2, removedDVFSwl:Lcom/android/server/PowerManagerService$DVFSLock;
    if-nez v2, :cond_c

    .line 4162
    :goto_b
    return-void

    .line 4127
    :cond_c
    iget v3, v2, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    if-ne v3, v7, :cond_51

    .line 4128
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    if-ne v2, v3, :cond_3d

    .line 4129
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$DVFSLockList;->getMinOfMaxLock()Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v1

    .line 4131
    .local v1, nextMinOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    if-eqz v1, :cond_44

    .line 4132
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : remain DVFS_MAX_LIMIT : next : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4133
    iget v3, v1, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-static {v7, v3}, Landroid/os/Power;->acquireDVFSLock(II)I

    .line 4134
    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    .line 4161
    .end local v1           #nextMinOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :cond_3d
    :goto_3d
    iget-object v3, v2, Lcom/android/server/PowerManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_b

    .line 4137
    .restart local v1       #nextMinOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :cond_44
    const-string v3, "PowerManagerService"

    const-string v4, "releaseDVFSLockLocked : all DVFS_MAX_LIMIT are released "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4138
    invoke-static {v7}, Landroid/os/Power;->releaseDVFSLock(I)I

    .line 4139
    iput-object v5, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    goto :goto_3d

    .line 4143
    .end local v1           #nextMinOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :cond_51
    iget v3, v2, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    if-ne v3, v6, :cond_3d

    .line 4144
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    if-ne v2, v3, :cond_3d

    .line 4145
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$DVFSLockList;->getMaxOfMinLock()Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v0

    .line 4147
    .local v0, nextMaxOfMinLock:Lcom/android/server/PowerManagerService$DVFSLock;
    if-eqz v0, :cond_83

    .line 4148
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : remain DVFS_MIN_LIMIT : next : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4149
    iget v3, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-static {v6, v3}, Landroid/os/Power;->acquireDVFSLock(II)I

    .line 4150
    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    goto :goto_3d

    .line 4153
    :cond_83
    const-string v3, "PowerManagerService"

    const-string v4, "releaseDVFSLockLocked : all DVFS_MIN_LIMIT are released "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4154
    invoke-static {v6}, Landroid/os/Power;->releaseDVFSLock(I)I

    .line 4155
    iput-object v5, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    goto :goto_3d
.end method

.method private releaseWakeLockLocked(Landroid/os/IBinder;IZ)V
    .registers 15
    .parameter "lock"
    .parameter "flags"
    .parameter "death"

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 1071
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0, p1}, Lcom/android/server/PowerManagerService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/PowerManagerService$WakeLock;

    move-result-object v9

    .line 1072
    .local v9, wl:Lcom/android/server/PowerManagerService$WakeLock;
    if-nez v9, :cond_c

    .line 1121
    :goto_b
    return-void

    .line 1081
    :cond_c
    iget v0, v9, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 1082
    iget v0, v9, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x20

    if-ne v0, v1, :cond_44

    .line 1083
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 1084
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v0, :cond_35

    .line 1085
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v0, :cond_40

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_40

    .line 1089
    const-string v0, "PowerManagerService"

    const-string v1, "waiting for proximity sensor to go negative"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_35
    :goto_35
    iget-object v0, v9, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    invoke-interface {v0, v9, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1120
    iget-object v0, v9, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    invoke-virtual {p0, v9, v0}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    goto :goto_b

    .line 1092
    :cond_40
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->disableProximityLockLocked()V

    goto :goto_35

    .line 1096
    :cond_44
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1098
    iget v0, v9, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5f

    .line 1099
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 1102
    :cond_5f
    invoke-direct {p0, v10}, Lcom/android/server/PowerManagerService;->printCurLock(I)V

    .line 1103
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_d5

    iget v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_d5

    .line 1104
    .local v8, bGoOff:Z
    :goto_71
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_d7

    const-string v0, "Screen__Off : "

    :goto_7c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "releaseWakeLockLocked flags=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " tag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v9, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " myUID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " myPID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " myTID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto/16 :goto_35

    .end local v8           #bGoOff:Z
    :cond_d5
    move v8, v5

    .line 1103
    goto :goto_71

    .line 1104
    .restart local v8       #bGoOff:Z
    :cond_d7
    const-string v0, ""

    goto :goto_7c

    .line 1109
    .end local v8           #bGoOff:Z
    :cond_da
    iget v0, v9, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v0, v0, 0x3f

    if-ne v0, v8, :cond_35

    .line 1110
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 1111
    const/16 v0, 0xaa9

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, v9, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1112
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    if-nez v0, :cond_35

    .line 1114
    const-string v0, "PowerManagerService"

    invoke-static {v0}, Landroid/os/Power;->releaseWakeLock(Ljava/lang/String;)V

    goto/16 :goto_35
.end method

.method private screenOffFinishedAnimatingLocked(I)I
    .registers 9
    .parameter "reason"

    .prologue
    const/4 v6, 0x0

    .line 2121
    const/16 v1, 0xaa8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2123
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2124
    invoke-direct {p0, v6}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v0

    .line 2125
    .local v0, err:I
    if-nez v0, :cond_37

    .line 2126
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    .line 2127
    invoke-direct {p0, v6, p1}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 2129
    :cond_37
    return v0
.end method

.method private sendNotificationLocked(ZI)V
    .registers 12
    .parameter "on"
    .parameter "why"

    .prologue
    const/16 v8, 0xaa7

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1486
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    if-nez v1, :cond_b

    .line 1563
    :cond_a
    :goto_a
    return-void

    .line 1496
    :cond_b
    const-string v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendNotificationLocked on="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    if-nez p1, :cond_27

    .line 1504
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    .line 1508
    :cond_27
    const/4 v0, 0x0

    .line 1509
    .local v0, index:I
    :goto_28
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aget v1, v1, v0

    if-eq v1, v6, :cond_31

    .line 1510
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 1512
    :cond_31
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    if-eqz p1, :cond_d7

    move v1, v2

    :goto_36
    aput v1, v4, v0

    .line 1513
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aput p2, v1, v0

    .line 1522
    if-ne v0, v7, :cond_8e

    .line 1525
    if-nez p1, :cond_4a

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aget v1, v1, v3

    if-le v1, p2, :cond_4a

    .line 1526
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aput p2, v1, v3

    .line 1528
    :cond_4a
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    if-eqz p1, :cond_da

    move v1, v2

    :goto_4f
    aput v1, v4, v3

    .line 1529
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v6, v1, v2

    .line 1530
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v6, v1, v7

    .line 1531
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v4, v4, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v8, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1532
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1533
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v4, v4, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v8, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1534
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1535
    const/4 v0, 0x0

    .line 1537
    :cond_8e
    if-ne v0, v2, :cond_b5

    if-nez p1, :cond_b5

    .line 1538
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v6, v1, v3

    .line 1539
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v6, v1, v2

    .line 1540
    const/4 v0, -0x1

    .line 1543
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v3, v3, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v8, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1544
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1549
    :cond_b5
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v1, :cond_be

    .line 1550
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 1554
    :cond_be
    if-ltz v0, :cond_a

    .line 1559
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 1560
    const/16 v1, 0xaa5

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1561
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_a

    :cond_d7
    move v1, v3

    .line 1512
    goto/16 :goto_36

    :cond_da
    move v1, v3

    .line 1528
    goto/16 :goto_4f
.end method

.method private setLightBrightness(II)V
    .registers 7
    .parameter "mask"
    .parameter "value"

    .prologue
    .line 2345
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v1, :cond_39

    const/4 v0, 0x1

    .line 2348
    .local v0, brightnessMode:I
    :goto_5
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_e

    .line 2354
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 2356
    :cond_e
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2f

    .line 2357
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLightBrightness : mButtonLight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, p2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 2360
    :cond_2f
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_38

    .line 2361
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, p2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 2363
    :cond_38
    return-void

    .line 2345
    .end local v0           #brightnessMode:I
    :cond_39
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private setPowerState(I)V
    .registers 4
    .parameter "state"

    .prologue
    .line 1937
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 1938
    return-void
.end method

.method private setPowerState(IZI)V
    .registers 19
    .parameter "newState"
    .parameter "noChangeLights"
    .parameter "reason"

    .prologue
    .line 1942
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v10

    .line 1952
    if-eqz p2, :cond_d

    .line 1953
    and-int/lit8 v9, p1, -0xf

    :try_start_7
    iget v11, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v11, v11, 0xe

    or-int p1, v9, v11

    .line 1955
    :cond_d
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v9, :cond_2d

    .line 1957
    const-string v9, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setPowerState : mProximitySensorActive is true , so SCREEN_BRIGHT bits is cleared, orig newState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    and-int/lit8 p1, p1, -0x4

    .line 1961
    :cond_2d
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->batteryIsLow()Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 1962
    and-int/lit8 v9, p1, -0xf

    or-int/lit8 p1, v9, 0x10

    .line 1969
    :goto_37
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_43

    .line 1972
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PowerManagerService;->applyButtonState(I)I

    move-result p1

    .line 1973
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PowerManagerService;->applyKeyboardState(I)I

    move-result p1

    .line 1976
    :cond_43
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_52

    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    if-eqz v9, :cond_52

    .line 1977
    monitor-exit v10

    .line 2109
    :goto_4e
    return-void

    .line 1964
    :cond_4f
    and-int/lit8 p1, p1, -0x11

    goto :goto_37

    .line 1980
    :cond_52
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    if-nez v9, :cond_5f

    .line 1981
    const-string v9, "PowerManagerService"

    const-string v11, "setPowerState : mBootCompleted : false, newState |= ALL_BRIGHT"

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    or-int/lit8 p1, p1, 0xf

    .line 1985
    :cond_5f
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_fa

    const/4 v6, 0x1

    .line 1986
    .local v6, oldScreenOn:Z
    :goto_66
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_fd

    const/4 v5, 0x1

    .line 2003
    .local v5, newScreenOn:Z
    :goto_6b
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v0, p1

    if-eq v9, v0, :cond_100

    const/4 v8, 0x1

    .line 2005
    .local v8, stateChanged:Z
    :goto_72
    if-eq v6, v5, :cond_190

    .line 2006
    if-eqz v5, :cond_139

    .line 2023
    const/4 v7, 0x1

    .line 2029
    .local v7, reallyTurnScreenOn:Z
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    if-eqz v9, :cond_83

    .line 2031
    const-string v9, "PowerManagerService"

    const-string v11, "- PREVENTING screen from really turning on!"

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    const/4 v7, 0x0

    .line 2035
    :cond_83
    if-eqz v7, :cond_114

    .line 2036
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v2

    .line 2037
    .local v2, err:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8d
    .catchall {:try_start_7 .. :try_end_8d} :catchall_f7

    move-result-wide v3

    .line 2039
    .local v3, identity:J
    :try_start_8e
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v11

    invoke-interface {v9, v11}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    .line 2040
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_9c
    .catchall {:try_start_8e .. :try_end_9c} :catchall_10f
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_9c} :catch_103

    .line 2044
    :try_start_9c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2052
    .end local v3           #identity:J
    :goto_9f
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2053
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    .line 2054
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    .line 2055
    const/16 v9, 0xaa8

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-wide v13, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget v13, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2057
    if-nez v2, :cond_11a

    .line 2058
    const/4 v9, 0x1

    const/4 v11, -0x1

    invoke-direct {p0, v9, v11}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 2063
    if-eqz v8, :cond_e2

    .line 2064
    const/4 v9, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2066
    :cond_e2
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2105
    .end local v2           #err:I
    .end local v7           #reallyTurnScreenOn:Z
    :cond_e8
    :goto_e8
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, -0x1f

    and-int/lit8 v11, p1, 0x1e

    or-int/2addr v9, v11

    iput v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2107
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateNativePowerStateLocked()V

    .line 2108
    monitor-exit v10

    goto/16 :goto_4e

    .end local v5           #newScreenOn:Z
    .end local v6           #oldScreenOn:Z
    .end local v8           #stateChanged:Z
    :catchall_f7
    move-exception v9

    monitor-exit v10
    :try_end_f9
    .catchall {:try_start_9c .. :try_end_f9} :catchall_f7

    throw v9

    .line 1985
    :cond_fa
    const/4 v6, 0x0

    goto/16 :goto_66

    .line 1986
    .restart local v6       #oldScreenOn:Z
    :cond_fd
    const/4 v5, 0x0

    goto/16 :goto_6b

    .line 2003
    .restart local v5       #newScreenOn:Z
    :cond_100
    const/4 v8, 0x0

    goto/16 :goto_72

    .line 2041
    .restart local v2       #err:I
    .restart local v3       #identity:J
    .restart local v7       #reallyTurnScreenOn:Z
    .restart local v8       #stateChanged:Z
    :catch_103
    move-exception v1

    .line 2042
    .local v1, e:Landroid/os/RemoteException;
    :try_start_104
    const-string v9, "PowerManagerService"

    const-string v11, "RemoteException calling noteScreenOn on BatteryStatsService"

    invoke-static {v9, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10b
    .catchall {:try_start_104 .. :try_end_10b} :catchall_10f

    .line 2044
    :try_start_10b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9f

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_10f
    move-exception v9

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 2047
    .end local v2           #err:I
    .end local v3           #identity:J
    :cond_114
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    .line 2049
    const/4 v2, 0x0

    .restart local v2       #err:I
    goto :goto_9f

    .line 2069
    :cond_11a
    const-string v9, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setPowerState : err : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "    SCREEN_ON_BIT is not written"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e8

    .line 2074
    .end local v2           #err:I
    .end local v7           #reallyTurnScreenOn:Z
    :cond_139
    if-eqz v8, :cond_141

    .line 2075
    const/4 v9, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2079
    :cond_141
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v9, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2080
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 2081
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 2082
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    .line 2083
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_157
    .catchall {:try_start_10b .. :try_end_157} :catchall_f7

    move-result-wide v3

    .line 2085
    .restart local v3       #identity:J
    :try_start_158
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteScreenOff()V
    :try_end_15d
    .catchall {:try_start_158 .. :try_end_15d} :catchall_184
    .catch Landroid/os/RemoteException; {:try_start_158 .. :try_end_15d} :catch_178

    .line 2089
    :try_start_15d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2091
    :goto_160
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, -0x2

    iput v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2092
    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    .line 2093
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-boolean v9, v9, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-nez v9, :cond_189

    .line 2094
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I
    :try_end_175
    .catchall {:try_start_15d .. :try_end_175} :catchall_f7

    move-result v2

    .restart local v2       #err:I
    goto/16 :goto_e8

    .line 2086
    .end local v2           #err:I
    :catch_178
    move-exception v1

    .line 2087
    .restart local v1       #e:Landroid/os/RemoteException;
    :try_start_179
    const-string v9, "PowerManagerService"

    const-string v11, "RemoteException calling noteScreenOff on BatteryStatsService"

    invoke-static {v9, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_180
    .catchall {:try_start_179 .. :try_end_180} :catchall_184

    .line 2089
    :try_start_180
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_160

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_184
    move-exception v9

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 2096
    :cond_189
    const/4 v2, 0x0

    .line 2097
    .restart local v2       #err:I
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    goto/16 :goto_e8

    .line 2100
    .end local v2           #err:I
    .end local v3           #identity:J
    :cond_190
    if-eqz v8, :cond_e8

    .line 2102
    const/4 v9, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V
    :try_end_198
    .catchall {:try_start_180 .. :try_end_198} :catchall_f7

    goto/16 :goto_e8
.end method

.method private setScreenBrightnessMode(I)V
    .registers 8
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3114
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v4

    .line 3115
    if-ne p1, v1, :cond_29

    move v0, v1

    .line 3116
    .local v0, enabled:Z
    :goto_8
    :try_start_8
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_27

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eq v3, v0, :cond_27

    .line 3117
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    .line 3118
    const-string v5, "/sys/class/backlight/panel/auto_brightness"

    if-eqz v0, :cond_2b

    move v3, v1

    :goto_17
    invoke-static {v5, v3}, Lcom/android/server/PowerManagerService;->fileWriteInt(Ljava/lang/String;I)V

    .line 3120
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v3, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_2d

    :goto_24
    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 3122
    :cond_27
    monitor-exit v4

    .line 3123
    return-void

    .end local v0           #enabled:Z
    :cond_29
    move v0, v2

    .line 3115
    goto :goto_8

    .restart local v0       #enabled:Z
    :cond_2b
    move v3, v2

    .line 3118
    goto :goto_17

    :cond_2d
    move v1, v2

    .line 3120
    goto :goto_24

    .line 3122
    :catchall_2f
    move-exception v1

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private setScreenOffTimeoutsLocked()V
    .registers 7

    .prologue
    const/16 v5, 0x1b58

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 3131
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_51

    .line 3132
    iget v1, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 3133
    iput v3, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 3134
    iput v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 3185
    :goto_12
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenOffTimeouts mKeylightDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDimDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenOffDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDimScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    return-void

    .line 3135
    :cond_51
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_60

    .line 3136
    const/16 v1, 0x3a98

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 3137
    iput v3, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 3138
    iput v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_12

    .line 3139
    :cond_60
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_73

    .line 3140
    const/16 v1, 0x1770

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 3141
    const/16 v1, 0xfa0

    iput v1, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 3142
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_12

    .line 3144
    :cond_73
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 3145
    .local v0, totalDelay:I
    iget v1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    if-le v0, v1, :cond_7b

    .line 3146
    iget v0, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 3149
    :cond_7b
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    if-ne v1, v3, :cond_a2

    .line 3150
    if-le v0, v5, :cond_9f

    .line 3151
    add-int/lit16 v1, v0, -0x1b58

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 3166
    :cond_85
    :goto_85
    if-gez v0, :cond_b1

    .line 3168
    iget v1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 3177
    :goto_8b
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    if-eqz v1, :cond_bf

    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    add-int/lit16 v1, v1, 0x1b58

    if-lt v0, v1, :cond_bf

    .line 3178
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    add-int/lit16 v1, v1, -0x1b58

    iput v1, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 3179
    iput v5, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto/16 :goto_12

    .line 3154
    :cond_9f
    iput v0, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    goto :goto_85

    .line 3157
    :cond_a2
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_85

    .line 3159
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_85

    .line 3163
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    goto :goto_85

    .line 3169
    :cond_b1
    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    if-ge v1, v0, :cond_bc

    .line 3173
    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_8b

    .line 3175
    :cond_bc
    iput v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_8b

    .line 3181
    :cond_bf
    iput v3, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    goto/16 :goto_12
.end method

.method private setScreenStateLocked(Z)I
    .registers 6
    .parameter "on"

    .prologue
    const/4 v3, -0x1

    .line 1892
    if-eqz p1, :cond_13

    .line 1893
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v1, :cond_13

    .line 1906
    :cond_d
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/PowerManagerService$BrightnessState;->forceValueLocked(I)V

    .line 1909
    :cond_13
    invoke-static {p1}, Landroid/os/Power;->setScreenState(Z)I

    move-result v0

    .line 1910
    .local v0, err:I
    if-nez v0, :cond_43

    .line 1911
    if-eqz p1, :cond_40

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :goto_1f
    iput-wide v1, p0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    .line 1912
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_3c

    .line 1913
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 1914
    if-nez p1, :cond_3c

    .line 1916
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 1917
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 1920
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 1922
    iput v3, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 1924
    iput v3, p0, Lcom/android/server/PowerManagerService;->mPrevAutoBrightnessLevel:I

    .line 1931
    :cond_3c
    :goto_3c
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->printCurLockForce(Z)V

    .line 1932
    return v0

    .line 1911
    :cond_40
    const-wide/16 v1, 0x0

    goto :goto_1f

    .line 1929
    :cond_43
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenStateLocked : native code : error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method private setTimeoutLocked(JI)V
    .registers 10
    .parameter "now"
    .parameter "nextState"

    .prologue
    .line 1366
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    .line 1367
    return-void
.end method

.method private setTimeoutLocked(JJI)V
    .registers 15
    .parameter "now"
    .parameter "originalTimeoutOverride"
    .parameter "nextState"

    .prologue
    .line 1373
    move-wide v0, p3

    .line 1374
    .local v0, timeoutOverride:J
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    if-eqz v4, :cond_35

    .line 1375
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 1376
    const-wide/16 v2, 0x0

    .line 1377
    .local v2, when:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_76

    .line 1378
    packed-switch p5, :pswitch_data_bc

    .line 1396
    :pswitch_13
    move-wide v2, p1

    .line 1428
    :goto_14
    :try_start_14
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1429
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    iput p5, v4, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    .line 1430
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_b7

    sub-long v4, p3, v0

    :goto_29
    iput-wide v4, v7, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    .line 1433
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1434
    iput-wide v2, p0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    .line 1435
    monitor-exit v6

    .line 1437
    .end local v2           #when:J
    :cond_35
    return-void

    .line 1381
    .restart local v2       #when:J
    :pswitch_36
    iget v4, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    int-to-long v4, v4

    add-long v2, p1, v4

    .line 1382
    goto :goto_14

    .line 1384
    :pswitch_3c
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    if-ltz v4, :cond_46

    .line 1385
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    int-to-long v4, v4

    add-long v2, p1, v4

    .line 1386
    goto :goto_14

    .line 1388
    :cond_46
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDimDelay="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " while trying to dim"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :pswitch_66
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v5
    :try_end_69
    .catchall {:try_start_14 .. :try_end_69} :catchall_73

    .line 1392
    :try_start_69
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v7, v4

    add-long v2, p1, v7

    .line 1393
    monitor-exit v5

    goto :goto_14

    :catchall_70
    move-exception v4

    monitor-exit v5
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_70

    :try_start_72
    throw v4

    .line 1435
    :catchall_73
    move-exception v4

    monitor-exit v6
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_73

    throw v4

    .line 1401
    :cond_76
    :try_start_76
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTimeoutLocked :  override : timeoutOverride : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_9a

    .line 1403
    add-long v2, p1, v0

    .line 1404
    const/4 p5, 0x0

    .line 1405
    goto/16 :goto_14

    .line 1407
    :cond_9a
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 1409
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    if-ltz v4, :cond_b2

    .line 1410
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_ae

    .line 1411
    add-long v2, p1, v0

    .line 1412
    const/4 p5, 0x1

    .line 1413
    goto/16 :goto_14

    .line 1415
    :cond_ae
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I
    :try_end_b0
    .catchall {:try_start_76 .. :try_end_b0} :catchall_73

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 1418
    :cond_b2
    add-long v2, p1, v0

    .line 1419
    const/4 p5, 0x3

    goto/16 :goto_14

    .line 1430
    :cond_b7
    const-wide/16 v4, -0x1

    goto/16 :goto_29

    .line 1378
    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_66
        :pswitch_3c
        :pswitch_13
        :pswitch_36
    .end packed-switch
.end method

.method private shouldDeferScreenOnLocked()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 2138
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    if-eqz v2, :cond_6

    .line 2157
    :cond_5
    :goto_5
    return v1

    .line 2149
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    array-length v2, v2

    if-ge v0, v2, :cond_15

    .line 2150
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aget v2, v2, v0

    if-eq v2, v1, :cond_5

    .line 2149
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2157
    :cond_15
    const/4 v1, 0x0

    goto :goto_5
.end method

.method private shouldLog(J)Z
    .registers 10
    .parameter "time"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2588
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 2589
    :try_start_5
    iget-wide v3, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleTime:J

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    cmp-long v3, p1, v3

    if-lez v3, :cond_16

    .line 2590
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleTime:J

    .line 2591
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    .line 2592
    monitor-exit v2

    .line 2597
    :goto_15
    return v0

    .line 2593
    :cond_16
    iget v3, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_27

    .line 2594
    iget v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    .line 2595
    monitor-exit v2

    goto :goto_15

    .line 2599
    :catchall_24
    move-exception v0

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v0

    .line 2597
    :cond_27
    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_24

    move v0, v1

    goto :goto_15
.end method

.method private updateLightsLocked(II)V
    .registers 25
    .parameter "newState"
    .parameter "forceState"

    .prologue
    .line 2161
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2165
    .local v11, oldState:I
    and-int/lit8 v19, v11, 0x1

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1e

    .line 2169
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->shouldDeferScreenOnLocked()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v19, :cond_1e

    .line 2170
    and-int/lit8 p1, p1, -0x4

    .line 2184
    :cond_1e
    xor-int v16, p1, v11

    .line 2185
    .local v16, realDifference:I
    or-int v5, v16, p2

    .line 2186
    .local v5, difference:I
    if-nez v5, :cond_25

    .line 2342
    :cond_24
    :goto_24
    return-void

    .line 2190
    :cond_25
    const/4 v10, 0x0

    .line 2191
    .local v10, offMask:I
    const/4 v6, 0x0

    .line 2192
    .local v6, dimMask:I
    const/4 v12, 0x0

    .line 2194
    .local v12, onMask:I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v14

    .line 2196
    .local v14, preferredBrightness:I
    const-string v19, "PowerManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Ulight "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "->"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "|"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    and-int/lit8 v19, v5, 0x8

    if-eqz v19, :cond_6c

    .line 2199
    and-int/lit8 v19, p1, 0x8

    if-nez v19, :cond_187

    .line 2200
    or-int/lit8 v10, v10, 0x8

    .line 2206
    :cond_6c
    :goto_6c
    and-int/lit8 v19, v5, 0x4

    if-eqz v19, :cond_76

    .line 2207
    and-int/lit8 v19, p1, 0x4

    if-nez v19, :cond_18b

    .line 2208
    or-int/lit8 v10, v10, 0x4

    .line 2214
    :cond_76
    :goto_76
    and-int/lit8 v19, v5, 0x3

    if-eqz v19, :cond_14c

    .line 2215
    const/4 v9, -0x1

    .line 2221
    .local v9, nominalCurrentValue:I
    and-int/lit8 v19, v16, 0x3

    if-eqz v19, :cond_93

    .line 2222
    and-int/lit8 v19, v11, 0x3

    packed-switch v19, :pswitch_data_1fe

    .line 2235
    :pswitch_84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v9, v0

    .line 2239
    :cond_93
    :goto_93
    move v4, v14

    .line 2240
    .local v4, brightness:I
    const/16 v18, 0x14

    .line 2241
    .local v18, steps:I
    and-int/lit8 v19, p1, 0x2

    if-nez v19, :cond_bf

    .line 2245
    const/high16 v17, 0x3fc0

    .line 2246
    .local v17, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v14

    move/from16 v20, v0

    div-float v15, v19, v20

    .line 2247
    .local v15, ratio:F
    const/high16 v19, 0x3f80

    cmpl-float v19, v15, v19

    if-lez v19, :cond_b4

    const/high16 v15, 0x3f80

    .line 2248
    :cond_b4
    and-int/lit8 v19, p1, 0x1

    if-nez v19, :cond_1aa

    .line 2249
    and-int/lit8 v19, v11, 0x2

    if-eqz v19, :cond_19b

    .line 2251
    const/16 v18, 0x14

    .line 2256
    :goto_be
    const/4 v4, 0x0

    .line 2276
    .end local v15           #ratio:F
    .end local v17           #scale:F
    :cond_bf
    :goto_bf
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 2278
    .local v7, identity:J
    :try_start_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_ce
    .catchall {:try_start_c3 .. :try_end_ce} :catchall_1f9
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_ce} :catch_1f3

    .line 2282
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2286
    :goto_d1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSystemPowerSaveModeEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_101

    .line 2287
    sget v19, Lcom/android/server/PowerManagerService;->POWERSAVEMODE_BRIGHTNESS_OFFSET:I

    sub-int v13, v4, v19

    .line 2288
    .local v13, powerSaveModeBrightness:I
    if-lez v4, :cond_101

    .line 2289
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2290
    const-string v19, "PowerManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateLightsLocked : mSystemPowerSaveModeEnabled:: brightness:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    .end local v13           #powerSaveModeBrightness:I
    :cond_101
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v4, v0, :cond_12f

    .line 2295
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 2296
    const-string v19, "PowerManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateLightsLocked : brightness is changed to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " because of temperature"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    :cond_12f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_14c

    .line 2300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    move-object/from16 v19, v0

    const/16 v20, 0xff

    const/16 v21, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/PowerManagerService$BrightnessState;->setTargetLocked(IIII)V

    .line 2320
    .end local v4           #brightness:I
    .end local v7           #identity:J
    .end local v9           #nominalCurrentValue:I
    .end local v18           #steps:I
    :cond_14c
    if-eqz v10, :cond_157

    .line 2322
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v10, v1}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    .line 2324
    :cond_157
    if-eqz v6, :cond_16e

    .line 2325
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 2326
    .restart local v4       #brightness:I
    and-int/lit8 v19, p1, 0x10

    if-eqz v19, :cond_169

    const/16 v19, 0xa

    move/from16 v0, v19

    if-le v4, v0, :cond_169

    .line 2328
    const/16 v4, 0xa

    .line 2331
    :cond_169
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    .line 2333
    .end local v4           #brightness:I
    :cond_16e
    if-eqz v12, :cond_24

    .line 2334
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v4

    .line 2335
    .restart local v4       #brightness:I
    and-int/lit8 v19, p1, 0x10

    if-eqz v19, :cond_180

    const/16 v19, 0xa

    move/from16 v0, v19

    if-le v4, v0, :cond_180

    .line 2337
    const/16 v4, 0xa

    .line 2340
    :cond_180
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    goto/16 :goto_24

    .line 2202
    .end local v4           #brightness:I
    :cond_187
    or-int/lit8 v12, v12, 0x8

    goto/16 :goto_6c

    .line 2210
    :cond_18b
    or-int/lit8 v12, v12, 0x4

    goto/16 :goto_76

    .line 2224
    .restart local v9       #nominalCurrentValue:I
    :pswitch_18f
    move v9, v14

    .line 2225
    goto/16 :goto_93

    .line 2227
    :pswitch_192
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 2228
    goto/16 :goto_93

    .line 2230
    :pswitch_198
    const/4 v9, 0x0

    .line 2231
    goto/16 :goto_93

    .line 2254
    .restart local v4       #brightness:I
    .restart local v15       #ratio:F
    .restart local v17       #scale:F
    .restart local v18       #steps:I
    :cond_19b
    const/high16 v19, 0x41a0

    mul-float v19, v19, v15

    const/high16 v20, 0x3fc0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    goto/16 :goto_be

    .line 2258
    :cond_1aa
    and-int/lit8 v19, v11, 0x1

    if-eqz v19, :cond_1e9

    .line 2260
    const/high16 v19, 0x41a0

    const/high16 v20, 0x3f80

    sub-float v20, v20, v15

    mul-float v19, v19, v20

    const/high16 v20, 0x3fc0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 2265
    :goto_1bf
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    move/from16 v19, v0

    if-eqz v19, :cond_1e3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v19

    if-eqz v19, :cond_1e3

    .line 2271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    .line 2273
    :cond_1e3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    goto/16 :goto_bf

    .line 2263
    :cond_1e9
    const/high16 v19, 0x41a0

    mul-float v19, v19, v15

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    goto :goto_1bf

    .line 2279
    .end local v15           #ratio:F
    .end local v17           #scale:F
    .restart local v7       #identity:J
    :catch_1f3
    move-exception v19

    .line 2282
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_d1

    :catchall_1f9
    move-exception v19

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19

    .line 2222
    :pswitch_data_1fe
    .packed-switch 0x0
        :pswitch_198
        :pswitch_192
        :pswitch_84
        :pswitch_18f
    .end packed-switch
.end method

.method private updateNativePowerStateLocked()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2112
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14

    move v0, v1

    :goto_9
    iget v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_16

    :goto_10
    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->nativeSetPowerState(ZZ)V

    .line 2115
    return-void

    :cond_14
    move v0, v2

    .line 2112
    goto :goto_9

    :cond_16
    move v1, v2

    goto :goto_10
.end method

.method private updateSettingsValues()V
    .registers 4

    .prologue
    .line 3196
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "short_keylight_delay_ms"

    const/16 v2, 0x1770

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    .line 3201
    return-void
.end method

.method private updateWakeLockLocked()V
    .registers 3

    .prologue
    .line 817
    iget v0, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    iget v1, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 819
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 820
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 825
    :goto_18
    return-void

    .line 822
    :cond_19
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 823
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    goto :goto_18
.end method

.method private userActivity(JJZIZ)V
    .registers 21
    .parameter "time"
    .parameter "timeoutOverride"
    .parameter "noChangeLights"
    .parameter "eventType"
    .parameter "force"

    .prologue
    .line 2655
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    const/4 v1, 0x2

    move/from16 v0, p6

    if-ne v0, v1, :cond_c

    .line 2745
    :cond_b
    :goto_b
    return-void

    .line 2662
    :cond_c
    iget-object v12, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v12

    .line 2673
    :try_start_f
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2674
    const-string v1, "PowerManagerService"

    const-string v2, "ignoring user activity while turning off screen"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    monitor-exit v12

    goto :goto_b

    .line 2740
    :catchall_1e
    move-exception v1

    monitor-exit v12
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_1e

    throw v1

    .line 2679
    :cond_21
    :try_start_21
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v1, :cond_2c

    iget v1, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v1, :cond_2c

    .line 2680
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 2682
    :cond_2c
    iget-wide v1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    cmp-long v1, v1, p1

    if-lez v1, :cond_34

    if-eqz p7, :cond_fa

    .line 2683
    :cond_34
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 2684
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    if-eqz v1, :cond_3e

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v1, :cond_40

    :cond_3e
    if-eqz p7, :cond_fa

    .line 2688
    :cond_40
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    if-eqz v1, :cond_53

    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_53

    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_53

    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_106

    :cond_53
    const/4 v7, 0x1

    .line 2693
    .local v7, byApplyButtonState:Z
    :goto_54
    const/4 v1, 0x2

    move/from16 v0, p6

    if-ne v0, v1, :cond_10c

    if-nez v7, :cond_10c

    .line 2694
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v1, :cond_109

    const/16 v1, 0xf

    :goto_61
    iput v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 2709
    :goto_63
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/16 v2, 0x5dc

    if-ne v1, v2, :cond_73

    .line 2710
    const/4 v1, 0x3

    move/from16 v0, p6

    if-eq v0, v1, :cond_73

    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_139

    .line 2717
    :cond_73
    :goto_73
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2718
    .local v11, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_7a
    .catchall {:try_start_21 .. :try_end_7a} :catchall_1e

    move-result-wide v8

    .line 2720
    .local v8, ident:J
    :try_start_7b
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move/from16 v0, p6

    invoke-interface {v1, v11, v0}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_14b
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_82} :catch_145

    .line 2724
    :try_start_82
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2727
    :goto_85
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_db

    .line 2728
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 2729
    .local v10, pid:I
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen__On : userActivity  uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   myUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " myPID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " myTID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    .end local v10           #pid:I
    :cond_db
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$LockList;->reactivateScreenLocksLocked()I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 2734
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->printCurLock(I)V

    .line 2735
    iget v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    or-int/2addr v1, v2

    const/4 v2, 0x2

    move/from16 v0, p5

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 2737
    const/4 v6, 0x3

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    .line 2740
    .end local v7           #byApplyButtonState:Z
    .end local v8           #ident:J
    .end local v11           #uid:I
    :cond_fa
    monitor-exit v12
    :try_end_fb
    .catchall {:try_start_82 .. :try_end_fb} :catchall_1e

    .line 2742
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v1, :cond_b

    .line 2743
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->userActivity()V

    goto/16 :goto_b

    .line 2688
    :cond_106
    const/4 v7, 0x0

    goto/16 :goto_54

    .line 2694
    .restart local v7       #byApplyButtonState:Z
    :cond_109
    const/4 v1, 0x7

    goto/16 :goto_61

    .line 2696
    :cond_10c
    const/4 v1, 0x3

    move/from16 v0, p6

    if-ne v0, v1, :cond_11b

    if-nez v7, :cond_11b

    .line 2697
    :try_start_113
    iget v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/lit8 v1, v1, 0x7

    iput v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto/16 :goto_63

    .line 2699
    :cond_11b
    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_131

    if-nez v7, :cond_131

    .line 2700
    iget v2, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v1, :cond_12f

    const/16 v1, 0xb

    :goto_12a
    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto/16 :goto_63

    :cond_12f
    const/4 v1, 0x3

    goto :goto_12a

    .line 2704
    :cond_131
    iget v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto/16 :goto_63

    .line 2712
    :cond_139
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsSipVisible:Z

    if-eqz v1, :cond_73

    .line 2713
    iget v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    and-int/lit8 v1, v1, -0xd

    iput v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto/16 :goto_73

    .line 2721
    .restart local v8       #ident:J
    .restart local v11       #uid:I
    :catch_145
    move-exception v1

    .line 2724
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_85

    :catchall_14b
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_150
    .catchall {:try_start_113 .. :try_end_150} :catchall_1e
.end method


# virtual methods
.method public acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 15
    .parameter "type"
    .parameter "frequency"
    .parameter "lock"
    .parameter "tag"

    .prologue
    .line 4061
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 4062
    .local v4, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 4064
    .local v5, pid:I
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4066
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 4068
    .local v7, ident:J
    :try_start_14
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    monitor-enter v9
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_27

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 4069
    :try_start_1c
    invoke-direct/range {v0 .. v6}, Lcom/android/server/PowerManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V

    .line 4070
    monitor-exit v9
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_24

    .line 4072
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4074
    return-void

    .line 4070
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v9
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    :try_start_26
    throw v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 4072
    :catchall_27
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public acquirePersistentDVFSLock(IIILjava/lang/String;)V
    .registers 15
    .parameter "type"
    .parameter "frequency"
    .parameter "callingId"
    .parameter "tag"

    .prologue
    .line 4165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 4166
    .local v4, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 4168
    .local v5, pid:I
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 4172
    .local v7, ident:J
    :try_start_14
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    monitor-enter v9
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_ab

    .line 4173
    :try_start_17
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    and-int/2addr v0, p3

    if-nez v0, :cond_8f

    .line 4174
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 4175
    .local v3, token:Landroid/os/IBinder;
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirePersistentDVFSLock : prev mPersistentDVFSLocksInfo : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  frequency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  callingId : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p4

    .line 4177
    invoke-direct/range {v0 .. v6}, Lcom/android/server/PowerManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V

    .line 4178
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    or-int/2addr v0, p3

    iput v0, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    .line 4183
    .end local v3           #token:Landroid/os/IBinder;
    :goto_8a
    monitor-exit v9
    :try_end_8b
    .catchall {:try_start_17 .. :try_end_8b} :catchall_a8

    .line 4185
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4187
    return-void

    .line 4181
    :cond_8f
    :try_start_8f
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirePersistentDVFSLock : this callingId already acquired PersistentDVFSLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 4183
    :catchall_a8
    move-exception v0

    monitor-exit v9
    :try_end_aa
    .catchall {:try_start_8f .. :try_end_aa} :catchall_a8

    :try_start_aa
    throw v0
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ab

    .line 4185
    :catchall_ab
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public acquireWakeLock(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;)V
    .registers 15
    .parameter "flags"
    .parameter "lock"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 845
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 846
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 847
    .local v4, pid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq v3, v0, :cond_16

    .line 848
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    :cond_16
    if-eqz p4, :cond_1b

    .line 851
    invoke-virtual {p0, v3, v4}, Lcom/android/server/PowerManagerService;->enforceWakeSourcePermission(II)V

    .line 853
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 855
    .local v7, ident:J
    :try_start_1f
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v9
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_32

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 856
    :try_start_27
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/PowerManagerService;->acquireWakeLockLocked(ILandroid/os/IBinder;IILjava/lang/String;Landroid/os/WorkSource;)V

    .line 857
    monitor-exit v9
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2f

    .line 859
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 861
    return-void

    .line 857
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v9
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 859
    :catchall_32
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public acquireWakeLockLocked(ILandroid/os/IBinder;IILjava/lang/String;Landroid/os/WorkSource;)V
    .registers 21
    .parameter "flags"
    .parameter "lock"
    .parameter "uid"
    .parameter "pid"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 905
    if-eqz p6, :cond_a

    invoke-virtual/range {p6 .. p6}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 906
    const/16 p6, 0x0

    .line 909
    :cond_a
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v10

    .line 914
    .local v10, index:I
    if-gez v10, :cond_a3

    .line 915
    new-instance v1, Lcom/android/server/PowerManagerService$WakeLock;

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/PowerManagerService$WakeLock;-><init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 916
    .local v1, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v2, v2, 0x3f

    sparse-switch v2, :sswitch_data_1c0

    .line 939
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad wakelock type for lock \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_54
    :goto_54
    return-void

    .line 924
    :sswitch_55
    const/16 v2, 0xf

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    .line 943
    :goto_59
    :sswitch_59
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, v1}, Lcom/android/server/PowerManagerService$LockList;->addLock(Lcom/android/server/PowerManagerService$WakeLock;)V

    .line 944
    if-eqz p6, :cond_69

    .line 945
    new-instance v2, Landroid/os/WorkSource;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 947
    :cond_69
    const/4 v11, 0x1

    .line 948
    .local v11, newlock:Z
    const/4 v9, 0x0

    .line 949
    .local v9, diffsource:Z
    const/4 v13, 0x0

    .line 970
    .local v13, oldsource:Landroid/os/WorkSource;
    :cond_6c
    :goto_6c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->acqTime:J

    .line 971
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v2

    if-eqz v2, :cond_192

    .line 976
    and-int/lit8 v2, p1, 0x3f

    const/16 v3, 0x20

    if-ne v2, v3, :cond_cf

    .line 977
    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 978
    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8c

    .line 979
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->enableProximityLockLocked()V

    .line 1027
    :cond_8c
    :goto_8c
    if-eqz v9, :cond_91

    .line 1030
    invoke-virtual {p0, v1, v13}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1032
    :cond_91
    if-nez v11, :cond_95

    if-eqz v9, :cond_54

    .line 1033
    :cond_95
    move-object/from16 v0, p6

    invoke-virtual {p0, v1, v0}, Lcom/android/server/PowerManagerService;->noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    goto :goto_54

    .line 928
    .end local v9           #diffsource:Z
    .end local v11           #newlock:Z
    .end local v13           #oldsource:Landroid/os/WorkSource;
    :sswitch_9b
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto :goto_59

    .line 931
    :sswitch_9f
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto :goto_59

    .line 951
    .end local v1           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_a3
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, v10}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerManagerService$WakeLock;

    .line 952
    .restart local v1       #wl:Lcom/android/server/PowerManagerService$WakeLock;
    const/4 v11, 0x0

    .line 953
    .restart local v11       #newlock:Z
    iget-object v13, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 954
    .restart local v13       #oldsource:Landroid/os/WorkSource;
    if-eqz v13, :cond_c9

    .line 955
    if-nez p6, :cond_c2

    .line 956
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 957
    const/4 v9, 0x1

    .line 966
    .restart local v9       #diffsource:Z
    :goto_b6
    if-eqz v9, :cond_6c

    .line 967
    new-instance v2, Landroid/os/WorkSource;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    goto :goto_6c

    .line 959
    .end local v9           #diffsource:Z
    :cond_c2
    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v9

    .restart local v9       #diffsource:Z
    goto :goto_b6

    .line 961
    .end local v9           #diffsource:Z
    :cond_c9
    if-eqz p6, :cond_cd

    .line 962
    const/4 v9, 0x1

    .restart local v9       #diffsource:Z
    goto :goto_b6

    .line 964
    .end local v9           #diffsource:Z
    :cond_cd
    const/4 v9, 0x0

    .restart local v9       #diffsource:Z
    goto :goto_b6

    .line 982
    :cond_cf
    iget v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_17b

    .line 983
    iget v12, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 984
    .local v12, oldWakeLockState:I
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$LockList;->reactivateScreenLocksLocked()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 988
    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_f1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v2, :cond_f1

    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v2, :cond_f1

    .line 990
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 1009
    .end local v12           #oldWakeLockState:I
    :cond_f1
    :goto_f1
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_18b

    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v2, v3

    if-eqz v2, :cond_18b

    const/4 v8, 0x1

    .line 1010
    .local v8, bGoOn:Z
    :goto_ff
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_18e

    const-string v2, "Screen__On : "

    :goto_10a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "acquireWakeLock flags=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " tag="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "   myUID="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " myPID="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " myTID="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto/16 :goto_8c

    .line 1007
    .end local v8           #bGoOn:Z
    :cond_17b
    iget v2, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v3

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    goto/16 :goto_f1

    .line 1009
    :cond_18b
    const/4 v8, 0x0

    goto/16 :goto_ff

    .line 1010
    .restart local v8       #bGoOn:Z
    :cond_18e
    const-string v2, ""

    goto/16 :goto_10a

    .line 1016
    .end local v8           #bGoOn:Z
    :cond_192
    and-int/lit8 v2, p1, 0x3f

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8c

    .line 1017
    if-eqz v11, :cond_1b7

    .line 1018
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 1019
    const/16 v2, 0xaa9

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1020
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b7

    .line 1024
    :cond_1b7
    const/4 v2, 0x1

    const-string v3, "PowerManagerService"

    invoke-static {v2, v3}, Landroid/os/Power;->acquireWakeLock(ILjava/lang/String;)V

    goto/16 :goto_8c

    .line 916
    nop

    :sswitch_data_1c0
    .sparse-switch
        0x1 -> :sswitch_59
        0x6 -> :sswitch_9f
        0xa -> :sswitch_9b
        0x1a -> :sswitch_55
        0x20 -> :sswitch_59
    .end sparse-switch
.end method

.method bootCompleted()V
    .registers 8

    .prologue
    .line 3330
    const-string v0, "PowerManagerService"

    const-string v1, "bootCompleted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 3332
    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    .line 3333
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 3334
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V

    .line 3335
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3339
    monitor-exit v6

    .line 3340
    return-void

    .line 3339
    :catchall_22
    move-exception v0

    monitor-exit v6
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_22

    throw v0
.end method

.method public clearUserActivityTimeout(JJ)V
    .registers 13
    .parameter "now"
    .parameter "timeout"

    .prologue
    const/4 v5, 0x0

    .line 2647
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUserActivity for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms from now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v6, v5

    move v7, v5

    .line 2649
    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 2650
    return-void
.end method

.method public crash(Ljava/lang/String;)V
    .registers 7
    .parameter "message"

    .prologue
    .line 3009
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3010
    new-instance v1, Lcom/android/server/PowerManagerService$13;

    const-string v2, "PowerManagerService.crash()"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/PowerManagerService$13;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3014
    .local v1, t:Ljava/lang/Thread;
    :try_start_f
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3015
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_15} :catch_16

    .line 3019
    :goto_15
    return-void

    .line 3016
    :catch_16
    move-exception v0

    .line 3017
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "PowerManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 28
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "android.permission.DUMP"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_3b

    .line 1240
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Permission Denial: can\'t dump PowerManager from from pid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", uid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1363
    :goto_3a
    return-void

    .line 1246
    :cond_3b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 1248
    .local v13, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1249
    :try_start_46
    const-string v18, "Power Manager State:"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1250
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mIsPowered="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " mPowerState="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " mScreenOffTime="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " ms"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1254
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mPartialCount="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1255
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mWakeLockState="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1256
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mUserState="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1257
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mPowerState="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1258
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mLocks.gather="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1259
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mNextTimeout="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " now="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v13

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "s from now"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1261
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mDimScreen="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " mStayOnConditions="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " mPreparingForScreenOn="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " mSkippedScreenOn="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1265
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mScreenOffReason="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " mUserState="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1267
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mBroadcastQueue={"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v20, 0x2c

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v20, 0x2c

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "}"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1269
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mBroadcastWhy={"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v20, 0x2c

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v20, 0x2c

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "}"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1271
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mPokey="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " mPokeAwakeonSet="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1272
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mKeyboardVisible="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " mUserActivityAllowed="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1274
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mKeylightDelay="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " mDimDelay="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " mScreenOffDelay="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1276
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mPreventScreenOn="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "  mScreenBrightnessOverride="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "  mButtonBrightnessOverride="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1279
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mScreenOffTimeoutSetting="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " mMaximumScreenOffTimeout="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1281
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mButtonOffTimeoutSetting="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1282
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mIsSipVisible="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mIsSipVisible:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mLastScreenOnTime="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1284
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mBroadcastWakeLock="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1285
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mStayOnWhilePluggedInScreenDimLock="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1286
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mStayOnWhilePluggedInPartialLock="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mPreventScreenOnPartialLock="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mProximityPartialLock="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1289
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mProximityWakeLockCount="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mProximitySensorEnabled="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1291
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mProximitySensorActive="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1292
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mProximityPendingValue="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1293
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mLastProximityEventTime="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1294
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mLightSensorEnabled="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mLightSensorValue="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " mLightSensorPendingValue="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1297
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mLightSensorPendingDecrease="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " mLightSensorPendingIncrease="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1299
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mLightSensorScreenBrightness="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " mLightSensorButtonBrightness="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " mLightSensorKeyboardBrightness="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1302
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mLightSensorScreenBrightnessUpperLimit="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1303
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mLightSensorScreenBrightnessLowerLimit="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1304
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mUseSoftwareAutoBrightness="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mAutoBrightessEnabled="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1306
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mMaxBrightness="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    move-object/from16 v18, v0

    const-string v20, "  mScreenBrightness: "

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PowerManagerService$BrightnessState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v5

    .line 1310
    .local v5, N:I
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1311
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mLocks.size="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ":"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1312
    const/4 v11, 0x0

    .local v11, i:I
    :goto_908
    if-ge v11, v5, :cond_9e6

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1314
    .local v17, wl:Lcom/android/server/PowerManagerService$WakeLock;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x3f

    invoke-static/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;

    move-result-object v16

    .line 1315
    .local v16, type:Ljava/lang/String;
    const-string v6, ""

    .line 1316
    .local v6, acquireCausesWakeup:Ljava/lang/String;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    move/from16 v18, v0

    const/high16 v20, 0x1000

    and-int v18, v18, v20

    if-eqz v18, :cond_934

    .line 1317
    const-string v6, "ACQUIRE_CAUSES_WAKEUP "

    .line 1319
    :cond_934
    const-string v7, ""

    .line 1320
    .local v7, activated:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_940

    .line 1321
    const-string v7, " activated"

    .line 1323
    :cond_940
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " \'"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "\'"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " (minState="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ", uid="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ", pid="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ")"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1312
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_908

    .line 1328
    .end local v6           #acquireCausesWakeup:Ljava/lang/String;
    .end local v7           #activated:Ljava/lang/String;
    .end local v16           #type:Ljava/lang/String;
    .end local v17           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_9e6
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1329
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mPokeLocks.size="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ":"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_a2d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_aac

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1331
    .local v15, p:Lcom/android/server/PowerManagerService$PokeLock;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    poke lock \'"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v15, Lcom/android/server/PowerManagerService$PokeLock;->tag:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "\':"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v15, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_aa3

    const-string v18, " POKE_LOCK_IGNORE_TOUCH_EVENTS"

    :goto_a68
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v15, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_aa6

    const-string v18, " POKE_LOCK_SHORT_TIMEOUT"

    :goto_a7a
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v15, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x4

    if-eqz v18, :cond_aa9

    const-string v18, " POKE_LOCK_MEDIUM_TIMEOUT"

    :goto_a8c
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a2d

    .line 1362
    .end local v5           #N:I
    .end local v11           #i:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v15           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :catchall_aa0
    move-exception v18

    monitor-exit v19
    :try_end_aa2
    .catchall {:try_start_46 .. :try_end_aa2} :catchall_aa0

    throw v18

    .line 1331
    .restart local v5       #N:I
    .restart local v11       #i:I
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v15       #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_aa3
    :try_start_aa3
    const-string v18, ""

    goto :goto_a68

    :cond_aa6
    const-string v18, ""

    goto :goto_a7a

    :cond_aa9
    const-string v18, ""

    goto :goto_a8c

    .line 1340
    .end local v15           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_aac
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PowerManagerService$DVFSLockList;->size()I

    move-result v4

    .line 1342
    .local v4, M:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mDVFSLocks.size="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ":"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1343
    const/4 v11, 0x0

    :goto_ae4
    if-ge v11, v4, :cond_b89

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PowerManagerService$DVFSLock;

    .line 1345
    .local v3, DVFSWl:Lcom/android/server/PowerManagerService$DVFSLock;
    iget v0, v3, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v16

    .line 1346
    .restart local v16       #type:Ljava/lang/String;
    const-string v8, ""

    .line 1347
    .local v8, currentDVFSLock:Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    iget-wide v0, v3, Lcom/android/server/PowerManagerService$DVFSLock;->acqTime:J

    move-wide/from16 v22, v0

    sub-long v9, v20, v22

    .line 1349
    .local v9, elapsedTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-ne v3, v0, :cond_b7c

    .line 1350
    const-string v8, " <--- mCurrentDVFSMinLock"

    .line 1356
    :cond_b14
    :goto_b14
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  type : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "  freq : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v3, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "  elapsed time : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "  tag : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v3, Lcom/android/server/PowerManagerService$DVFSLock;->tag:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1343
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_ae4

    .line 1352
    :cond_b7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-ne v3, v0, :cond_b14

    .line 1353
    const-string v8, " <--- mCurrentDVFSMaxLock"

    goto :goto_b14

    .line 1360
    .end local v3           #DVFSWl:Lcom/android/server/PowerManagerService$DVFSLock;
    .end local v8           #currentDVFSLock:Ljava/lang/String;
    .end local v9           #elapsedTime:J
    .end local v16           #type:Ljava/lang/String;
    :cond_b89
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mPersistentDVFSLocksInfo=0x"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1362
    monitor-exit v19
    :try_end_bb9
    .catchall {:try_start_aa3 .. :try_end_bb9} :catchall_aa0

    goto/16 :goto_3a
.end method

.method public enableUserActivity(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    .line 3102
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUserActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3105
    :try_start_1b
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 3106
    if-nez p1, :cond_27

    .line 3108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 3110
    :cond_27
    monitor-exit v1

    .line 3111
    return-void

    .line 3110
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_29

    throw v0
.end method

.method enforceWakeSourcePermission(II)V
    .registers 6
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 837
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 842
    :goto_6
    return-void

    .line 840
    :cond_7
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_6
.end method

.method public getPlugType()I
    .registers 2

    .prologue
    .line 2640
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->getPlugType()I

    move-result v0

    return v0
.end method

.method getPolicyLocked()Landroid/view/WindowManagerPolicy;
    .registers 2

    .prologue
    .line 3277
    :goto_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    if-nez v0, :cond_10

    .line 3279
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_0

    .line 3280
    :catch_e
    move-exception v0

    goto :goto_0

    .line 3284
    :cond_10
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    return-object v0
.end method

.method public getSupportedFrequency()[I
    .registers 2

    .prologue
    .line 3878
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    return-object v0
.end method

.method public getSupportedWakeLockFlags()I
    .registers 3

    .prologue
    .line 3348
    const/16 v0, 0x1f

    .line 3352
    .local v0, result:I
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_8

    .line 3353
    or-int/lit8 v0, v0, 0x20

    .line 3356
    :cond_8
    return v0
.end method

.method public goToSleep(J)V
    .registers 4
    .parameter "time"

    .prologue
    .line 2949
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/PowerManagerService;->goToSleepWithReason(JI)V

    .line 2950
    return-void
.end method

.method public goToSleepWithReason(JI)V
    .registers 7
    .parameter "time"
    .parameter "reason"

    .prologue
    .line 2958
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToSleepWithReason : time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2960
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2961
    :try_start_2d
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->goToSleepLocked(JI)V

    .line 2962
    monitor-exit v1

    .line 2963
    return-void

    .line 2962
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_32

    throw v0
.end method

.method init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V
    .registers 8
    .parameter "context"
    .parameter "lights"
    .parameter "activity"
    .parameter "battery"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 599
    iput-object p2, p0, Lcom/android/server/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    .line 600
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    .line 601
    iput-object p3, p0, Lcom/android/server/PowerManagerService;->mActivityService:Landroid/app/IActivityManager;

    .line 602
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 603
    iput-object p4, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    .line 605
    invoke-virtual {p2, v2}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    .line 606
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    .line 607
    invoke-virtual {p2, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    .line 608
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    .line 610
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->nativeInit()V

    .line 611
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 612
    :try_start_30
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateNativePowerStateLocked()V

    .line 613
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_53

    .line 615
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 616
    new-instance v0, Lcom/android/server/PowerManagerService$1;

    const-string v1, "PowerManagerService.mScreenOffThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/PowerManagerService$1;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    .line 626
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 628
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 629
    :goto_47
    :try_start_47
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_76

    if-nez v0, :cond_56

    .line 631
    :try_start_4b
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_76
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_50} :catch_51

    goto :goto_47

    .line 632
    :catch_51
    move-exception v0

    goto :goto_47

    .line 613
    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0

    .line 636
    :cond_56
    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_76

    .line 638
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 639
    new-instance v0, Lcom/android/server/PowerManagerService$2;

    const-string v1, "PowerManagerService"

    invoke-direct {v0, p0, v1}, Lcom/android/server/PowerManagerService$2;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 646
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 648
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 649
    :goto_6a
    :try_start_6a
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z
    :try_end_6c
    .catchall {:try_start_6a .. :try_end_6c} :catchall_8b

    if-nez v0, :cond_79

    .line 651
    :try_start_6e
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_8b
    .catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_73} :catch_74

    goto :goto_6a

    .line 652
    :catch_74
    move-exception v0

    goto :goto_6a

    .line 636
    :catchall_76
    move-exception v0

    :try_start_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v0

    .line 656
    :cond_79
    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_8b

    .line 658
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->nativeInit()V

    .line 659
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 660
    :try_start_80
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateNativePowerStateLocked()V

    .line 663
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    .line 665
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_80 .. :try_end_8a} :catchall_8e

    .line 666
    return-void

    .line 656
    :catchall_8b
    move-exception v0

    :try_start_8c
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v0

    .line 665
    :catchall_8e
    move-exception v0

    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v0
.end method

.method initInThread()V
    .registers 14

    .prologue
    const/high16 v4, 0x4000

    const/4 v12, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 669
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 671
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "sleep_broadcast"

    invoke-direct {v1, p0, v10, v3, v10}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 673
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "StayOnWhilePluggedIn Screen Dim"

    invoke-direct {v1, p0, v12, v3, v5}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 675
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "StayOnWhilePluggedIn Partial"

    invoke-direct {v1, p0, v10, v3, v5}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 677
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "PreventScreenOn Partial"

    invoke-direct {v1, p0, v10, v3, v5}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 679
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "Proximity Partial"

    invoke-direct {v1, p0, v10, v3, v5}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 682
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    .line 683
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 684
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    .line 685
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 687
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 689
    .local v7, resources:Landroid/content/res/Resources;
    const v1, 0x1110012

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    .line 692
    const v1, 0x1110011

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUnplugTurnsOnScreen:Z

    .line 695
    const v1, 0x10e001e

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 699
    const v1, 0x111000f

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    .line 701
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_cc

    .line 702
    const v1, 0x1070026

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    .line 704
    const v1, 0x1070028

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    .line 706
    const v1, 0x107002b

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    .line 708
    const v1, 0x107002c

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardBacklightValues:[I

    .line 710
    const v1, 0x10e0020

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I

    .line 712
    const v1, 0x1070027

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessHysteresisLevels:[I

    .line 715
    const v1, 0x1070029

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels_PowerSavingMode:[I

    .line 717
    const v1, 0x107002a

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues_PowerSavingMode:[I

    .line 722
    :cond_cc
    const-string v3, "/sys/class/backlight/panel/auto_brightness"

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v1, :cond_194

    move v1, v10

    :goto_d3
    invoke-static {v3, v1}, Lcom/android/server/PowerManagerService;->fileWriteInt(Ljava/lang/String;I)V

    .line 724
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 725
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?)"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const-string v11, "stay_on_while_plugged_in"

    aput-object v11, v4, v5

    const-string v5, "screen_off_timeout"

    aput-object v5, v4, v10

    const/4 v5, 0x2

    const-string v11, "dim_screen"

    aput-object v11, v4, v5

    const/4 v5, 0x3

    const-string v11, "screen_brightness_mode"

    aput-object v11, v4, v5

    const/4 v5, 0x4

    const-string v11, "window_animation_scale"

    aput-object v11, v4, v5

    const/4 v5, 0x5

    const-string v11, "transition_animation_scale"

    aput-object v11, v4, v5

    const-string v5, "button_key_light"

    aput-object v5, v4, v12

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 736
    .local v8, settingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v8, v3, v10, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 737
    new-instance v9, Lcom/android/server/PowerManagerService$SettingsObserver;

    invoke-direct {v9, p0, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    .line 738
    .local v9, settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v9}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 741
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v9, v1, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 744
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 745
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$BatteryReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 747
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 748
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 749
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$BootCompletedReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 750
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 751
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 752
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$DockReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 755
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSipIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "ResponseAxT9Info"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 757
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->initSupportedFrequency()V

    .line 760
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lcom/android/server/PowerManagerService$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/PowerManagerService$3;-><init>(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v10, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 767
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateSettingsValues()V

    .line 769
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 770
    const/4 v1, 0x1

    :try_start_18b
    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 771
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 772
    monitor-exit v2

    .line 773
    return-void

    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #filter:Landroid/content/IntentFilter;
    .end local v8           #settingsCursor:Landroid/database/Cursor;
    .end local v9           #settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    :cond_194
    move v1, v5

    .line 722
    goto/16 :goto_d3

    .line 772
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v6       #filter:Landroid/content/IntentFilter;
    .restart local v8       #settingsCursor:Landroid/database/Cursor;
    .restart local v9       #settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    :catchall_197
    move-exception v1

    monitor-exit v2
    :try_end_199
    .catchall {:try_start_18b .. :try_end_199} :catchall_197

    throw v1
.end method

.method isScreenBright()Z
    .registers 4

    .prologue
    .line 2578
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2579
    :try_start_3
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    const/4 v0, 0x1

    :goto_b
    monitor-exit v1

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 2580
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public isScreenOn()Z
    .registers 3

    .prologue
    .line 2572
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2573
    :try_start_3
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit v1

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 2574
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method logPointerDownEvent()V
    .registers 5

    .prologue
    .line 1710
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 1711
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 1712
    iget v0, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    .line 1715
    :cond_14
    return-void
.end method

.method logPointerUpEvent()V
    .registers 7

    .prologue
    .line 1702
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    .line 1703
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 1705
    return-void
.end method

.method public monitor()V
    .registers 3

    .prologue
    .line 3344
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    :try_start_3
    monitor-exit v1

    .line 3345
    return-void

    .line 3344
    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V
    .registers 10
    .parameter "wl"
    .parameter "ws"

    .prologue
    .line 864
    iget v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    if-ltz v2, :cond_18

    .line 865
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 867
    .local v0, origId:J
    if-eqz p2, :cond_19

    .line 868
    :try_start_a
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, p2, v3, v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_2c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_27

    .line 876
    :goto_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 879
    .end local v0           #origId:J
    :cond_18
    :goto_18
    return-void

    .line 871
    .restart local v0       #origId:J
    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    iget v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;I)V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_2c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_26} :catch_27

    goto :goto_15

    .line 873
    :catch_27
    move-exception v2

    .line 876
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_18

    :catchall_2c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V
    .registers 10
    .parameter "wl"
    .parameter "ws"

    .prologue
    .line 882
    iget v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    if-ltz v2, :cond_18

    .line 883
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 885
    .local v0, origId:J
    if-eqz p2, :cond_19

    .line 886
    :try_start_a
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, p2, v3, v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_2c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_27

    .line 894
    :goto_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 897
    .end local v0           #origId:J
    :cond_18
    :goto_18
    return-void

    .line 889
    .restart local v0       #origId:J
    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    iget v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;I)V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_2c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_26} :catch_27

    goto :goto_15

    .line 891
    :catch_27
    move-exception v2

    .line 894
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_18

    :catchall_2c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public preventScreenOn(Z)V
    .registers 8
    .parameter "prevent"

    .prologue
    .line 1747
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 1750
    :try_start_b
    const-string v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preventScreenOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    if-eqz p1, :cond_3f

    .line 1755
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 1760
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1761
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1766
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    .line 1793
    :goto_3d
    monitor-exit v2

    .line 1794
    return-void

    .line 1769
    :cond_3f
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    .line 1773
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1778
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-nez v1, :cond_72

    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_72

    .line 1783
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v0

    .line 1784
    .local v0, err:I
    if-eqz v0, :cond_72

    .line 1785
    const-string v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preventScreenOn: error from setScreenStateLocked(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    .end local v0           #err:I
    :cond_72
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    goto :goto_3d

    .line 1793
    :catchall_78
    move-exception v1

    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_b .. :try_end_7a} :catchall_78

    throw v1
.end method

.method public reboot(Ljava/lang/String;)V
    .registers 7
    .parameter "reason"

    .prologue
    .line 2971
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2973
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_12

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2974
    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Too early to call reboot()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2977
    :cond_1a
    move-object v0, p1

    .line 2978
    .local v0, finalReason:Ljava/lang/String;
    new-instance v1, Lcom/android/server/PowerManagerService$12;

    invoke-direct {v1, p0, v0}, Lcom/android/server/PowerManagerService$12;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    .line 2990
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2993
    monitor-enter v1

    .line 2996
    :goto_26
    :try_start_26
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2c
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_26

    .line 2997
    :catch_2a
    move-exception v2

    goto :goto_26

    .line 3000
    :catchall_2c
    move-exception v2

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method public rebootWithIntent()V
    .registers 6

    .prologue
    .line 4289
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4290
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4291
    .local v2, value:Landroid/os/Bundle;
    const-string v3, "com.android.service.Watchdog.REBOOT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4292
    const-string v3, "PowerManagerService"

    const-string v4, "REBOOT_ACTION!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4293
    const-string v3, "nowait"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4294
    const-string v3, "window"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4295
    const-string v3, "interval"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4296
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4297
    const-string v3, "android.intent.action.REBOOT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4298
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4299
    const-string v3, "PowerManagerService"

    const-string v4, "ACTION_REBOOT!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 4303
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #value:Landroid/os/Bundle;
    :goto_3c
    return-void

    .line 4300
    :catch_3d
    move-exception v0

    .line 4301
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PowerManagerService"

    const-string v4, "Power Cycling"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c
.end method

.method public releaseDVFSLock(Landroid/os/IBinder;)V
    .registers 8
    .parameter "lock"

    .prologue
    .line 4106
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4108
    .local v2, uid:I
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4112
    .local v0, ident:J
    :try_start_10
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    monitor-enter v4
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1e

    .line 4113
    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;)V

    .line 4114
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1b

    .line 4116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4118
    return-void

    .line 4114
    :catchall_1b
    move-exception v3

    :try_start_1c
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v3
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    .line 4116
    :catchall_1e
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public releasePersistentDVFSLock(I)V
    .registers 10
    .parameter "callingId"

    .prologue
    .line 4190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4192
    .local v3, uid:I
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DEVICE_POWER"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4196
    .local v0, ident:J
    :try_start_10
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    monitor-enter v5
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_84

    .line 4197
    :try_start_13
    iget v4, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_89

    .line 4198
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 4199
    .local v2, lock:Landroid/os/IBinder;
    if-eqz v2, :cond_61

    .line 4200
    const-string v4, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releasePersistentDVFSLock : prev mPersistentDVFSLocksInfo : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  callingId : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4201
    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;)V

    .line 4202
    iget v4, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    xor-int/lit8 v6, p1, -0x1

    and-int/2addr v4, v6

    iput v4, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    .line 4212
    .end local v2           #lock:Landroid/os/IBinder;
    :goto_5c
    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_13 .. :try_end_5d} :catchall_81

    .line 4214
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4216
    return-void

    .line 4205
    .restart local v2       #lock:Landroid/os/IBinder;
    :cond_61
    :try_start_61
    const-string v4, "PowerManagerService"

    const-string v6, "releasePersistentDVFSLock : there is no persistentDVFSLock to release"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4206
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WakeLock under-locked "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4212
    .end local v2           #lock:Landroid/os/IBinder;
    :catchall_81
    move-exception v4

    monitor-exit v5
    :try_end_83
    .catchall {:try_start_61 .. :try_end_83} :catchall_81

    :try_start_83
    throw v4
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_84

    .line 4214
    :catchall_84
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 4210
    :cond_89
    :try_start_89
    const-string v4, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releasePersistentDVFSLock : this callingId already released PersistentDVFSLock "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_89 .. :try_end_a1} :catchall_81

    goto :goto_5c
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .registers 7
    .parameter "lock"
    .parameter "flags"

    .prologue
    .line 1060
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1061
    .local v0, uid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 1062
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :cond_12
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 1066
    const/4 v1, 0x0

    :try_start_16
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;IZ)V

    .line 1067
    monitor-exit v2

    .line 1068
    return-void

    .line 1067
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public setAttentionLight(ZI)V
    .registers 7
    .parameter "on"
    .parameter "color"

    .prologue
    const/4 v1, 0x0

    .line 3411
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3412
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    const/4 v3, 0x2

    if-eqz p1, :cond_13

    const/4 v0, 0x3

    :goto_f
    invoke-virtual {v2, p2, v3, v0, v1}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 3413
    return-void

    :cond_13
    move v0, v1

    .line 3412
    goto :goto_f
.end method

.method public setAutoBrightnessLimit(II)V
    .registers 7
    .parameter "lowerLimit"
    .parameter "upperLimit"

    .prologue
    .line 1838
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoBrightnessLimit : lowerLimit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   upperLimit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 1842
    :try_start_2d
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    if-ne v1, p1, :cond_35

    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    if-eq v1, p2, :cond_43

    .line 1843
    :cond_35
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    .line 1844
    iput p2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    .line 1846
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v0, v1

    .line 1847
    .local v0, value:I
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 1848
    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V

    .line 1850
    .end local v0           #value:I
    :cond_43
    monitor-exit v2

    .line 1851
    return-void

    .line 1850
    :catchall_45
    move-exception v1

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_2d .. :try_end_47} :catchall_45

    throw v1
.end method

.method public setBacklightBrightness(I)V
    .registers 10
    .parameter "brightness"

    .prologue
    .line 3360
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DEVICE_POWER"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3362
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBacklightBrightness "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 3365
    const-string v4, "PowerManagerService"

    const-string v5, "but, isScreenTurningOffLocked : TRUE , so should be ignored"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    :goto_2d
    return-void

    .line 3370
    :cond_2e
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v5

    .line 3371
    :try_start_31
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3374
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mSystemPowerSaveModeEnabled:Z

    if-eqz v4, :cond_5e

    .line 3375
    sget v4, Lcom/android/server/PowerManagerService;->POWERSAVEMODE_BRIGHTNESS_OFFSET:I

    sub-int v3, p1, v4

    .line 3376
    .local v3, powerSaveModeBrightness:I
    if-lez p1, :cond_5e

    .line 3377
    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3378
    const-string v4, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setBacklightBrightness : mSystemPowerSaveModeEnabled:: brightness:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    .end local v3           #powerSaveModeBrightness:I
    :cond_5e
    iget v4, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    if-le p1, v4, :cond_82

    .line 3383
    iget p1, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 3384
    const-string v4, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setBacklightBrightness : brightness is changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because of temperature"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    :cond_82
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3393
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8a
    .catchall {:try_start_31 .. :try_end_8a} :catchall_a2

    move-result-wide v1

    .line 3395
    .local v1, identity:J
    :try_start_8b
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_b1
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_90} :catch_a5

    .line 3399
    :try_start_90
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3403
    :goto_93
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6
    :try_end_96
    .catchall {:try_start_90 .. :try_end_96} :catchall_a2

    .line 3404
    :try_start_96
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iput p1, v4, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 3405
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$BrightnessState;->jumpToTargetLocked()V

    .line 3406
    monitor-exit v6
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_b6

    .line 3407
    :try_start_a0
    monitor-exit v5

    goto :goto_2d

    .end local v1           #identity:J
    :catchall_a2
    move-exception v4

    monitor-exit v5
    :try_end_a4
    .catchall {:try_start_a0 .. :try_end_a4} :catchall_a2

    throw v4

    .line 3396
    .restart local v1       #identity:J
    :catch_a5
    move-exception v0

    .line 3397
    .local v0, e:Landroid/os/RemoteException;
    :try_start_a6
    const-string v4, "PowerManagerService"

    const-string v6, "RemoteException calling noteScreenBrightness on BatteryStatsService"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ad
    .catchall {:try_start_a6 .. :try_end_ad} :catchall_b1

    .line 3399
    :try_start_ad
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_93

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_b1
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_b6
    .catchall {:try_start_ad .. :try_end_b6} :catchall_a2

    .line 3406
    :catchall_b6
    move-exception v4

    :try_start_b7
    monitor-exit v6
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    :try_start_b8
    throw v4
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_a2
.end method

.method public setButtonBrightnessOverride(I)V
    .registers 6
    .parameter "brightness"

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 1816
    :try_start_b
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-eq v0, p1, :cond_38

    .line 1817
    iput p1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 1818
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setButtonBrightnessOverride : mButtonBrightnessOverride : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1820
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/16 v2, 0xc

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 1823
    :cond_38
    monitor-exit v1

    .line 1824
    return-void

    .line 1823
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public setKeyboardVisibility(Z)V
    .registers 10
    .parameter "visible"

    .prologue
    .line 3071
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v7

    .line 3075
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eq v0, p1, :cond_2f

    .line 3076
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    .line 3080
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2f

    .line 3081
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v0, :cond_24

    .line 3083
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_24

    .line 3084
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v6, v0

    .line 3085
    .local v6, value:I
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3086
    invoke-direct {p0, v6}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V

    .line 3089
    .end local v6           #value:I
    :cond_24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 3092
    :cond_2f
    monitor-exit v7

    .line 3093
    return-void

    .line 3092
    :catchall_31
    move-exception v0

    monitor-exit v7
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public setMasterBrightnessLimit(II)V
    .registers 7
    .parameter "reserved"
    .parameter "upperLimit"

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMasterBrightnessLimit : reserved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   upperLimit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 1831
    :try_start_2d
    iput p2, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 1832
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setMasterBrightnessLimit : mMaxBrightness : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 1834
    monitor-exit v1

    .line 1835
    return-void

    .line 1834
    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_2d .. :try_end_53} :catchall_51

    throw v0
.end method

.method public setMaximumScreenOffTimeount(I)V
    .registers 5
    .parameter "timeMs"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 501
    :try_start_b
    iput p1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 503
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    .line 504
    monitor-exit v1

    .line 505
    return-void

    .line 504
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw v0
.end method

.method public setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 23
    .parameter "pokey"
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 1146
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v16, "android.permission.DEVICE_POWER"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v15, "PowerManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setPokeLock pokey="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " tag="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    if-nez p2, :cond_5a

    .line 1149
    const-string v15, "PowerManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setPokeLock got null token for tag=\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :goto_59
    return-void

    .line 1153
    :cond_5a
    and-int/lit8 v15, p1, 0x16

    const/16 v16, 0x16

    move/from16 v0, v16

    if-ne v15, v0, :cond_6a

    .line 1154
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "setPokeLock can\'t have both POKE_LOCK_SHORT_TIMEOUT and POKE_LOCK_MEDIUM_TIMEOUT"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1158
    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1159
    if-eqz p1, :cond_de

    .line 1160
    :try_start_73
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1161
    .local v13, p:Lcom/android/server/PowerManagerService$PokeLock;
    const/4 v11, 0x0

    .line 1162
    .local v11, oldPokey:I
    if-eqz v13, :cond_c4

    .line 1163
    iget v11, v13, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    .line 1164
    move/from16 v0, p1

    iput v0, v13, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    .line 1169
    :goto_88
    and-int/lit8 v12, v11, 0x16

    .line 1170
    .local v12, oldTimeout:I
    and-int/lit8 v8, p1, 0x16

    .line 1171
    .local v8, newTimeout:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_99

    if-eq v12, v8, :cond_99

    .line 1172
    const/4 v15, 0x1

    iput-boolean v15, v13, Lcom/android/server/PowerManagerService$PokeLock;->awakeOnSet:Z

    .line 1181
    .end local v8           #newTimeout:I
    .end local v11           #oldPokey:I
    .end local v12           #oldTimeout:I
    .end local v13           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_99
    :goto_99
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 1182
    .restart local v11       #oldPokey:I
    const/4 v5, 0x0

    .line 1183
    .local v5, cumulative:I
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 1184
    .local v9, oldAwakeOnSet:Z
    const/4 v4, 0x0

    .line 1185
    .local v4, awakeOnSet:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_af
    :goto_af
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1186
    .restart local v13       #p:Lcom/android/server/PowerManagerService$PokeLock;
    iget v15, v13, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    or-int/2addr v5, v15

    .line 1187
    iget-boolean v15, v13, Lcom/android/server/PowerManagerService$PokeLock;->awakeOnSet:Z

    if-eqz v15, :cond_af

    .line 1188
    const/4 v4, 0x1

    goto :goto_af

    .line 1166
    .end local v4           #awakeOnSet:Z
    .end local v5           #cumulative:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #oldAwakeOnSet:Z
    :cond_c4
    new-instance v13, Lcom/android/server/PowerManagerService$PokeLock;

    .end local v13           #p:Lcom/android/server/PowerManagerService$PokeLock;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/server/PowerManagerService$PokeLock;-><init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 1167
    .restart local v13       #p:Lcom/android/server/PowerManagerService$PokeLock;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_88

    .line 1203
    .end local v11           #oldPokey:I
    .end local v13           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :catchall_db
    move-exception v15

    monitor-exit v16
    :try_end_dd
    .catchall {:try_start_73 .. :try_end_dd} :catchall_db

    throw v15

    .line 1175
    :cond_de
    :try_start_de
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1176
    .local v14, rLock:Lcom/android/server/PowerManagerService$PokeLock;
    if-eqz v14, :cond_99

    .line 1177
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_99

    .line 1191
    .end local v14           #rLock:Lcom/android/server/PowerManagerService$PokeLock;
    .restart local v4       #awakeOnSet:Z
    .restart local v5       #cumulative:I
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #oldAwakeOnSet:Z
    .restart local v11       #oldPokey:I
    :cond_f3
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 1192
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 1194
    and-int/lit8 v10, v11, 0x16

    .line 1195
    .local v10, oldCumulativeTimeout:I
    and-int/lit8 v7, p1, 0x16

    .line 1197
    .local v7, newCumulativeTimeout:I
    if-eq v10, v7, :cond_115

    .line 1198
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    .line 1201
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    iget v15, v15, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 1203
    :cond_115
    monitor-exit v16
    :try_end_116
    .catchall {:try_start_de .. :try_end_116} :catchall_db

    goto/16 :goto_59
.end method

.method public setPolicy(Landroid/view/WindowManagerPolicy;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 3270
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3271
    :try_start_3
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 3272
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3273
    monitor-exit v1

    .line 3274
    return-void

    .line 3273
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public setScreenBrightnessOverride(I)V
    .registers 6
    .parameter "brightness"

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 1801
    :try_start_b
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-eq v0, p1, :cond_37

    .line 1802
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 1803
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenBrightnessOverride : mScreenBrightnessOverride : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1805
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 1808
    :cond_37
    monitor-exit v1

    .line 1809
    return-void

    .line 1808
    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public setStayOnSetting(I)V
    .registers 5
    .parameter "val"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 495
    return-void
.end method

.method public setSystemPowerSaveMode(Z)V
    .registers 5
    .parameter "isEnabled"

    .prologue
    .line 3814
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemPowerSaveMode is called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemPowerSaveMode is called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3821
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mSystemPowerSaveModeEnabled:Z

    .line 3822
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 3824
    return-void
.end method

.method public systemFotaReboot(Ljava/lang/String;)V
    .registers 5
    .parameter "reason"

    .prologue
    .line 4278
    const-string v1, "PowerManagerService"

    const-string v2, "Fota System Reboot !!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    :try_start_7
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b

    .line 4284
    :goto_a
    return-void

    .line 4281
    :catch_b
    move-exception v0

    .line 4282
    .local v0, e:Ljava/io/IOException;
    const-string v1, "PowerManagerService"

    const-string v2, "Fota Reboot failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method systemReady()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 3288
    new-instance v3, Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/hardware/SensorManager;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 3289
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 3291
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_2d

    .line 3292
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mLightSensor:Landroid/hardware/Sensor;

    .line 3296
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mTiltSensor:Landroid/hardware/Sensor;

    .line 3303
    :cond_2d
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_64

    .line 3305
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    .line 3311
    :goto_35
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v3

    .line 3312
    :try_start_38
    const-string v4, "PowerManagerService"

    const-string v5, "system ready!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    .line 3315
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v4, :cond_6a

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v4, :cond_6a

    :goto_4a
    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 3317
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_50
    .catchall {:try_start_38 .. :try_end_50} :catchall_71

    move-result-wide v0

    .line 3319
    .local v0, identity:J
    :try_start_51
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    .line 3320
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_5f
    .catchall {:try_start_51 .. :try_end_5f} :catchall_74
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_5f} :catch_6c

    .line 3324
    :try_start_5f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3326
    :goto_62
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_71

    .line 3327
    return-void

    .line 3308
    .end local v0           #identity:J
    :cond_64
    const/16 v3, 0xf

    invoke-direct {p0, v3}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto :goto_35

    .line 3315
    :cond_6a
    const/4 v2, 0x0

    goto :goto_4a

    .line 3321
    .restart local v0       #identity:J
    :catch_6c
    move-exception v2

    .line 3324
    :try_start_6d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_62

    .line 3326
    .end local v0           #identity:J
    :catchall_71
    move-exception v2

    monitor-exit v3
    :try_end_73
    .catchall {:try_start_6d .. :try_end_73} :catchall_71

    throw v2

    .line 3324
    .restart local v0       #identity:J
    :catchall_74
    move-exception v2

    :try_start_75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_71
.end method

.method public systemReboot()V
    .registers 4

    .prologue
    .line 4257
    const-string v1, "PowerManagerService"

    const-string v2, " System Reboot"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4260
    const/4 v1, 0x0

    :try_start_8
    invoke-static {v1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    .line 4264
    :goto_b
    return-void

    .line 4261
    :catch_c
    move-exception v0

    .line 4262
    .local v0, e:Ljava/io/IOException;
    const-string v1, "PowerManagerService"

    const-string v2, "Reboot failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public systemReboot_Fota()V
    .registers 4

    .prologue
    .line 4268
    const-string v1, "PowerManagerService"

    const-string v2, "System reboot FOTA!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4270
    :try_start_7
    const-string v1, "fota"

    invoke-static {v1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_d

    .line 4274
    :goto_c
    return-void

    .line 4271
    :catch_d
    move-exception v0

    .line 4272
    .local v0, e:Ljava/io/IOException;
    const-string v1, "PowerManagerService"

    const-string v2, "Reboot failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public timeSinceScreenOn()J
    .registers 6

    .prologue
    .line 3062
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 3063
    :try_start_3
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    .line 3064
    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 3066
    :goto_c
    return-wide v0

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    sub-long/2addr v0, v3

    monitor-exit v2

    goto :goto_c

    .line 3067
    :catchall_16
    move-exception v0

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .registers 11
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 1038
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1039
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1040
    .local v2, pid:I
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-nez v5, :cond_11

    .line 1041
    const/4 p2, 0x0

    .line 1043
    :cond_11
    if-eqz p2, :cond_16

    .line 1044
    invoke-virtual {p0, v3, v2}, Lcom/android/server/PowerManagerService;->enforceWakeSourcePermission(II)V

    .line 1046
    :cond_16
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 1047
    :try_start_19
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, p1}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .line 1048
    .local v0, index:I
    if-gez v0, :cond_2c

    .line 1049
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "Wake lock not active"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1056
    .end local v0           #index:I
    :catchall_29
    move-exception v5

    monitor-exit v6
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_29

    throw v5

    .line 1051
    .restart local v0       #index:I
    :cond_2c
    :try_start_2c
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, v0}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1052
    .local v4, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget-object v1, v4, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1053
    .local v1, oldsource:Landroid/os/WorkSource;
    if-eqz p2, :cond_47

    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_3d
    iput-object v5, v4, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1054
    invoke-virtual {p0, v4, v1}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1055
    invoke-virtual {p0, v4, p2}, Lcom/android/server/PowerManagerService;->noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1056
    monitor-exit v6
    :try_end_46
    .catchall {:try_start_2c .. :try_end_46} :catchall_29

    .line 1057
    return-void

    .line 1053
    :cond_47
    const/4 v5, 0x0

    goto :goto_3d
.end method

.method public userActivity(JZ)V
    .registers 12
    .parameter "time"
    .parameter "noChangeLights"

    .prologue
    const/4 v6, 0x0

    .line 2619
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3c

    .line 2621
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->shouldLog(J)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2622
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller does not have DEVICE_POWER permission.  pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    :cond_3b
    :goto_3b
    return-void

    .line 2628
    :cond_3c
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    goto :goto_3b
.end method

.method public userActivity(JZI)V
    .registers 13
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "eventType"

    .prologue
    .line 2632
    const-wide/16 v3, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 2633
    return-void
.end method

.method public userActivity(JZIZ)V
    .registers 14
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "eventType"
    .parameter "force"

    .prologue
    .line 2636
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 2637
    return-void
.end method

.method public userActivityWithForce(JZZ)V
    .registers 13
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "force"

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    const-wide/16 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 2616
    return-void
.end method
