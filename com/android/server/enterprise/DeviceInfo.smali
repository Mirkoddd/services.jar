.class public Lcom/android/server/enterprise/DeviceInfo;
.super Landroid/app/enterprise/IDeviceInfo$Stub;
.source "DeviceInfo.java"


# static fields
.field private static final DATA_USAGE_MILISECS_HIGH:I = 0x3c

.field private static final DATA_USAGE_MILISECS_LOW:I = 0x1

.field private static final DATA_USAGE_TO_STORAGE_COUNTER:I = 0xa

.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataCallConnected:Z

.field private mDataCallLogLastNetType:Ljava/lang/String;

.field private mDataCallLogLastStatus:Ljava/lang/String;

.field private mDataCallLogLastTime:J

.field private mDataCallLogLastValue:J

.field private mDataLogEnabled:Z

.field mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

.field private mDataStatisticsUpdateRun:Ljava/lang/Runnable;

.field private mDataStatsCounter:I

.field private mDataStatsEnabled:Z

.field private mDataUsageEventsHandler:Landroid/os/Handler;

.field private mDataUsageTimer:I

.field private mDataUsageTimerActivated:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mLastUpdateMobileRx:J

.field private mLastUpdateMobileTx:J

.field private mLastUpdateWifiRx:J

.field private mLastUpdateWifiTx:J

.field private mStorageMobileRx:J

.field private mStorageMobileTx:J

.field private mStorageWifiRx:J

.field private mStorageWifiTx:J

.field mTelMgr:Landroid/telephony/TelephonyManager;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStatsEnabled:Z

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/enterprise/IDeviceInfo$Stub;-><init>()V

    .line 46
    iput-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 51
    iput-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 55
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiTx:J

    .line 56
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiRx:J

    .line 57
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileTx:J

    .line 58
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileRx:J

    .line 59
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    .line 60
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    .line 61
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    .line 62
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    .line 63
    iput v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I

    .line 64
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I

    .line 65
    iput-boolean v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 66
    iput-boolean v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    .line 67
    iput-boolean v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    .line 68
    iput-boolean v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataLogEnabled:Z

    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    .line 70
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    .line 71
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    .line 72
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    .line 73
    iput-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    .line 74
    iput-boolean v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallConnected:Z

    .line 634
    new-instance v1, Lcom/android/server/enterprise/DeviceInfo$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/DeviceInfo$1;-><init>(Lcom/android/server/enterprise/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

    .line 651
    new-instance v1, Lcom/android/server/enterprise/DeviceInfo$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/DeviceInfo$2;-><init>(Lcom/android/server/enterprise/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 673
    new-instance v1, Lcom/android/server/enterprise/DeviceInfo$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/DeviceInfo$3;-><init>(Lcom/android/server/enterprise/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    .line 1002
    iput-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 77
    iput-object p1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    .line 78
    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 87
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/DeviceInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->registerCarrierNetworkListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/DeviceInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageValuesInit()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/DeviceInfo;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->updateDataStatisticsUsage()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/DeviceInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/DeviceInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->deregisterCarrierNetworkListener()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/enterprise/DeviceInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/DeviceInfo;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/DeviceInfo;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/DeviceInfo;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/enterprise/DeviceInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallConnected:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/enterprise/DeviceInfo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/android/server/enterprise/DeviceInfo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    return-wide p1
.end method

.method private dataUsageValuesInit()V
    .registers 10

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x0

    .line 684
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageValuesUpdate()V

    .line 685
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getStrictDataUsageTimer()I

    move-result v3

    .line 686
    .local v3, i:I
    if-eqz v3, :cond_7f

    .end local v3           #i:I
    :goto_b
    mul-int/lit16 v6, v3, 0x3e8

    iput v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I

    .line 687
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getDataCallStatisticsEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    .line 688
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getDataCallLoggingEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataLogEnabled:Z

    .line 689
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getWifiStatisticEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    .line 690
    const/4 v6, 0x4

    new-array v0, v6, [Ljava/lang/String;

    const-string v6, "deviceWifiSent"

    aput-object v6, v0, v8

    const/4 v6, 0x1

    const-string v7, "deviceWifiReceived"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-string v7, "deviceNetworkSent"

    aput-object v7, v0, v6

    const-string v6, "deviceNetworkReceived"

    aput-object v6, v0, v5

    .line 694
    .local v0, columns:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "DEVICE"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 696
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_7e

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7e

    .line 697
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 698
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_7e

    .line 700
    :try_start_4e
    const-string v5, "deviceWifiSent"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    .line 701
    const-string v5, "deviceWifiReceived"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    .line 702
    const-string v5, "deviceNetworkSent"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    .line 703
    const-string v5, "deviceNetworkReceived"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J
    :try_end_7e
    .catch Ljava/lang/NullPointerException; {:try_start_4e .. :try_end_7e} :catch_81

    .line 711
    .end local v1           #cv:Landroid/content/ContentValues;
    :cond_7e
    :goto_7e
    return-void

    .end local v0           #columns:[Ljava/lang/String;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v3       #i:I
    :cond_7f
    move v3, v5

    .line 686
    goto :goto_b

    .line 704
    .end local v3           #i:I
    .restart local v0       #columns:[Ljava/lang/String;
    .restart local v1       #cv:Landroid/content/ContentValues;
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_81
    move-exception v2

    .line 705
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v5, "DeviceInfo"

    const-string v6, "initializeStorageValues - Error reading from Device Storage"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->resetDataUsage()V

    goto :goto_7e
.end method

.method private dataUsageValuesUpdate()V
    .registers 3

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiTx:J

    .line 715
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiRx:J

    .line 716
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileTx:J

    .line 717
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileRx:J

    .line 718
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    .line 719
    return-void
.end method

.method private deregisterCarrierNetworkListener()V
    .registers 4

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 671
    return-void
.end method

.method private enforceDeviceInventoryPermission()I
    .registers 3

    .prologue
    .line 1017
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_INVENTORY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 1019
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforcePhone()V
    .registers 3

    .prologue
    .line 1029
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_10

    .line 1030
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :cond_10
    return-void
.end method

.method private enforcePhoneAppOrAdmin()V
    .registers 3

    .prologue
    .line 1035
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_11

    .line 1036
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_INVENTORY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 1038
    :cond_11
    return-void
.end method

.method private enforceSystemUser()V
    .registers 3

    .prologue
    .line 1023
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 1024
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1026
    :cond_12
    return-void
.end method

.method private getCallsCount(Ljava/lang/String;)I
    .registers 7
    .parameter "callType"

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 263
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v3

    if-nez v3, :cond_d

    .line 264
    const/4 v0, -0x1

    .line 278
    :goto_c
    return v0

    .line 267
    :cond_d
    const/4 v0, -0x1

    .line 268
    .local v0, count:I
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_18

    .line 270
    const/4 v0, 0x0

    goto :goto_c

    .line 273
    :cond_18
    :try_start_18
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result v0

    goto :goto_c

    .line 274
    :catch_1d
    move-exception v1

    .line 275
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "DeviceInfo"

    const-string v4, "could not parse integer "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 1006
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1009
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getInt(Ljava/lang/String;)I
    .registers 6
    .parameter "property"

    .prologue
    .line 457
    const/4 v1, -0x1

    .line 459
    .local v1, value:I
    const/4 v2, -0x1

    :try_start_2
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7

    move-result v1

    .line 465
    :goto_6
    return v1

    .line 460
    :catch_7
    move-exception v0

    .line 461
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 462
    const-string v2, "DeviceInfo"

    const-string v3, "could not get property"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private getStrictDataUsageTimer()I
    .registers 8

    .prologue
    .line 597
    const/4 v1, 0x0

    .line 598
    .local v1, ret:I
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "MISC"

    const-string v6, "miscDataStatisticTimer"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 599
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 600
    .local v2, value:I
    if-eqz v1, :cond_23

    if-ge v2, v1, :cond_f

    .line 601
    :cond_23
    move v1, v2

    goto :goto_f

    .line 604
    .end local v2           #value:I
    :cond_25
    if-nez v1, :cond_28

    .line 605
    const/4 v1, 0x3

    .line 607
    :cond_28
    return v1
.end method

.method private getString(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .parameter "property"
    .parameter "fromVM"

    .prologue
    .line 437
    const/4 v1, 0x0

    .line 439
    .local v1, value:Ljava/lang/String;
    if-eqz p2, :cond_8

    .line 440
    :try_start_3
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    :goto_7
    return-object v1

    .line 442
    :cond_8
    const-string v2, "unknown"

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_18

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x0

    :cond_17
    goto :goto_7

    .line 445
    :catch_18
    move-exception v0

    .line 446
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 447
    const-string v2, "DeviceInfo"

    const-string v3, "could not get property"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private getTrafficMobileRx()J
    .registers 5

    .prologue
    .line 630
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 631
    .local v0, mobileValue:J
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_c

    const-wide/16 v0, 0x0

    .end local v0           #mobileValue:J
    :cond_c
    return-wide v0
.end method

.method private getTrafficMobileTx()J
    .registers 5

    .prologue
    .line 625
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .line 626
    .local v0, mobileValue:J
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_c

    const-wide/16 v0, 0x0

    .end local v0           #mobileValue:J
    :cond_c
    return-wide v0
.end method

.method private getTrafficWifiRx()J
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v7, -0x1

    .line 618
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 619
    .local v0, mobileValue:J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    .line 620
    .local v2, totalValue:J
    cmp-long v6, v7, v2

    if-nez v6, :cond_11

    move-wide v2, v4

    .end local v2           #totalValue:J
    :cond_11
    cmp-long v6, v7, v0

    if-nez v6, :cond_16

    move-wide v0, v4

    .end local v0           #mobileValue:J
    :cond_16
    sub-long v4, v2, v0

    return-wide v4
.end method

.method private getTrafficWifiTx()J
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v7, -0x1

    .line 611
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .line 612
    .local v0, mobileValue:J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    .line 613
    .local v2, totalValue:J
    cmp-long v6, v7, v2

    if-nez v6, :cond_11

    move-wide v2, v4

    .end local v2           #totalValue:J
    :cond_11
    cmp-long v6, v7, v0

    if-nez v6, :cond_16

    move-wide v0, v4

    .end local v0           #mobileValue:J
    :cond_16
    sub-long v4, v2, v0

    return-wide v4
.end method

.method private isWifiStateEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 722
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_11

    .line 723
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 725
    :cond_11
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_16

    .line 729
    :goto_15
    return v0

    .line 728
    :cond_16
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_20

    const/4 v0, 0x1

    .line 729
    .local v0, ret:Z
    :cond_20
    goto :goto_15
.end method

.method private logDataCall(J)Z
    .registers 11
    .parameter "bytes"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 938
    iget-boolean v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataLogEnabled:Z

    if-nez v5, :cond_f

    .line 939
    const-string v5, "DeviceInfo"

    const-string v6, "Logging disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :goto_e
    return v4

    .line 942
    :cond_f
    iget-boolean v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallConnected:Z

    if-nez v5, :cond_1b

    .line 943
    const-string v5, "DeviceInfo"

    const-string v6, "Data Disconnected, don\'t log"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 946
    :cond_1b
    cmp-long v5, p1, v6

    if-gtz v5, :cond_27

    .line 947
    const-string v5, "DeviceInfo"

    const-string v6, "No bytes to log"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 953
    :cond_27
    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-nez v5, :cond_33

    .line 954
    const-string v5, "DeviceInfo"

    const-string v6, "failed logDataCall because mTelMgr is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 958
    :cond_33
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 959
    const-string v3, "ROAMING"

    .line 965
    .local v3, status:Ljava/lang/String;
    :goto_3d
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    .line 970
    .local v2, netType:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 971
    :cond_53
    iput-wide v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    .line 972
    iput-wide v6, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    .line 976
    :cond_57
    iput-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    .line 977
    const-string v4, "UNKNOWN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 978
    iput-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    .line 981
    :cond_63
    iget-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    .line 984
    const/4 v1, 0x0

    .line 985
    .local v1, cvWhere:Landroid/content/ContentValues;
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #cvWhere:Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 986
    .restart local v1       #cvWhere:Landroid/content/ContentValues;
    const-string v4, "dataCallDate"

    iget-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 987
    const-string v4, "dataCallStatus"

    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const-string v4, "dataCallNetType"

    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    .line 992
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 993
    .local v0, cvUpdate:Landroid/content/ContentValues;
    const-string v4, "dataCallDate"

    iget-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 994
    const-string v4, "dataCallStatus"

    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string v4, "dataCallNetType"

    iget-object v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string v4, "dataCallBytes"

    iget-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 997
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "DATACALLLOG"

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    goto/16 :goto_e

    .line 961
    .end local v0           #cvUpdate:Landroid/content/ContentValues;
    .end local v1           #cvWhere:Landroid/content/ContentValues;
    .end local v2           #netType:Ljava/lang/String;
    .end local v3           #status:Ljava/lang/String;
    :cond_c4
    const-string v3, "NORMAL"

    .restart local v3       #status:Ljava/lang/String;
    goto/16 :goto_3d
.end method

.method private registerCarrierNetworkListener()V
    .registers 4

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 667
    return-void
.end method

.method private declared-synchronized updateDataStatisticsUsage()J
    .registers 14

    .prologue
    const-wide/16 v11, 0x0

    .line 733
    monitor-enter p0

    const-wide/16 v7, 0x0

    .line 734
    .local v7, wifiUsage:J
    const-wide/16 v3, 0x0

    .line 735
    .local v3, mobileUsage:J
    const-wide/16 v1, 0x0

    .line 736
    .local v1, delta:J
    const-wide/16 v5, 0x0

    .line 737
    .local v5, valueNow:J
    :try_start_b
    iget v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I

    .line 740
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v5

    .line 741
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiTx:J

    cmp-long v9, v5, v9

    if-lez v9, :cond_2e

    .line 742
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiTx:J

    sub-long v1, v5, v9

    .line 743
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->isWifiStateEnabled()Z

    move-result v9

    if-eqz v9, :cond_2e

    iget-boolean v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    if-eqz v9, :cond_2e

    .line 744
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    .line 747
    :cond_2e
    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiTx:J

    .line 748
    add-long/2addr v7, v1

    .line 749
    const-wide/16 v1, 0x0

    .line 752
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v5

    .line 753
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiRx:J

    cmp-long v9, v5, v9

    if-lez v9, :cond_50

    .line 754
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiRx:J

    sub-long v1, v5, v9

    .line 755
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->isWifiStateEnabled()Z

    move-result v9

    if-eqz v9, :cond_50

    iget-boolean v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    if-eqz v9, :cond_50

    .line 756
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    .line 759
    :cond_50
    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiRx:J

    .line 760
    add-long/2addr v7, v1

    .line 761
    const-wide/16 v1, 0x0

    .line 764
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v5

    .line 765
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileTx:J

    cmp-long v9, v5, v9

    if-ltz v9, :cond_e4

    .line 766
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileTx:J

    sub-long v1, v5, v9

    .line 767
    iget-boolean v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    if-eqz v9, :cond_6c

    .line 768
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    .line 774
    :cond_6c
    :goto_6c
    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileTx:J

    .line 775
    add-long/2addr v3, v1

    .line 776
    const-wide/16 v1, 0x0

    .line 779
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v5

    .line 780
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileRx:J

    cmp-long v9, v5, v9

    if-ltz v9, :cond_f0

    .line 781
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileRx:J

    sub-long v1, v5, v9

    .line 782
    iget-boolean v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    if-eqz v9, :cond_88

    .line 783
    iget-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    add-long/2addr v9, v1

    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    .line 789
    :cond_88
    :goto_88
    iput-wide v5, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileRx:J

    .line 790
    add-long/2addr v3, v1

    .line 791
    const-wide/16 v1, 0x0

    .line 793
    cmp-long v9, v3, v11

    if-lez v9, :cond_94

    .line 794
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/DeviceInfo;->logDataCall(J)Z

    .line 796
    :cond_94
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Landroid/app/enterprise/PhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V

    .line 799
    iget v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I

    const/16 v10, 0xa

    if-lt v9, v10, :cond_e0

    .line 800
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 801
    .local v0, cv:Landroid/content/ContentValues;
    const-string v9, "deviceWifiSent"

    iget-wide v10, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 802
    const-string v9, "deviceWifiReceived"

    iget-wide v10, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 803
    const-string v9, "deviceNetworkSent"

    iget-wide v10, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 804
    const-string v9, "deviceNetworkReceived"

    iget-wide v10, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 805
    iget-object v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "DEVICE"

    invoke-virtual {v9, v10, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 806
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsCounter:I
    :try_end_e0
    .catchall {:try_start_b .. :try_end_e0} :catchall_ed

    .line 808
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_e0
    add-long v9, v7, v3

    monitor-exit p0

    return-wide v9

    .line 771
    :cond_e4
    const-wide/16 v9, 0x0

    :try_start_e6
    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    .line 772
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J
    :try_end_ec
    .catchall {:try_start_e6 .. :try_end_ec} :catchall_ed

    goto :goto_6c

    .line 733
    :catchall_ed
    move-exception v9

    monitor-exit p0

    throw v9

    .line 786
    :cond_f0
    const-wide/16 v9, 0x0

    :try_start_f2
    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    .line 787
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J
    :try_end_f8
    .catchall {:try_start_f2 .. :try_end_f8} :catchall_ed

    goto :goto_88
.end method


# virtual methods
.method public addCallsCount(Ljava/lang/String;)V
    .registers 7
    .parameter "callType"

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforcePhone()V

    .line 309
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, value:Ljava/lang/String;
    const/4 v0, 0x0

    .line 311
    .local v0, count:I
    if-eqz v2, :cond_13

    .line 313
    :try_start_c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_f} :catch_1f

    move-result v0

    .line 314
    if-gez v0, :cond_13

    .line 315
    const/4 v0, 0x0

    .line 322
    :cond_13
    :goto_13
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 323
    return-void

    .line 317
    :catch_1f
    move-exception v1

    .line 318
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "DeviceInfo"

    const-string v4, "could not parse integer "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public clearCallingLog()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 921
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 923
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_d

    .line 933
    :goto_c
    return v1

    .line 928
    :cond_d
    :try_start_d
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "CallingLog"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->remove(Ljava/lang/String;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_16

    move-result v1

    goto :goto_c

    .line 929
    :catch_16
    move-exception v0

    .line 930
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DeviceInfo"

    const-string v3, "could not clear call log "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public clearSMSLog()Z
    .registers 4

    .prologue
    .line 1122
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1124
    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "SMS"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->remove(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_c

    move-result v1

    .line 1129
    :goto_b
    return v1

    .line 1125
    :catch_c
    move-exception v0

    .line 1126
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DeviceInfo"

    const-string v2, "could not write log edm database"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public dataUsageTimerActivation()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 812
    iget-boolean v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    if-nez v3, :cond_1c

    iget-boolean v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    if-nez v3, :cond_1c

    iget-boolean v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataLogEnabled:Z

    if-nez v3, :cond_1c

    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/PhoneRestrictionPolicy;->getDataCallLimitEnabled()Z

    move-result v3

    if-eqz v3, :cond_33

    :cond_1c
    move v0, v2

    .line 814
    .local v0, policiesActive:Z
    :goto_1d
    if-eqz v0, :cond_35

    iget-boolean v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    if-nez v3, :cond_35

    .line 816
    iput-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 817
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageValuesUpdate()V

    .line 818
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 824
    :cond_32
    :goto_32
    return-void

    .end local v0           #policiesActive:Z
    :cond_33
    move v0, v1

    .line 812
    goto :goto_1d

    .line 819
    .restart local v0       #policiesActive:Z
    :cond_35
    if-nez v0, :cond_32

    iget-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz v2, :cond_32

    .line 821
    iput-boolean v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 822
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_32
.end method

.method public enableCallingCapture(Z)Z
    .registers 6
    .parameter "enable"

    .prologue
    .line 1138
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .line 1140
    .local v0, uid:I
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1141
    const/4 v1, 0x0

    .line 1144
    :goto_d
    return v1

    :cond_e
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "MISC"

    const-string v3, "CallingLogEnabled"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_d
.end method

.method public enableSMSCapture(Z)Z
    .registers 7
    .parameter "status"

    .prologue
    .line 1041
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v1

    .line 1043
    .local v1, uId:I
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "MISC"

    const-string v4, "smsLogEnabled"

    invoke-virtual {v2, v1, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_f

    move-result v2

    .line 1049
    :goto_e
    return v2

    .line 1045
    :catch_f
    move-exception v0

    .line 1046
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DeviceInfo"

    const-string v3, "could not enable sms capture"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public getAvailableCapacityExternal()J
    .registers 4

    .prologue
    .line 143
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getAvailableExternalMemorySize()J

    move-result-wide v1

    return-wide v1
.end method

.method public getAvailableCapacityInternal()J
    .registers 4

    .prologue
    .line 163
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getAvailableInternalMemorySize()J

    move-result-wide v1

    return-wide v1
.end method

.method public getAvailableRamMemory()J
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 416
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "MemFree:"

    aput-object v3, v1, v7

    const-string v3, "Cached:"

    aput-object v3, v1, v8

    .line 419
    .local v1, memInfoFields:[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [J

    .line 420
    .local v2, memInfoSizes:[J
    const-string v3, "/proc/meminfo"

    invoke-static {v3, v1, v2}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 422
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    array-length v3, v2

    if-ge v0, v3, :cond_23

    .line 423
    aget-wide v3, v2, v0

    const-wide/16 v5, 0x400

    mul-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 426
    :cond_23
    aget-wide v3, v2, v7

    aget-wide v5, v2, v8

    add-long/2addr v3, v5

    return-wide v3
.end method

.method public getBytesReceivedNetwork()J
    .registers 3

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 536
    iget-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    return-wide v0
.end method

.method public getBytesReceivedWiFi()J
    .registers 3

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 526
    iget-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    return-wide v0
.end method

.method public getBytesSentNetwork()J
    .registers 3

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 531
    iget-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    return-wide v0
.end method

.method public getBytesSentWiFi()J
    .registers 3

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 521
    iget-wide v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    return-wide v0
.end method

.method public getDataCallLog(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 885
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 887
    const/4 v7, 0x4

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "dataCallDate"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "dataCallStatus"

    aput-object v8, v0, v7

    const/4 v7, 0x2

    const-string v8, "dataCallNetType"

    aput-object v8, v0, v7

    const/4 v7, 0x3

    const-string v8, "dataCallBytes"

    aput-object v8, v0, v7

    .line 891
    .local v0, columns:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 892
    .local v6, where:Landroid/content/ContentValues;
    if-eqz p1, :cond_27

    .line 893
    new-instance v6, Landroid/content/ContentValues;

    .end local v6           #where:Landroid/content/ContentValues;
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 894
    .restart local v6       #where:Landroid/content/ContentValues;
    const-string v7, "dataCallDate"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :cond_27
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "DATACALLLOG"

    invoke-virtual {v7, v8, v0, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getValuesListBiggerThan(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 899
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v5, :cond_33

    .line 900
    const/4 v4, 0x0

    .line 917
    :cond_32
    return-object v4

    .line 903
    :cond_33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 904
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_32

    .line 906
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 907
    .local v1, cv:Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dataCallDate"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dataCallStatus"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dataCallNetType"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dataCallBytes"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 914
    .local v3, line:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42
.end method

.method public getDataCallLoggingEnabled()Z
    .registers 8

    .prologue
    .line 850
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 852
    const/4 v1, 0x0

    .line 853
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "enableDataCallLogging"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 856
    .local v3, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 857
    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    .line 858
    move v1, v2

    .line 862
    .end local v2           #value:Z
    :cond_26
    return v1
.end method

.method public getDataCallStatisticsEnabled()Z
    .registers 8

    .prologue
    .line 506
    const/4 v1, 0x0

    .line 507
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "enableWifiDataCallDataStatistic"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 510
    .local v3, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 511
    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    .line 512
    move v1, v2

    .line 516
    .end local v2           #value:Z
    :cond_23
    return v1
.end method

.method public getDataUsageTimer()I
    .registers 7

    .prologue
    .line 582
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 585
    .local v0, callingUid:I
    :try_start_4
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "MISC"

    const-string v5, "miscDataStatisticTimer"

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_4 .. :try_end_d} :catch_f

    move-result v2

    .line 591
    .local v2, i:I
    :goto_e
    return v2

    .line 587
    .end local v2           #i:I
    :catch_f
    move-exception v1

    .line 588
    .local v1, e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    const-string v3, "DeviceInfo"

    const-string v4, "getDataUsageTimer could not read database"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v2, -0x1

    .restart local v2       #i:I
    goto :goto_e
.end method

.method public getDeviceMaker()Ljava/lang/String;
    .registers 3

    .prologue
    .line 235
    const-string v0, "ro.product.manufacturer"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 185
    const-string v0, "ro.product.device"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOS()Ljava/lang/String;
    .registers 3

    .prologue
    .line 242
    const-string v0, "os.name"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOSVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 249
    const-string v0, "os.version"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePlatform()Ljava/lang/String;
    .registers 4

    .prologue
    .line 256
    const-string v1, "ro.build.version.release"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public getDeviceProcessorSpeed()Ljava/lang/String;
    .registers 8

    .prologue
    .line 364
    const-string v3, ""

    .line 365
    .local v3, s:Ljava/lang/String;
    const/4 v0, 0x0

    .line 369
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_1b

    .line 370
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_3f

    move-result-object v3

    .line 376
    if-eqz v1, :cond_18

    .line 380
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_37

    :cond_18
    :goto_18
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v3

    .line 386
    .end local v3           #s:Ljava/lang/String;
    .local v4, s:Ljava/lang/String;
    :goto_1a
    return-object v4

    .line 373
    .end local v4           #s:Ljava/lang/String;
    .restart local v3       #s:Ljava/lang/String;
    :catch_1b
    move-exception v2

    .line 374
    .local v2, e:Ljava/lang/Exception;
    :goto_1c
    :try_start_1c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_26

    .line 376
    if-eqz v0, :cond_24

    .line 380
    :try_start_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_32

    :cond_24
    :goto_24
    move-object v4, v3

    .line 386
    .end local v3           #s:Ljava/lang/String;
    .restart local v4       #s:Ljava/lang/String;
    goto :goto_1a

    .line 376
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #s:Ljava/lang/String;
    .restart local v3       #s:Ljava/lang/String;
    :catchall_26
    move-exception v5

    :goto_27
    if-eqz v0, :cond_2c

    .line 380
    :try_start_29
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 376
    :cond_2c
    :goto_2c
    throw v5

    .line 381
    :catch_2d
    move-exception v2

    .line 382
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c

    .line 381
    :catch_32
    move-exception v2

    .line 382
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24

    .line 381
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_37
    move-exception v2

    .line 382
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 376
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_3c
    move-exception v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_27

    .line 373
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_3f
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1c
.end method

.method public getDeviceProcessorType()Ljava/lang/String;
    .registers 7

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 332
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_41
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_32

    .line 334
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_29

    .line 337
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 339
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_57
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_5a

    move-result-object v3

    .line 349
    if-eqz v1, :cond_27

    .line 351
    :try_start_24
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_4d

    :cond_27
    :goto_27
    move-object v0, v1

    .line 358
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #s:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_28
    return-object v3

    .line 349
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #s:Ljava/lang/String;
    :cond_29
    if-eqz v1, :cond_2e

    .line 351
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_52

    :cond_2e
    :goto_2e
    move-object v0, v1

    .line 358
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #s:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_2f
    :goto_2f
    const-string v3, ""

    goto :goto_28

    .line 345
    :catch_32
    move-exception v2

    .line 346
    .local v2, e:Ljava/lang/Exception;
    :goto_33
    :try_start_33
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_41

    .line 349
    if-eqz v0, :cond_2f

    .line 351
    :try_start_38
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_2f

    .line 353
    :catch_3c
    move-exception v2

    .line 354
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f

    .line 349
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_41
    move-exception v4

    :goto_42
    if-eqz v0, :cond_47

    .line 351
    :try_start_44
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    .line 349
    :cond_47
    :goto_47
    throw v4

    .line 353
    :catch_48
    move-exception v2

    .line 354
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47

    .line 353
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #s:Ljava/lang/String;
    :catch_4d
    move-exception v2

    .line 354
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27

    .line 353
    .end local v2           #e:Ljava/lang/Exception;
    :catch_52
    move-exception v2

    .line 354
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e

    .line 349
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #s:Ljava/lang/String;
    :catchall_57
    move-exception v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_42

    .line 345
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_5a
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_33
.end method

.method public getDroppedCallsCount()I
    .registers 2

    .prologue
    .line 282
    const-string v0, "dropped"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/DeviceInfo;->getCallsCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInboundSMSCaptured()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1087
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1088
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_9
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "smsType"

    aput-object v8, v5, v7

    .line 1091
    .local v5, sColumns:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v6, v7

    .line 1092
    .local v6, sValues:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "SMS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1094
    .local v1, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1095
    .local v0, cv:Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "From:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Body:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsBody"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6d} :catch_6e

    goto :goto_25

    .line 1098
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #sColumns:[Ljava/lang/String;
    .end local v6           #sValues:[Ljava/lang/String;
    :catch_6e
    move-exception v2

    .line 1099
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    .end local v2           #e:Ljava/lang/Exception;
    :cond_76
    return-object v4
.end method

.method public getIncomingCallingCaptured()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1229
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1231
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-nez v7, :cond_11

    .line 1232
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1248
    :cond_10
    :goto_10
    return-object v4

    .line 1235
    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_17
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "callingType"

    aput-object v8, v5, v7

    .line 1238
    .local v5, sColumns:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v6, v7

    .line 1239
    .local v6, sValues:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "CallingLog"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1240
    .local v1, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1241
    .local v0, cv:Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "From:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingDuration"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingStatus"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_8b} :catch_8c

    goto :goto_33

    .line 1244
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #sColumns:[Ljava/lang/String;
    .end local v6           #sValues:[Ljava/lang/String;
    :catch_8c
    move-exception v2

    .line 1245
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10
.end method

.method public getMissedCallsCount()I
    .registers 2

    .prologue
    .line 286
    const-string v0, "missed"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/DeviceInfo;->getCallsCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getModelName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 171
    const-string v0, "ro.product.name"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .registers 3

    .prologue
    .line 178
    const-string v0, "ro.product.model"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModemFirmware()Ljava/lang/String;
    .registers 3

    .prologue
    .line 214
    const-string v0, "gsm.version.baseband"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutboundSMSCaptured()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1069
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1070
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_9
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "smsType"

    aput-object v8, v5, v7

    .line 1073
    .local v5, sColumns:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    .line 1074
    .local v6, sValues:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "SMS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1075
    .local v1, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1076
    .local v0, cv:Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "To:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Body:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "smsBody"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6d} :catch_6e

    goto :goto_25

    .line 1079
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #sColumns:[Ljava/lang/String;
    .end local v6           #sValues:[Ljava/lang/String;
    :catch_6e
    move-exception v2

    .line 1080
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not open edm database"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    .end local v2           #e:Ljava/lang/Exception;
    :cond_76
    return-object v4
.end method

.method public getOutgoingCallingCaptured()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1202
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 1204
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-nez v7, :cond_11

    .line 1205
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1221
    :cond_10
    :goto_10
    return-object v4

    .line 1208
    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1210
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_17
    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "callingType"

    aput-object v8, v5, v7

    .line 1211
    .local v5, sColumns:[Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    .line 1212
    .local v6, sValues:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "CallingLog"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1213
    .local v1, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1214
    .local v0, cv:Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "To:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingAddress"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - TimeStamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingTimeStamp"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingDuration"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "callingStatus"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_8b} :catch_8c

    goto :goto_33

    .line 1217
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #sColumns:[Ljava/lang/String;
    .end local v6           #sValues:[Ljava/lang/String;
    :catch_8c
    move-exception v2

    .line 1218
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "DeviceInfo"

    const-string v8, "could not log edm database"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10
.end method

.method public getPlatformSDK()I
    .registers 2

    .prologue
    .line 221
    const-string v0, "ro.build.version.sdk"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/DeviceInfo;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 228
    const-string v0, "ro.build.version.release"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformVersionName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 199
    const-string v0, "UNKNOWN"

    .line 200
    .local v0, platformName:Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_b

    .line 201
    const-string v0, "GINGERBREAD"

    .line 207
    :cond_a
    :goto_a
    return-object v0

    .line 202
    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-gt v1, v2, :cond_14

    .line 203
    const-string v0, "HONEYCOMB"

    goto :goto_a

    .line 204
    :cond_14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_a

    .line 205
    const-string v0, "ICECREAM_SANDWICH"

    goto :goto_a
.end method

.method public getSerialNumber()Ljava/lang/String;
    .registers 3

    .prologue
    .line 192
    const-string v0, "ril.serialnumber"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuccessCallsCount()I
    .registers 2

    .prologue
    .line 290
    const-string v0, "success"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/DeviceInfo;->getCallsCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTotalCapacityExternal()J
    .registers 4

    .prologue
    .line 133
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getTotalExternalMemorySize()J

    move-result-wide v1

    return-wide v1
.end method

.method public getTotalCapacityInternal()J
    .registers 4

    .prologue
    .line 153
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, devStorageUtil:Lcom/android/server/enterprise/DeviceStorageUtil;
    invoke-virtual {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->getTotalInternalMemorySize()J

    move-result-wide v1

    return-wide v1
.end method

.method public getTotalRamMemory()J
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 396
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "MemTotal:"

    aput-object v3, v1, v7

    .line 399
    .local v1, memInfoFields:[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [J

    .line 400
    .local v2, memInfoSizes:[J
    const-string v3, "/proc/meminfo"

    invoke-static {v3, v1, v2}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 402
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v3, v2

    if-ge v0, v3, :cond_1e

    .line 403
    aget-wide v3, v2, v0

    const-wide/16 v5, 0x400

    mul-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 406
    :cond_1e
    aget-wide v3, v2, v7

    return-wide v3
.end method

.method public getWifiStatisticEnabled()Z
    .registers 8

    .prologue
    .line 482
    const/4 v1, 0x0

    .line 483
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "MISC"

    const-string v6, "enableWifiDataStatistic"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 484
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 485
    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    .line 486
    move v1, v2

    .line 490
    .end local v2           #value:Z
    :cond_23
    return v1
.end method

.method public isCallingCaptureEnabled()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 1152
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforcePhoneAppOrAdmin()V

    .line 1153
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_e

    move v4, v5

    .line 1169
    :goto_d
    return v4

    .line 1158
    :cond_e
    :try_start_e
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "MISC"

    const-string v7, "CallingLogEnabled"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1160
    .local v3, isEnabledList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_30

    move-result v2

    .line 1161
    .local v2, isEnabled:Z
    if-eqz v2, :cond_1c

    .line 1162
    const/4 v4, 0x1

    goto :goto_d

    .line 1165
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #isEnabled:Z
    .end local v3           #isEnabledList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :catch_30
    move-exception v0

    .line 1166
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DeviceInfo"

    const-string v6, "could not open edm database"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_38
    move v4, v5

    .line 1169
    goto :goto_d
.end method

.method public isDeviceLocked()Z
    .registers 6

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 116
    .local v1, isLocked:Z
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 118
    .local v2, km:Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-result v1

    .line 123
    .end local v2           #km:Landroid/app/KeyguardManager;
    :goto_f
    return v1

    .line 119
    :catch_10
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public isDeviceSecure()Z
    .registers 5

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, isSecure:Z
    :try_start_4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_d

    .line 100
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 101
    :cond_d
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 102
    .local v2, lu:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_19

    move-result v1

    .line 107
    .end local v2           #lu:Lcom/android/internal/widget/LockPatternUtils;
    :goto_18
    return v1

    .line 103
    :catch_19
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public isSMSCaptureEnabled()Z
    .registers 8

    .prologue
    .line 1053
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforcePhoneAppOrAdmin()V

    .line 1055
    :try_start_3
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "MISC"

    const-string v6, "smsLogEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1056
    .local v3, policyStatusList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 1057
    .local v2, policyStatus:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_25

    move-result v4

    if-eqz v4, :cond_11

    .line 1058
    const/4 v4, 0x1

    .line 1065
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #policyStatus:Ljava/lang/Boolean;
    .end local v3           #policyStatusList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :goto_24
    return v4

    .line 1061
    :catch_25
    move-exception v0

    .line 1062
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DeviceInfo"

    const-string v5, "could not open edm database"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2d
    const/4 v4, 0x0

    goto :goto_24
.end method

.method public resetCallsCount()Z
    .registers 5

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 296
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_d

    .line 297
    const/4 v0, 0x0

    .line 304
    :goto_c
    return v0

    .line 300
    :cond_d
    const/4 v0, 0x1

    .line 301
    .local v0, status:Z
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "success"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 302
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "missed"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 303
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "dropped"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 304
    goto :goto_c
.end method

.method public resetDataCallLogging(Ljava/lang/String;)Z
    .registers 5
    .parameter "time"

    .prologue
    const-wide/16 v1, 0x0

    .line 866
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 869
    iput-wide v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J

    .line 870
    iput-wide v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J

    .line 873
    const/4 v0, 0x0

    .line 875
    .local v0, where:Landroid/content/ContentValues;
    if-eqz p1, :cond_16

    .line 876
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #where:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 877
    .restart local v0       #where:Landroid/content/ContentValues;
    const-string v1, "dataCallDate"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    :cond_16
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "DATACALLLOG"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByFilterSmallerThan(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method

.method public resetDataUsage()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 540
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    .line 541
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 543
    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    .line 544
    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    .line 545
    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    .line 546
    iput-wide v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    .line 547
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 548
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "deviceWifiSent"

    iget-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiTx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 549
    const-string v1, "deviceWifiReceived"

    iget-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageWifiRx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 550
    const-string v1, "deviceNetworkSent"

    iget-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileTx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 551
    const-string v1, "deviceNetworkReceived"

    iget-wide v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mStorageMobileRx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 552
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "DEVICE"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 554
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiTx:J

    .line 555
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateWifiRx:J

    .line 556
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileTx:J

    .line 557
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mLastUpdateMobileRx:J

    .line 558
    iget-boolean v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz v1, :cond_6f

    .line 559
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 561
    :cond_6f
    return-void
.end method

.method public setDataCallLoggingEnabled(Z)Z
    .registers 7
    .parameter "status"

    .prologue
    .line 837
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .line 838
    .local v0, callingUid:I
    const/4 v1, 0x0

    .line 839
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "PHONERESTRICTION"

    const-string v4, "enableDataCallLogging"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 841
    if-eqz v1, :cond_1a

    .line 842
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getDataCallLoggingEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataLogEnabled:Z

    .line 843
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageTimerActivation()V

    .line 845
    :cond_1a
    return v1
.end method

.method public setDataCallStatisticsEnabled(Z)Z
    .registers 7
    .parameter "status"

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .line 495
    .local v0, callingUid:I
    const/4 v1, 0x0

    .line 496
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "PHONERESTRICTION"

    const-string v4, "enableWifiDataCallDataStatistic"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 498
    if-eqz v1, :cond_1a

    .line 499
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getDataCallStatisticsEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    .line 500
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageTimerActivation()V

    .line 502
    :cond_1a
    return v1
.end method

.method public setDataUsageTimer(I)Z
    .registers 8
    .parameter "seconds"

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .line 565
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 566
    const/4 v1, 0x0

    .line 567
    .local v1, ret:Z
    const/4 v2, 0x1

    if-lt p1, v2, :cond_13

    const/16 v2, 0x3c

    if-le p1, v2, :cond_14

    .line 568
    :cond_13
    const/4 p1, 0x3

    .line 570
    :cond_14
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "MISC"

    const-string v4, "miscDataStatisticTimer"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 572
    if-eqz v1, :cond_28

    .line 573
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->getStrictDataUsageTimer()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I

    .line 575
    :cond_28
    iget-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz v2, :cond_36

    .line 576
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataUsageTimer:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 578
    :cond_36
    return v1
.end method

.method public setWifiStatisticEnabled(Z)Z
    .registers 7
    .parameter "enable"

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceDeviceInventoryPermission()I

    move-result v0

    .line 471
    .local v0, callingUid:I
    const/4 v1, 0x0

    .line 472
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "MISC"

    const-string v4, "enableWifiDataStatistic"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 474
    if-eqz v1, :cond_1a

    .line 475
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getWifiStatisticEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    .line 476
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageTimerActivation()V

    .line 478
    :cond_1a
    return v1
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .parameter "address"
    .parameter "timeStamp"
    .parameter "duration"
    .parameter "status"
    .parameter "isIncoming"

    .prologue
    .line 1182
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforcePhone()V

    .line 1184
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1195
    :goto_b
    return-void

    .line 1188
    :cond_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1189
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "callingType"

    if-eqz p5, :cond_36

    const-string v1, "1"

    :goto_17
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const-string v1, "callingStatus"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const-string v1, "callingAddress"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    const-string v1, "callingTimeStamp"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const-string v1, "callingDuration"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "CallingLog"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_b

    .line 1189
    :cond_36
    const-string v1, "0"

    goto :goto_17
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .parameter "address"
    .parameter "timeStamp"
    .parameter "message"
    .parameter "isInbound"

    .prologue
    .line 1106
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforcePhone()V

    .line 1107
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1108
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "SMS"

    .line 1110
    .local v2, sTableName:Ljava/lang/String;
    :try_start_a
    const-string v4, "smsType"

    if-eqz p4, :cond_28

    const-string v3, "1"

    :goto_10
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const-string v3, "smsAddress"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const-string v3, "smsTimeStamp"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-string v3, "smsBody"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v3, p0, Lcom/android/server/enterprise/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1119
    :goto_27
    return-void

    .line 1110
    :cond_28
    const-string v3, "0"
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2a} :catch_2b

    goto :goto_10

    .line 1115
    :catch_2b
    move-exception v1

    .line 1116
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "DeviceInfo"

    const-string v4, "could not write log edm database"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method public updateDataUsageState()V
    .registers 2

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceInfo;->enforceSystemUser()V

    .line 828
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getWifiStatisticEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mWifiStatsEnabled:Z

    .line 829
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getDataCallStatisticsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataStatsEnabled:Z

    .line 830
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->getDataCallLoggingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/DeviceInfo;->mDataLogEnabled:Z

    .line 831
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceInfo;->dataUsageTimerActivation()V

    .line 832
    return-void
.end method
