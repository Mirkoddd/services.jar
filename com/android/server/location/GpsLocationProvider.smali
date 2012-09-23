.class public Lcom/android/server/location/GpsLocationProvider;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider$6;,
        Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;,
        Lcom/android/server/location/GpsLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GpsLocationProvider$SensorAiding;,
        Lcom/android/server/location/GpsLocationProvider$Listener;,
        Lcom/android/server/location/GpsLocationProvider$Vendor;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0xa

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DEBUG:Z = true

.field private static final DOWNLOAD_XTRA_DATA:I = 0x7

.field private static final DOWNLOAD_XTRA_DATA_COMPLETED:I = 0x8

.field private static final ENABLE:I = 0x2

.field private static final ENABLE_TRACKING:I = 0x3

.field private static final EPHEMERIS_MASK:I = 0x0

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final INJECT_NTP_TIME_COMPLETED:I = 0x6

.field private static final INTENT_AGPS_GET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_GET_PROFILE"

.field private static final INTENT_AGPS_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_PROFILE"

.field private static final INTENT_AGPS_SET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_SET_PROFILE"

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MAX_SVS:I = 0x20

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final REMOVE_LISTENER:I = 0xb

.field private static final REQUEST_SINGLE_SHOT:I = 0xc

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider"

.field private static final UPDATE_LOCATION:I = 0x9

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VERBOSE:Z = false

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"


# instance fields
.field private mAGpsApn:Ljava/lang/String;

.field private mAGpsDataConnectionIpAddr:I

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private final mClientUids:Landroid/util/SparseIntArray;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDownloadXtraDataStarted:Z

.field private volatile mEnabled:Z

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private mGnssUsed:[I

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mInjectNtpTimeStarted:Z

.field private mIsNIstarted:Z

.field private mLastFixTime:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/GpsLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetworkAvailable:Z

.field private mNmeaBuffer:[B

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private mPendingListenerMessages:I

.field private mPendingMessageBits:I

.field private mPeriodicTimeInjection:Z

.field private mPositionMode:I

.field private mPositionModeFromCSC:Ljava/lang/String;

.field private mProperties:Ljava/util/Properties;

.field private mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

.field private mSingleShot:Z

.field private mSnrs:[F

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplAddress:Ljava/lang/String;

.field private mSuplPort:I

.field private mSuplServerFromCSC:I

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSuplSslMode:I

.field private mSuplSslType:I

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mTTFF:I

.field private final mThread:Ljava/lang/Thread;

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mXtraData:[B


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 3234
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->class_init_native()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .registers 15
    .parameter "context"
    .parameter "locationManager"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 482
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 199
    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 217
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimeStarted:Z

    .line 218
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataStarted:Z

    .line 221
    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraData:[B

    .line 227
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 230
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    .line 233
    const/16 v6, 0x3e8

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 236
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 248
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 250
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 256
    const-string v6, "STANDALONE"

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionModeFromCSC:Ljava/lang/String;

    .line 257
    const-string v6, "supl.google.com"

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplAddress:Ljava/lang/String;

    .line 258
    const/16 v6, 0x1c6c

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplPort:I

    .line 259
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplSslMode:I

    .line 260
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplSslType:I

    .line 261
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerFromCSC:I

    .line 273
    new-instance v6, Landroid/location/Location;

    const-string v7, "gps"

    invoke-direct {v6, v7}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    .line 274
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 275
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    .line 282
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 293
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mIsNIstarted:Z

    .line 315
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    .line 324
    new-instance v6, Lcom/android/server/location/GpsLocationProvider$1;

    invoke-direct {v6, p0}, Lcom/android/server/location/GpsLocationProvider$1;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 375
    new-instance v6, Lcom/android/server/location/GpsLocationProvider$2;

    invoke-direct {v6, p0}, Lcom/android/server/location/GpsLocationProvider$2;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 1702
    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    .line 2932
    new-instance v6, Lcom/android/server/location/GpsLocationProvider$5;

    invoke-direct {v6, p0}, Lcom/android/server/location/GpsLocationProvider$5;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 3224
    new-array v6, v8, [I

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    .line 3225
    new-array v6, v8, [F

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    .line 3226
    new-array v6, v8, [F

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    .line 3227
    new-array v6, v8, [F

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    .line 3228
    const/4 v6, 0x3

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    .line 3229
    new-array v6, v8, [I

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mGnssUsed:[I

    .line 3232
    const/16 v6, 0x78

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    .line 483
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    .line 484
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 485
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 486
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {v6, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 488
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 491
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 496
    .local v4, powerManager:Landroid/os/PowerManager;
    const-string v6, "GpsLocationProvider"

    invoke-virtual {v4, v10, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 498
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 500
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 501
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 502
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 504
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 505
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    const-string v6, "sms"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 507
    const-string v6, "localhost"

    const-string v7, "7275"

    invoke-virtual {v2, v6, v7}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 510
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 511
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    const-string v6, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    :try_start_115
    const-string v6, "application/vnd.omaloc-supl-init"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_11a
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_115 .. :try_end_11a} :catch_19e

    .line 517
    :goto_11a
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 519
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 522
    const-string v6, "batteryinfo"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 524
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    .line 526
    :try_start_13c
    new-instance v1, Ljava/io/File;

    const-string v6, "/etc/gps.conf"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v1, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 528
    .local v5, stream:Ljava/io/FileInputStream;
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-virtual {v6, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 529
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 531
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "SUPL_HOST"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 532
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "SUPL_PORT"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, portString:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_164} :catch_1c2

    if-eqz v6, :cond_16e

    if-eqz v3, :cond_16e

    .line 535
    :try_start_168
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    :try_end_16e
    .catch Ljava/lang/NumberFormatException; {:try_start_168 .. :try_end_16e} :catch_1a8
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_16e} :catch_1c2

    .line 541
    :cond_16e
    :goto_16e
    :try_start_16e
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "C2K_HOST"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 542
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "C2K_PORT"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 543
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_182} :catch_1c2

    if-eqz v6, :cond_18c

    if-eqz v3, :cond_18c

    .line 545
    :try_start_186
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I
    :try_end_18c
    .catch Ljava/lang/NumberFormatException; {:try_start_186 .. :try_end_18c} :catch_1cb
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_18c} :catch_1c2

    .line 555
    .end local v1           #file:Ljava/io/File;
    .end local v3           #portString:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :cond_18c
    :goto_18c
    new-instance v6, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;

    invoke-direct {v6, p0}, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    .line 556
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 559
    :goto_198
    :try_start_198
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_19d
    .catch Ljava/lang/InterruptedException; {:try_start_198 .. :try_end_19d} :catch_1e5

    .line 565
    return-void

    .line 514
    :catch_19e
    move-exception v0

    .line 515
    .local v0, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v6, "GpsLocationProvider"

    const-string v7, "Malformed SUPL init mime type"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11a

    .line 536
    .end local v0           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #portString:Ljava/lang/String;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_1a8
    move-exception v0

    .line 537
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_1a9
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to parse SUPL_PORT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c1
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1c1} :catch_1c2

    goto :goto_16e

    .line 550
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #portString:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :catch_1c2
    move-exception v0

    .line 551
    .local v0, e:Ljava/io/IOException;
    const-string v6, "GpsLocationProvider"

    const-string v7, "Could not open GPS configuration file /etc/gps.conf"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18c

    .line 546
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #portString:Ljava/lang/String;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_1cb
    move-exception v0

    .line 547
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_1cc
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to parse C2K_PORT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e4
    .catch Ljava/io/IOException; {:try_start_1cc .. :try_end_1e4} :catch_1c2

    goto :goto_18c

    .line 561
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #portString:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :catch_1e5
    move-exception v0

    .line 562
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_198
.end method

.method static synthetic access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/GpsLocationProvider;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/location/GpsLocationProvider;[B)[B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraData:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/location/GpsLocationProvider;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_initialize(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_finalize()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/location/GpsLocationProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/location/GpsLocationProvider;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/android/server/location/GpsLocationProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/location/GpsLocationProvider;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$SensorAiding;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/location/GpsLocationProvider;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/location/GpsLocationProvider;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/location/GpsLocationProvider;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/location/GpsLocationProvider;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/location/GpsLocationProvider;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/location/GpsLocationProvider;[D[F[IJII)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p7}, Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_deliver_gps_data([D[F[IJII)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/location/GpsLocationProvider;[D[F[I)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_request_gps_data([D[F[I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/location/GpsLocationProvider;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_deliver_rotation_data(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/location/GpsLocationProvider;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_support_inverse_portrait_mode(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_deliver_sv_status()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/location/GpsLocationProvider;[[F[[F[[F[J[J)I
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/GpsLocationProvider;->native_hybrid_gps_deliver_sensors_data([[F[[F[[F[J[J)I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/location/GpsLocationProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/location/GpsLocationProvider;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    return-void
.end method

.method static synthetic access$4602(Lcom/android/server/location/GpsLocationProvider;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    return-wide p1
.end method

.method static synthetic access$4700(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/location/GpsLocationProvider;IDDDFFFJ)V
    .registers 13
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p12}, Lcom/android/server/location/GpsLocationProvider;->reportLocation(IDDDFFFJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/location/GpsLocationProvider;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->reportNmea(J)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/location/GpsLocationProvider;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/location/GpsLocationProvider;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTracking(Z)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleRequestSingleShot()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimeStarted:Z

    return v0
.end method

.method static synthetic access$6800(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/location/GpsLocationProvider;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTimeCompleted(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    return v0
.end method

.method static synthetic access$7100(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataStarted:Z

    return v0
.end method

.method static synthetic access$7200(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraDataCompleted()V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/location/GpsLocationProvider;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleAddListener(I)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/location/GpsLocationProvider;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleRemoveListener(I)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/server/location/GpsLocationProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$7872(Lcom/android/server/location/GpsLocationProvider;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$7900(Lcom/android/server/location/GpsLocationProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$7910(Lcom/android/server/location/GpsLocationProvider;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->initialize()V

    return-void
.end method

.method static synthetic access$8102(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$8300(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 433
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 434
    .local v1, messages:[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v3, v1

    if-ge v0, v3, :cond_15

    .line 435
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    .line 442
    .local v2, supl_init:[B
    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 444
    .end local v2           #supl_init:[B
    :cond_15
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 447
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 475
    .local v0, supl_init:[B
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 476
    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .registers 4
    .parameter "extras"

    .prologue
    .line 1180
    if-nez p1, :cond_c

    .line 1181
    const v0, 0xffff

    .line 1199
    .local v0, flags:I
    :cond_5
    :goto_5
    if-eqz v0, :cond_95

    .line 1200
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_delete_aiding_data(I)V

    .line 1201
    const/4 v1, 0x1

    .line 1204
    :goto_b
    return v1

    .line 1183
    .end local v0           #flags:I
    :cond_c
    const/4 v0, 0x0

    .line 1184
    .restart local v0       #flags:I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    or-int/lit8 v0, v0, 0x1

    .line 1185
    :cond_17
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit8 v0, v0, 0x2

    .line 1186
    :cond_21
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    or-int/lit8 v0, v0, 0x4

    .line 1187
    :cond_2b
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    or-int/lit8 v0, v0, 0x8

    .line 1188
    :cond_35
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    or-int/lit8 v0, v0, 0x10

    .line 1189
    :cond_3f
    const-string v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    or-int/lit8 v0, v0, 0x20

    .line 1190
    :cond_49
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    or-int/lit8 v0, v0, 0x40

    .line 1191
    :cond_53
    const-string v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    or-int/lit16 v0, v0, 0x80

    .line 1192
    :cond_5d
    const-string v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    or-int/lit16 v0, v0, 0x100

    .line 1193
    :cond_67
    const-string v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    or-int/lit16 v0, v0, 0x200

    .line 1194
    :cond_71
    const-string v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    or-int/lit16 v0, v0, 0x400

    .line 1195
    :cond_7b
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1196
    :cond_87
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0xffff

    or-int/2addr v0, v1

    goto/16 :goto_5

    .line 1204
    :cond_95
    const/4 v1, 0x0

    goto/16 :goto_b
.end method

.method private getSelectedApn()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 3180
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3181
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 3183
    .local v6, apn:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "apn"

    aput-object v4, v2, v5

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3186
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2d

    .line 3188
    :try_start_1f
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3189
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2e

    move-result-object v6

    .line 3192
    :cond_2a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3195
    :cond_2d
    return-object v6

    .line 3192
    :catchall_2e
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;
    .registers 3

    .prologue
    .line 887
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, code:Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14

    .line 889
    :cond_e
    const-string v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 891
    :cond_14
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->NO_OPERATOR:Lcom/android/server/location/GpsLocationProvider$Vendor;

    .line 893
    .local v1, vendor:Lcom/android/server/location/GpsLocationProvider$Vendor;
    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 894
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider$Vendor;

    .line 906
    :cond_20
    :goto_20
    return-object v1

    .line 895
    :cond_21
    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 896
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    goto :goto_20

    .line 897
    :cond_2c
    const-string v2, "DCM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 898
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->JPN_DCM:Lcom/android/server/location/GpsLocationProvider$Vendor;

    goto :goto_20

    .line 899
    :cond_37
    const-string v2, "TLS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 900
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CAD_TLS:Lcom/android/server/location/GpsLocationProvider$Vendor;

    goto :goto_20

    .line 901
    :cond_42
    const-string v2, "BMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 902
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CAD_BMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    goto :goto_20

    .line 903
    :cond_4d
    const-string v2, "RWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 904
    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CAD_RWC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    goto :goto_20
.end method

.method private handleAddListener(I)V
    .registers 7
    .parameter "uid"

    .prologue
    .line 1102
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1103
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_25

    .line 1105
    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate add listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    monitor-exit v2

    .line 1117
    :goto_24
    return-void

    .line 1108
    :cond_25
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1109
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_36

    if-eqz v1, :cond_34

    .line 1111
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_34} :catch_39

    .line 1116
    :cond_34
    :goto_34
    :try_start_34
    monitor-exit v2

    goto :goto_24

    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_36

    throw v1

    .line 1112
    :catch_39
    move-exception v0

    .line 1113
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3a
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in addListener"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_36

    goto :goto_34
.end method

.method private handleDisable()V
    .registers 3

    .prologue
    .line 975
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-nez v0, :cond_c

    .line 983
    :goto_b
    return-void

    .line 978
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 979
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 982
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_cleanup()V

    goto :goto_b
.end method

.method private handleDownloadXtraData()V
    .registers 2

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_5

    .line 723
    :goto_4
    return-void

    .line 715
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataStarted:Z

    .line 716
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$4;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$4;->start()V

    goto :goto_4
.end method

.method private handleDownloadXtraDataCompleted()V
    .registers 6

    .prologue
    const/4 v3, 0x7

    .line 726
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataStarted:Z

    .line 727
    const/4 v0, 0x1

    .line 728
    .local v0, retry:Z
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraData:[B

    if-eqz v1, :cond_19

    .line 730
    const-string v1, "GpsLocationProvider"

    const-string v2, "calling native_inject_xtra_data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraData:[B

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraData:[B

    array-length v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_inject_xtra_data([BI)V

    .line 733
    const/4 v0, 0x0

    .line 735
    :cond_19
    if-eqz v0, :cond_2e

    .line 738
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 739
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 741
    :cond_2e
    return-void
.end method

.method private handleEnable()V
    .registers 14

    .prologue
    const/16 v3, 0x1c6b

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 910
    const-string v0, "GpsLocationProvider"

    const-string v4, "handleEnable"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_10

    .line 961
    :cond_f
    :goto_f
    return-void

    .line 912
    :cond_10
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 913
    const/4 v12, 0x0

    .line 915
    .local v12, suplServerAutoConfig:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_a5

    .line 916
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    .line 917
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_59

    .line 918
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerFromCSC:I

    if-ne v0, v1, :cond_43

    .line 919
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplAddress:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplPort:I

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplSslMode:I

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplSslType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_supl_server(ILjava/lang/String;III)V

    move-object v2, v12

    .line 955
    .end local v12           #suplServerAutoConfig:Ljava/lang/String;
    .local v2, suplServerAutoConfig:Ljava/lang/String;
    :goto_36
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 956
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto :goto_f

    .line 921
    .end local v2           #suplServerAutoConfig:Ljava/lang/String;
    .restart local v12       #suplServerAutoConfig:Ljava/lang/String;
    :cond_43
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$6;->$SwitchMap$com$android$server$location$GpsLocationProvider$Vendor:[I

    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/location/GpsLocationProvider$Vendor;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_b0

    .line 950
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    :cond_59
    move-object v2, v12

    .end local v12           #suplServerAutoConfig:Ljava/lang/String;
    .restart local v2       #suplServerAutoConfig:Ljava/lang/String;
    goto :goto_36

    .line 923
    .end local v2           #suplServerAutoConfig:Ljava/lang/String;
    .restart local v12       #suplServerAutoConfig:Ljava/lang/String;
    :pswitch_5b
    const-string v2, "lbs.geo.t-mobile.com"

    move-object v0, p0

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_supl_server(ILjava/lang/String;III)V

    move-object v2, v12

    .line 924
    .end local v12           #suplServerAutoConfig:Ljava/lang/String;
    .restart local v2       #suplServerAutoConfig:Ljava/lang/String;
    goto :goto_36

    .line 926
    .end local v2           #suplServerAutoConfig:Ljava/lang/String;
    .restart local v12       #suplServerAutoConfig:Ljava/lang/String;
    :pswitch_64
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    .line 927
    .end local v12           #suplServerAutoConfig:Ljava/lang/String;
    .restart local v2       #suplServerAutoConfig:Ljava/lang/String;
    if-eqz v2, :cond_70

    move-object v0, p0

    move v4, v1

    .line 928
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_supl_server(ILjava/lang/String;III)V

    goto :goto_36

    .line 930
    :cond_70
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto :goto_36

    .line 934
    .end local v2           #suplServerAutoConfig:Ljava/lang/String;
    .restart local v12       #suplServerAutoConfig:Ljava/lang/String;
    :pswitch_78
    const-string v8, "dcm-supl.com"

    move-object v6, p0

    move v7, v1

    move v9, v3

    move v10, v1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/server/location/GpsLocationProvider;->native_set_supl_server(ILjava/lang/String;III)V

    move-object v2, v12

    .line 935
    .end local v12           #suplServerAutoConfig:Ljava/lang/String;
    .restart local v2       #suplServerAutoConfig:Ljava/lang/String;
    goto :goto_36

    .line 937
    .end local v2           #suplServerAutoConfig:Ljava/lang/String;
    .restart local v12       #suplServerAutoConfig:Ljava/lang/String;
    :pswitch_84
    const-string v8, "supl.telusmobility.com"

    move-object v6, p0

    move v7, v1

    move v9, v3

    move v10, v1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/server/location/GpsLocationProvider;->native_set_supl_server(ILjava/lang/String;III)V

    move-object v2, v12

    .line 938
    .end local v12           #suplServerAutoConfig:Ljava/lang/String;
    .restart local v2       #suplServerAutoConfig:Ljava/lang/String;
    goto :goto_36

    .line 940
    .end local v2           #suplServerAutoConfig:Ljava/lang/String;
    .restart local v12       #suplServerAutoConfig:Ljava/lang/String;
    :pswitch_90
    const-string v8, "supl.wireless.bell.ca"

    move-object v6, p0

    move v7, v1

    move v9, v3

    move v10, v1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/server/location/GpsLocationProvider;->native_set_supl_server(ILjava/lang/String;III)V

    move-object v2, v12

    .line 941
    .end local v12           #suplServerAutoConfig:Ljava/lang/String;
    .restart local v2       #suplServerAutoConfig:Ljava/lang/String;
    goto :goto_36

    .line 943
    .end local v2           #suplServerAutoConfig:Ljava/lang/String;
    .restart local v12       #suplServerAutoConfig:Ljava/lang/String;
    :pswitch_9c
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    move-object v2, v12

    .line 944
    .end local v12           #suplServerAutoConfig:Ljava/lang/String;
    .restart local v2       #suplServerAutoConfig:Ljava/lang/String;
    goto :goto_36

    .line 959
    .end local v2           #suplServerAutoConfig:Ljava/lang/String;
    .restart local v12       #suplServerAutoConfig:Ljava/lang/String;
    :cond_a5
    const-string v0, "GpsLocationProvider"

    const-string v1, "Failed to enable location provider"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v12

    .end local v12           #suplServerAutoConfig:Ljava/lang/String;
    .restart local v2       #suplServerAutoConfig:Ljava/lang/String;
    goto/16 :goto_f

    .line 921
    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_64
        :pswitch_78
        :pswitch_84
        :pswitch_90
        :pswitch_9c
    .end packed-switch
.end method

.method private handleEnableLocationTracking(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 1019
    if-eqz p1, :cond_d

    .line 1020
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1021
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1022
    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    .line 1030
    :goto_c
    return-void

    .line 1024
    :cond_d
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1025
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1026
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1028
    :cond_22
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    goto :goto_c
.end method

.method private handleInjectNtpTime()V
    .registers 2

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_5

    .line 678
    :goto_4
    return-void

    .line 664
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimeStarted:Z

    .line 665
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$3;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$3;->start()V

    goto :goto_4
.end method

.method private handleInjectNtpTimeCompleted(Z)V
    .registers 15
    .parameter "success"

    .prologue
    const/4 v12, 0x5

    .line 681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimeStarted:Z

    .line 682
    if-eqz p1, :cond_3b

    .line 683
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedNtpTime()J

    move-result-wide v1

    .line 684
    .local v1, time:J
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedNtpTimeReference()J

    move-result-wide v3

    .line 685
    .local v3, timeReference:J
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    move-result-wide v6

    .line 686
    .local v6, certainty:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 696
    .local v10, now:J
    long-to-int v5, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)V

    .line 701
    .end local v1           #time:J
    .end local v3           #timeReference:J
    .end local v6           #certainty:J
    .end local v10           #now:J
    :goto_21
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-eqz v0, :cond_3a

    .line 704
    if-eqz p1, :cond_43

    const-wide/32 v8, 0x5265c00

    .line 705
    .local v8, delay:J
    :goto_2a
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 706
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 708
    .end local v8           #delay:J
    :cond_3a
    return-void

    .line 698
    :cond_3b
    const-string v0, "GpsLocationProvider"

    const-string v5, "requestTime failed"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 704
    :cond_43
    const-wide/32 v8, 0x493e0

    goto :goto_2a
.end method

.method private handleRemoveListener(I)V
    .registers 7
    .parameter "uid"

    .prologue
    .line 1130
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1131
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_25

    .line 1133
    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unneeded remove listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    monitor-exit v2

    .line 1145
    :goto_24
    return-void

    .line 1136
    :cond_25
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1137
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_35

    if-eqz v1, :cond_33

    .line 1139
    :try_start_2e
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_35
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_33} :catch_38

    .line 1144
    :cond_33
    :goto_33
    :try_start_33
    monitor-exit v2

    goto :goto_24

    :catchall_35
    move-exception v1

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_35

    throw v1

    .line 1140
    :catch_38
    move-exception v0

    .line 1141
    .local v0, e:Landroid/os/RemoteException;
    :try_start_39
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in removeListener"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_35

    goto :goto_33
.end method

.method private handleRequestSingleShot()V
    .registers 3

    .prologue
    .line 1046
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1047
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1048
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    .line 1049
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .registers 8
    .parameter "location"

    .prologue
    .line 752
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 753
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_location(DDF)V

    .line 756
    :cond_16
    return-void
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .registers 13
    .parameter "state"
    .parameter "info"

    .prologue
    .line 607
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a4

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    .line 614
    if-eqz p2, :cond_42

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_42

    .line 615
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a7

    const/4 v8, 0x1

    .line 617
    .local v8, dataEnabled:Z
    :goto_1d
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_aa

    if-eqz v8, :cond_aa

    const/4 v4, 0x1

    .line 618
    .local v4, networkAvailable:Z
    :goto_26
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->getSelectedApn()Ljava/lang/String;

    move-result-object v6

    .line 619
    .local v6, defaultApn:Ljava/lang/String;
    if-nez v6, :cond_2e

    .line 620
    const-string v6, "dummy-apn"

    .line 623
    :cond_2e
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 628
    .end local v4           #networkAvailable:Z
    .end local v6           #defaultApn:Ljava/lang/String;
    .end local v8           #dataEnabled:Z
    :cond_42
    if-eqz p2, :cond_a3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a3

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a3

    .line 630
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    .line 631
    .local v7, apnName:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_ad

    .line 632
    if-nez v7, :cond_5c

    .line 635
    const-string v7, "dummy-apn"

    .line 637
    :cond_5c
    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 638
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAGpsDataConnectionIpAddr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_96

    .line 641
    const-string v0, "GpsLocationProvider"

    const-string v1, "call requestRouteToHost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v9

    .line 644
    .local v9, route_result:Z
    if-nez v9, :cond_96

    const-string v0, "GpsLocationProvider"

    const-string v1, "call requestRouteToHost failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    .end local v9           #route_result:Z
    :cond_96
    const-string v0, "GpsLocationProvider"

    const-string v1, "call native_agps_data_conn_open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    .line 648
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 657
    .end local v7           #apnName:Ljava/lang/String;
    :cond_a3
    :goto_a3
    return-void

    .line 607
    :cond_a4
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 615
    :cond_a7
    const/4 v8, 0x0

    goto/16 :goto_1d

    .line 617
    .restart local v8       #dataEnabled:Z
    :cond_aa
    const/4 v4, 0x0

    goto/16 :goto_26

    .line 650
    .end local v8           #dataEnabled:Z
    .restart local v7       #apnName:Ljava/lang/String;
    :cond_ad
    const-string v0, "GpsLocationProvider"

    const-string v1, "call native_agps_data_conn_failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 652
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 653
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_a3
.end method

.method private hasCapability(I)Z
    .registers 3
    .parameter "capability"

    .prologue
    .line 1334
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private hibernate()V
    .registers 9

    .prologue
    .line 1325
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1326
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1327
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1329
    .local v0, now:J
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1331
    return-void
.end method

.method private initialize()V
    .registers 4

    .prologue
    .line 569
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 570
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    const-string v1, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 574
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 585
    return-void
.end method

.method public static isSupported()Z
    .registers 1

    .prologue
    .line 479
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private makeAutoSuplUrl()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 857
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 858
    .local v3, szUrl:Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 859
    .local v4, tel:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, SimOperator:Ljava/lang/String;
    if-eqz v0, :cond_84

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_84

    .line 862
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 863
    .local v1, mcc:I
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 864
    .local v2, mnc:I
    const-string v5, "h-slp.mnc"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ".mcc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ".pub.3gppnetwork.org"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 865
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeAutoSuplUrl :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 869
    .end local v1           #mcc:I
    .end local v2           #mnc:I
    :goto_83
    return-object v5

    :cond_84
    const/4 v5, 0x0

    goto :goto_83
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_hybrid_gps_deliver_gps_data([D[F[IJII)V
.end method

.method private native native_hybrid_gps_deliver_rotation_data(I)V
.end method

.method private native native_hybrid_gps_deliver_sensors_data([[F[[F[[F[J[J)I
.end method

.method private native native_hybrid_gps_deliver_sv_status()V
.end method

.method private native native_hybrid_gps_finalize()V
.end method

.method private native native_hybrid_gps_initialize(I)V
.end method

.method private native native_hybrid_gps_request_gps_data([D[F[I)Z
.end method

.method private native native_hybrid_gps_support_inverse_portrait_mode(I)V
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F[I[I)I
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_set_supl_server(ILjava/lang/String;III)V
.end method

.method private native native_set_xtra(I)V
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private reportAGpsStatus(III)V
    .registers 11
    .parameter "type"
    .parameter "status"
    .parameter "ipaddr"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1587
    packed-switch p2, :pswitch_data_c2

    .line 1643
    :cond_6
    :goto_6
    return-void

    .line 1589
    :pswitch_7
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1593
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v3, "enableSUPL"

    invoke-virtual {v2, v4, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 1595
    .local v0, result:I
    iput p3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    .line 1596
    if-nez v0, :cond_76

    .line 1597
    const-string v2, "GpsLocationProvider"

    const-string v3, "Phone.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    if-eqz v2, :cond_67

    .line 1599
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAGpsDataConnectionIpAddr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5f

    .line 1602
    const-string v2, "GpsLocationProvider"

    const-string v3, "call requestRouteToHost"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v1

    .line 1606
    .local v1, route_result:Z
    if-nez v1, :cond_5f

    const-string v2, "GpsLocationProvider"

    const-string v3, "call requestRouteToHost failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    .end local v1           #route_result:Z
    :cond_5f
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    .line 1609
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_6

    .line 1611
    :cond_67
    const-string v2, "GpsLocationProvider"

    const-string v3, "mAGpsApn not set when receiving Phone.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1613
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    goto :goto_6

    .line 1615
    :cond_76
    if-ne v0, v5, :cond_80

    .line 1616
    const-string v2, "GpsLocationProvider"

    const-string v3, "Phone.APN_REQUEST_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1619
    :cond_80
    const-string v2, "GpsLocationProvider"

    const-string v3, "startUsingNetworkFeature failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1621
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto/16 :goto_6

    .line 1625
    .end local v0           #result:I
    :pswitch_8e
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v2, :cond_6

    .line 1627
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v3, "enableSUPL"

    invoke-virtual {v2, v4, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1629
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed()V

    .line 1630
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    goto/16 :goto_6

    .line 1634
    :pswitch_a7
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1637
    :pswitch_b0
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1640
    :pswitch_b9
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1587
    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8e
        :pswitch_a7
        :pswitch_b0
        :pswitch_b9
    .end packed-switch
.end method

.method private reportLocation(IDDDFFFJ)V
    .registers 33
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"

    .prologue
    .line 1345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-wide/from16 v13, p11

    #calls: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingReportLocation(IDDDFFFJ)V
    invoke-static/range {v2 .. v14}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$1400(Lcom/android/server/location/GpsLocationProvider$SensorAiding;IDDDFFFJ)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #calls: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetValid()I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$1500(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_138

    .line 1347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #calls: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetFlags()I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$1600(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I

    move-result p1

    .line 1348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #calls: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLatitude()D
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$1700(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)D

    move-result-wide p2

    .line 1349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #calls: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetLongitude()D
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$1800(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)D

    move-result-wide p4

    .line 1350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #calls: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAltitde()D
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$1900(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)D

    move-result-wide p6

    .line 1351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #calls: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetSpeed()F
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$2000(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)F

    move-result p8

    .line 1352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #calls: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetBearing()F
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$2100(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)F

    move-result p9

    .line 1353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #calls: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingGetAccuracy()F
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$2200(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)F

    move-result p10

    .line 1358
    :cond_5a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v3

    .line 1359
    :try_start_5f
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1360
    and-int/lit8 v2, p1, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_85

    .line 1361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 1362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1365
    :cond_85
    and-int/lit8 v2, p1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_13b

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 1370
    :goto_93
    and-int/lit8 v2, p1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_147

    .line 1371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 1375
    :goto_a1
    and-int/lit8 v2, p1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_150

    .line 1376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Landroid/location/Location;->setBearing(F)V

    .line 1380
    :goto_b0
    and-int/lit8 v2, p1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_159

    .line 1381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/location/Location;->setAccuracy(F)V
    :try_end_bf
    .catchall {:try_start_5f .. :try_end_bf} :catchall_144

    .line 1387
    :goto_bf
    :try_start_bf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_cb
    .catchall {:try_start_bf .. :try_end_cb} :catchall_144
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_cb} :catch_162

    .line 1391
    :goto_cb
    :try_start_cb
    monitor-exit v3
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_144

    .line 1393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1395
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    if-nez v2, :cond_181

    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_181

    .line 1396
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1397
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TTFF: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1401
    :try_start_10e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1402
    .local v19, size:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_118
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_180

    .line 1403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_12a
    .catchall {:try_start_10e .. :try_end_12a} :catchall_208

    .line 1405
    .local v18, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_12a
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    invoke-interface {v2, v4}, Landroid/location/IGpsStatusListener;->onFirstFix(I)V
    :try_end_135
    .catchall {:try_start_12a .. :try_end_135} :catchall_208
    .catch Landroid/os/RemoteException; {:try_start_12a .. :try_end_135} :catch_16c

    .line 1402
    :goto_135
    add-int/lit8 v16, v16, 0x1

    goto :goto_118

    .line 1354
    .end local v16           #i:I
    .end local v18           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v19           #size:I
    :cond_138
    if-nez p1, :cond_5a

    .line 1458
    :cond_13a
    :goto_13a
    return-void

    .line 1368
    :cond_13b
    :try_start_13b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->removeAltitude()V

    goto/16 :goto_93

    .line 1391
    :catchall_144
    move-exception v2

    monitor-exit v3
    :try_end_146
    .catchall {:try_start_13b .. :try_end_146} :catchall_144

    throw v2

    .line 1373
    :cond_147
    :try_start_147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_a1

    .line 1378
    :cond_150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->removeBearing()V

    goto/16 :goto_b0

    .line 1383
    :cond_159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->removeAccuracy()V

    goto/16 :goto_bf

    .line 1388
    :catch_162
    move-exception v15

    .line 1389
    .local v15, e:Landroid/os/RemoteException;
    const-string v2, "GpsLocationProvider"

    const-string v4, "RemoteException calling reportLocation"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16a
    .catchall {:try_start_147 .. :try_end_16a} :catchall_144

    goto/16 :goto_cb

    .line 1406
    .end local v15           #e:Landroid/os/RemoteException;
    .restart local v16       #i:I
    .restart local v18       #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v19       #size:I
    :catch_16c
    move-exception v15

    .line 1407
    .restart local v15       #e:Landroid/os/RemoteException;
    :try_start_16d
    const-string v2, "GpsLocationProvider"

    const-string v4, "RemoteException in stopNavigating"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1410
    add-int/lit8 v19, v19, -0x1

    goto :goto_135

    .line 1413
    .end local v15           #e:Landroid/os/RemoteException;
    .end local v18           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_180
    monitor-exit v3
    :try_end_181
    .catchall {:try_start_16d .. :try_end_181} :catchall_208

    .line 1433
    .end local v16           #i:I
    .end local v19           #size:I
    :cond_181
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    if-eqz v2, :cond_18a

    .line 1434
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1436
    :cond_18a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v2, :cond_1e5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1e5

    .line 1439
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_1b4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v3, 0xea60

    if-ge v2, v3, :cond_1b4

    .line 1440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1444
    :cond_1b4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    if-eqz v2, :cond_1e5

    .line 1446
    const-string v2, "GpsLocationProvider"

    const-string v3, "send an intent to notify that the GPS is receiving fixes"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    new-instance v17, Landroid/content/Intent;

    const-string v2, "android.location.GPS_FIX_CHANGE"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1448
    .local v17, intent:Landroid/content/Intent;
    const-string v2, "enabled"

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1450
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1454
    .end local v17           #intent:Landroid/content/Intent;
    :cond_1e5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_13a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v2, :cond_13a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_13a

    .line 1455
    const-string v2, "GpsLocationProvider"

    const-string v3, "got fix, hibernating"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    goto/16 :goto_13a

    .line 1413
    :catchall_208
    move-exception v2

    :try_start_209
    monitor-exit v3
    :try_end_20a
    .catchall {:try_start_209 .. :try_end_20a} :catchall_208

    throw v2
.end method

.method private reportNmea(J)V
    .registers 12
    .parameter "timestamp"

    .prologue
    .line 1649
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1650
    :try_start_3
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1651
    .local v5, size:I
    if-lez v5, :cond_59

    .line 1653
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    array-length v8, v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/location/GpsLocationProvider;->native_read_nmea([BI)I

    move-result v2

    .line 1654
    .local v2, length:I
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    const/4 v8, 0x0

    invoke-direct {v4, v6, v8, v2}, Ljava/lang/String;-><init>([BII)V

    .line 1656
    .local v4, nmea:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    if-nez v6, :cond_29

    .line 1657
    const-string v6, "GpsLocationProvider"

    const-string v8, "reportNmea : mSensorAiding is not allocated"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    monitor-exit v7

    .line 1681
    .end local v2           #length:I
    .end local v4           #nmea:Ljava/lang/String;
    :goto_28
    return-void

    .line 1660
    .restart local v2       #length:I
    .restart local v4       #nmea:Ljava/lang/String;
    :cond_29
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #calls: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingReportNmea(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$2400(Lcom/android/server/location/GpsLocationProvider$SensorAiding;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1663
    if-nez v4, :cond_36

    .line 1664
    monitor-exit v7

    goto :goto_28

    .line 1680
    .end local v2           #length:I
    .end local v4           #nmea:Ljava/lang/String;
    .end local v5           #size:I
    :catchall_33
    move-exception v6

    monitor-exit v7
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v6

    .line 1668
    .restart local v2       #length:I
    .restart local v4       #nmea:Ljava/lang/String;
    .restart local v5       #size:I
    :cond_36
    const/4 v1, 0x0

    .local v1, i:I
    :goto_37
    if-ge v1, v5, :cond_59

    .line 1669
    :try_start_39
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_33

    .line 1671
    .local v3, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_41
    iget-object v6, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v6, p1, p2, v4}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_33
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_46} :catch_49

    .line 1668
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 1672
    :catch_49
    move-exception v0

    .line 1673
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4a
    const-string v6, "GpsLocationProvider"

    const-string v8, "RemoteException in reportNmea"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1676
    add-int/lit8 v5, v5, -0x1

    goto :goto_46

    .line 1680
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v4           #nmea:Ljava/lang/String;
    :cond_59
    monitor-exit v7
    :try_end_5a
    .catchall {:try_start_4a .. :try_end_5a} :catchall_33

    goto :goto_28
.end method

.method private reportStatus(I)V
    .registers 13
    .parameter "status"

    .prologue
    .line 1464
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportStatus status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1467
    :try_start_1b
    iget-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 1469
    .local v6, wasNavigating:Z
    packed-switch p1, :pswitch_data_ca

    .line 1486
    :goto_20
    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eq v6, v7, :cond_c7

    .line 1487
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1488
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2b
    if-ge v1, v4, :cond_70

    .line 1489
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_48

    .line 1491
    .local v3, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_35
    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v7, :cond_5a

    .line 1492
    iget-object v7, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v7}, Landroid/location/IGpsStatusListener;->onGpsStarted()V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_48
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3e} :catch_60

    .line 1488
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 1471
    .end local v1           #i:I
    .end local v3           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v4           #size:I
    :pswitch_41
    const/4 v7, 0x1

    :try_start_42
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 1472
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_20

    .line 1524
    .end local v6           #wasNavigating:Z
    :catchall_48
    move-exception v7

    monitor-exit v8
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_48

    throw v7

    .line 1475
    .restart local v6       #wasNavigating:Z
    :pswitch_4b
    const/4 v7, 0x0

    :try_start_4c
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    goto :goto_20

    .line 1478
    :pswitch_4f
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_20

    .line 1481
    :pswitch_53
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    .line 1482
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_48

    goto :goto_20

    .line 1494
    .restart local v1       #i:I
    .restart local v3       #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v4       #size:I
    :cond_5a
    :try_start_5a
    iget-object v7, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v7}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_48
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5f} :catch_60

    goto :goto_3e

    .line 1496
    :catch_60
    move-exception v0

    .line 1497
    .local v0, e:Landroid/os/RemoteException;
    :try_start_61
    const-string v7, "GpsLocationProvider"

    const-string v9, "RemoteException in reportStatus"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_6d
    .catchall {:try_start_61 .. :try_end_6d} :catchall_48

    .line 1500
    add-int/lit8 v4, v4, -0x1

    goto :goto_3e

    .line 1506
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_70
    :try_start_70
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_78
    if-ltz v1, :cond_9a

    .line 1507
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 1508
    .local v5, uid:I
    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v7, :cond_8c

    .line 1509
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v5}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V

    .line 1506
    :goto_89
    add-int/lit8 v1, v1, -0x1

    goto :goto_78

    .line 1511
    :cond_8c
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v5}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_91
    .catchall {:try_start_70 .. :try_end_91} :catchall_48
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_91} :catch_92

    goto :goto_89

    .line 1514
    .end local v5           #uid:I
    :catch_92
    move-exception v0

    .line 1515
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_93
    const-string v7, "GpsLocationProvider"

    const-string v9, "RemoteException in reportStatus"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_9a
    const-string v7, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "send an intent to notify that the GPS has been enabled or disabled mNavigating = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1521
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "enabled"

    iget-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1522
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1524
    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #size:I
    :cond_c7
    monitor-exit v8
    :try_end_c8
    .catchall {:try_start_93 .. :try_end_c8} :catchall_48

    .line 1525
    return-void

    .line 1469
    nop

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_41
        :pswitch_4b
        :pswitch_4f
        :pswitch_53
    .end packed-switch
.end method

.method private reportSvStatus()V
    .registers 18

    .prologue
    .line 1532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssUsed:[I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GpsLocationProvider;->native_read_sv_status([I[F[F[F[I[I)I

    move-result v2

    .line 1534
    .local v2, svCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #calls: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingReportSvStatus(I)V
    invoke-static {v1, v2}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$2300(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1537
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1538
    .local v15, size:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_35
    if-ge v12, v15, :cond_84

    .line 1539
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_e5

    .line 1541
    .local v14, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_41
    iget-object v1, v14, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssUsed:[I

    invoke-interface/range {v1 .. v10}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII[I)V
    :try_end_6f
    .catchall {:try_start_41 .. :try_end_6f} :catchall_e5
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_6f} :catch_72

    .line 1538
    :goto_6f
    add-int/lit8 v12, v12, 0x1

    goto :goto_35

    .line 1544
    :catch_72
    move-exception v11

    .line 1545
    .local v11, e:Landroid/os/RemoteException;
    :try_start_73
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in reportSvInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1548
    add-int/lit8 v15, v15, -0x1

    goto :goto_6f

    .line 1551
    .end local v11           #e:Landroid/os/RemoteException;
    .end local v14           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_84
    monitor-exit v16
    :try_end_85
    .catchall {:try_start_73 .. :try_end_85} :catchall_e5

    .line 1570
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1572
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_e4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_e4

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_e4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v1, v3, v5

    if-lez v1, :cond_e4

    .line 1575
    const-string v1, "GpsLocationProvider"

    const-string v3, "send an intent to notify that the GPS is no longer receiving fixes"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1577
    .local v13, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v13, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1578
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1579
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1581
    .end local v13           #intent:Landroid/content/Intent;
    :cond_e4
    return-void

    .line 1551
    .end local v12           #i:I
    .end local v15           #size:I
    :catchall_e5
    move-exception v1

    :try_start_e6
    monitor-exit v16
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw v1
.end method

.method private requestRefLocation(I)V
    .registers 11
    .parameter "flags"

    .prologue
    const/4 v5, 0x3

    .line 3065
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 3067
    .local v8, phone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 3068
    .local v6, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v6, :cond_5f

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_5f

    .line 3070
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3071
    .local v2, mcc:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3072
    .local v3, mnc:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    .line 3073
    .local v7, networkType:I
    if-eq v7, v5, :cond_52

    const/16 v0, 0x8

    if-eq v7, v0, :cond_52

    const/16 v0, 0x9

    if-eq v7, v0, :cond_52

    const/16 v0, 0xf

    if-eq v7, v0, :cond_52

    const/16 v0, 0xa

    if-ne v7, v0, :cond_60

    .line 3078
    :cond_52
    const/4 v1, 0x2

    .line 3082
    .local v1, type:I
    :goto_53
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 3085
    .end local v1           #type:I
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    .end local v7           #networkType:I
    :cond_5f
    return-void

    .line 3080
    .restart local v2       #mcc:I
    .restart local v3       #mnc:I
    .restart local v7       #networkType:I
    :cond_60
    const/4 v1, 0x1

    .restart local v1       #type:I
    goto :goto_53
.end method

.method private requestSetID(I)V
    .registers 8
    .parameter "flags"

    .prologue
    .line 3023
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 3025
    .local v2, phone:Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 3026
    .local v3, type:I
    const-string v0, ""

    .line 3028
    .local v0, data:Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f

    .line 3029
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 3030
    .local v1, data_temp:Ljava/lang/String;
    if-nez v1, :cond_1c

    .line 3048
    .end local v1           #data_temp:Ljava/lang/String;
    :cond_18
    :goto_18
    invoke-direct {p0, v3, v0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 3049
    return-void

    .line 3034
    .restart local v1       #data_temp:Ljava/lang/String;
    :cond_1c
    move-object v0, v1

    .line 3035
    const/4 v3, 0x1

    goto :goto_18

    .line 3038
    .end local v1           #data_temp:Ljava/lang/String;
    :cond_1f
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_18

    .line 3039
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 3040
    .restart local v1       #data_temp:Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 3044
    move-object v0, v1

    .line 3045
    const/4 v3, 0x2

    goto :goto_18
.end method

.method private requestUtcTime()V
    .registers 4

    .prologue
    .line 3056
    const-string v0, "GpsLocationProvider"

    const-string v1, "requestUtcTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 3058
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .registers 8
    .parameter "message"
    .parameter "arg"
    .parameter "obj"

    .prologue
    .line 3089
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 3090
    :try_start_3
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    .line 3091
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3092
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3093
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3094
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 3095
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3096
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3097
    monitor-exit v2

    .line 3098
    return-void

    .line 3097
    .end local v0           #m:Landroid/os/Message;
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private setEngineCapabilities(I)V
    .registers 2
    .parameter "capabilities"

    .prologue
    .line 1687
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    .line 1688
    return-void
.end method

.method private setServer(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    .line 411
    const-string v5, "GpsLocationProvider"

    const-string v6, "setServer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v2, ""

    .line 414
    .local v2, mServerAddr:Ljava/lang/String;
    const-string v3, ""

    .line 416
    .local v3, mServerPort:Ljava/lang/String;
    const-string v5, "ServerAddr"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 417
    const-string v5, "ServerPort"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 418
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setServer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "SUPL_HOST"

    invoke-virtual {v5, v6, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 420
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "SUPL_PORT"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 422
    :try_start_4b
    new-instance v1, Ljava/io/File;

    const-string v5, "/etc/gps.conf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    .local v1, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 425
    .local v4, stream:Ljava/io/FileOutputStream;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "Generated by GpsLocationProvider."

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 426
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_61} :catch_62

    .line 430
    .end local v1           #file:Ljava/io/File;
    .end local v4           #stream:Ljava/io/FileOutputStream;
    :goto_61
    return-void

    .line 427
    :catch_62
    move-exception v0

    .line 428
    .local v0, e:Ljava/io/IOException;
    const-string v5, "GpsLocationProvider"

    const-string v6, "Could not open GPS configuration file in save : /etc/gps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61
.end method

.method private startNavigating(Z)V
    .registers 10
    .parameter "singleShot"

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 1208
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v0, :cond_49

    .line 1209
    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1211
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    .line 1212
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1214
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2d

    .line 1216
    if-eqz p1, :cond_4a

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1217
    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1260
    :cond_2d
    :goto_2d
    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_53

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1261
    .local v3, interval:I
    :goto_35
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_56

    .line 1263
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1264
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    .end local v3           #interval:I
    :cond_49
    :goto_49
    return-void

    .line 1218
    :cond_4a
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1219
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto :goto_2d

    .line 1260
    :cond_53
    const/16 v3, 0x3e8

    goto :goto_35

    .line 1267
    .restart local v3       #interval:I
    :cond_56
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_66

    .line 1268
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1269
    const-string v0, "GpsLocationProvider"

    const-string v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 1273
    :cond_66
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    .line 1274
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNavigating : SensorAiding is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #calls: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingStartNavigating()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$1200(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    .line 1278
    invoke-direct {p0, v6, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 1280
    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_49

    .line 1283
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_49

    .line 1284
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v4, 0xea60

    add-long/2addr v1, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v7, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_49
.end method

.method private stopNavigating()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1292
    const-string v1, "GpsLocationProvider"

    const-string v2, "stopNavigating"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const/4 v0, 0x0

    .line 1295
    .local v0, LPPIsInStop:Z
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    if-eqz v1, :cond_41

    .line 1296
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #calls: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingStopNavigating()Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$1300(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)Z

    move-result v0

    .line 1301
    :goto_14
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v1, :cond_2a

    .line 1302
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1303
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    .line 1304
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    .line 1305
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1306
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1307
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1310
    invoke-direct {p0, v4, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1315
    :cond_2a
    if-ne v0, v4, :cond_40

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1317
    const-string v1, "GpsLocationProvider"

    const-string v2, "Releasing wakelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1321
    :cond_40
    return-void

    .line 1298
    :cond_41
    const-string v1, "GpsLocationProvider"

    const-string v2, "stopNavigating : SensorAiding instance was NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private updateStatus(II)V
    .registers 7
    .parameter "status"
    .parameter "svCount"

    .prologue
    .line 997
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    monitor-enter v1

    .line 998
    :try_start_3
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_b

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1c

    .line 999
    :cond_b
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 1000
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    .line 1001
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v2, "satellites"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1002
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 1004
    :cond_1c
    monitor-exit v1

    .line 1005
    return-void

    .line 1004
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private xtraDownloadRequest()V
    .registers 4

    .prologue
    .line 1694
    const-string v0, "GpsLocationProvider"

    const-string v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1696
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .registers 6
    .parameter "uid"

    .prologue
    .line 1092
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1093
    :try_start_3
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    .line 1094
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1095
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1096
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1097
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1098
    monitor-exit v2

    .line 1099
    return-void

    .line 1098
    .end local v0           #m:Landroid/os/Message;
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public disable()V
    .registers 5

    .prologue
    .line 969
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 970
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_6
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 971
    monitor-exit v1

    .line 972
    return-void

    .line 971
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public enable()V
    .registers 5

    .prologue
    .line 849
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 850
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_6
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 851
    monitor-exit v1

    .line 852
    return-void

    .line 851
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public enableLocationTracking(Z)V
    .registers 6
    .parameter "enable"

    .prologue
    .line 1013
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 1014
    const/4 v2, 0x3

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_7
    const/4 v3, 0x0

    :try_start_8
    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1015
    monitor-exit v1

    .line 1016
    return-void

    .line 1014
    :cond_d
    const/4 v0, 0x0

    goto :goto_7

    .line 1015
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public getAccuracy()I
    .registers 2

    .prologue
    .line 840
    const/4 v0, 0x1

    return v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getInternalState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1067
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 591
    const-string v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .registers 2

    .prologue
    .line 2948
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getPowerRequirement()I
    .registers 2

    .prologue
    .line 822
    const/4 v0, 0x3

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 4
    .parameter "extras"

    .prologue
    .line 990
    if-eqz p1, :cond_9

    .line 991
    const-string v0, "satellites"

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 993
    :cond_9
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .prologue
    .line 1008
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .registers 2

    .prologue
    .line 782
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 986
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .registers 4
    .parameter "criteria"

    .prologue
    const/4 v0, 0x1

    .line 830
    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v1

    if-eq v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public removeListener(I)V
    .registers 6
    .parameter "uid"

    .prologue
    .line 1120
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1121
    :try_start_3
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    .line 1122
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1123
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1124
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1125
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1126
    monitor-exit v2

    .line 1127
    return-void

    .line 1126
    .end local v0           #m:Landroid/os/Message;
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 21
    .parameter "notificationId"
    .parameter "niType"
    .parameter "notifyFlags"
    .parameter "timeout"
    .parameter "defaultResponse"
    .parameter "requestorId"
    .parameter "text"
    .parameter "requestorIdEncoding"
    .parameter "textEncoding"
    .parameter "extras"

    .prologue
    .line 2965
    const-string v7, "GpsLocationProvider"

    const-string v8, "reportNiNotification: entered"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notificationId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", niType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", notifyFlags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", timeout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", defaultResponse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestorId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", text: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requestorIdEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", textEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2979
    .local v6, notification:Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2980
    iput p2, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2981
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_f3

    const/4 v7, 0x1

    :goto_93
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2982
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_f5

    const/4 v7, 0x1

    :goto_9a
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2983
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_f7

    const/4 v7, 0x1

    :goto_a1
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2984
    iput p4, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2985
    iput p5, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2986
    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2987
    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2988
    move/from16 v0, p8

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2989
    move/from16 v0, p9

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2993
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2995
    .local v1, bundle:Landroid/os/Bundle;
    if-nez p10, :cond_c0

    const-string p10, ""

    .line 2996
    :cond_c0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 2999
    .local v4, extraProp:Ljava/util/Properties;
    :try_start_c5
    new-instance v7, Ljava/io/StringReader;

    move-object/from16 v0, p10

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_cf} :catch_f9

    .line 3006
    :goto_cf
    invoke-virtual {v4}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_d7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_115

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3008
    .local v3, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7

    .line 2981
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4           #extraProp:Ljava/util/Properties;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_f3
    const/4 v7, 0x0

    goto :goto_93

    .line 2982
    :cond_f5
    const/4 v7, 0x0

    goto :goto_9a

    .line 2983
    :cond_f7
    const/4 v7, 0x0

    goto :goto_a1

    .line 3001
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #extraProp:Ljava/util/Properties;
    :catch_f9
    move-exception v2

    .line 3003
    .local v2, e:Ljava/io/IOException;
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 3011
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_115
    iput-object v1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 3013
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 3014
    return-void
.end method

.method public requestSingleShotFix()Z
    .registers 5

    .prologue
    .line 1033
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v1, :cond_6

    .line 1035
    const/4 v1, 0x0

    .line 1042
    :goto_5
    return v1

    .line 1037
    :cond_6
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 1038
    :try_start_9
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1039
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1040
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1041
    monitor-exit v2

    .line 1042
    const/4 v1, 0x1

    goto :goto_5

    .line 1041
    .end local v0           #m:Landroid/os/Message;
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public requiresCell()Z
    .registers 2

    .prologue
    .line 773
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .registers 2

    .prologue
    .line 599
    const/4 v0, 0x1

    return v0
.end method

.method public requiresSatellite()Z
    .registers 2

    .prologue
    .line 764
    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 9
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v3, 0x0

    .line 1149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1150
    .local v0, identity:J
    const/4 v2, 0x0

    .line 1152
    .local v2, result:Z
    const-string v4, "delete_aiding_data"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1153
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v2

    .line 1173
    :cond_12
    :goto_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v2

    .line 1174
    :goto_16
    return v3

    .line 1154
    :cond_17
    const-string v4, "force_time_injection"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1155
    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v5}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1156
    const/4 v2, 0x1

    goto :goto_12

    .line 1157
    :cond_26
    const-string v4, "force_xtra_injection"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1158
    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    if-eqz v3, :cond_12

    .line 1159
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    .line 1160
    const/4 v2, 0x1

    goto :goto_12

    .line 1162
    :cond_37
    const-string v4, "set_csc_parameters"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1163
    invoke-virtual {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->setCscParameters(Landroid/os/Bundle;)V

    .line 1164
    const/4 v2, 0x1

    goto :goto_12

    .line 1165
    :cond_44
    const-string v4, "request_running"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 1166
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1167
    :try_start_4f
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-lez v5, :cond_58

    const/4 v3, 0x1

    :cond_58
    monitor-exit v4

    goto :goto_16

    .line 1168
    :catchall_5a
    move-exception v3

    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_5a

    throw v3

    .line 1170
    :cond_5d
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendExtraCommand: unknown command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method setCscParameters(Landroid/os/Bundle;)V
    .registers 8
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3199
    const-string v0, "GpsLocationProvider"

    const-string v2, "setCscParameters"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    if-nez p1, :cond_c

    .line 3215
    :cond_b
    :goto_b
    return-void

    .line 3204
    :cond_c
    const-string v0, "operation_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionModeFromCSC:Ljava/lang/String;

    .line 3205
    const-string v0, "hslp_addr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplAddress:Ljava/lang/String;

    .line 3206
    const-string v0, "hslp_port"

    const/16 v2, 0x1c6c

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplPort:I

    .line 3207
    const-string v0, "ssl"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplSslMode:I

    .line 3208
    const-string v0, "ssl_cert"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplSslType:I

    .line 3210
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionModeFromCSC:Ljava/lang/String;

    const-string v2, "MSBASED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3211
    const-string v0, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SUPL CSC] mSuplAddress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSuplPort "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSuplSslMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplSslMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplAddress:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplPort:I

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplSslMode:I

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplSslType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_supl_server(ILjava/lang/String;III)V

    .line 3213
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerFromCSC:I

    goto :goto_b
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .registers 10
    .parameter "minTime"
    .parameter "ws"

    .prologue
    const/4 v2, 0x0

    .line 1052
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMinTime "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_41

    .line 1055
    long-to-int v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1057
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1058
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1060
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_41
    return-void
.end method

.method public supportsAltitude()Z
    .registers 2

    .prologue
    .line 792
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBearing()Z
    .registers 2

    .prologue
    .line 812
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSpeed()Z
    .registers 2

    .prologue
    .line 802
    const/4 v0, 0x1

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 4
    .parameter "location"

    .prologue
    .line 748
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 749
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .registers 4
    .parameter "state"
    .parameter "info"

    .prologue
    .line 603
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 604
    return-void
.end method
