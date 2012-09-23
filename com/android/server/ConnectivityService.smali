.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$VpnCallback;,
        Lcom/android/server/ConnectivityService$SettingsObserver;,
        Lcom/android/server/ConnectivityService$MyHandler;,
        Lcom/android/server/ConnectivityService$FeatureUser;,
        Lcom/android/server/ConnectivityService$RadioAttributes;
    }
.end annotation


# static fields
.field private static final ADD:Z = true

.field private static final DBG:Z = true

.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final EVENT_APPLY_GLOBAL_HTTP_PROXY:I = 0x6d

.field private static final EVENT_CHANGE_MOBILE_DATA_ENABLED:I = 0x66

.field private static final EVENT_CHANGE_WIFI_TO_MOBILE:I = 0x72

.field private static final EVENT_CLEAR_NET_TRANSITION_WAKELOCK:I = 0x6c

.field private static final EVENT_INET_CONDITION_CHANGE:I = 0x68

.field private static final EVENT_INET_CONDITION_HOLD_END:I = 0x69

.field private static final EVENT_RESTORE_DEFAULT_NETWORK:I = 0x65

.field private static final EVENT_RESTORE_DNS:I = 0x6f

.field private static final EVENT_SEND_STICKY_BROADCAST_INTENT:I = 0x70

.field private static final EVENT_SET_DEPENDENCY_MET:I = 0x6e

.field private static final EVENT_SET_MOBILE_DATA:I = 0x6b

.field private static final EVENT_SET_NETWORK_PREFERENCE:I = 0x67

.field private static final EVENT_SET_POLICY_DATA_ENABLE:I = 0x71

.field private static final INET_CONDITION_LOG_MAX_SIZE:I = 0xf

.field private static final LOGD_RULES:Z = false

.field private static final MAX_HOSTROUTE_CYCLE_COUNT:I = 0xa

.field private static final MAX_NETWORK_STATE_TRACKER_EVENT:I = 0x64

.field private static final MIN_NETWORK_STATE_TRACKER_EVENT:I = 0x1

.field private static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final REMOVE:Z = false

.field private static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "ConnectivityService"

.field private static final TO_DEFAULT_TABLE:Z = true

.field private static final TO_SECONDARY_TABLE:Z

.field private static final VDBG:Z

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field private mActiveDefaultNetwork:I

.field private mAddedRoutes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentLinkProperties:[Landroid/net/LinkProperties;

.field private mDefaultConnectionSequence:I

.field private mDefaultDns:Ljava/net/InetAddress;

.field private mDefaultInetCondition:I

.field private mDefaultInetConditionPublished:I

.field private mDefaultProxy:Landroid/net/ProxyProperties;

.field private mDefaultProxyDisabled:Z

.field private mDefaultProxyLock:Ljava/lang/Object;

.field private mDnsLock:Ljava/lang/Object;

.field private mDnsOverridden:Z

.field private mFeatureUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ConnectivityService$FeatureUser;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalProxy:Landroid/net/ProxyProperties;

.field private final mGlobalProxyLock:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mInetConditionChangeInFlight:Z

.field private mInetLog:Ljava/util/ArrayList;

.field private mInitialBroadcast:Landroid/content/Intent;

.field private mIsWifiConnected:Z

.field private mIsWifiDisconnected:Z

.field private mMeteredIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNetConfigs:[Landroid/net/NetworkConfig;

.field private mNetRequestersPids:[Ljava/util/List;

.field private mNetTrackers:[Landroid/net/NetworkStateTracker;

.field private mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNetTransitionWakeLockCausedBy:Ljava/lang/String;

.field private mNetTransitionWakeLockSerialNumber:I

.field private mNetTransitionWakeLockTimeout:I

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkPreference:I

.field mNetworksDefined:I

.field private mNumDnsEntries:I

.field private mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mPriorityList:[I

.field mProtectedNetworks:Ljava/util/List;

.field mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

.field private mRulesLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

.field private mSystemReady:Z

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private mTetheringConfigValid:Z

.field private mUidRules:Landroid/util/SparseIntArray;

.field private mVpn:Lcom/android/server/connectivity/Vpn;

.field public mWifiLastState:Landroid/net/NetworkInfo$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .registers 38
    .parameter "context"
    .parameter "netd"
    .parameter "statsService"
    .parameter "policyManager"

    .prologue
    .line 350
    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 136
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    .line 141
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    .line 143
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    .line 145
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 172
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 174
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 175
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 176
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 177
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 179
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    .line 181
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mDnsOverridden:Z

    .line 193
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mIsWifiConnected:Z

    .line 194
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mIsWifiDisconnected:Z

    .line 307
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 315
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    .line 322
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 323
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;

    .line 324
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 327
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 328
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mGlobalProxyLock:Ljava/lang/Object;

    .line 1596
    new-instance v2, Lcom/android/server/ConnectivityService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$1;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 351
    const-string v2, "ConnectivityService starting up"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 353
    new-instance v13, Landroid/os/HandlerThread;

    const-string v2, "ConnectivityServiceThread"

    invoke-direct {v13, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 354
    .local v13, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    .line 355
    new-instance v2, Lcom/android/server/ConnectivityService$MyHandler;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$MyHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    .line 358
    const-string v2, "net.hostname"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 361
    .local v16, id:Ljava/lang/String;
    if-eqz v16, :cond_e0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e0

    .line 362
    new-instance v2, Ljava/lang/String;

    const-string v3, "android-"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 363
    .local v24, name:Ljava/lang/String;
    const-string v2, "net.hostname"

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .end local v16           #id:Ljava/lang/String;
    .end local v24           #name:Ljava/lang/String;
    :cond_e0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_dns_server"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 370
    .local v11, dns:Ljava/lang/String;
    if-eqz v11, :cond_f2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_fd

    .line 371
    :cond_f2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 375
    :cond_fd
    :try_start_fd
    invoke-static {v11}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    :try_end_105
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fd .. :try_end_105} :catch_1cf

    .line 380
    :goto_105
    const-string v2, "missing Context"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 381
    const-string v2, "missing INetworkManagementService"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    .line 382
    const-string v2, "missing INetworkPolicyManager"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 385
    :try_start_12f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {v2, v3}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_13a
    .catch Landroid/os/RemoteException; {:try_start_12f .. :try_end_13a} :catch_1ea

    .line 391
    :goto_13a
    const-string v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/PowerManager;

    .line 393
    .local v28, powerManager:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "ConnectivityService"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    .line 397
    const/16 v2, 0x13

    new-array v2, v2, [Landroid/net/NetworkStateTracker;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .line 399
    const/16 v2, 0x13

    new-array v2, v2, [Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    .line 401
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getPersistedNetworkPreference()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 403
    const/16 v2, 0xe

    new-array v2, v2, [Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    .line 404
    const/16 v2, 0x13

    new-array v2, v2, [Landroid/net/NetworkConfig;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .line 407
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v32

    .line 409
    .local v32, raStrings:[Ljava/lang/String;
    move-object/from16 v8, v32

    .local v8, arr$:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v19, v0

    .local v19, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_19d
    move/from16 v0, v19

    if-ge v15, v0, :cond_23d

    aget-object v31, v8, v15

    .line 410
    .local v31, raString:Ljava/lang/String;
    new-instance v30, Lcom/android/server/ConnectivityService$RadioAttributes;

    invoke-direct/range {v30 .. v31}, Lcom/android/server/ConnectivityService$RadioAttributes;-><init>(Ljava/lang/String;)V

    .line 411
    .local v30, r:Lcom/android/server/ConnectivityService$RadioAttributes;
    move-object/from16 v0, v30

    iget v2, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    const/16 v3, 0xd

    if-le v2, v3, :cond_209

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in radioAttributes - ignoring attempt to define type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 409
    :goto_1cc
    add-int/lit8 v15, v15, 0x1

    goto :goto_19d

    .line 376
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v15           #i$:I
    .end local v19           #len$:I
    .end local v28           #powerManager:Landroid/os/PowerManager;
    .end local v30           #r:Lcom/android/server/ConnectivityService$RadioAttributes;
    .end local v31           #raString:Ljava/lang/String;
    .end local v32           #raStrings:[Ljava/lang/String;
    :catch_1cf
    move-exception v12

    .line 377
    .local v12, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting defaultDns using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_105

    .line 386
    .end local v12           #e:Ljava/lang/IllegalArgumentException;
    :catch_1ea
    move-exception v12

    .line 388
    .local v12, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to register INetworkPolicyListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_13a

    .line 415
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v15       #i$:I
    .restart local v19       #len$:I
    .restart local v28       #powerManager:Landroid/os/PowerManager;
    .restart local v30       #r:Lcom/android/server/ConnectivityService$RadioAttributes;
    .restart local v31       #raString:Ljava/lang/String;
    .restart local v32       #raStrings:[Ljava/lang/String;
    :cond_209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_232

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in radioAttributes - ignoring attempt to redefine type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_1cc

    .line 420
    :cond_232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    aput-object v30, v2, v3

    goto :goto_1cc

    .line 423
    .end local v30           #r:Lcom/android/server/ConnectivityService$RadioAttributes;
    .end local v31           #raString:Ljava/lang/String;
    :cond_23d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    .line 425
    .local v23, naStrings:[Ljava/lang/String;
    move-object/from16 v8, v23

    array-length v0, v8

    move/from16 v19, v0

    const/4 v15, 0x0

    :goto_24e
    move/from16 v0, v19

    if-ge v15, v0, :cond_2fb

    aget-object v22, v8, v15

    .line 427
    .local v22, naString:Ljava/lang/String;
    :try_start_254
    new-instance v20, Landroid/net/NetworkConfig;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 428
    .local v20, n:Landroid/net/NetworkConfig;
    move-object/from16 v0, v20

    iget v2, v0, Landroid/net/NetworkConfig;->type:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_284

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 425
    .end local v20           #n:Landroid/net/NetworkConfig;
    :goto_281
    add-int/lit8 v15, v15, 0x1

    goto :goto_24e

    .line 433
    .restart local v20       #n:Landroid/net/NetworkConfig;
    :cond_284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_2af

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_281

    .line 445
    .end local v20           #n:Landroid/net/NetworkConfig;
    :catch_2ad
    move-exception v2

    goto :goto_281

    .line 438
    .restart local v20       #n:Landroid/net/NetworkConfig;
    :cond_2af
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->radio:I

    aget-object v2, v2, v3

    if-nez v2, :cond_2e6

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to use undefined radio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in network type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_281

    .line 443
    :cond_2e6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aput-object v20, v2, v3

    .line 444
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_2fa
    .catch Ljava/lang/Exception; {:try_start_254 .. :try_end_2fa} :catch_2ad

    goto :goto_281

    .line 450
    .end local v20           #n:Landroid/net/NetworkConfig;
    .end local v22           #naString:Ljava/lang/String;
    :cond_2fb
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v29

    .line 453
    .local v29, protectedNetworks:[I
    move-object/from16 v8, v29

    .local v8, arr$:[I
    array-length v0, v8

    move/from16 v19, v0

    const/4 v15, 0x0

    :goto_315
    move/from16 v0, v19

    if-ge v15, v0, :cond_35a

    aget v27, v8, v15

    .line 454
    .local v27, p:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v27

    if-eqz v2, :cond_33f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33f

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :goto_33c
    add-int/lit8 v15, v15, 0x1

    goto :goto_315

    .line 457
    :cond_33f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring protectedNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_33c

    .line 462
    .end local v27           #p:I
    :cond_35a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .line 464
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v17, v2, -0x1

    .line 465
    .local v17, insertionPoint:I
    const/4 v10, 0x0

    .line 466
    .local v10, currentLowest:I
    const/16 v26, 0x0

    .line 467
    .end local v8           #arr$:[I
    .local v26, nextLowest:I
    :goto_36d
    const/4 v2, -0x1

    move/from16 v0, v17

    if-le v0, v2, :cond_3c1

    .line 468
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .local v8, arr$:[Landroid/net/NetworkConfig;
    array-length v0, v8

    move/from16 v19, v0

    const/4 v15, 0x0

    move/from16 v18, v17

    .end local v17           #insertionPoint:I
    .local v18, insertionPoint:I
    :goto_37c
    move/from16 v0, v19

    if-ge v15, v0, :cond_3ba

    aget-object v21, v8, v15

    .line 469
    .local v21, na:Landroid/net/NetworkConfig;
    if-nez v21, :cond_38b

    move/from16 v17, v18

    .line 468
    .end local v18           #insertionPoint:I
    .restart local v17       #insertionPoint:I
    :goto_386
    add-int/lit8 v15, v15, 0x1

    move/from16 v18, v17

    .end local v17           #insertionPoint:I
    .restart local v18       #insertionPoint:I
    goto :goto_37c

    .line 470
    :cond_38b
    move-object/from16 v0, v21

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    if-ge v2, v10, :cond_394

    move/from16 v17, v18

    .end local v18           #insertionPoint:I
    .restart local v17       #insertionPoint:I
    goto :goto_386

    .line 471
    .end local v17           #insertionPoint:I
    .restart local v18       #insertionPoint:I
    :cond_394
    move-object/from16 v0, v21

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    if-le v2, v10, :cond_3ad

    .line 472
    move-object/from16 v0, v21

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v0, v26

    if-lt v2, v0, :cond_3a4

    if-nez v26, :cond_629

    .line 473
    :cond_3a4
    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v26, v0

    move/from16 v17, v18

    .end local v18           #insertionPoint:I
    .restart local v17       #insertionPoint:I
    goto :goto_386

    .line 477
    .end local v17           #insertionPoint:I
    .restart local v18       #insertionPoint:I
    :cond_3ad
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    add-int/lit8 v17, v18, -0x1

    .end local v18           #insertionPoint:I
    .restart local v17       #insertionPoint:I
    move-object/from16 v0, v21

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aput v3, v2, v18

    goto :goto_386

    .line 479
    .end local v17           #insertionPoint:I
    .end local v21           #na:Landroid/net/NetworkConfig;
    .restart local v18       #insertionPoint:I
    :cond_3ba
    move/from16 v10, v26

    .line 480
    const/16 v26, 0x0

    move/from16 v17, v18

    .end local v18           #insertionPoint:I
    .restart local v17       #insertionPoint:I
    goto :goto_36d

    .line 484
    .end local v8           #arr$:[Landroid/net/NetworkConfig;
    :cond_3c1
    const/16 v2, 0x13

    new-array v2, v2, [Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    .line 485
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v8, arr$:[I
    array-length v0, v8

    move/from16 v19, v0

    const/4 v15, 0x0

    :goto_3d1
    move/from16 v0, v19

    if-ge v15, v0, :cond_3e5

    aget v14, v8, v15

    .line 486
    .local v14, i:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v14

    .line 485
    add-int/lit8 v15, v15, 0x1

    goto :goto_3d1

    .line 489
    .end local v14           #i:I
    :cond_3e5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    .line 491
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 493
    const-string v2, "cm.test.mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_450

    const-string v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_450

    const/4 v2, 0x1

    :goto_410
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mTestMode:Z

    .line 502
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    array-length v0, v8

    move/from16 v19, v0

    const/4 v15, 0x0

    :goto_41c
    move/from16 v0, v19

    if-ge v15, v0, :cond_56f

    aget v25, v8, v15

    .line 503
    .local v25, netType:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v25

    iget v2, v2, Landroid/net/NetworkConfig;->radio:I

    packed-switch v2, :pswitch_data_62e

    .line 541
    :pswitch_42d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to create a DataStateTracker for an unknown radio type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v25

    iget v3, v3, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 502
    :cond_44d
    :goto_44d
    add-int/lit8 v15, v15, 0x1

    goto :goto_41c

    .line 493
    .end local v25           #netType:I
    :cond_450
    const/4 v2, 0x0

    goto :goto_410

    .line 505
    .restart local v25       #netType:I
    :pswitch_452
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_4a0

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    new-instance v3, Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v25

    iget-object v5, v5, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    move/from16 v0, v25

    invoke-direct {v3, v0, v5}, Landroid/net/wifi/WifiStateTracker;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v25

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    .line 545
    :cond_47b
    :goto_47b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    const/4 v3, 0x0

    aput-object v3, v2, v25

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    if-eqz v2, :cond_44d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v25

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_44d

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto :goto_44d

    .line 510
    :cond_4a0
    const/16 v2, 0xd

    move/from16 v0, v25

    if-ne v0, v2, :cond_47b

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    new-instance v3, Landroid/net/wifi/WifiP2pStateTracker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v25

    iget-object v5, v5, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    move/from16 v0, v25

    invoke-direct {v3, v0, v5}, Landroid/net/wifi/WifiP2pStateTracker;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v25

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_47b

    .line 517
    :pswitch_4cb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    new-instance v3, Landroid/net/MobileDataStateTracker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v25

    iget-object v5, v5, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    move/from16 v0, v25

    invoke-direct {v3, v0, v5}, Landroid/net/MobileDataStateTracker;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v25

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_47b

    .line 522
    :pswitch_4f0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    new-instance v3, Landroid/net/DummyDataStateTracker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v25

    iget-object v5, v5, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    move/from16 v0, v25

    invoke-direct {v3, v0, v5}, Landroid/net/DummyDataStateTracker;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v25

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_47b

    .line 527
    :pswitch_516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->getInstance()Landroid/bluetooth/BluetoothTetheringDataTracker;

    move-result-object v3

    aput-object v3, v2, v25

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_47b

    .line 531
    :pswitch_531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->makeWimaxStateTracker()Landroid/net/NetworkStateTracker;

    move-result-object v3

    aput-object v3, v2, v25

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    if-eqz v2, :cond_47b

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_47b

    .line 537
    :pswitch_554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-static {}, Landroid/net/EthernetDataTracker;->getInstance()Landroid/net/EthernetDataTracker;

    move-result-object v3

    aput-object v3, v2, v25

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_47b

    .line 551
    .end local v25           #netType:I
    :cond_56f
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 552
    .local v9, b:Landroid/os/IBinder;
    invoke-static {v9}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 554
    .local v4, nmService:Landroid/os/INetworkManagementService;
    new-instance v2, Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v5, p3

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_5b3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_5b3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_60d

    :cond_5b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering;->getUpstreamIfaceTypes()[I

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_60d

    const/4 v2, 0x1

    :goto_5bf
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    .line 560
    new-instance v2, Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/ConnectivityService$VpnCallback;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V

    invoke-direct {v2, v3, v5}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 563
    :try_start_5d8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-interface {v4, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-interface {v4, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_5e6
    .catch Landroid/os/RemoteException; {:try_start_5d8 .. :try_end_5e6} :catch_60f

    .line 570
    :goto_5e6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    .line 573
    new-instance v2, Lcom/android/server/ConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x6d

    invoke-direct {v2, v3, v5}, Lcom/android/server/ConnectivityService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 576
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->loadGlobalProxy()V

    .line 577
    return-void

    .line 555
    :cond_60d
    const/4 v2, 0x0

    goto :goto_5bf

    .line 565
    :catch_60f
    move-exception v12

    .line 566
    .restart local v12       #e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering observer :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_5e6

    .end local v4           #nmService:Landroid/os/INetworkManagementService;
    .end local v9           #b:Landroid/os/IBinder;
    .end local v12           #e:Landroid/os/RemoteException;
    .end local v17           #insertionPoint:I
    .local v8, arr$:[Landroid/net/NetworkConfig;
    .restart local v18       #insertionPoint:I
    .restart local v21       #na:Landroid/net/NetworkConfig;
    :cond_629
    move/from16 v17, v18

    .end local v18           #insertionPoint:I
    .restart local v17       #insertionPoint:I
    goto/16 :goto_386

    .line 503
    nop

    :pswitch_data_62e
    .packed-switch 0x0
        :pswitch_4cb
        :pswitch_452
        :pswitch_42d
        :pswitch_42d
        :pswitch_42d
        :pswitch_42d
        :pswitch_531
        :pswitch_516
        :pswitch_4f0
        :pswitch_554
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/ConnectivityService;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/ConnectivityService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/ConnectivityService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/ConnectivityService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/ConnectivityService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/ConnectivityService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/ConnectivityService;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/ConnectivityService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/ConnectivityService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/ConnectivityService;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/ConnectivityService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->sendFailOverBroadcastKT()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->updateDns(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/ConnectivityService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDnsOverridden:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/ConnectivityService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mDnsOverridden:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/ConnectivityService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/ConnectivityService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method private addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    .registers 11
    .parameter "p"
    .parameter "r"
    .parameter "toDefaultTable"

    .prologue
    .line 1391
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z

    move-result v0

    return v0
.end method

.method private addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .registers 4
    .parameter "lp"
    .parameter "addr"

    .prologue
    const/4 v0, 0x1

    .line 1399
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/ConnectivityService;->modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZ)Z

    move-result v0

    return v0
.end method

.method private bumpDns()V
    .registers 7

    .prologue
    .line 2470
    const-string v3, "net.dnschange"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2471
    .local v2, propVal:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2472
    .local v1, n:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_11

    .line 2474
    :try_start_d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_10} :catch_42

    move-result v1

    .line 2477
    :cond_11
    :goto_11
    const-string v3, "net.dnschange"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLEAR_DNS_CACHE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2482
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2486
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2487
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2488
    return-void

    .line 2475
    .end local v0           #intent:Landroid/content/Intent;
    :catch_42
    move-exception v3

    goto :goto_11
.end method

.method private checkDataisAvailableForKAF(I)I
    .registers 6
    .parameter "networkType"

    .prologue
    .line 1541
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, p1

    .line 1542
    .local v0, network:Landroid/net/NetworkStateTracker;
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1543
    .local v1, ni:Landroid/net/NetworkInfo;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabledForDomestic()Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v2, -0x2

    .line 1553
    :goto_f
    return v2

    .line 1545
    :cond_10
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_33

    .line 1546
    const-string v2, "special network not available"

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1547
    const-string v2, "oversea"

    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDataOnRoamingEnabled()Z

    move-result v2

    if-nez v2, :cond_31

    .line 1548
    const/4 v2, -0x3

    goto :goto_f

    .line 1550
    :cond_31
    const/4 v2, -0x1

    goto :goto_f

    .line 1553
    :cond_33
    const/4 v2, 0x0

    goto :goto_f
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 3200
    .local p0, value:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_8

    .line 3201
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3203
    :cond_8
    return-object p0
.end method

.method private enforceAccessPermission()V
    .registers 4

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    return-void
.end method

.method private enforceChangePermission()V
    .registers 4

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .registers 4

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    return-void
.end method

.method private enforcePreference()V
    .registers 4

    .prologue
    .line 718
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 734
    :cond_10
    return-void

    .line 721
    :cond_11
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 724
    const/4 v0, 0x0

    .local v0, t:I
    :goto_1e
    const/16 v1, 0xd

    if-gt v0, v1, :cond_10

    .line 725
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v0, v1, :cond_65

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tearing down "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in enforcePreference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 731
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 724
    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e
.end method

.method private enforceTetherAccessPermission()V
    .registers 4

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    return-void
.end method

.method private enforceTetherChangePermission()V
    .registers 4

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    return-void
.end method

.method private getConnectivityChangeDelay()I
    .registers 5

    .prologue
    .line 688
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 691
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "conn.connectivity_change_delay"

    const/16 v3, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 694
    .local v1, defaultDelay:I
    const-string v2, "connectivity_change_delay"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method private getDataOnRoamingEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1559
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_10

    .line 1562
    .local v0, retVal:Z
    :goto_f
    return v0

    .line 1559
    .end local v0           #retVal:Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private getDataSelectionPopupIsSet()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1904
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data_question"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_10

    .line 1906
    .local v0, retVal:Z
    :goto_f
    return v0

    .line 1904
    .end local v0           #retVal:Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;
    .registers 7
    .parameter "tracker"
    .parameter "uid"

    .prologue
    const/4 v3, 0x0

    .line 773
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 774
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->isNetworkBlocked(Landroid/net/NetworkStateTracker;I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 776
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 777
    .end local v0           #info:Landroid/net/NetworkInfo;
    .local v1, info:Landroid/net/NetworkInfo;
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 779
    .end local v1           #info:Landroid/net/NetworkInfo;
    .restart local v0       #info:Landroid/net/NetworkInfo;
    :cond_16
    return-object v0
.end method

.method private getNetworkInfo(II)Landroid/net/NetworkInfo;
    .registers 6
    .parameter "networkType"
    .parameter "uid"

    .prologue
    .line 810
    const/4 v0, 0x0

    .line 811
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 812
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v2, p1

    .line 813
    .local v1, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v1, :cond_11

    .line 814
    invoke-direct {p0, v1, p2}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 817
    .end local v1           #tracker:Landroid/net/NetworkStateTracker;
    :cond_11
    return-object v0
.end method

.method private getNetworkStateUnchecked(I)Landroid/net/NetworkState;
    .registers 7
    .parameter "networkType"

    .prologue
    .line 884
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 885
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 886
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_1e

    .line 887
    new-instance v1, Landroid/net/NetworkState;

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;)V

    .line 891
    .end local v0           #tracker:Landroid/net/NetworkStateTracker;
    :goto_1d
    return-object v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method private getPersistedNetworkPreference()I
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 699
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 701
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "network_preference"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 703
    .local v1, networkPrefSetting:I
    if-eq v1, v3, :cond_10

    .line 707
    .end local v1           #networkPrefSetting:I
    :goto_f
    return v1

    .restart local v1       #networkPrefSetting:I
    :cond_10
    const/4 v1, 0x1

    goto :goto_f
.end method

.method private getRestoreDefaultNetworkDelay(I)I
    .registers 5
    .parameter "networkType"

    .prologue
    .line 2577
    const-string v2, "android.telephony.apn-restore"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2579
    .local v0, restoreDefaultNetworkDelayStr:Ljava/lang/String;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_18

    .line 2582
    :try_start_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_15} :catch_17

    move-result v1

    .line 2593
    :cond_16
    :goto_16
    return v1

    .line 2583
    :catch_17
    move-exception v2

    .line 2587
    :cond_18
    const v1, 0x493e0

    .line 2589
    .local v1, ret:I
    const/16 v2, 0x12

    if-gt p1, v2, :cond_16

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, p1

    if-eqz v2, :cond_16

    .line 2591
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, p1

    iget v1, v2, Landroid/net/NetworkConfig;->restoreTime:I

    goto :goto_16
.end method

.method private handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V
    .registers 4
    .parameter "proxy"

    .prologue
    .line 3082
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3083
    const/4 p1, 0x0

    .line 3085
    :cond_d
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3086
    :try_start_10
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v0, p1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    monitor-exit v1

    .line 3094
    :goto_1d
    return-void

    .line 3087
    :cond_1e
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    if-ne v0, p1, :cond_27

    monitor-exit v1

    goto :goto_1d

    .line 3093
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_24

    throw v0

    .line 3088
    :cond_27
    :try_start_27
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 3090
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v0, :cond_30

    .line 3091
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    .line 3093
    :cond_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_24

    goto :goto_1d
.end method

.method private handleConnect(Landroid/net/NetworkInfo;)V
    .registers 13
    .parameter "info"

    .prologue
    const/4 v10, 0x0

    .line 2061
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 2064
    .local v4, type:I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    .line 2065
    .local v1, isFailover:Z
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v5, v4

    .line 2069
    .local v3, thisNet:Landroid/net/NetworkStateTracker;
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 2070
    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_77

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v5, v4, :cond_77

    .line 2071
    iget v5, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v4, v5, :cond_34

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v5, v5, v6

    iget v5, v5, Landroid/net/NetworkConfig;->priority:I

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v6, v6, v4

    iget v6, v6, Landroid/net/NetworkConfig;->priority:I

    if-gt v5, v6, :cond_3a

    :cond_34
    iget v5, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v5, v6, :cond_3e

    .line 2080
    :cond_3a
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 2133
    :cond_3d
    :goto_3d
    return-void

    .line 2084
    :cond_3e
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v2, v5, v6

    .line 2087
    .local v2, otherNet:Landroid/net/NetworkStateTracker;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Policy requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " teardown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2091
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v5

    if-nez v5, :cond_77

    .line 2092
    const-string v5, "Network declined teardown request"

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2093
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    goto :goto_3d

    .line 2098
    .end local v2           #otherNet:Landroid/net/NetworkStateTracker;
    :cond_77
    monitor-enter p0

    .line 2102
    :try_start_78
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_92

    .line 2103
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x6c

    iget v8, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2108
    :cond_92
    monitor-exit p0
    :try_end_93
    .catchall {:try_start_78 .. :try_end_93} :catchall_c5

    .line 2109
    iput v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 2113
    iput v10, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 2114
    iget v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 2115
    iput-boolean v10, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 2119
    :cond_9f
    invoke-interface {v3, v10}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 2120
    invoke-virtual {p0, v3}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 2121
    invoke-direct {p0, v4, v10}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 2122
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 2125
    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2126
    .local v0, iface:Ljava/lang/String;
    if-eqz v0, :cond_3d

    .line 2128
    :try_start_b9
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_c0} :catch_c2

    goto/16 :goto_3d

    .line 2129
    :catch_c2
    move-exception v5

    goto/16 :goto_3d

    .line 2108
    .end local v0           #iface:Ljava/lang/String;
    :catchall_c5
    move-exception v5

    :try_start_c6
    monitor-exit p0
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    throw v5
.end method

.method private handleConnectionFailure(Landroid/net/NetworkInfo;)V
    .registers 13
    .parameter "info"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1966
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    aget-object v6, v6, v7

    invoke-interface {v6, v8}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1968
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    .line 1969
    .local v3, reason:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 1972
    .local v0, extraInfo:Ljava/lang/String;
    if-nez v3, :cond_c2

    .line 1973
    const-string v4, "."

    .line 1977
    .local v4, reasonText:Ljava/lang/String;
    :goto_1a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to connect to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1979
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1980
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "networkInfo"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1981
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    if-nez v6, :cond_55

    .line 1982
    const-string v6, "noConnectivity"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1984
    :cond_55
    if-eqz v3, :cond_5c

    .line 1985
    const-string v6, "reason"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1987
    :cond_5c
    if-eqz v0, :cond_63

    .line 1988
    const-string v6, "extraInfo"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1990
    :cond_63
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 1991
    const-string v6, "isFailover"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1992
    invoke-virtual {p1, v8}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1995
    :cond_71
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_99

    .line 1996
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->tryFailover(I)V

    .line 1997
    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v6, v10, :cond_dd

    .line 1998
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v6, v6, v7

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1999
    .local v5, switchTo:Landroid/net/NetworkInfo;
    const-string v6, "otherNetwork"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2006
    .end local v5           #switchTo:Landroid/net/NetworkInfo;
    :cond_99
    :goto_99
    const-string v6, "inetCondition"

    iget v7, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2008
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2009
    .local v1, immediateIntent:Landroid/content/Intent;
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2010
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2011
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2016
    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v6, v10, :cond_c1

    .line 2017
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v6, v6, v7

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 2019
    :cond_c1
    return-void

    .line 1975
    .end local v1           #immediateIntent:Landroid/content/Intent;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #reasonText:Ljava/lang/String;
    :cond_c2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #reasonText:Ljava/lang/String;
    goto/16 :goto_1a

    .line 2001
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_dd
    iput v8, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 2002
    const-string v6, "noConnectivity"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_99
.end method

.method private handleConnectivityChange(IZ)V
    .registers 16
    .parameter "netType"
    .parameter "doReset"

    .prologue
    const/4 v10, 0x0

    .line 2142
    if-eqz p2, :cond_65

    const/4 v9, 0x3

    .line 2148
    .local v9, resetMask:I
    :goto_4
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    .line 2150
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    aget-object v1, v11, p1

    .line 2151
    .local v1, curLp:Landroid/net/LinkProperties;
    const/4 v7, 0x0

    .line 2153
    .local v7, newLp:Landroid/net/LinkProperties;
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v11, v11, p1

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_a8

    .line 2154
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v11, v11, p1

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .line 2164
    if-eqz v1, :cond_97

    .line 2165
    invoke-virtual {v1, v7}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v11

    if-eqz v11, :cond_153

    .line 2166
    invoke-virtual {v1, v7}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v0

    .line 2167
    .local v0, car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    iget-object v11, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    if-nez v11, :cond_3e

    iget-object v11, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    if-eqz v11, :cond_12b

    .line 2168
    :cond_3e
    iget-object v11, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_44
    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 2169
    .local v5, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    instance-of v11, v11, Ljava/net/Inet4Address;

    if-eqz v11, :cond_5a

    .line 2170
    or-int/lit8 v9, v9, 0x1

    .line 2172
    :cond_5a
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    instance-of v11, v11, Ljava/net/Inet6Address;

    if-eqz v11, :cond_44

    .line 2173
    or-int/lit8 v9, v9, 0x2

    goto :goto_44

    .end local v0           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v1           #curLp:Landroid/net/LinkProperties;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #linkAddr:Landroid/net/LinkAddress;
    .end local v7           #newLp:Landroid/net/LinkProperties;
    .end local v9           #resetMask:I
    :cond_65
    move v9, v10

    .line 2142
    goto :goto_4

    .line 2177
    .restart local v0       #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .restart local v1       #curLp:Landroid/net/LinkProperties;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v7       #newLp:Landroid/net/LinkProperties;
    .restart local v9       #resetMask:I
    :cond_67
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleConnectivityChange: addresses changed linkProperty["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resetMask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n   car="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2197
    .end local v0           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_97
    :goto_97
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v11, v11, p1

    invoke-virtual {v11}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v11

    if-eqz v11, :cond_a8

    .line 2198
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V

    .line 2224
    :cond_a8
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    aput-object v7, v11, p1

    .line 2225
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v11, v11, p1

    invoke-virtual {v11}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v11

    invoke-direct {p0, v7, v1, v11}, Lcom/android/server/ConnectivityService;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Z)Z

    move-result v8

    .line 2227
    .local v8, resetDns:Z
    if-nez v9, :cond_bc

    if-eqz v8, :cond_10b

    .line 2228
    :cond_bc
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v11, v11, p1

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    .line 2229
    .local v6, linkProperties:Landroid/net/LinkProperties;
    if-eqz v6, :cond_10b

    .line 2230
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 2231
    .local v4, iface:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10b

    .line 2232
    if-eqz v9, :cond_104

    .line 2233
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resetConnections("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2234
    invoke-static {v4, v9}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 2238
    and-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_104

    .line 2239
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v11, v4, v10}, Lcom/android/server/connectivity/Vpn;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 2242
    :cond_104
    if-eqz v8, :cond_10b

    .line 2245
    :try_start_106
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v10, v4}, Landroid/os/INetworkManagementService;->flushInterfaceDnsCache(Ljava/lang/String;)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_10b} :catch_17c

    .line 2258
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #linkProperties:Landroid/net/LinkProperties;
    :cond_10b
    :goto_10b
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v10, v10, p1

    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v10

    const-string v11, "linkPropertiesChanged"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_12a

    .line 2260
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v10

    if-eqz v10, :cond_12a

    .line 2261
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v10}, Lcom/android/server/connectivity/Tethering;->handleTetherIfaceChange()V

    .line 2264
    :cond_12a
    return-void

    .line 2183
    .end local v8           #resetDns:Z
    .restart local v0       #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_12b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleConnectivityChange: address are the same reset per doReset linkProperty["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resetMask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_97

    .line 2189
    .end local v0           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_153
    const/4 v9, 0x3

    .line 2191
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleConnectivityChange: interface not not equivalent reset both linkProperty["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resetMask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_97

    .line 2246
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #linkProperties:Landroid/net/LinkProperties;
    .restart local v8       #resetDns:Z
    :catch_17c
    move-exception v2

    .line 2248
    .local v2, e:Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception resetting dns cache: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_10b
.end method

.method private handleDeprecatedGlobalHttpProxy()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3097
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "http_proxy"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3099
    .local v3, proxy:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 3100
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3101
    .local v0, data:[Ljava/lang/String;
    aget-object v4, v0, v8

    .line 3102
    .local v4, proxyHost:Ljava/lang/String;
    const/16 v5, 0x1f90

    .line 3103
    .local v5, proxyPort:I
    array-length v6, v0

    if-le v6, v9, :cond_28

    .line 3105
    const/4 v6, 0x1

    :try_start_22
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_27} :catch_35

    move-result v5

    .line 3110
    :cond_28
    new-instance v2, Landroid/net/ProxyProperties;

    aget-object v6, v0, v8

    const-string v7, ""

    invoke-direct {v2, v6, v5, v7}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3111
    .local v2, p:Landroid/net/ProxyProperties;
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    .line 3113
    .end local v0           #data:[Ljava/lang/String;
    .end local v2           #p:Landroid/net/ProxyProperties;
    .end local v4           #proxyHost:Ljava/lang/String;
    .end local v5           #proxyPort:I
    :cond_34
    :goto_34
    return-void

    .line 3106
    .restart local v0       #data:[Ljava/lang/String;
    .restart local v4       #proxyHost:Ljava/lang/String;
    .restart local v5       #proxyPort:I
    :catch_35
    move-exception v1

    .line 3107
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_34
.end method

.method private handleDisconnect(Landroid/net/NetworkInfo;)V
    .registers 23
    .parameter "info"

    .prologue
    .line 1729
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v17

    .line 1731
    .local v17, prevNetType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v19

    if-nez v19, :cond_4a

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v19, v0

    aget-object v16, v19, v17

    .line 1740
    .local v16, pids:Ljava/util/List;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_28
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_4a

    .line 1741
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 1745
    .local v15, pid:Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V

    .line 1740
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 1749
    .end local v5           #i:I
    .end local v15           #pid:Ljava/lang/Integer;
    .end local v16           #pids:Ljava/util/List;
    :cond_4a
    new-instance v8, Landroid/content/Intent;

    const-string v19, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1750
    .local v8, intent:Landroid/content/Intent;
    const-string v19, "networkInfo"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1751
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v19

    if-eqz v19, :cond_76

    .line 1752
    const-string v19, "isFailover"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1753
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1755
    :cond_76
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_89

    .line 1756
    const-string v19, "reason"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1758
    :cond_89
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_9c

    .line 1759
    const-string v19, "extraInfo"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1763
    :cond_9c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v19

    if-eqz v19, :cond_da

    .line 1764
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->tryFailover(I)V

    .line 1765
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_111

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-interface/range {v19 .. v19}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v18

    .line 1767
    .local v18, switchTo:Landroid/net/NetworkInfo;
    const-string v19, "otherNetwork"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1773
    .end local v18           #switchTo:Landroid/net/NetworkInfo;
    :cond_da
    :goto_da
    const-string v19, "inetCondition"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1776
    const/4 v4, 0x1

    .line 1777
    .local v4, doReset:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    invoke-interface/range {v19 .. v19}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v11

    .line 1778
    .local v11, linkProperties:Landroid/net/LinkProperties;
    if-eqz v11, :cond_14c

    .line 1779
    invoke-virtual {v11}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v14

    .line 1780
    .local v14, oldIface:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_14c

    .line 1781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v3, arr$:[Landroid/net/NetworkStateTracker;
    array-length v10, v3

    .local v10, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_108
    if-ge v6, v10, :cond_14c

    aget-object v13, v3, v6

    .line 1782
    .local v13, networkStateTracker:Landroid/net/NetworkStateTracker;
    if-nez v13, :cond_125

    .line 1781
    :cond_10e
    add-int/lit8 v6, v6, 0x1

    goto :goto_108

    .line 1769
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v4           #doReset:Z
    .end local v6           #i$:I
    .end local v10           #len$:I
    .end local v11           #linkProperties:Landroid/net/LinkProperties;
    .end local v13           #networkStateTracker:Landroid/net/NetworkStateTracker;
    .end local v14           #oldIface:Ljava/lang/String;
    :cond_111
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1770
    const-string v19, "noConnectivity"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_da

    .line 1783
    .restart local v3       #arr$:[Landroid/net/NetworkStateTracker;
    .restart local v4       #doReset:Z
    .restart local v6       #i$:I
    .restart local v10       #len$:I
    .restart local v11       #linkProperties:Landroid/net/LinkProperties;
    .restart local v13       #networkStateTracker:Landroid/net/NetworkStateTracker;
    .restart local v14       #oldIface:Ljava/lang/String;
    :cond_125
    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 1784
    .local v12, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v19

    if-eqz v19, :cond_10e

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v17

    if-eq v0, v1, :cond_10e

    .line 1785
    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    .line 1786
    .local v9, l:Landroid/net/LinkProperties;
    if-eqz v9, :cond_10e

    .line 1787
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10e

    .line 1788
    const/4 v4, 0x0

    .line 1797
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v6           #i$:I
    .end local v9           #l:Landroid/net/LinkProperties;
    .end local v10           #len$:I
    .end local v12           #networkInfo:Landroid/net/NetworkInfo;
    .end local v13           #networkStateTracker:Landroid/net/NetworkStateTracker;
    .end local v14           #oldIface:Ljava/lang/String;
    :cond_14c
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 1799
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1800
    .local v7, immediateIntent:Landroid/content/Intent;
    const-string v19, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1801
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1802
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 1807
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_19c

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-interface/range {v19 .. v19}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 1811
    :cond_19c
    return-void
.end method

.method private handleDnsConfigurationChange(I)V
    .registers 13
    .parameter "netType"

    .prologue
    .line 2545
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v8, p1

    .line 2546
    .local v3, nt:Landroid/net/NetworkStateTracker;
    if-eqz v3, :cond_1c

    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v8

    if-nez v8, :cond_1c

    .line 2547
    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    .line 2548
    .local v4, p:Landroid/net/LinkProperties;
    if-nez v4, :cond_1d

    .line 2574
    .end local v4           #p:Landroid/net/LinkProperties;
    :cond_1c
    :goto_1c
    return-void

    .line 2549
    .restart local v4       #p:Landroid/net/LinkProperties;
    :cond_1d
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    .line 2550
    .local v1, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v0, 0x0

    .line 2551
    .local v0, changed:Z
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 2552
    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 2553
    .local v2, network:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2554
    :try_start_37
    iget-boolean v8, p0, Lcom/android/server/ConnectivityService;->mDnsOverridden:Z

    if-nez v8, :cond_45

    .line 2555
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    invoke-direct {p0, v2, v8, v1, v10}, Lcom/android/server/ConnectivityService;->updateDns(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    .line 2557
    :cond_45
    monitor-exit v9
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_4c

    .line 2572
    .end local v2           #network:Ljava/lang/String;
    :cond_46
    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    goto :goto_1c

    .line 2557
    .restart local v2       #network:Ljava/lang/String;
    :catchall_4c
    move-exception v8

    :try_start_4d
    monitor-exit v9
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v8

    .line 2560
    .end local v2           #network:Ljava/lang/String;
    :cond_4f
    :try_start_4f
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5c} :catch_78

    .line 2566
    :goto_5c
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v6, v8, p1

    .line 2567
    .local v6, pids:Ljava/util/List;
    const/4 v7, 0x0

    .local v7, y:I
    :goto_61
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_46

    .line 2568
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2569
    .local v5, pid:Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v1, v8}, Lcom/android/server/ConnectivityService;->writePidDns(Ljava/util/Collection;I)Z

    move-result v0

    .line 2567
    add-int/lit8 v7, v7, 0x1

    goto :goto_61

    .line 2562
    .end local v5           #pid:Ljava/lang/Integer;
    .end local v6           #pids:Ljava/util/List;
    .end local v7           #y:I
    :catch_78
    move-exception v8

    goto :goto_5c
.end method

.method private handleInetConditionChange(II)V
    .registers 9
    .parameter "netType"
    .parameter "condition"

    .prologue
    .line 2956
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 2957
    const-string v1, "handleInetConditionChange: no active default network - ignore"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2989
    :cond_a
    :goto_a
    return-void

    .line 2960
    :cond_b
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v1, p1, :cond_38

    .line 2961
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInetConditionChange: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != default="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - ignore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_a

    .line 2970
    :cond_38
    iput p2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 2972
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    if-nez v1, :cond_a

    .line 2975
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    const/16 v2, 0x32

    if-le v1, v2, :cond_68

    .line 2976
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_up_delay"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2982
    .local v0, delay:I
    :goto_52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 2983
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    iget v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a

    .line 2979
    .end local v0           #delay:I
    :cond_68
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_down_delay"

    const/16 v3, 0xbb8

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #delay:I
    goto :goto_52
.end method

.method private handleInetConditionHoldEnd(II)V
    .registers 6
    .parameter "netType"
    .parameter "sequence"

    .prologue
    .line 2993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInetConditionHoldEnd: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", published condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2997
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 2999
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3c

    .line 3000
    const-string v1, "handleInetConditionHoldEnd: no active default network - ignoring"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3021
    :goto_3b
    return-void

    .line 3003
    :cond_3c
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    if-eq v1, p2, :cond_46

    .line 3004
    const-string v1, "handleInetConditionHoldEnd: event hold for obsolete network - ignoring"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_3b

    .line 3014
    :cond_46
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3015
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 3016
    const-string v1, "handleInetConditionHoldEnd: default network not connected - ignoring"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_3b

    .line 3019
    :cond_5c
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 3020
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_3b
.end method

.method private handleSetDependencyMet(IZ)V
    .registers 5
    .parameter "networkType"
    .parameter "met"

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_33

    .line 1590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetDependencyMet("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1592
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setDependencyMet(Z)V

    .line 1594
    :cond_33
    return-void
.end method

.method private handleSetMobileData(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 1657
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v1

    if-eqz v0, :cond_f

    .line 1661
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    .line 1663
    :cond_f
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1c

    .line 1667
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    .line 1669
    :cond_1c
    return-void
.end method

.method private handleSetNetworkPreference(I)V
    .registers 4
    .parameter "preference"

    .prologue
    .line 673
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 676
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v1, p1, :cond_2c

    .line 677
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 678
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "network_preference"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 679
    monitor-enter p0

    .line 680
    :try_start_26
    iput p1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 681
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2d

    .line 682
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforcePreference()V

    .line 685
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_2c
    return-void

    .line 681
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private handleSetPolicyDataEnable(IZ)V
    .registers 5
    .parameter "networkType"
    .parameter "enabled"

    .prologue
    .line 1681
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1682
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 1683
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_f

    .line 1684
    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setPolicyDataEnable(Z)V

    .line 1687
    .end local v0           #tracker:Landroid/net/NetworkStateTracker;
    :cond_f
    return-void
.end method

.method private isNetworkBlocked(Landroid/net/NetworkStateTracker;I)Z
    .registers 10
    .parameter "tracker"
    .parameter "uid"

    .prologue
    const/4 v3, 0x0

    .line 750
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, iface:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 755
    :try_start_c
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 756
    .local v1, networkCostly:Z
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 757
    .local v2, uidRules:I
    monitor-exit v4

    .line 759
    if-eqz v1, :cond_21

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_21

    .line 760
    const/4 v3, 0x1

    .line 764
    :cond_21
    return v3

    .line 757
    .end local v1           #networkCostly:Z
    .end local v2           #uidRules:I
    :catchall_22
    move-exception v3

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v3
.end method

.method private loadGlobalProxy()V
    .registers 8

    .prologue
    .line 3062
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3063
    .local v4, res:Landroid/content/ContentResolver;
    const-string v5, "global_http_proxy_host"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3064
    .local v1, host:Ljava/lang/String;
    const-string v5, "global_http_proxy_port"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3065
    .local v2, port:I
    const-string v5, "global_http_proxy_exclusion_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3067
    .local v0, exclList:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 3068
    new-instance v3, Landroid/net/ProxyProperties;

    invoke-direct {v3, v1, v2, v0}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3069
    .local v3, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mGlobalProxyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3070
    :try_start_27
    iput-object v3, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 3071
    monitor-exit v6

    .line 3073
    .end local v3           #proxyProperties:Landroid/net/ProxyProperties;
    :cond_2a
    return-void

    .line 3071
    .restart local v3       #proxyProperties:Landroid/net/ProxyProperties;
    :catchall_2b
    move-exception v5

    monitor-exit v6
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2b

    throw v5
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 3148
    const-string v0, "ConnectivityService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 3152
    const-string v0, "ConnectivityService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    return-void
.end method

.method private makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter "info"
    .parameter "bcastType"

    .prologue
    .line 1936
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1937
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "networkInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1938
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1939
    const-string v1, "isFailover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1940
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1942
    :cond_1a
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 1943
    const-string v1, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1945
    :cond_29
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 1946
    const-string v1, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1949
    :cond_38
    const-string v1, "inetCondition"

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1950
    return-object v0
.end method

.method private makeWimaxStateTracker()Landroid/net/NetworkStateTracker;
    .registers 21

    .prologue
    .line 581
    const/4 v13, 0x0

    .line 582
    .local v13, wimaxStateTrackerClass:Ljava/lang/Class;
    const/4 v10, 0x0

    .line 590
    .local v10, wimaxServiceClass:Ljava/lang/Class;
    const/4 v12, 0x0

    .line 592
    .local v12, wimaxStateTracker:Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x111003a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 595
    .local v3, isWimaxEnabled:Z
    if-eqz v3, :cond_19a

    .line 597
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x104003b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 599
    .local v6, wimaxJarLocation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x104003c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 601
    .local v7, wimaxLibLocation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x104003d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 603
    .local v9, wimaxManagerClassName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x104003e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 605
    .local v11, wimaxServiceClassName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x104003f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 608
    .local v14, wimaxStateTrackerClassName:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "wimaxJarLocation: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 609
    new-instance v5, Ldalvik/system/DexClassLoader;

    new-instance v17, Landroid/content/ContextWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v6, v0, v7, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_a7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_a7} :catch_16b

    .line 614
    .local v5, wimaxClassLoader:Ldalvik/system/DexClassLoader;
    :try_start_a7
    invoke-virtual {v5, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 615
    .local v8, wimaxManagerClass:Ljava/lang/Class;
    invoke-virtual {v5, v14}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 616
    invoke-virtual {v5, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a7 .. :try_end_b2} :catch_149
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a7 .. :try_end_b2} :catch_16b

    move-result-object v10

    .line 627
    :try_start_b3
    const-string v17, "Starting Wimax Service... "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 629
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-class v19, Landroid/os/Handler;

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v16

    .line 631
    .local v16, wmxStTrkrConst:Ljava/lang/reflect/Constructor;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroid/net/NetworkStateTracker;

    move-object v12, v0

    .line 634
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v13, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    .line 636
    .local v15, wmxSrvConst:Ljava/lang/reflect/Constructor;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 637
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v12, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 638
    .local v4, svcInvoker:Landroid/os/IBinder;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 640
    const-string v17, "WiMax"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_146} :catch_178

    move-object/from16 v17, v12

    .line 651
    .end local v4           #svcInvoker:Landroid/os/IBinder;
    .end local v5           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v6           #wimaxJarLocation:Ljava/lang/String;
    .end local v7           #wimaxLibLocation:Ljava/lang/String;
    .end local v8           #wimaxManagerClass:Ljava/lang/Class;
    .end local v9           #wimaxManagerClassName:Ljava/lang/String;
    .end local v11           #wimaxServiceClassName:Ljava/lang/String;
    .end local v14           #wimaxStateTrackerClassName:Ljava/lang/String;
    .end local v15           #wmxSrvConst:Ljava/lang/reflect/Constructor;
    .end local v16           #wmxStTrkrConst:Ljava/lang/reflect/Constructor;
    :goto_148
    return-object v17

    .line 617
    .restart local v5       #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .restart local v6       #wimaxJarLocation:Ljava/lang/String;
    .restart local v7       #wimaxLibLocation:Ljava/lang/String;
    .restart local v9       #wimaxManagerClassName:Ljava/lang/String;
    .restart local v11       #wimaxServiceClassName:Ljava/lang/String;
    .restart local v14       #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_149
    move-exception v2

    .line 618
    .local v2, ex:Ljava/lang/ClassNotFoundException;
    :try_start_14a
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception finding Wimax classes: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_168
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14a .. :try_end_168} :catch_16b

    .line 619
    const/16 v17, 0x0

    goto :goto_148

    .line 621
    .end local v2           #ex:Ljava/lang/ClassNotFoundException;
    .end local v5           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v6           #wimaxJarLocation:Ljava/lang/String;
    .end local v7           #wimaxLibLocation:Ljava/lang/String;
    .end local v9           #wimaxManagerClassName:Ljava/lang/String;
    .end local v11           #wimaxServiceClassName:Ljava/lang/String;
    .end local v14           #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_16b
    move-exception v2

    .line 622
    .local v2, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v17, "Wimax Resources does not exist!!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 623
    const/16 v17, 0x0

    goto :goto_148

    .line 642
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v5       #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .restart local v6       #wimaxJarLocation:Ljava/lang/String;
    .restart local v7       #wimaxLibLocation:Ljava/lang/String;
    .restart local v8       #wimaxManagerClass:Ljava/lang/Class;
    .restart local v9       #wimaxManagerClassName:Ljava/lang/String;
    .restart local v11       #wimaxServiceClassName:Ljava/lang/String;
    .restart local v14       #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_178
    move-exception v2

    .line 643
    .local v2, ex:Ljava/lang/Exception;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception creating Wimax classes: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 644
    const/16 v17, 0x0

    goto :goto_148

    .line 647
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v5           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v6           #wimaxJarLocation:Ljava/lang/String;
    .end local v7           #wimaxLibLocation:Ljava/lang/String;
    .end local v8           #wimaxManagerClass:Ljava/lang/Class;
    .end local v9           #wimaxManagerClassName:Ljava/lang/String;
    .end local v11           #wimaxServiceClassName:Ljava/lang/String;
    .end local v14           #wimaxStateTrackerClassName:Ljava/lang/String;
    :cond_19a
    const-string v17, "Wimax is not enabled or not added to the network attributes!!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 648
    const/16 v17, 0x0

    goto :goto_148
.end method

.method private modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z
    .registers 16
    .parameter "ifaceName"
    .parameter "lp"
    .parameter "r"
    .parameter "cycleCount"
    .parameter "doAdd"
    .parameter "toDefaultTable"

    .prologue
    const/4 v8, 0x0

    .line 1426
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    if-nez p3, :cond_33

    .line 1427
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyRoute got unexpected null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    move v0, v8

    .line 1492
    :goto_32
    return v0

    .line 1431
    :cond_33
    const/16 v0, 0xa

    if-le p4, v0, :cond_3e

    .line 1432
    const-string v0, "Error modifying route - too much recursion"

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    move v0, v8

    .line 1433
    goto :goto_32

    .line 1436
    :cond_3e
    invoke-virtual {p3}, Landroid/net/RouteInfo;->isHostRoute()Z

    move-result v0

    if-nez v0, :cond_72

    .line 1437
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 1438
    .local v3, bestRoute:Landroid/net/RouteInfo;
    if-eqz v3, :cond_72

    .line 1439
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1441
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 1447
    :goto_68
    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z

    .line 1450
    .end local v3           #bestRoute:Landroid/net/RouteInfo;
    :cond_72
    if-eqz p5, :cond_98

    .line 1453
    if-eqz p6, :cond_8f

    .line 1454
    :try_start_76
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1455
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p3}, Landroid/os/INetworkManagementService;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_80} :catch_95

    .line 1492
    :cond_80
    :goto_80
    const/4 v0, 0x1

    goto :goto_32

    .line 1445
    .restart local v3       #bestRoute:Landroid/net/RouteInfo;
    :cond_82
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    goto :goto_68

    .line 1457
    .end local v3           #bestRoute:Landroid/net/RouteInfo;
    :cond_8f
    :try_start_8f
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p3}, Landroid/os/INetworkManagementService;->addSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_94} :catch_95

    goto :goto_80

    .line 1459
    :catch_95
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    move v0, v8

    .line 1462
    goto :goto_32

    .line 1467
    .end local v7           #e:Ljava/lang/Exception;
    :cond_98
    if-eqz p6, :cond_b0

    .line 1468
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1469
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 1472
    :try_start_a7
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p3}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ac} :catch_ad

    goto :goto_80

    .line 1473
    :catch_ad
    move-exception v7

    .restart local v7       #e:Ljava/lang/Exception;
    move v0, v8

    .line 1476
    goto :goto_32

    .line 1484
    .end local v7           #e:Ljava/lang/Exception;
    :cond_b0
    :try_start_b0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p3}, Landroid/os/INetworkManagementService;->removeSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b5} :catch_b6

    goto :goto_80

    .line 1485
    :catch_b6
    move-exception v7

    .restart local v7       #e:Ljava/lang/Exception;
    move v0, v8

    .line 1488
    goto/16 :goto_32
.end method

.method private modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZ)Z
    .registers 12
    .parameter "lp"
    .parameter "addr"
    .parameter "doAdd"
    .parameter "toDefaultTable"

    .prologue
    .line 1408
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 1409
    .local v3, bestRoute:Landroid/net/RouteInfo;
    if-nez v3, :cond_1c

    .line 1410
    invoke-static {p2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 1421
    :goto_e
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z

    move-result v0

    return v0

    .line 1412
    :cond_1c
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1414
    invoke-static {p2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    goto :goto_e

    .line 1418
    :cond_2b
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    goto :goto_e
.end method

.method private reassessPidDns(IZ)V
    .registers 16
    .parameter "myPid"
    .parameter "doBump"

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_4
    if-ge v3, v5, :cond_56

    aget v2, v0, v3

    .line 2413
    .local v2, i:I
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v11, v11, v2

    invoke-virtual {v11}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v11

    if-eqz v11, :cond_15

    .line 2412
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2416
    :cond_15
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v11, v2

    .line 2417
    .local v6, nt:Landroid/net/NetworkStateTracker;
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v11

    if-nez v11, :cond_12

    .line 2419
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .line 2420
    .local v7, p:Landroid/net/LinkProperties;
    if-eqz v7, :cond_12

    .line 2421
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v9, v11, v2

    .line 2422
    .local v9, pids:Ljava/util/List;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_34
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_12

    .line 2423
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 2424
    .local v8, pid:Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, p1, :cond_53

    .line 2425
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    .line 2426
    .local v1, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-direct {p0, v1, p1}, Lcom/android/server/ConnectivityService;->writePidDns(Ljava/util/Collection;I)Z

    .line 2427
    if-eqz p2, :cond_52

    .line 2428
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    .line 2442
    .end local v1           #dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v4           #j:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    .end local v7           #p:Landroid/net/LinkProperties;
    .end local v8           #pid:Ljava/lang/Integer;
    .end local v9           #pids:Ljava/util/List;
    :cond_52
    :goto_52
    return-void

    .line 2422
    .restart local v4       #j:I
    .restart local v6       #nt:Landroid/net/NetworkStateTracker;
    .restart local v7       #p:Landroid/net/LinkProperties;
    .restart local v8       #pid:Ljava/lang/Integer;
    .restart local v9       #pids:Ljava/util/List;
    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 2436
    .end local v2           #i:I
    .end local v4           #j:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    .end local v7           #p:Landroid/net/LinkProperties;
    .end local v8           #pid:Ljava/lang/Integer;
    .end local v9           #pids:Ljava/util/List;
    :cond_56
    const/4 v2, 0x1

    .line 2437
    .restart local v2       #i:I
    :goto_57
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "net.dns"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2438
    .local v10, prop:Ljava/lang/String;
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_84

    .line 2439
    if-eqz p2, :cond_52

    .line 2440
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    goto :goto_52

    .line 2444
    :cond_84
    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    add-int/lit8 v2, v2, 0x1

    goto :goto_57
.end method

.method private removeDefaultRoute(Landroid/net/LinkProperties;)V
    .registers 6
    .parameter "lp"

    .prologue
    .line 1516
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 1517
    .local v1, route:Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove default route : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1519
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_8

    .line 1522
    .end local v1           #route:Landroid/net/RouteInfo;
    :cond_47
    return-void
.end method

.method private removeForceDefaultRoute(Landroid/net/NetworkStateTracker;)V
    .registers 6
    .parameter "nt"

    .prologue
    .line 1500
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 1501
    .local v1, p:Landroid/net/LinkProperties;
    if-nez v1, :cond_7

    .line 1513
    :cond_6
    :goto_6
    return-void

    .line 1502
    :cond_7
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1503
    .local v0, interfaceName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeForceDefaultRoute: interfaceName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1512
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->removeDefaultRoute(Landroid/net/LinkProperties;)V

    goto :goto_6
.end method

.method private removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    .registers 11
    .parameter "p"
    .parameter "r"
    .parameter "toDefaultTable"

    .prologue
    const/4 v4, 0x0

    .line 1395
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z

    move-result v0

    return v0
.end method

.method private removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .registers 5
    .parameter "lp"
    .parameter "addr"

    .prologue
    .line 1403
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/ConnectivityService;->modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZ)Z

    move-result v0

    return v0
.end method

.method private sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 1884
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1885
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1886
    return-void
.end method

.method private sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V
    .registers 4
    .parameter "info"
    .parameter "delayMs"

    .prologue
    .line 1910
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1911
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V

    .line 1912
    return-void
.end method

.method private sendFailOverBroadcast()V
    .registers 3

    .prologue
    .line 1890
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.FAILOVER_CHANGED_TO_MOBILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1891
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1892
    return-void
.end method

.method private sendFailOverBroadcastKT()V
    .registers 3

    .prologue
    .line 1897
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.FAILOVER_CHANGED_TO_MOBILE_KT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1898
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1899
    return-void
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .registers 4
    .parameter "info"
    .parameter "bcastType"

    .prologue
    .line 1954
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1955
    return-void
.end method

.method private sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V
    .registers 5
    .parameter "info"
    .parameter "bcastType"
    .parameter "delayMs"

    .prologue
    .line 1958
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 1959
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 1915
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1916
    return-void
.end method

.method private sendMmsConnectedBroadcast(Landroid/net/NetworkInfo;)Z
    .registers 7
    .parameter "info"

    .prologue
    const/4 v2, 0x1

    .line 1920
    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1922
    .local v0, currentplmn:Ljava/lang/String;
    const-string v3, "oversea"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobile_mms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1924
    :cond_27
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1931
    :goto_33
    return v2

    .line 1926
    :cond_34
    const-string v3, "ConnectivityService"

    const-string v4, "android.net.conn.MOBILE_MMS_CONNECTED"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.conn.MOBILE_MMS_CONNECTED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1928
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_33

    .line 1931
    .end local v1           #intent:Landroid/content/Intent;
    :cond_46
    const/4 v2, 0x0

    goto :goto_33
.end method

.method private sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    .registers 6
    .parameter "proxy"

    .prologue
    .line 3116
    if-nez p1, :cond_c

    new-instance p1, Landroid/net/ProxyProperties;

    .end local p1
    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {p1, v1, v2, v3}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3118
    .restart local p1
    :cond_c
    const-string v1, "sending Proxy Broadcast"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3120
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3122
    const-string v1, "proxy"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3123
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3124
    return-void
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 2022
    monitor-enter p0

    .line 2023
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    if-nez v0, :cond_c

    .line 2024
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 2026
    :cond_c
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2031
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2032
    monitor-exit p0

    .line 2033
    return-void

    .line 2032
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private sendStickyBroadcastDelayed(Landroid/content/Intent;I)V
    .registers 7
    .parameter "intent"
    .parameter "delayMs"

    .prologue
    .line 2036
    if-gtz p2, :cond_6

    .line 2037
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2046
    :goto_5
    return-void

    .line 2043
    :cond_6
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x70

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5
.end method

.method private setBufferSize(Ljava/lang/String;)V
    .registers 7
    .parameter "bufferSizes"

    .prologue
    .line 2386
    :try_start_0
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2388
    .local v2, values:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3d

    .line 2389
    const-string v1, "/sys/kernel/ipv4/tcp_"

    .line 2390
    .local v1, prefix:Ljava/lang/String;
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_min"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_def"

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_max"

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_min"

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2394
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_def"

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_max"

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2402
    .end local v1           #prefix:Ljava/lang/String;
    .end local v2           #values:[Ljava/lang/String;
    :goto_3c
    return-void

    .line 2397
    .restart local v2       #values:[Ljava/lang/String;
    :cond_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid buffersize string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_53} :catch_54

    goto :goto_3c

    .line 2399
    .end local v2           #values:[Ljava/lang/String;
    :catch_54
    move-exception v0

    .line 2400
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set tcp buffer sizes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_3c
.end method

.method private stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .registers 15
    .parameter "u"
    .parameter "ignoreDups"

    .prologue
    .line 1213
    iget v4, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    .line 1214
    .local v4, networkType:I
    iget-object v2, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    .line 1215
    .local v2, feature:Ljava/lang/String;
    iget v5, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    .line 1216
    .local v5, pid:I
    iget v7, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    .line 1218
    .local v7, uid:I
    const/4 v6, 0x0

    .line 1219
    .local v6, tracker:Landroid/net/NetworkStateTracker;
    const/4 v0, 0x0

    .line 1225
    .local v0, callTeardown:Z
    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v10

    if-nez v10, :cond_38

    .line 1227
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stopUsingNetworkFeature: net "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", net is invalid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1230
    const/4 v10, -0x1

    .line 1317
    :goto_37
    return v10

    .line 1235
    :cond_38
    monitor-enter p0

    .line 1237
    :try_start_39
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_47

    .line 1242
    const/4 v10, 0x1

    monitor-exit p0

    goto :goto_37

    .line 1291
    :catchall_44
    move-exception v10

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_44

    throw v10

    .line 1244
    :cond_47
    :try_start_47
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 1245
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v11, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1253
    if-nez p2, :cond_72

    .line 1254
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1255
    .local v9, x:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v9, p1}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v10

    if-eqz v10, :cond_5d

    .line 1257
    const/4 v10, 0x1

    monitor-exit p0

    goto :goto_37

    .line 1263
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v9           #x:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_72
    invoke-virtual {p0, v4, v2}, Lcom/android/server/ConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v8

    .line 1265
    .local v8, usedNetworkType:I
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v10, v8

    .line 1266
    if-nez v6, :cond_a9

    .line 1268
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stopUsingNetworkFeature: net "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " no known tracker for used net type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1271
    const/4 v10, -0x1

    monitor-exit p0

    goto :goto_37

    .line 1273
    :cond_a9
    if-eq v8, v4, :cond_f3

    .line 1274
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 1275
    .local v1, currentPid:Ljava/lang/Integer;
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v8

    invoke-interface {v10, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1276
    const/4 v10, 0x1

    invoke-direct {p0, v5, v10}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V

    .line 1277
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_c9

    .line 1282
    const/4 v10, 0x1

    monitor-exit p0

    goto/16 :goto_37

    .line 1284
    :cond_c9
    const/4 v0, 0x1

    .line 1291
    .end local v1           #currentPid:Ljava/lang/Integer;
    :goto_ca
    monitor-exit p0
    :try_end_cb
    .catchall {:try_start_47 .. :try_end_cb} :catchall_44

    .line 1310
    if-eqz v0, :cond_11a

    .line 1312
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stopUsingNetworkFeature: teardown net "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1314
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->teardown()Z

    .line 1315
    const/4 v10, 0x1

    goto/16 :goto_37

    .line 1287
    :cond_f3
    :try_start_f3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stopUsingNetworkFeature: net "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not a known feature - dropping"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_119
    .catchall {:try_start_f3 .. :try_end_119} :catchall_44

    goto :goto_ca

    .line 1317
    :cond_11a
    const/4 v10, -0x1

    goto/16 :goto_37
.end method

.method private teardown(Landroid/net/NetworkStateTracker;)Z
    .registers 4
    .parameter "netTracker"

    .prologue
    const/4 v0, 0x1

    .line 737
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->teardown()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 738
    invoke-interface {p1, v0}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 741
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private tryFailover(I)V
    .registers 8
    .parameter "prevNetType"

    .prologue
    const/4 v5, 0x1

    .line 1819
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 1820
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v3, p1, :cond_12

    .line 1821
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 1831
    :cond_12
    const/4 v2, 0x0

    .local v2, checkType:I
    :goto_13
    const/16 v3, 0x12

    if-gt v2, v3, :cond_9e

    .line 1832
    if-ne v2, p1, :cond_1c

    .line 1831
    :cond_19
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1833
    :cond_1c
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v2

    if-eqz v3, :cond_19

    .line 1834
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1835
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v2

    if-eqz v3, :cond_19

    .line 1849
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v3, v2

    .line 1850
    .local v1, checkTracker:Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1851
    .local v0, checkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 1852
    :cond_46
    invoke-virtual {v0, v5}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1853
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/net/NetworkConfig;->radio:I

    if-ne v3, v5, :cond_7f

    .line 1854
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prevNetType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWifiLastState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mWifiLastState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsWifiDisconnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mIsWifiDisconnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1862
    :cond_7f
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 1864
    :cond_82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to switch to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 1875
    .end local v0           #checkInfo:Landroid/net/NetworkInfo;
    .end local v1           #checkTracker:Landroid/net/NetworkStateTracker;
    .end local v2           #checkType:I
    :cond_9e
    return-void
.end method

.method private updateDns(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z
    .registers 14
    .parameter "network"
    .parameter "iface"
    .parameter
    .parameter "domains"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2493
    .local p3, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v0, 0x0

    .line 2494
    .local v0, changed:Z
    const/4 v5, 0x0

    .line 2495
    .local v5, last:I
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v7

    if-nez v7, :cond_68

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    if-eqz v7, :cond_68

    .line 2496
    add-int/lit8 v5, v5, 0x1

    .line 2497
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 2498
    .local v6, value:Ljava/lang/String;
    const-string v7, "net.dns1"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_46

    .line 2500
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no dns provided for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2502
    const/4 v0, 0x1

    .line 2503
    const-string v7, "net.dns1"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    .end local v6           #value:Ljava/lang/String;
    :cond_46
    add-int/lit8 v2, v5, 0x1

    .local v2, i:I
    :goto_48
    iget v7, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    if-gt v2, v7, :cond_a2

    .line 2521
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net.dns"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2523
    .local v4, key:Ljava/lang/String;
    const/4 v0, 0x1

    .line 2524
    const-string v7, ""

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 2506
    .end local v2           #i:I
    .end local v4           #key:Ljava/lang/String;
    :cond_68
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_6c
    :goto_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 2507
    .local v1, dns:Ljava/net/InetAddress;
    add-int/lit8 v5, v5, 0x1

    .line 2508
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net.dns"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2509
    .restart local v4       #key:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 2510
    .restart local v6       #value:Ljava/lang/String;
    if-nez v0, :cond_9d

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6c

    .line 2516
    :cond_9d
    const/4 v0, 0x1

    .line 2517
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    .line 2526
    .end local v1           #dns:Ljava/net/InetAddress;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    .restart local v2       #i:I
    :cond_a2
    iput v5, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 2528
    if-eqz v0, :cond_b4

    .line 2530
    :try_start_a6
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {p3}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, p2, v8}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2531
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v7, p2}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b4} :catch_c7

    .line 2536
    :cond_b4
    :goto_b4
    const-string v7, "net.dns.search"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c6

    .line 2537
    const-string v7, "net.dns.search"

    invoke-static {v7, p4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2538
    const/4 v0, 0x1

    .line 2540
    :cond_c6
    return v0

    .line 2532
    :catch_c7
    move-exception v7

    goto :goto_b4
.end method

.method private updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Z)Z
    .registers 16
    .parameter "newLp"
    .parameter "curLp"
    .parameter "isLinkDefault"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2276
    const/4 v8, 0x0

    .line 2277
    .local v8, routesToAdd:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    new-instance v0, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v0}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 2278
    .local v0, dnsDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    new-instance v6, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v6}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 2279
    .local v6, routeDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    if-eqz p2, :cond_4b

    .line 2281
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->compareRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v6

    .line 2282
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->compareDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v0

    .line 2288
    :cond_17
    :goto_17
    iget-object v11, v6, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    if-nez v11, :cond_27

    iget-object v11, v6, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    if-eqz v11, :cond_5a

    :cond_27
    move v7, v10

    .line 2290
    .local v7, routesChanged:Z
    :goto_28
    iget-object v11, v6, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/RouteInfo;

    .line 2291
    .local v5, r:Landroid/net/RouteInfo;
    if-nez p3, :cond_42

    invoke-virtual {v5}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v11

    if-nez v11, :cond_45

    .line 2292
    :cond_42
    invoke-direct {p0, p2, v5, v10}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    .line 2294
    :cond_45
    if-nez p3, :cond_2e

    .line 2296
    invoke-direct {p0, p2, v5, v9}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_2e

    .line 2283
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #r:Landroid/net/RouteInfo;
    .end local v7           #routesChanged:Z
    :cond_4b
    if-eqz p1, :cond_17

    .line 2284
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v11

    iput-object v11, v6, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    .line 2285
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    iput-object v11, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    goto :goto_17

    :cond_5a
    move v7, v9

    .line 2288
    goto :goto_28

    .line 2300
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v7       #routesChanged:Z
    :cond_5c
    iget-object v11, v6, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_62
    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_97

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/RouteInfo;

    .line 2301
    .restart local v5       #r:Landroid/net/RouteInfo;
    if-nez p3, :cond_76

    invoke-virtual {v5}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v11

    if-nez v11, :cond_7a

    .line 2302
    :cond_76
    invoke-direct {p0, p1, v5, v10}, Lcom/android/server/ConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_62

    .line 2305
    :cond_7a
    invoke-direct {p0, p1, v5, v9}, Lcom/android/server/ConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    .line 2309
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 2310
    .local v2, ifaceName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_62

    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v11, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_62

    .line 2313
    :try_start_8f
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v2, v5}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_94} :catch_95

    goto :goto_62

    .line 2314
    :catch_95
    move-exception v11

    goto :goto_62

    .line 2322
    .end local v2           #ifaceName:Ljava/lang/String;
    .end local v5           #r:Landroid/net/RouteInfo;
    :cond_97
    if-nez p3, :cond_fb

    .line 2324
    if-eqz v7, :cond_cf

    .line 2326
    if-eqz p2, :cond_b5

    .line 2327
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 2328
    .local v4, oldDns:Ljava/net/InetAddress;
    invoke-direct {p0, p2, v4}, Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_a5

    .line 2331
    .end local v4           #oldDns:Ljava/net/InetAddress;
    :cond_b5
    if-eqz p1, :cond_fb

    .line 2332
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bf
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_fb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 2333
    .local v3, newDns:Ljava/net/InetAddress;
    invoke-direct {p0, p1, v3}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_bf

    .line 2338
    .end local v3           #newDns:Ljava/net/InetAddress;
    :cond_cf
    iget-object v9, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 2339
    .restart local v4       #oldDns:Ljava/net/InetAddress;
    invoke-direct {p0, p2, v4}, Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_d5

    .line 2341
    .end local v4           #oldDns:Ljava/net/InetAddress;
    :cond_e5
    iget-object v9, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_eb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_fb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 2342
    .restart local v3       #newDns:Ljava/net/InetAddress;
    invoke-direct {p0, p1, v3}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_eb

    .line 2346
    .end local v3           #newDns:Ljava/net/InetAddress;
    :cond_fb
    return v7
.end method

.method private writePidDns(Ljava/util/Collection;I)Z
    .registers 10
    .parameter
    .parameter "pid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 2450
    .local p1, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v4, 0x1

    .line 2451
    .local v4, j:I
    const/4 v0, 0x0

    .line 2452
    .local v0, changed:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 2453
    .local v1, dns:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 2454
    .local v2, dnsString:Ljava/lang/String;
    if-nez v0, :cond_3f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net.dns"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_64

    .line 2455
    :cond_3f
    const/4 v0, 0x1

    .line 2457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net.dns"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    :cond_64
    add-int/lit8 v4, v4, 0x1

    .line 2461
    goto :goto_6

    .line 2462
    .end local v1           #dns:Ljava/net/InetAddress;
    .end local v2           #dnsString:Ljava/lang/String;
    :cond_67
    return v0
.end method


# virtual methods
.method confirmNetworkAvailable(ZI)Z
    .registers 8
    .parameter "isAvailable"
    .parameter "usedNetworkType"

    .prologue
    .line 1135
    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, currentplmn:Ljava/lang/String;
    const-string v3, "gsm.network.type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1137
    .local v1, rat:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1139
    .local v2, result:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmNetworkAvailable isAvailable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " usedNetworkType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmNetworkAvailable mActiveDefaultNetwork = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1168
    if-eqz v2, :cond_52

    .line 1170
    if-nez p1, :cond_50

    .line 1171
    const-string v3, "ConnectivityService"

    const-string v4, "special network not available on mms, continue process"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_50
    const/4 v3, 0x1

    :goto_51
    return v3

    .line 1175
    :cond_52
    const-string v3, "ConnectivityService"

    const-string v4, "DataNetworkDisable // special network not available"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const/4 v3, 0x0

    goto :goto_51
.end method

.method convertFeatureToNetworkType(ILjava/lang/String;)I
    .registers 6
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 3156
    move v0, p1

    .line 3158
    .local v0, usedNetworkType:I
    if-nez p1, :cond_88

    .line 3159
    const-string v1, "enableMMS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3160
    const/4 v0, 0x2

    .line 3196
    :goto_c
    return v0

    .line 3161
    :cond_d
    const-string v1, "enableSUPL"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3162
    const/4 v0, 0x3

    goto :goto_c

    .line 3163
    :cond_17
    const-string v1, "enableDUN"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "enableDUNAlways"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 3165
    :cond_27
    const/4 v0, 0x4

    goto :goto_c

    .line 3166
    :cond_29
    const-string v1, "enableBIP"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 3167
    const/16 v0, 0x12

    goto :goto_c

    .line 3168
    :cond_34
    const-string v1, "enableHIPRI"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 3169
    const/4 v0, 0x5

    goto :goto_c

    .line 3170
    :cond_3e
    const-string v1, "enableFOTA"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 3171
    const/16 v0, 0xa

    goto :goto_c

    .line 3172
    :cond_49
    const-string v1, "enableIMS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 3173
    const/16 v0, 0xb

    goto :goto_c

    .line 3174
    :cond_54
    const-string v1, "enableCBS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 3175
    const/16 v0, 0xc

    goto :goto_c

    .line 3177
    :cond_5f
    const-string v1, "enableCMDM"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 3178
    const/16 v0, 0xe

    goto :goto_c

    .line 3179
    :cond_6a
    const-string v1, "enableCMMAIL"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 3180
    const/16 v0, 0xf

    goto :goto_c

    .line 3181
    :cond_75
    const-string v1, "enableWAP"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 3182
    const/16 v0, 0x10

    goto :goto_c

    .line 3185
    :cond_80
    const-string v1, "ConnectivityService"

    const-string v2, "Can\'t match any mobile netTracker!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 3187
    :cond_88
    const/4 v1, 0x1

    if-ne p1, v1, :cond_a0

    .line 3188
    const-string v1, "p2p"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 3189
    const/16 v0, 0xd

    goto/16 :goto_c

    .line 3191
    :cond_97
    const-string v1, "ConnectivityService"

    const-string v2, "Can\'t match any wifi netTracker!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 3194
    :cond_a0
    const-string v1, "ConnectivityService"

    const-string v2, "Unexpected network type"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2598
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_33

    .line 2601
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump ConnectivityService from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2651
    :cond_32
    return-void

    .line 2606
    :cond_33
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2607
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3a
    if-ge v2, v4, :cond_78

    aget-object v6, v0, v2

    .line 2608
    .local v6, nst:Landroid/net/NetworkStateTracker;
    if-eqz v6, :cond_75

    .line 2609
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_68

    .line 2610
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Active network: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2613
    :cond_68
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2614
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2615
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2607
    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 2619
    .end local v6           #nst:Landroid/net/NetworkStateTracker;
    :cond_78
    const-string v10, "Network Requester Pids:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2620
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    .end local v2           #i$:I
    .local v3, i$:I
    :goto_82
    if-ge v3, v4, :cond_ce

    aget v5, v0, v3

    .line 2621
    .local v5, net:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2622
    .local v8, pidString:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v5

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :goto_a1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 2623
    .local v7, pid:Ljava/lang/Object;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_a1

    .line 2625
    .end local v7           #pid:Ljava/lang/Object;
    :cond_c7
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2620
    add-int/lit8 v2, v3, 0x1

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_82

    .line 2627
    .end local v5           #net:I
    .end local v8           #pidString:Ljava/lang/String;
    :cond_ce
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2629
    const-string v10, "FeatureUsers:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2630
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :goto_dc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 2631
    .local v9, requester:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v9}, Lcom/android/server/ConnectivityService$FeatureUser;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_dc

    .line 2633
    .end local v9           #requester:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_f0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2635
    monitor-enter p0

    .line 2636
    :try_start_f4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NetworkTranstionWakeLock is currently "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-eqz v10, :cond_15c

    const-string v10, ""

    :goto_109
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "held."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2638
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "It was last requested for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2639
    monitor-exit p0
    :try_end_133
    .catchall {:try_start_f4 .. :try_end_133} :catchall_15f

    .line 2640
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2642
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2644
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    if-eqz v10, :cond_32

    .line 2645
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2646
    const-string v10, "Inet condition reports:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2647
    const/4 v1, 0x0

    .local v1, i:I
    :goto_148
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_32

    .line 2648
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2647
    add-int/lit8 v1, v1, 0x1

    goto :goto_148

    .line 2636
    .end local v1           #i:I
    :cond_15c
    :try_start_15c
    const-string v10, "not "

    goto :goto_109

    .line 2639
    :catchall_15f
    move-exception v10

    monitor-exit p0
    :try_end_161
    .catchall {:try_start_15c .. :try_end_161} :catchall_15f

    throw v10
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .parameter "config"

    .prologue
    .line 3252
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .registers 2

    .prologue
    .line 851
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 792
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 793
    .local v0, uid:I
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .registers 3
    .parameter "uid"

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 799
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .registers 3

    .prologue
    .line 896
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 897
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkStateUnchecked(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 898
    .local v0, state:Landroid/net/NetworkState;
    if-eqz v0, :cond_13

    .line 900
    :try_start_b
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, v0}, Landroid/net/INetworkPolicyManager;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v1

    .line 904
    :goto_11
    return-object v1

    .line 901
    :catch_12
    move-exception v1

    .line 904
    :cond_13
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .registers 9

    .prologue
    .line 822
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 823
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 824
    .local v5, uid:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 825
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 826
    :try_start_e
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_12
    if-ge v1, v2, :cond_22

    aget-object v4, v0, v1

    .line 827
    .local v4, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_1f

    .line 828
    invoke-direct {p0, v4, v5}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 831
    .end local v4           #tracker:Landroid/net/NetworkStateTracker;
    :cond_22
    monitor-exit v7
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_30

    .line 832
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/NetworkInfo;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/NetworkInfo;

    return-object v6

    .line 831
    .end local v0           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_30
    move-exception v6

    :try_start_31
    monitor-exit v7
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v6
.end method

.method public getAllNetworkState()[Landroid/net/NetworkState;
    .registers 12

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 869
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 870
    .local v6, uid:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 871
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/NetworkState;>;"
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 872
    :try_start_e
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_12
    if-ge v1, v3, :cond_2f

    aget-object v5, v0, v1

    .line 873
    .local v5, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_2c

    .line 874
    invoke-direct {p0, v5, v6}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 875
    .local v2, info:Landroid/net/NetworkInfo;
    new-instance v7, Landroid/net/NetworkState;

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v10

    invoke-direct {v7, v2, v9, v10}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 879
    .end local v5           #tracker:Landroid/net/NetworkStateTracker;
    :cond_2f
    monitor-exit v8
    :try_end_30
    .catchall {:try_start_e .. :try_end_30} :catchall_3d

    .line 880
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/net/NetworkState;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/net/NetworkState;

    return-object v7

    .line 879
    .end local v0           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v1           #i$:I
    .end local v3           #len$:I
    :catchall_3d
    move-exception v7

    :try_start_3e
    monitor-exit v8
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v7
.end method

.method public getGlobalProxy()Landroid/net/ProxyProperties;
    .registers 3

    .prologue
    .line 3076
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3077
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    monitor-exit v1

    return-object v0

    .line 3078
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 3
    .parameter "iface"

    .prologue
    .line 2834
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2836
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2837
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

    .line 2839
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x3

    goto :goto_f
.end method

.method public getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .registers 2

    .prologue
    .line 3274
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .registers 4
    .parameter "networkType"

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 857
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 858
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 859
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_14

    .line 860
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 863
    .end local v0           #tracker:Landroid/net/NetworkStateTracker;
    :goto_13
    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getMobileDataEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1532
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1533
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_13

    .line 1536
    .local v0, retVal:Z
    :goto_12
    return v0

    .line 1533
    .end local v0           #retVal:Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getMobileDataEnabledForDomestic()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1568
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1569
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_48

    move v0, v1

    .line 1572
    .local v0, retVal:Z
    :goto_14
    const-string v3, "oversea"

    const-string v4, "ril.currentplmn"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1573
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4a

    move v0, v1

    .line 1576
    :cond_31
    :goto_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMobileDataEnabledForDomestic returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1577
    return v0

    .end local v0           #retVal:Z
    :cond_48
    move v0, v2

    .line 1569
    goto :goto_14

    .restart local v0       #retVal:Z
    :cond_4a
    move v0, v2

    .line 1573
    goto :goto_31
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .registers 4
    .parameter "networkType"

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 805
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 806
    .local v0, uid:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkPreference()I
    .registers 3

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 666
    monitor-enter p0

    .line 667
    :try_start_4
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 668
    .local v0, preference:I
    monitor-exit p0

    .line 669
    return v0

    .line 668
    .end local v0           #preference:I
    :catchall_8
    move-exception v1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public getProxy()Landroid/net/ProxyProperties;
    .registers 3

    .prologue
    .line 3025
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3026
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_8
    monitor-exit v1

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    goto :goto_8

    .line 3027
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2863
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2864
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2865
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 2867
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_f
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2883
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2884
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2845
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2846
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2847
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 2849
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_f
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2854
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2855
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2856
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 2858
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_f
.end method

.method public getTetheredIfacePairs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2894
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2895
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfacePairs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2888
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2889
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2899
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2900
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNetworkSupported(I)Z
    .registers 3
    .parameter "networkType"

    .prologue
    .line 837
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 838
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isTetheringSupported()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2907
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2908
    const-string v4, "ro.tether.denied"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move v0, v2

    .line 2909
    .local v0, defaultVal:I
    :goto_14
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tether_supported"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2c

    move v1, v3

    .line 2911
    .local v1, tetherEnabledInSettings:Z
    :goto_23
    if-eqz v1, :cond_2e

    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    if-eqz v4, :cond_2e

    :goto_29
    return v3

    .end local v0           #defaultVal:I
    .end local v1           #tetherEnabledInSettings:Z
    :cond_2a
    move v0, v3

    .line 2908
    goto :goto_14

    .restart local v0       #defaultVal:I
    :cond_2c
    move v1, v2

    .line 2909
    goto :goto_23

    .restart local v1       #tetherEnabledInSettings:Z
    :cond_2e
    move v3, v2

    .line 2911
    goto :goto_29
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "oldPackage"
    .parameter "newPackage"

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public protectVpn(Landroid/os/ParcelFileDescriptor;)Z
    .registers 5
    .parameter "socket"

    .prologue
    .line 3215
    :try_start_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 3216
    .local v0, type:I
    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 3217
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/connectivity/Vpn;->protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_23

    .line 3218
    const/4 v1, 0x1

    .line 3224
    :try_start_1a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_2d

    .line 3229
    .end local v0           #type:I
    :goto_1d
    return v1

    .line 3223
    :catchall_1e
    move-exception v1

    .line 3224
    :try_start_1f
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_2b

    .line 3223
    :goto_22
    throw v1

    .line 3220
    :catch_23
    move-exception v1

    .line 3224
    :try_start_24
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3229
    :goto_27
    const/4 v1, 0x0

    goto :goto_1d

    .line 3225
    :catch_29
    move-exception v1

    goto :goto_27

    :catch_2b
    move-exception v2

    goto :goto_22

    .restart local v0       #type:I
    :catch_2d
    move-exception v2

    goto :goto_1d

    .line 3224
    :cond_2f
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_32} :catch_29

    goto :goto_27
.end method

.method public reportInetCondition(II)V
    .registers 9
    .parameter "networkType"
    .parameter "percentage"

    .prologue
    .line 2936
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.STATUS_BAR"

    const-string v5, "ConnectivityService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v0

    .line 2942
    .local v0, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    .line 2943
    .local v2, uid:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") reports inet is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0x32

    if-le p2, v3, :cond_7a

    const-string v3, "connected"

    :goto_30
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "network Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2946
    .local v1, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2947
    :goto_69
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_7d

    .line 2948
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_69

    .line 2943
    .end local v1           #s:Ljava/lang/String;
    :cond_7a
    const-string v3, "disconnected"

    goto :goto_30

    .line 2951
    .restart local v1       #s:Ljava/lang/String;
    :cond_7d
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    invoke-virtual {v4, v5, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2953
    return-void
.end method

.method public requestNetworkTransitionWakelock(Ljava/lang/String;)V
    .registers 7
    .parameter "forWhom"

    .prologue
    .line 2919
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2920
    monitor-enter p0

    .line 2921
    :try_start_4
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_e

    monitor-exit p0

    .line 2930
    :goto_d
    return-void

    .line 2922
    :cond_e
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    .line 2923
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2924
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 2925
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_30

    .line 2926
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    iget v3, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d

    .line 2925
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public requestRouteToHost(II)Z
    .registers 5
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 1333
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 1335
    .local v0, inetAddress:Ljava/net/InetAddress;
    if-nez v0, :cond_8

    .line 1336
    const/4 v1, 0x0

    .line 1339
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/ConnectivityService;->requestRouteToHostAddress(I[B)Z

    move-result v1

    goto :goto_7
.end method

.method public requestRouteToHostAddress(I[B)Z
    .registers 12
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    const/4 v6, 0x0

    .line 1352
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1353
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1354
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1357
    :cond_13
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v7

    if-nez v7, :cond_30

    .line 1358
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestRouteToHostAddress on invalid network: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1387
    :cond_2f
    :goto_2f
    return v6

    .line 1361
    :cond_30
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v7, p1

    .line 1363
    .local v5, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_2f

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v7

    if-nez v7, :cond_2f

    .line 1371
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1373
    .local v3, token:J
    :try_start_4a
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 1374
    .local v0, addr:Ljava/net/InetAddress;
    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    .line 1381
    .local v2, lp:Landroid/net/LinkProperties;
    invoke-direct {p0, v2, v0}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_76
    .catch Ljava/net/UnknownHostException; {:try_start_4a .. :try_end_55} :catch_5a

    move-result v6

    .line 1385
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v2           #lp:Landroid/net/LinkProperties;
    :goto_56
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2f

    .line 1382
    :catch_5a
    move-exception v1

    .line 1383
    .local v1, e:Ljava/net/UnknownHostException;
    :try_start_5b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestRouteToHostAddress got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_5b .. :try_end_75} :catchall_76

    goto :goto_56

    .line 1385
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catchall_76
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setDataDependency(IZ)V
    .registers 7
    .parameter "networkType"
    .parameter "met"

    .prologue
    .line 1581
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1583
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    if-eqz p2, :cond_14

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {v2, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1585
    return-void

    .line 1583
    :cond_14
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setGlobalProxy(Landroid/net/ProxyProperties;)V
    .registers 8
    .parameter "proxyProperties"

    .prologue
    .line 3031
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 3032
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3033
    :try_start_6
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-ne p1, v4, :cond_c

    monitor-exit v5

    .line 3059
    :cond_b
    :goto_b
    return-void

    .line 3034
    :cond_c
    if-eqz p1, :cond_1b

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {p1, v4}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    monitor-exit v5

    goto :goto_b

    .line 3053
    :catchall_18
    move-exception v4

    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw v4

    .line 3035
    :cond_1b
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-eqz v4, :cond_29

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v4, p1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    monitor-exit v5

    goto :goto_b

    .line 3037
    :cond_29
    const-string v1, ""

    .line 3038
    .local v1, host:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3039
    .local v2, port:I
    const-string v0, ""

    .line 3040
    .local v0, exclList:Ljava/lang/String;
    if-eqz p1, :cond_70

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_70

    .line 3041
    new-instance v4, Landroid/net/ProxyProperties;

    invoke-direct {v4, p1}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 3042
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 3043
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    .line 3044
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    .line 3048
    :goto_53
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3049
    .local v3, res:Landroid/content/ContentResolver;
    const-string v4, "global_http_proxy_host"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3050
    const-string v4, "global_http_proxy_port"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3051
    const-string v4, "global_http_proxy_exclusion_list"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3053
    monitor-exit v5
    :try_end_69
    .catchall {:try_start_1b .. :try_end_69} :catchall_18

    .line 3055
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-nez v4, :cond_b

    .line 3056
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    goto :goto_b

    .line 3046
    .end local v3           #res:Landroid/content/ContentResolver;
    :cond_70
    const/4 v4, 0x0

    :try_start_71
    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;
    :try_end_73
    .catchall {:try_start_71 .. :try_end_73} :catchall_18

    goto :goto_53
.end method

.method public setMobileDataEnabled(Z)V
    .registers 8
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 1640
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMobileDataEnabled("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1644
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1646
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1647
    const-string v1, "ConnectivityService"

    const-string v2, "CellularData is not allowed by admin"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :goto_3d
    return-void

    .line 1652
    :cond_3e
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x6b

    if-eqz p1, :cond_4f

    const/4 v1, 0x1

    :goto_47
    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3d

    :cond_4f
    move v1, v2

    goto :goto_47
.end method

.method public setNetworkPreference(I)V
    .registers 6
    .parameter "preference"

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 660
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 661
    return-void
.end method

.method public setPolicyDataEnable(IZ)V
    .registers 7
    .parameter "networkType"
    .parameter "enabled"

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x71

    if-eqz p2, :cond_1a

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v2, v3, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1678
    return-void

    .line 1676
    :cond_1a
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public setRadio(IZ)Z
    .registers 6
    .parameter "netType"
    .parameter "turnOn"

    .prologue
    const/4 v1, 0x0

    .line 917
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 918
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 922
    :cond_a
    :goto_a
    return v1

    .line 921
    :cond_b
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, p1

    .line 922
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_a

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    goto :goto_a
.end method

.method public setRadios(Z)Z
    .registers 8
    .parameter "turnOn"

    .prologue
    .line 908
    const/4 v3, 0x1

    .line 909
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 910
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_8
    if-ge v1, v2, :cond_1c

    aget-object v4, v0, v1

    .line 911
    .local v4, t:Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_17

    invoke-interface {v4, p1}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v5

    if-eqz v5, :cond_1a

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    .line 910
    :cond_17
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 911
    :cond_1a
    const/4 v3, 0x0

    goto :goto_17

    .line 913
    .end local v4           #t:Landroid/net/NetworkStateTracker;
    :cond_1c
    return v3
.end method

.method public setUsbTethering(Z)I
    .registers 3
    .parameter "enable"

    .prologue
    .line 2872
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2873
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2874
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    .line 2876
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x3

    goto :goto_f
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .parameter "config"
    .parameter "racoon"
    .parameter "mtpd"

    .prologue
    .line 3263
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3264
    return-void
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    .registers 26
    .parameter "networkType"
    .parameter "feature"
    .parameter "binder"

    .prologue
    .line 1007
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1009
    const-string v18, "enableMMS"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_4a

    .line 1010
    const/4 v13, 0x0

    .line 1011
    .local v13, restrictionPolicy:Landroid/app/enterprise/PhoneRestrictionPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4a

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "enterprise_policy"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1013
    .local v6, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v6, :cond_2c

    .line 1014
    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v13

    .line 1016
    :cond_2c
    const/4 v7, 0x0

    .line 1017
    .local v7, emergencyCallOnly:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1018
    .local v14, token:J
    if-eqz v13, :cond_3b

    .line 1019
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/app/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v7

    .line 1021
    :cond_3b
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1022
    if-eqz v7, :cond_4a

    .line 1023
    const-string v18, "ConnectivityService"

    const-string v19, "Administrator blocked this device"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/16 v18, 0x3

    .line 1130
    .end local v6           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v7           #emergencyCallOnly:Z
    .end local v13           #restrictionPolicy:Landroid/app/enterprise/PhoneRestrictionPolicy;
    .end local v14           #token:J
    :goto_49
    return v18

    .line 1029
    :cond_4a
    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v18

    if-eqz v18, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    if-nez v18, :cond_5d

    .line 1031
    :cond_5a
    const/16 v18, 0x3

    goto :goto_49

    .line 1034
    :cond_5d
    new-instance v8, Lcom/android/server/ConnectivityService$FeatureUser;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$FeatureUser;-><init>(Lcom/android/server/ConnectivityService;ILjava/lang/String;Landroid/os/IBinder;)V

    .line 1037
    .local v8, f:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/ConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v17

    .line 1039
    .local v17, usedNetworkType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_81

    .line 1040
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1043
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v18, v0

    aget-object v10, v18, v17

    .line 1044
    .local v10, network:Landroid/net/NetworkStateTracker;
    if-eqz v10, :cond_1d2

    .line 1045
    new-instance v5, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1046
    .local v5, currentPid:Ljava/lang/Integer;
    move/from16 v0, v17

    move/from16 v1, p1

    if-eq v0, v1, :cond_1a1

    .line 1047
    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    .line 1056
    .local v11, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v18

    if-nez v18, :cond_be

    .line 1057
    const-string v18, "special network not available"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1058
    const-string v18, "enableDUNAlways"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_be

    .line 1059
    const/16 v18, 0x2

    goto :goto_49

    .line 1065
    :cond_be
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->getRestoreDefaultNetworkDelay(I)I

    move-result v12

    .line 1067
    .local v12, restoreTimer:I
    monitor-enter p0

    .line 1068
    const/4 v4, 0x1

    .line 1069
    .local v4, addToList:Z
    if-gez v12, :cond_e9

    .line 1072
    :try_start_ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_d4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1073
    .local v16, u:Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v18

    if-eqz v18, :cond_d4

    .line 1075
    const/4 v4, 0x0

    .line 1081
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v16           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_e9
    if-eqz v4, :cond_f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1082
    :cond_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v18, v0

    aget-object v18, v18, v17

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_113

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v18, v0

    aget-object v18, v18, v17

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    :cond_113
    monitor-exit p0
    :try_end_114
    .catchall {:try_start_ca .. :try_end_114} :catchall_162

    .line 1088
    if-ltz v12, :cond_132

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x65

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    int-to-long v0, v12

    move-wide/from16 v20, v0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1093
    :cond_132
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16e

    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v18

    if-nez v18, :cond_16e

    .line 1095
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16a

    .line 1096
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1099
    .restart local v14       #token:J
    :try_start_154
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V
    :try_end_15b
    .catchall {:try_start_154 .. :try_end_15b} :catchall_165

    .line 1102
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1104
    const/16 v18, 0x0

    goto/16 :goto_49

    .line 1086
    .end local v14           #token:J
    :catchall_162
    move-exception v18

    :try_start_163
    monitor-exit p0
    :try_end_164
    .catchall {:try_start_163 .. :try_end_164} :catchall_162

    throw v18

    .line 1102
    .restart local v14       #token:J
    :catchall_165
    move-exception v18

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18

    .line 1107
    .end local v14           #token:J
    :cond_16a
    const/16 v18, 0x1

    goto/16 :goto_49

    .line 1114
    :cond_16e
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "startUsingNetworkFeature reconnecting to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1116
    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 1117
    const/16 v18, 0x1

    goto/16 :goto_49

    .line 1120
    .end local v4           #addToList:Z
    .end local v11           #ni:Landroid/net/NetworkInfo;
    .end local v12           #restoreTimer:I
    :cond_1a1
    monitor-enter p0

    .line 1121
    :try_start_1a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v18, v0

    aget-object v18, v18, v17

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1ca

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v18, v0

    aget-object v18, v18, v17

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1126
    :cond_1ca
    monitor-exit p0

    .line 1127
    const/16 v18, -0x1

    goto/16 :goto_49

    .line 1126
    :catchall_1cf
    move-exception v18

    monitor-exit p0
    :try_end_1d1
    .catchall {:try_start_1a2 .. :try_end_1d1} :catchall_1cf

    throw v18

    .line 1130
    .end local v5           #currentPid:Ljava/lang/Integer;
    :cond_1d2
    const/16 v18, 0x2

    goto/16 :goto_49
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .registers 11
    .parameter "networkType"
    .parameter "feature"

    .prologue
    const/4 v6, 0x1

    .line 1185
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1187
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v2

    .line 1188
    .local v2, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v4

    .line 1190
    .local v4, uid:I
    const/4 v3, 0x0

    .line 1191
    .local v3, u:Lcom/android/server/ConnectivityService$FeatureUser;
    const/4 v0, 0x0

    .line 1193
    .local v0, found:Z
    monitor-enter p0

    .line 1194
    :try_start_f
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1195
    .local v5, x:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v5, v2, v4, p1, p2}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(IIILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1196
    move-object v3, v5

    .line 1197
    const/4 v0, 0x1

    .line 1201
    .end local v5           #x:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_33

    .line 1202
    if-eqz v0, :cond_32

    if-eqz v3, :cond_32

    .line 1204
    invoke-direct {p0, v3, v6}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v6

    .line 1208
    :cond_32
    return v6

    .line 1201
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_33
    move-exception v6

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v6
.end method

.method systemReady()V
    .registers 4

    .prologue
    .line 2049
    monitor-enter p0

    .line 2050
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    .line 2051
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v0, :cond_12

    .line 2052
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 2055
    :cond_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_21

    .line 2057
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2058
    return-void

    .line 2055
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public tether(Ljava/lang/String;)I
    .registers 3
    .parameter "iface"

    .prologue
    .line 2812
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 2814
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2815
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v0

    .line 2817
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x3

    goto :goto_f
.end method

.method public untether(Ljava/lang/String;)I
    .registers 3
    .parameter "iface"

    .prologue
    .line 2823
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 2825
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2826
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    .line 2828
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x3

    goto :goto_f
.end method

.method public updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    .registers 5
    .parameter "nt"

    .prologue
    .line 2356
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getTcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v1

    .line 2357
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2359
    .local v0, bufferSizes:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14

    .line 2363
    const-string v1, "net.tcp.buffersize.default"

    .line 2364
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2368
    :cond_14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1d

    .line 2373
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setBufferSize(Ljava/lang/String;)V

    .line 2375
    :cond_1d
    return-void
.end method
