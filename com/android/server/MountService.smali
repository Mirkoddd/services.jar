.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$DirEncryptListner;,
        Lcom/android/server/MountService$MountCallBackBinderListener;,
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$MountServiceBinderListener;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$ShutdownCallBack;,
        Lcom/android/server/MountService$UmsEnableCallBack;,
        Lcom/android/server/MountService$UnmountCallBack;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$PackageInstalledMap;,
        Lcom/android/server/MountService$VoldResponseCode;,
        Lcom/android/server/MountService$VolumeState;
    }
.end annotation


# static fields
.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field private static final DEBUG_EVENTS:Z = true

.field private static final DEBUG_OBB:Z = false

.field private static final DEBUG_UNMOUNT:Z = true

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName; = null

.field private static final H_UNMOUNT_MS:I = 0x3

.field private static final H_UNMOUNT_PM_ADDOBJ:I = 0x4

.field private static final H_UNMOUNT_PM_DONE:I = 0x2

.field private static final H_UNMOUNT_PM_UPDATE:I = 0x1

.field private static final LOCAL_LOGD:Z = true

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MAX_UNMOUNT_RETRIES:I = 0x4

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final RETRY_UNMOUNT_DELAY:I = 0x1e

#the value of this static final field might be set in the static constructor
.field private static final STORAGE_DECRYPTION:Z = false

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final TAG_STORAGE:Ljava/lang/String; = "storage"

.field private static final TAG_STORAGE_LIST:Ljava/lang/String; = "StorageList"

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field private static final WATCHDOG_ENABLE:Z


# instance fields
.field private doSendSorry:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private final mASECDirectory:Ljava/lang/String;

.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/MountService$PackageInstalledMap;",
            ">;"
        }
    .end annotation
.end field

.field private mBooted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$MountCallBackBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContext:Landroid/content/Context;

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

.field private mEmulateExternalStorage:Z

.field private mExternalStoragePath:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$MountServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MountService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mPrimaryVolume:Landroid/os/storage/StorageVolume;

.field private mReady:Z

.field private mSecureContainerVolume:Landroid/os/storage/StorageVolume;

.field private mSendUmsConnectedOnBoot:Z

.field private mUmsAvailable:Z

.field private mUmsEnabling:Z

.field private mUmsProcessing:Z

.field private final mVolumeMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumePendingStates:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeStates:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkQueueHandler:Landroid/os/Handler;

.field private final mWorkQueueHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 123
    const-string v0, "true"

    const-string v1, "ro.secsddecryption"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/MountService;->STORAGE_DECRYPTION:Z

    .line 333
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1459
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    .line 193
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    .line 195
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    .line 196
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/MountService;->mVolumePendingStates:Ljava/util/LinkedHashMap;

    .line 197
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/LinkedHashMap;

    .line 200
    iput-boolean v7, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 201
    iput-boolean v7, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 203
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    .line 205
    iput-boolean v7, p0, Lcom/android/server/MountService;->mBooted:Z

    .line 206
    iput-boolean v7, p0, Lcom/android/server/MountService;->mReady:Z

    .line 207
    iput-boolean v7, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 209
    iput-boolean v7, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    .line 211
    iput-object v8, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    .line 243
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    .line 246
    invoke-static {}, Landroid/os/Environment;->getAndroidSecureContainerDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/MountService;->mASECDirectory:Ljava/lang/String;

    .line 264
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    .line 265
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    .line 336
    new-instance v3, Lcom/android/server/MountService$DefaultContainerConnection;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    iput-object v3, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    .line 353
    iput-object v8, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 557
    new-instance v3, Lcom/android/server/MountService$1;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    iput-object v3, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1683
    iput-boolean v7, p0, Lcom/android/server/MountService;->mUmsProcessing:Z

    .line 3357
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/server/MountService;->handler:Landroid/os/Handler;

    .line 3394
    new-instance v3, Lcom/android/server/MountService$7;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$7;-><init>(Lcom/android/server/MountService;)V

    iput-object v3, p0, Lcom/android/server/MountService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 3403
    new-instance v3, Lcom/android/server/MountService$8;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$8;-><init>(Lcom/android/server/MountService;)V

    iput-object v3, p0, Lcom/android/server/MountService;->doSendSorry:Ljava/lang/Runnable;

    .line 3414
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    .line 3565
    iput-object v8, p0, Lcom/android/server/MountService;->mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    .line 3566
    iput-object v8, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 1460
    const-string v3, "MountService"

    const-string v4, "MountService :: "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    iput-object p1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 1462
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1463
    .local v1, resources:Landroid/content/res/Resources;
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->readStorageList(Landroid/content/res/Resources;)V

    .line 1465
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-eqz v3, :cond_c0

    .line 1466
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    .line 1467
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    .line 1468
    iget-boolean v3, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    if-eqz v3, :cond_c0

    .line 1469
    const-string v3, "MountService"

    const-string v4, "using emulated external storage"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    iget-object v4, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    const-string v5, "mounted"

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    :cond_c0
    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService;

    iput-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 1477
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1478
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1480
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/MountService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, v8, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1484
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-eqz v3, :cond_f3

    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 1485
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1487
    :cond_f3
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0, v8, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1489
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "MountServiceEvent"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/MountService;->mWorkQueueHandlerThread:Landroid/os/HandlerThread;

    .line 1490
    iget-object v3, p0, Lcom/android/server/MountService;->mWorkQueueHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 1491
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/MountService;->mWorkQueueHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/MountService;->mWorkQueueHandler:Landroid/os/Handler;

    .line 1492
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "MountService"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1493
    iget-object v3, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 1494
    new-instance v3, Lcom/android/server/MountService$MountServiceHandler;

    iget-object v4, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    .line 1497
    new-instance v3, Lcom/android/server/MountService$ObbActionHandler;

    iget-object v4, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 1503
    const-string v3, "simulator"

    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_150

    .line 1504
    iput-boolean v9, p0, Lcom/android/server/MountService;->mReady:Z

    .line 1505
    iput-boolean v9, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 1523
    :goto_14f
    return-void

    .line 1514
    :cond_150
    new-instance v3, Lcom/android/server/NativeDaemonConnector;

    const-string v4, "vold"

    const/16 v5, 0x1f4

    const-string v6, "VoldConnector"

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1515
    iput-boolean v7, p0, Lcom/android/server/MountService;->mReady:Z

    .line 1516
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "VoldConnector"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1517
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_14f
.end method

.method private ApplyCurrentSdCardPolicy(Z)V
    .registers 13
    .parameter "available"

    .prologue
    .line 3366
    invoke-direct {p0}, Lcom/android/server/MountService;->GetCurrentPolicy()Z

    move-result v0

    .line 3367
    .local v0, check:Z
    const/4 v3, 0x0

    .line 3368
    .local v3, removeEncryption:Z
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ApplyCurrentSdCardPolicy :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", getAllowStorageCard "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    if-nez v0, :cond_91

    .line 3371
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2a
    iget-object v8, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_91

    .line 3372
    iget-object v8, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageVolume;

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 3373
    .local v6, vPath:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3374
    .local v7, vState:Ljava/lang/String;
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removable storage path :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    const-string v8, "checking"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 3376
    const/16 v4, 0x1e

    .line 3377
    .local v4, retries:I
    :goto_64
    const-string v8, "checking"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_80

    add-int/lit8 v5, v4, -0x1

    .end local v4           #retries:I
    .local v5, retries:I
    if-ltz v4, :cond_92

    .line 3379
    const-wide/16 v8, 0x3e8

    :try_start_72
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_75
    .catch Ljava/lang/InterruptedException; {:try_start_72 .. :try_end_75} :catch_77

    move v4, v5

    .line 3383
    .end local v5           #retries:I
    .restart local v4       #retries:I
    goto :goto_64

    .line 3380
    .end local v4           #retries:I
    .restart local v5       #retries:I
    :catch_77
    move-exception v2

    .line 3381
    .local v2, iex:Ljava/lang/InterruptedException;
    const-string v8, "MountService"

    const-string v9, "Interrupted while waiting for media"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 3385
    .end local v2           #iex:Ljava/lang/InterruptedException;
    .end local v5           #retries:I
    .restart local v4       #retries:I
    :cond_80
    :goto_80
    if-nez v4, :cond_89

    .line 3386
    const-string v8, "MountService"

    const-string v9, "Timed out waiting for media to check"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    .end local v4           #retries:I
    :cond_89
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v6, v8, v9}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    .line 3371
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 3392
    .end local v1           #i:I
    .end local v6           #vPath:Ljava/lang/String;
    .end local v7           #vState:Ljava/lang/String;
    :cond_91
    return-void

    .restart local v1       #i:I
    .restart local v5       #retries:I
    .restart local v6       #vPath:Ljava/lang/String;
    .restart local v7       #vState:Ljava/lang/String;
    :cond_92
    move v4, v5

    .end local v5           #retries:I
    .restart local v4       #retries:I
    goto :goto_80
.end method

.method private declared-synchronized GetCurrentPolicy()Z
    .registers 4

    .prologue
    .line 3360
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3361
    .local v0, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowStorageCard(Landroid/content/ComponentName;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result v1

    monitor-exit p0

    return v1

    .line 3360
    .end local v0           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/MountService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/MountService;)Ljava/util/LinkedHashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/MountService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/MountService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/MountService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/MountService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/MountService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/MountService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/MountService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/server/MountService;->mReady:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/MountService;ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/MountService;)Ljava/util/LinkedHashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumePendingStates:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/MountService;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/MountService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsProcessing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/MountService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->setUmsProcessing(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/MountService;)Ljava/util/LinkedHashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/MountService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/MountService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/server/MountService;->GetCurrentPolicy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/MountService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->ApplyCurrentSdCardPolicy(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/MountService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/MountService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/server/MountService;->mBooted:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/MountService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/server/MountService;->mBooted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/MountService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/MountService;)Lcom/android/server/MountService$DirEncryptListner;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/MountService;->mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/MountService;Lcom/android/server/MountService$DirEncryptListner;)Lcom/android/server/MountService$DirEncryptListner;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/MountService;->mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    return-object p1
.end method

.method private actionStorageAskPermission(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter "path"
    .parameter "state"

    .prologue
    .line 3418
    iget-object v6, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v6

    .line 3419
    :try_start_3
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_b
    if-ltz v2, :cond_3e

    .line 3420
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountCallBackBinderListener;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_32

    .line 3423
    .local v0, bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    :try_start_15
    iget-object v5, v0, Lcom/android/server/MountService$MountCallBackBinderListener;->mCallback:Landroid/os/storage/IMountCallBackListener;

    invoke-interface {v5, p1, p2}, Landroid/os/storage/IMountCallBackListener;->onStorageAskPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_32
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_35

    move-result v3

    .local v3, ret:I
    const/16 v5, -0xc8

    if-ne v3, v5, :cond_22

    .line 3419
    .end local v3           #ret:I
    :goto_1f
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 3424
    .restart local v3       #ret:I
    :cond_22
    :try_start_22
    monitor-exit v6

    .line 3434
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .end local v3           #ret:I
    :goto_23
    return v3

    .line 3425
    .restart local v0       #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    :catch_24
    move-exception v4

    .line 3426
    .local v4, rex:Landroid/os/RemoteException;
    const-string v5, "MountService"

    const-string v7, "actionStorageAskPermission : Listener dead"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1f

    .line 3432
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .end local v2           #i:I
    .end local v4           #rex:Landroid/os/RemoteException;
    :catchall_32
    move-exception v5

    monitor-exit v6
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_32

    throw v5

    .line 3428
    .restart local v0       #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .restart local v2       #i:I
    :catch_35
    move-exception v1

    .line 3429
    .local v1, ex:Ljava/lang/Exception;
    :try_start_36
    const-string v5, "MountService"

    const-string v7, "actionStorageAskPermission : Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 3432
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_3e
    monitor-exit v6
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_32

    .line 3434
    const/16 v3, -0x64

    goto :goto_23
.end method

.method public static addEscapeChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "input"

    .prologue
    const/4 v1, -0x1

    .line 2509
    if-eqz p0, :cond_13

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_14

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_14

    .line 2512
    .end local p0
    :cond_13
    :goto_13
    return-object p0

    .restart local p0
    :cond_14
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_13
.end method

.method private addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .registers 9
    .parameter "obbState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2670
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2671
    .local v0, binder:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2673
    .local v4, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_26

    .line 2674
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2675
    .restart local v4       #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2685
    :cond_18
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2687
    :try_start_1b
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_48

    .line 2702
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2703
    return-void

    .line 2677
    :cond_26
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 2678
    .local v3, o:Lcom/android/server/MountService$ObbState;
    iget-object v5, v3, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 2679
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2688
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #o:Lcom/android/server/MountService$ObbState;
    :catch_48
    move-exception v1

    .line 2693
    .local v1, e:Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2694
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 2695
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2699
    :cond_57
    throw v1
.end method

.method private checkSecureContainerMounted(Ljava/lang/String;)Z
    .registers 4
    .parameter "path"

    .prologue
    .line 3255
    const-string v0, "mounted"

    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private doFormatVolume(Ljava/lang/String;)I
    .registers 9
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 1188
    :try_start_1
    const-string v4, "volume format %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, cmd:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_12
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_12} :catch_13

    .line 1201
    .end local v0           #cmd:Ljava/lang/String;
    :goto_12
    return v3

    .line 1191
    :catch_13
    move-exception v2

    .line 1192
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1193
    .local v1, code:I
    const/16 v3, 0x191

    if-ne v1, v3, :cond_25

    .line 1194
    const-string v3, "MountService"

    const-string v4, "doFormatVolume :: result = OperationFailedNoMedia"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const/4 v3, -0x2

    goto :goto_12

    .line 1196
    :cond_25
    const/16 v3, 0x193

    if-ne v1, v3, :cond_32

    .line 1197
    const-string v3, "MountService"

    const-string v4, "doFormatVolume :: result = OperationFailedMediaCorrupt"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const/4 v3, -0x4

    goto :goto_12

    .line 1200
    :cond_32
    const-string v3, "MountService"

    const-string v4, "doFormatVolume :: result = OperationFailedInternalError"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/4 v3, -0x1

    goto :goto_12
.end method

.method private doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .parameter "path"
    .parameter "method"

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1207
    const-string v10, "volume shared %s %s"

    new-array v11, v12, [Ljava/lang/Object;

    aput-object p1, v11, v8

    aput-object p2, v11, v9

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1211
    .local v0, cmd:Ljava/lang/String;
    :try_start_f
    iget-object v10, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v10, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_14
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_f .. :try_end_14} :catch_58

    move-result-object v6

    .line 1217
    .local v6, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ba

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1218
    .local v4, line:Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1219
    .local v7, tok:[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x3

    if-ge v10, v11, :cond_7c

    .line 1220
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Malformed response to volume shared "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " command"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #tok:[Ljava/lang/String;
    :cond_57
    :goto_57
    return v8

    .line 1212
    :catch_58
    move-exception v2

    .line 1213
    .local v2, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to read response to volume shared "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 1226
    .end local v2           #ex:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #tok:[Ljava/lang/String;
    :cond_7c
    const/4 v10, 0x0

    :try_start_7d
    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_82} :catch_93

    move-result v1

    .line 1231
    .local v1, code:I
    const/16 v10, 0xd4

    if-ne v1, v10, :cond_a6

    .line 1232
    const-string v10, "enabled"

    aget-object v11, v7, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_57

    move v8, v9

    .line 1234
    goto :goto_57

    .line 1227
    .end local v1           #code:I
    :catch_93
    move-exception v5

    .line 1228
    .local v5, nfe:Ljava/lang/NumberFormatException;
    const-string v10, "MountService"

    const-string v11, "doGetVolumeShared :: Error parsing code %s"

    new-array v9, v9, [Ljava/lang/Object;

    aget-object v12, v7, v8

    aput-object v12, v9, v8

    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 1239
    .end local v5           #nfe:Ljava/lang/NumberFormatException;
    .restart local v1       #code:I
    :cond_a6
    const-string v10, "MountService"

    const-string v11, "doGetVolumeShared :: Unexpected response code %d"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v8

    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 1243
    .end local v1           #code:I
    .end local v4           #line:Ljava/lang/String;
    .end local v7           #tok:[Ljava/lang/String;
    :cond_ba
    const-string v9, "MountService"

    const-string v10, "doGetVolumeShared :: Got an empty response"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57
.end method

.method private doMountVolume(Ljava/lang/String;)I
    .registers 3
    .parameter "path"

    .prologue
    .line 1127
    const-string v0, "mounting"

    invoke-direct {p0, p1, v0}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private doMountVolume(Ljava/lang/String;Ljava/lang/String;)I
    .registers 18
    .parameter "path"
    .parameter "with"

    .prologue
    .line 1037
    const-string v11, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMountVolume :: Mouting path = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " with = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v11, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v12, "enterprise_policy"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1042
    .local v7, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v7, :cond_4a

    .line 1043
    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    .line 1044
    .local v9, rp:Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v9, :cond_4a

    invoke-virtual {v9}, Landroid/app/enterprise/RestrictionPolicy;->isSdCardEnabled()Z

    move-result v11

    if-nez v11, :cond_4a

    const-string v11, "/mnt/sdcard/external_sd"

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4a

    .line 1045
    const/4 v8, -0x2

    .line 1123
    .end local v9           #rp:Landroid/app/enterprise/RestrictionPolicy;
    :cond_49
    :goto_49
    return v8

    .line 1050
    :cond_4a
    const/4 v8, 0x0

    .line 1052
    .local v8, rc:I
    iget-object v11, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageVolume;

    .line 1053
    .local v10, storage:Landroid/os/storage/StorageVolume;
    invoke-direct {p0}, Lcom/android/server/MountService;->GetCurrentPolicy()Z

    move-result v4

    .line 1054
    .local v4, check:Z
    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v11

    if-eqz v11, :cond_ba

    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v11

    const-string v12, "sd"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ba

    const/4 v1, 0x1

    .line 1056
    .local v1, ExtSdcard:Z
    :goto_6c
    if-eqz v10, :cond_71

    if-nez v1, :cond_71

    const/4 v4, 0x1

    .line 1057
    :cond_71
    const-string v11, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ExtSdcard = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    if-eqz v10, :cond_bc

    if-eqz v1, :cond_bc

    if-nez v4, :cond_bc

    .line 1060
    const-string v11, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMountVolume :: restricts in order to policy:: ExtSdcard = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " check = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v11, p0, Lcom/android/server/MountService;->handler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/server/MountService;->doSendSorry:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1062
    const/4 v8, -0x2

    goto :goto_49

    .line 1054
    .end local v1           #ExtSdcard:Z
    :cond_ba
    const/4 v1, 0x0

    goto :goto_6c

    .line 1069
    .restart local v1       #ExtSdcard:Z
    :cond_bc
    :try_start_bc
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/MountService;->requiredEncPolicyCheck(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ef

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v11

    if-eqz v11, :cond_ef

    .line 1070
    iget-object v11, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v12, "volume mount %s hidden"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_d9
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_bc .. :try_end_d9} :catch_db

    goto/16 :goto_49

    .line 1074
    :catch_db
    move-exception v6

    .line 1078
    .local v6, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v3, 0x0

    .line 1079
    .local v3, action:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    .line 1080
    .local v5, code:I
    const/16 v11, 0x191

    if-ne v5, v11, :cond_102

    .line 1084
    const/4 v8, -0x2

    .line 1118
    :cond_e6
    :goto_e6
    if-eqz v3, :cond_49

    .line 1119
    move-object/from16 v0, p1

    invoke-direct {p0, v3, v0}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_49

    .line 1072
    .end local v3           #action:Ljava/lang/String;
    .end local v5           #code:I
    .end local v6           #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_ef
    :try_start_ef
    iget-object v11, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v12, "volume mount %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_100
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_ef .. :try_end_100} :catch_db

    goto/16 :goto_49

    .line 1085
    .restart local v3       #action:Ljava/lang/String;
    .restart local v5       #code:I
    .restart local v6       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_102
    const/16 v11, 0x192

    if-ne v5, v11, :cond_158

    .line 1086
    const-string v11, "MountService"

    const-string v12, " updating volume state :: media nofs"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/16 v2, -0x64

    .line 1092
    .local v2, Ret:I
    sget-boolean v11, Lcom/android/server/MountService;->STORAGE_DECRYPTION:Z

    if-eqz v11, :cond_149

    .line 1093
    const-string v11, "decrypt"

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_149

    .line 1094
    const-string v11, "decrypt"

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v11}, Lcom/android/server/MountService;->actionStorageAskPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1095
    const-string v11, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMountVolume :: actionStorageAskPermission with = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", result = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_149
    const/16 v11, -0x64

    if-ne v2, v11, :cond_e6

    .line 1099
    const-string v11, "nofs"

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v11}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const-string v3, "android.intent.action.MEDIA_NOFS"

    .line 1101
    const/4 v8, -0x3

    goto :goto_e6

    .line 1103
    .end local v2           #Ret:I
    :cond_158
    const/16 v11, 0x193

    if-ne v5, v11, :cond_16f

    .line 1104
    const-string v11, "MountService"

    const-string v12, "updating volume state media corrupt"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const-string v11, "unmountable"

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v11}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const-string v3, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 1110
    const/4 v8, -0x4

    goto/16 :goto_e6

    .line 1112
    :cond_16f
    const/4 v8, -0x1

    goto/16 :goto_e6
.end method

.method private doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 17
    .parameter "path"
    .parameter "method"
    .parameter "enable"

    .prologue
    .line 670
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doShareUnshareVolume :: path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", method = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", enable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string v8, "ums"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_48

    .line 674
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Method %s not supported"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 678
    :cond_48
    :try_start_48
    iget-object v9, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v10, "volume %sshare %s %s"

    const/4 v8, 0x3

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    if-eqz p3, :cond_a6

    const-string v8, ""

    :goto_54
    aput-object v8, v11, v12

    const/4 v8, 0x1

    aput-object p1, v11, v8

    const/4 v8, 0x2

    aput-object p2, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_63
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_48 .. :try_end_63} :catch_a9

    .line 685
    :goto_63
    if-eqz p3, :cond_a5

    .line 686
    const/4 v6, 0x0

    .line 687
    .local v6, paths:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 689
    .local v1, count:I
    iget-object v9, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    monitor-enter v9

    .line 690
    :try_start_6a
    iget-object v8, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 691
    .local v5, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v1

    .line 692
    new-array v8, v1, [Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 693
    monitor-exit v9
    :try_end_7f
    .catchall {:try_start_6a .. :try_end_7f} :catchall_b2

    .line 694
    const/4 v7, 0x0

    .line 696
    .local v7, storage:Landroid/os/storage/StorageVolume;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_81
    if-ge v4, v1, :cond_95

    .line 697
    aget-object v3, v6, v4

    .line 698
    .local v3, first:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #storage:Landroid/os/storage/StorageVolume;
    check-cast v7, Landroid/os/storage/StorageVolume;

    .line 699
    .restart local v7       #storage:Landroid/os/storage/StorageVolume;
    if-eqz v7, :cond_b5

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 702
    .end local v3           #first:Ljava/lang/String;
    :cond_95
    if-eqz v7, :cond_a5

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a5

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/MountService;->setUmsProcessing(Z)V

    .line 704
    .end local v1           #count:I
    .end local v4           #i:I
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #paths:[Ljava/lang/String;
    .end local v7           #storage:Landroid/os/storage/StorageVolume;
    :cond_a5
    return-void

    .line 678
    :cond_a6
    :try_start_a6
    const-string v8, "un"
    :try_end_a8
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a6 .. :try_end_a8} :catch_a9

    goto :goto_54

    .line 680
    :catch_a9
    move-exception v2

    .line 681
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v8, "MountService"

    const-string v9, "Failed to share/unshare"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    .line 693
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v1       #count:I
    .restart local v6       #paths:[Ljava/lang/String;
    :catchall_b2
    move-exception v8

    :try_start_b3
    monitor-exit v9
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v8

    .line 696
    .restart local v3       #first:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7       #storage:Landroid/os/storage/StorageVolume;
    :cond_b5
    add-int/lit8 v4, v4, 0x1

    goto :goto_81
.end method

.method private doUnmountVolume(Ljava/lang/String;ZZ)I
    .registers 14
    .parameter "path"
    .parameter "force"
    .parameter "removeEncryption"

    .prologue
    const/16 v4, 0x194

    const/4 v5, 0x0

    .line 1143
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doUnmountVolume :: path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", force = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", removeEncryption = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 1181
    :goto_3b
    return v4

    .line 1154
    :cond_3c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->gc()V

    .line 1157
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 1158
    .local v3, storage:Landroid/os/storage/StorageVolume;
    if-eqz v3, :cond_58

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getActivitySecureContainer()Z

    move-result v6

    if-eqz v6, :cond_58

    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v5, v5}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1160
    :cond_58
    if-eqz p3, :cond_7b

    :try_start_5a
    const-string v0, " force_and_revert"

    .line 1163
    .local v0, arg:Ljava/lang/String;
    :goto_5c
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "volume unmount %s%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1165
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v6
    :try_end_73
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5a .. :try_end_73} :catch_86

    .line 1166
    :try_start_73
    iget-object v7, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 1167
    monitor-exit v6
    :try_end_79
    .catchall {:try_start_73 .. :try_end_79} :catchall_83

    move v4, v5

    .line 1168
    goto :goto_3b

    .line 1160
    .end local v0           #arg:Ljava/lang/String;
    :cond_7b
    if-eqz p2, :cond_80

    :try_start_7d
    const-string v0, " force"

    goto :goto_5c

    :cond_80
    const-string v0, ""
    :try_end_82
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_7d .. :try_end_82} :catch_86

    goto :goto_5c

    .line 1167
    .restart local v0       #arg:Ljava/lang/String;
    :catchall_83
    move-exception v5

    :try_start_84
    monitor-exit v6
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    :try_start_85
    throw v5
    :try_end_86
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_85 .. :try_end_86} :catch_86

    .line 1169
    .end local v0           #arg:Ljava/lang/String;
    :catch_86
    move-exception v2

    .line 1172
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1173
    .local v1, code:I
    if-ne v1, v4, :cond_96

    .line 1174
    const-string v4, "MountService"

    const-string v5, "doUnmountVolume :: result = OperationFailedStorageNotMounted"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const/4 v4, -0x5

    goto :goto_3b

    .line 1176
    :cond_96
    const/16 v4, 0x195

    if-ne v1, v4, :cond_a3

    .line 1177
    const-string v4, "MountService"

    const-string v5, "doUnmountVolume :: result = OperationFailedStorageBusy"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const/4 v4, -0x7

    goto :goto_3b

    .line 1180
    :cond_a3
    const-string v4, "MountService"

    const-string v5, "doUnmountVolume :: result = OperationFailedInternalError"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const/4 v4, -0x1

    goto :goto_3b
.end method

.method private getDeviceSystemPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "path"
    .parameter "with"

    .prologue
    .line 3322
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "volume syspath %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3323
    .local v2, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3324
    .local v3, tok:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3325
    .local v0, code:I
    const/16 v4, 0xd7

    if-eq v0, v4, :cond_32

    .line 3327
    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3346
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    :goto_31
    return-object v4

    .line 3330
    .restart local v0       #code:I
    .restart local v2       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #tok:[Ljava/lang/String;
    :cond_32
    const-string v4, "null"

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 3331
    const-string v4, "MountService"

    const-string v5, "getDeviceDriverPath :: vold can not get path or before mount"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_77

    goto :goto_31

    .line 3337
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    :catch_4c
    move-exception v1

    .line 3344
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_31

    .line 3335
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0       #code:I
    .restart local v2       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #tok:[Ljava/lang/String;
    :cond_55
    :try_start_55
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sys"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_76
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_55 .. :try_end_76} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_76} :catch_77

    goto :goto_31

    .line 3345
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    :catch_77
    move-exception v1

    .line 3346
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_31
.end method

.method private final getStroageInformation(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "path"

    .prologue
    const/16 v5, 0xff

    const/4 v7, 0x0

    .line 3259
    new-array v0, v5, [C

    .line 3260
    .local v0, buffer:[C
    const/4 v4, 0x0

    .line 3261
    .local v4, len:I
    const/4 v2, 0x0

    .line 3264
    .local v2, file:Ljava/io/FileReader;
    :try_start_7
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_66
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_c} :catch_23
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_51

    .line 3265
    .end local v2           #file:Ljava/io/FileReader;
    .local v3, file:Ljava/io/FileReader;
    const/4 v5, 0x0

    const/16 v6, 0xff

    :try_start_f
    invoke-virtual {v3, v0, v5, v6}, Ljava/io/FileReader;->read([CII)I
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_71
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_12} :catch_77
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_74

    move-result v4

    .line 3275
    if-eqz v3, :cond_18

    :try_start_15
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_6f

    .line 3280
    :cond_18
    :goto_18
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v7, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    :cond_22
    :goto_22
    return-object v5

    .line 3267
    :catch_23
    move-exception v1

    .line 3268
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_24
    :try_start_24
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStroageInformation -> Cann\'t load the files \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    new-instance v5, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_24 .. :try_end_49} :catchall_66

    .line 3275
    if-eqz v2, :cond_22

    :try_start_4b
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_22

    .line 3276
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_4f
    move-exception v6

    goto :goto_22

    .line 3270
    :catch_51
    move-exception v1

    .line 3271
    .local v1, e:Ljava/io/IOException;
    :goto_52
    :try_start_52
    const-string v5, "MountService"

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3272
    new-instance v5, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_52 .. :try_end_60} :catchall_66

    .line 3275
    if-eqz v2, :cond_22

    :try_start_62
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_4f

    goto :goto_22

    .line 3274
    .end local v1           #e:Ljava/io/IOException;
    :catchall_66
    move-exception v5

    .line 3275
    :goto_67
    if-eqz v2, :cond_6c

    :try_start_69
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    .line 3274
    :cond_6c
    :goto_6c
    throw v5

    .line 3276
    :catch_6d
    move-exception v6

    goto :goto_6c

    .end local v2           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    :catch_6f
    move-exception v5

    goto :goto_18

    .line 3274
    :catchall_71
    move-exception v5

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    goto :goto_67

    .line 3270
    .end local v2           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    :catch_74
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    goto :goto_52

    .line 3267
    .end local v2           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    :catch_77
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    goto :goto_24
.end method

.method private getUmsEnabling()Z
    .registers 3

    .prologue
    .line 1672
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1673
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    monitor-exit v1

    return v0

    .line 1674
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private getUmsProcessing()Z
    .registers 3

    .prologue
    .line 1686
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1687
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsProcessing:Z

    monitor-exit v1

    return v0

    .line 1688
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private isSupportedUMS()Z
    .registers 5

    .prologue
    .line 3477
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 3478
    :try_start_3
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3479
    .local v1, maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/storage/StorageVolume;>;>;"
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3480
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3481
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/storage/StorageVolume;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    monitor-exit v3

    .line 3484
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/storage/StorageVolume;>;"
    :goto_27
    return v2

    .line 3483
    :cond_28
    monitor-exit v3

    .line 3484
    const/4 v2, 0x0

    goto :goto_27

    .line 3483
    .end local v1           #maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/storage/StorageVolume;>;>;"
    :catchall_2b
    move-exception v2

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .registers 7
    .parameter "packageName"
    .parameter "callerUid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2384
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_7

    .line 2399
    :cond_6
    :goto_6
    return v1

    .line 2388
    :cond_7
    if-nez p1, :cond_b

    move v1, v2

    .line 2389
    goto :goto_6

    .line 2392
    :cond_b
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;)I

    move-result v0

    .line 2399
    .local v0, packageUid:I
    if-eq p2, v0, :cond_6

    move v1, v2

    goto :goto_6
.end method

.method private isUsbMassStorageEnabled(Ljava/lang/String;)Z
    .registers 13
    .parameter "call"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1832
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1833
    const/4 v1, 0x0

    .line 1835
    .local v1, bRet:Z
    iget-object v7, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v7

    const-string v10, "fuse"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    move v7, v8

    .line 1860
    :goto_19
    return v7

    .line 1839
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v7

    if-eqz v7, :cond_22

    move v7, v9

    .line 1840
    goto :goto_19

    .line 1843
    :cond_22
    const/4 v5, 0x0

    .line 1844
    .local v5, paths:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1846
    .local v2, count:I
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    monitor-enter v10

    .line 1847
    :try_start_27
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1848
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    .line 1849
    new-array v7, v2, [Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 1850
    monitor-exit v10
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_63

    .line 1852
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3d
    if-ge v3, v2, :cond_69

    .line 1853
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/LinkedHashMap;

    aget-object v10, v5, v3

    invoke-virtual {v7, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    .line 1854
    .local v6, storage:Landroid/os/storage/StorageVolume;
    if-eqz v6, :cond_66

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v7

    const-string v10, "sd"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 1855
    aget-object v7, v5, v3

    const-string v10, "ums"

    invoke-direct {p0, v7, v10}, Lcom/android/server/MountService;->doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1856
    if-eqz v1, :cond_66

    move v7, v9

    goto :goto_19

    .line 1850
    .end local v3           #i:I
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #storage:Landroid/os/storage/StorageVolume;
    :catchall_63
    move-exception v7

    :try_start_64
    monitor-exit v10
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v7

    .line 1852
    .restart local v3       #i:I
    .restart local v4       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6       #storage:Landroid/os/storage/StorageVolume;
    :cond_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .end local v6           #storage:Landroid/os/storage/StorageVolume;
    :cond_69
    move v7, v8

    .line 1860
    goto :goto_19
.end method

.method private isVolumeStateShared()Z
    .registers 11

    .prologue
    const/4 v7, 0x1

    .line 1864
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v7

    .line 1887
    :goto_8
    return v6

    .line 1868
    :cond_9
    const/4 v4, 0x0

    .line 1869
    .local v4, paths:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1870
    .local v5, states:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1872
    .local v1, count:I
    iget-object v8, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    monitor-enter v8

    .line 1873
    :try_start_f
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1874
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    .line 1875
    new-array v6, v1, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 1876
    new-array v5, v1, [Ljava/lang/String;

    .line 1877
    const/4 v2, 0x0

    .local v2, i:I
    :goto_26
    if-ge v2, v1, :cond_37

    .line 1878
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    aget-object v9, v4, v2

    invoke-virtual {v6, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v2

    .line 1877
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 1880
    :cond_37
    monitor-exit v8
    :try_end_38
    .catchall {:try_start_f .. :try_end_38} :catchall_47

    .line 1882
    const/4 v2, 0x0

    :goto_39
    if-ge v2, v1, :cond_4d

    .line 1884
    const-string v6, "shared"

    aget-object v8, v5, v2

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    move v6, v7

    goto :goto_8

    .line 1880
    .end local v2           #i:I
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_47
    move-exception v6

    :try_start_48
    monitor-exit v8
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v6

    .line 1882
    .restart local v2       #i:I
    .restart local v3       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 1887
    :cond_4d
    const/4 v6, 0x0

    goto :goto_8
.end method

.method private notifyShareAvailabilityChange(Z)V
    .registers 10
    .parameter "avail"

    .prologue
    .line 1248
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyShareAvailabilityChange :: avail = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iget-boolean v5, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    if-ne v5, p1, :cond_47

    .line 1251
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate UMS state change ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :cond_46
    :goto_46
    return-void

    .line 1255
    :cond_47
    invoke-direct {p0}, Lcom/android/server/MountService;->isSupportedUMS()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 1257
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1258
    :try_start_50
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 1259
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_5a
    if-ltz v2, :cond_86

    .line 1260
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_64
    .catchall {:try_start_50 .. :try_end_64} :catchall_7a

    .line 1262
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_64
    iget-object v5, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v5, p1}, Landroid/os/storage/IMountServiceListener;->onUsbMassStorageConnectionChanged(Z)V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_7a
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_69} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_69} :catch_7d

    .line 1259
    :goto_69
    add-int/lit8 v2, v2, -0x1

    goto :goto_5a

    .line 1263
    :catch_6c
    move-exception v4

    .line 1264
    .local v4, rex:Landroid/os/RemoteException;
    :try_start_6d
    const-string v5, "MountService"

    const-string v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_69

    .line 1270
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v4           #rex:Landroid/os/RemoteException;
    :catchall_7a
    move-exception v5

    monitor-exit v6
    :try_end_7c
    .catchall {:try_start_6d .. :try_end_7c} :catchall_7a

    throw v5

    .line 1266
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_7d
    move-exception v1

    .line 1267
    .local v1, ex:Ljava/lang/Exception;
    :try_start_7e
    const-string v5, "MountService"

    const-string v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    .line 1270
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_86
    monitor-exit v6
    :try_end_87
    .catchall {:try_start_7e .. :try_end_87} :catchall_7a

    .line 1272
    iget-boolean v5, p0, Lcom/android/server/MountService;->mBooted:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a2

    .line 1273
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 1278
    :goto_8f
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1280
    .local v3, path:Ljava/lang/String;
    if-nez p1, :cond_46

    .line 1284
    new-instance v5, Lcom/android/server/MountService$5;

    invoke-direct {v5, p0}, Lcom/android/server/MountService$5;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v5}, Lcom/android/server/MountService$5;->start()V

    goto :goto_46

    .line 1275
    .end local v3           #path:Ljava/lang/String;
    :cond_a2
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    goto :goto_8f
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 13
    .parameter "label"
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x2

    .line 958
    invoke-virtual {p0, p2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 961
    .local v2, vs:Ljava/lang/String;
    const/4 v0, 0x0

    .line 963
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x0

    .line 964
    .local v1, pending:Z
    if-ne p4, v6, :cond_b

    const/4 v1, 0x1

    .line 966
    :cond_b
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumePendingStates:Ljava/util/LinkedHashMap;

    monitor-enter v4

    .line 967
    :try_start_e
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumePendingStates:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, p2, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_61

    .line 970
    if-ne p3, v7, :cond_28

    if-eq p4, p3, :cond_28

    .line 971
    const-string v3, "MountService"

    const-string v4, "Sending ACTION_MEDIA_UNSHARED intent"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-direct {p0, v3, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :cond_28
    const/4 v3, -0x1

    if-ne p4, v3, :cond_64

    .line 1028
    :cond_2b
    :goto_2b
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyVolumeStateChanged:: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",old = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",new = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    if-eqz v0, :cond_60

    .line 1032
    invoke-direct {p0, v0, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :cond_60
    :goto_60
    return-void

    .line 968
    :catchall_61
    move-exception v3

    :try_start_62
    monitor-exit v4
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v3

    .line 976
    :cond_64
    if-eqz p4, :cond_2b

    .line 978
    const/4 v3, 0x1

    if-ne p4, v3, :cond_96

    .line 983
    const-string v3, "bad_removal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    const-string v3, "nofs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    const-string v3, "unmountable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 987
    const-string v3, "MountService"

    const-string v4, "updating volume state for media bad removal nofs and unmountable"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const-string v3, "unmounted"

    invoke-direct {p0, p2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    goto :goto_2b

    .line 991
    :cond_96
    if-eq p4, v6, :cond_2b

    .line 992
    const/4 v3, 0x3

    if-ne p4, v3, :cond_aa

    .line 993
    const-string v3, "MountService"

    const-string v4, "updating volume state checking"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const-string v3, "checking"

    invoke-direct {p0, p2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string v0, "android.intent.action.MEDIA_CHECKING"

    goto :goto_2b

    .line 996
    :cond_aa
    const/4 v3, 0x4

    if-ne p4, v3, :cond_bd

    .line 997
    const-string v3, "MountService"

    const-string v4, "updating volume state mounted"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const-string v3, "mounted"

    invoke-direct {p0, p2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    goto/16 :goto_2b

    .line 1000
    :cond_bd
    const/4 v3, 0x5

    if-ne p4, v3, :cond_c4

    .line 1001
    const-string v0, "android.intent.action.MEDIA_EJECT"

    goto/16 :goto_2b

    .line 1002
    :cond_c4
    const/4 v3, 0x6

    if-eq p4, v3, :cond_2b

    .line 1003
    if-ne p4, v7, :cond_f1

    .line 1004
    const-string v3, "MountService"

    const-string v4, "Updating volume state media mounted"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const-string v3, "unmounted"

    invoke-direct {p0, p2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {p0, v3, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string v3, "MountService"

    const-string v4, "Updating media shared"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const-string v3, "shared"

    invoke-direct {p0, p2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const-string v0, "android.intent.action.MEDIA_SHARED"

    .line 1012
    const-string v3, "MountService"

    const-string v4, "Sending ACTION_MEDIA_SHARED intent"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 1013
    :cond_f1
    const/16 v3, 0x8

    if-ne p4, v3, :cond_fe

    .line 1014
    const-string v3, "MountService"

    const-string v4, "Live shared mounts not supported yet!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_60

    .line 1018
    :cond_fe
    const/16 v3, 0x9

    if-ne p4, v3, :cond_12d

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_12d

    .line 1020
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hidden Volume ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] mounted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const-string v3, "checking"

    invoke-direct {p0, p2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 1025
    :cond_12d
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled VolumeState {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b
.end method

.method private onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 27
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 841
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 842
    .local v7, builder:Ljava/lang/StringBuilder;
    const-string v18, "onEvent::"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " raw= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    if-eqz p3, :cond_58

    .line 845
    const-string v18, " cooked = "

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    move-object/from16 v6, p3

    .local v6, arr$:[Ljava/lang/String;
    array-length v13, v6

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_35
    if-ge v11, v13, :cond_58

    aget-object v17, v6, v11

    .line 847
    .local v17, str:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    add-int/lit8 v11, v11, 0x1

    goto :goto_35

    .line 850
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v17           #str:Ljava/lang/String;
    :cond_58
    const-string v18, "MountService"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const/16 v18, 0x25d

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_91

    .line 858
    const/16 v18, 0x2

    aget-object v18, p3, v18

    const/16 v19, 0x3

    aget-object v19, p3, v19

    const/16 v20, 0x7

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/16 v21, 0xa

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 954
    :cond_8e
    :goto_8e
    const/16 v18, 0x1

    :goto_90
    return v18

    .line 861
    :cond_91
    const/16 v18, 0x276

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_a9

    const/16 v18, 0x277

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_a9

    const/16 v18, 0x278

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d7

    .line 867
    :cond_a9
    const/4 v5, 0x0

    .line 868
    .local v5, action:Ljava/lang/String;
    const/16 v18, 0x2

    aget-object v12, p3, v18

    .line 869
    .local v12, label:Ljava/lang/String;
    const/16 v18, 0x3

    aget-object v16, p3, v18

    .line 870
    .local v16, path:Ljava/lang/String;
    const/4 v14, -0x1

    .line 871
    .local v14, major:I
    const/4 v15, -0x1

    .line 874
    .local v15, minor:I
    const/16 v18, 0x6

    :try_start_b6
    aget-object v18, p3, v18

    const/16 v19, 0x1

    const/16 v20, 0x6

    aget-object v20, p3, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 875
    .local v8, devComp:Ljava/lang/String;
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 876
    .local v9, devTok:[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v9, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 877
    const/16 v18, 0x1

    aget-object v18, v9, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_df} :catch_100

    move-result v15

    .line 882
    .end local v8           #devComp:Ljava/lang/String;
    .end local v9           #devTok:[Ljava/lang/String;
    :goto_e0
    const/16 v18, 0x276

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_10d

    .line 883
    new-instance v18, Lcom/android/server/MountService$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService$4;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/MountService$4;->start()V

    .line 947
    :goto_f6
    if-eqz v5, :cond_8e

    .line 948
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    .line 878
    :catch_100
    move-exception v10

    .line 879
    .local v10, ex:Ljava/lang/Exception;
    const-string v18, "MountService"

    const-string v19, "Failed to parse major/minor"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e0

    .line 908
    .end local v10           #ex:Ljava/lang/Exception;
    :cond_10d
    const/16 v18, 0x277

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_16e

    .line 912
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "bad_removal"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_129

    .line 913
    const/16 v18, 0x1

    goto/16 :goto_90

    .line 916
    :cond_129
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService;->mBooted:Z

    move/from16 v18, v0

    if-nez v18, :cond_13c

    .line 917
    const-string v18, "MountService"

    const-string v19, "before booting complete (removed)"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/16 v18, 0x1

    goto/16 :goto_90

    .line 921
    :cond_13c
    const-string v18, "MountService"

    const-string v19, "Sending unmounted event first"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const-string v18, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v18, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v18, "MountService"

    const-string v19, "Sending media removed"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const-string v18, "removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-string v5, "android.intent.action.MEDIA_REMOVED"

    goto :goto_f6

    .line 928
    :cond_16e
    const/16 v18, 0x278

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1ba

    .line 929
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService;->mBooted:Z

    move/from16 v18, v0

    if-nez v18, :cond_189

    .line 930
    const-string v18, "MountService"

    const-string v19, "before booting complete (bad removal)"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const/16 v18, 0x1

    goto/16 :goto_90

    .line 934
    :cond_189
    const-string v18, "MountService"

    const-string v19, "Sending unmounted event first"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const-string v18, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    .line 938
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string v18, "MountService"

    const-string v19, "Sending media bad removal"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const-string v18, "bad_removal"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    const-string v5, "android.intent.action.MEDIA_BAD_REMOVAL"

    goto/16 :goto_f6

    .line 944
    :cond_1ba
    const-string v18, "MountService"

    const-string v19, "Unknown code {%d}"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f6

    .line 951
    .end local v5           #action:Ljava/lang/String;
    .end local v12           #label:Ljava/lang/String;
    .end local v14           #major:I
    .end local v15           #minor:I
    .end local v16           #path:Ljava/lang/String;
    :cond_1d7
    const/16 v18, 0x0

    goto/16 :goto_90
.end method

.method private final printCurrentStatus()Ljava/lang/String;
    .registers 7

    .prologue
    .line 3488
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 3490
    .local v2, ret:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    monitor-enter v4

    .line 3491
    :try_start_8
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3492
    .local v1, maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 3493
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3494
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3495
    goto :goto_12

    .line 3496
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4c
    monitor-exit v4

    .line 3497
    return-object v2

    .line 3496
    .end local v1           #maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_4e
    move-exception v3

    monitor-exit v4
    :try_end_50
    .catchall {:try_start_8 .. :try_end_50} :catchall_4e

    throw v3
.end method

.method private final printDebug(I)Ljava/lang/String;
    .registers 4
    .parameter "state"

    .prologue
    .line 3502
    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    .line 3503
    const-string v0, "init"

    .line 3526
    .local v0, ret:Ljava/lang/String;
    :goto_5
    return-object v0

    .line 3504
    .end local v0           #ret:Ljava/lang/String;
    :cond_6
    if-nez p1, :cond_b

    .line 3505
    const-string v0, "NoMedia"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_5

    .line 3506
    .end local v0           #ret:Ljava/lang/String;
    :cond_b
    const/4 v1, 0x1

    if-ne p1, v1, :cond_11

    .line 3507
    const-string v0, "Idle"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_5

    .line 3508
    .end local v0           #ret:Ljava/lang/String;
    :cond_11
    const/4 v1, 0x2

    if-ne p1, v1, :cond_17

    .line 3509
    const-string v0, "Pending"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_5

    .line 3510
    .end local v0           #ret:Ljava/lang/String;
    :cond_17
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1d

    .line 3511
    const-string v0, "Checking"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_5

    .line 3512
    .end local v0           #ret:Ljava/lang/String;
    :cond_1d
    const/4 v1, 0x4

    if-ne p1, v1, :cond_23

    .line 3513
    const-string v0, "Mounted"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_5

    .line 3514
    .end local v0           #ret:Ljava/lang/String;
    :cond_23
    const/4 v1, 0x5

    if-ne p1, v1, :cond_29

    .line 3515
    const-string v0, "Unmounting"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_5

    .line 3516
    .end local v0           #ret:Ljava/lang/String;
    :cond_29
    const/4 v1, 0x6

    if-ne p1, v1, :cond_2f

    .line 3517
    const-string v0, "Formatting"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_5

    .line 3518
    .end local v0           #ret:Ljava/lang/String;
    :cond_2f
    const/4 v1, 0x7

    if-ne p1, v1, :cond_35

    .line 3519
    const-string v0, "Shared"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_5

    .line 3520
    .end local v0           #ret:Ljava/lang/String;
    :cond_35
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3c

    .line 3521
    const-string v0, "SharedMnt"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_5

    .line 3523
    .end local v0           #ret:Ljava/lang/String;
    :cond_3c
    const-string v0, "unknown"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_5
.end method

.method private readStorageList(Landroid/content/res/Resources;)V
    .registers 31
    .parameter "resources"

    .prologue
    .line 1356
    const v19, 0x10f000c

    .line 1357
    .local v19, id:I
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v21

    .line 1358
    .local v21, parser:Landroid/content/res/XmlResourceParser;
    invoke-static/range {v21 .. v21}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v14

    .line 1361
    .local v14, attrs:Landroid/util/AttributeSet;
    :try_start_f
    const-string v4, "StorageList"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1363
    :cond_16
    :goto_16
    invoke-static/range {v21 .. v21}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1365
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_140
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_1c} :catch_137
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1c} :catch_1a5

    move-result-object v17

    .line 1366
    .local v17, element:Ljava/lang/String;
    if-nez v17, :cond_43

    .line 1446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1447
    .local v20, length:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_29
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_1ca

    .line 1448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageVolume;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1447
    add-int/lit8 v18, v18, 0x1

    goto :goto_29

    .line 1368
    .end local v18           #i:I
    .end local v20           #length:I
    :cond_43
    :try_start_43
    const-string v4, "storage"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1369
    sget-object v4, Lcom/android/internal/R$styleable;->Storage:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1372
    .local v13, a:Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    .line 1374
    .local v22, path:Ljava/lang/CharSequence;
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 1376
    .local v15, description:Ljava/lang/CharSequence;
    const/4 v4, 0x2

    const/4 v11, 0x0

    invoke-virtual {v13, v4, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v23

    .line 1378
    .local v23, primary:Z
    const/4 v4, 0x3

    const/4 v11, 0x0

    invoke-virtual {v13, v4, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 1380
    .local v5, removable:Z
    const/4 v4, 0x4

    const/4 v11, 0x0

    invoke-virtual {v13, v4, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1382
    .local v6, emulated:Z
    const/4 v4, 0x5

    const/4 v11, 0x0

    invoke-virtual {v13, v4, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 1384
    .local v7, mtpReserve:I
    const/4 v4, 0x6

    const/4 v11, 0x0

    invoke-virtual {v13, v4, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1388
    .local v8, allowMassStorage:Z
    const/4 v4, 0x7

    const/4 v11, 0x0

    invoke-virtual {v13, v4, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x400

    mul-long v25, v25, v27

    const-wide/16 v27, 0x400

    mul-long v9, v25, v27

    .line 1391
    .local v9, maxFileSize:J
    const/16 v4, 0x8

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    .line 1394
    .local v24, subsystem:Ljava/lang/CharSequence;
    const/16 v4, 0x9

    const/4 v11, 0x0

    invoke-virtual {v13, v4, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 1397
    .local v12, activitySecureContainer:Z
    const-string v4, "MountService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "got storage path: "

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, " description: "

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, " primary: "

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, " removable: "

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, " emulated: "

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, " mtpReserve: "

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, " allowMassStorage: "

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, " maxFileSize: "

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, " subsystem: "

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v25, " activitySecureContainer: "

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    if-eqz v22, :cond_12b

    if-nez v15, :cond_166

    .line 1405
    :cond_12b
    const-string v4, "MountService"

    const-string v11, "path or description is null in readStorageList"

    invoke-static {v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :goto_132
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_135
    .catchall {:try_start_43 .. :try_end_135} :catchall_140
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_135} :catch_137
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_135} :catch_1a5

    goto/16 :goto_16

    .line 1440
    .end local v5           #removable:Z
    .end local v6           #emulated:Z
    .end local v7           #mtpReserve:I
    .end local v8           #allowMassStorage:Z
    .end local v9           #maxFileSize:J
    .end local v12           #activitySecureContainer:Z
    .end local v13           #a:Landroid/content/res/TypedArray;
    .end local v15           #description:Ljava/lang/CharSequence;
    .end local v17           #element:Ljava/lang/String;
    .end local v22           #path:Ljava/lang/CharSequence;
    .end local v23           #primary:Z
    .end local v24           #subsystem:Ljava/lang/CharSequence;
    :catch_137
    move-exception v16

    .line 1441
    .local v16, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_138
    new-instance v4, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_140
    .catchall {:try_start_138 .. :try_end_140} :catchall_140

    .line 1446
    .end local v16           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_140
    move-exception v4

    move-object v11, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1447
    .restart local v20       #length:I
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_14c
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_1c6

    .line 1448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageVolume;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1447
    add-int/lit8 v18, v18, 0x1

    goto :goto_14c

    .line 1407
    .end local v18           #i:I
    .end local v20           #length:I
    .restart local v5       #removable:Z
    .restart local v6       #emulated:Z
    .restart local v7       #mtpReserve:I
    .restart local v8       #allowMassStorage:Z
    .restart local v9       #maxFileSize:J
    .restart local v12       #activitySecureContainer:Z
    .restart local v13       #a:Landroid/content/res/TypedArray;
    .restart local v15       #description:Ljava/lang/CharSequence;
    .restart local v17       #element:Ljava/lang/String;
    .restart local v22       #path:Ljava/lang/CharSequence;
    .restart local v23       #primary:Z
    .restart local v24       #subsystem:Ljava/lang/CharSequence;
    :cond_166
    :try_start_166
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1408
    .local v3, pathString:Ljava/lang/String;
    new-instance v2, Landroid/os/storage/StorageVolume;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIZJLjava/lang/String;Z)V

    .line 1413
    .local v2, volume:Landroid/os/storage/StorageVolume;
    if-eqz v23, :cond_183

    .line 1414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-nez v4, :cond_1ae

    .line 1415
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    .line 1421
    :cond_183
    :goto_183
    if-eqz v12, :cond_18f

    .line 1422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    if-nez v4, :cond_1b6

    .line 1423
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    .line 1429
    :cond_18f
    :goto_18f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-ne v4, v2, :cond_1be

    .line 1431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v4, v11, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1435
    :goto_19d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a4
    .catchall {:try_start_166 .. :try_end_1a4} :catchall_140
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_166 .. :try_end_1a4} :catch_137
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_1a4} :catch_1a5

    goto :goto_132

    .line 1442
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    .end local v3           #pathString:Ljava/lang/String;
    .end local v5           #removable:Z
    .end local v6           #emulated:Z
    .end local v7           #mtpReserve:I
    .end local v8           #allowMassStorage:Z
    .end local v9           #maxFileSize:J
    .end local v12           #activitySecureContainer:Z
    .end local v13           #a:Landroid/content/res/TypedArray;
    .end local v15           #description:Ljava/lang/CharSequence;
    .end local v17           #element:Ljava/lang/String;
    .end local v22           #path:Ljava/lang/CharSequence;
    .end local v23           #primary:Z
    .end local v24           #subsystem:Ljava/lang/CharSequence;
    :catch_1a5
    move-exception v16

    .line 1443
    .local v16, e:Ljava/io/IOException;
    :try_start_1a6
    new-instance v4, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1ae
    .catchall {:try_start_1a6 .. :try_end_1ae} :catchall_140

    .line 1417
    .end local v16           #e:Ljava/io/IOException;
    .restart local v2       #volume:Landroid/os/storage/StorageVolume;
    .restart local v3       #pathString:Ljava/lang/String;
    .restart local v5       #removable:Z
    .restart local v6       #emulated:Z
    .restart local v7       #mtpReserve:I
    .restart local v8       #allowMassStorage:Z
    .restart local v9       #maxFileSize:J
    .restart local v12       #activitySecureContainer:Z
    .restart local v13       #a:Landroid/content/res/TypedArray;
    .restart local v15       #description:Ljava/lang/CharSequence;
    .restart local v17       #element:Ljava/lang/String;
    .restart local v22       #path:Ljava/lang/CharSequence;
    .restart local v23       #primary:Z
    .restart local v24       #subsystem:Ljava/lang/CharSequence;
    :cond_1ae
    :try_start_1ae
    const-string v4, "MountService"

    const-string v11, "multiple primary volumes in storage list"

    invoke-static {v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_183

    .line 1425
    :cond_1b6
    const-string v4, "MountService"

    const-string v11, "multiple secure container volumes in storage list"

    invoke-static {v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18f

    .line 1433
    :cond_1be
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c5
    .catchall {:try_start_1ae .. :try_end_1c5} :catchall_140
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ae .. :try_end_1c5} :catch_137
    .catch Ljava/io/IOException; {:try_start_1ae .. :try_end_1c5} :catch_1a5

    goto :goto_19d

    .line 1450
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    .end local v3           #pathString:Ljava/lang/String;
    .end local v5           #removable:Z
    .end local v6           #emulated:Z
    .end local v7           #mtpReserve:I
    .end local v8           #allowMassStorage:Z
    .end local v9           #maxFileSize:J
    .end local v12           #activitySecureContainer:Z
    .end local v13           #a:Landroid/content/res/TypedArray;
    .end local v15           #description:Ljava/lang/CharSequence;
    .end local v17           #element:Ljava/lang/String;
    .end local v22           #path:Ljava/lang/CharSequence;
    .end local v23           #primary:Z
    .end local v24           #subsystem:Ljava/lang/CharSequence;
    .restart local v18       #i:I
    .restart local v20       #length:I
    :cond_1c6
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1446
    throw v11

    .line 1450
    .restart local v17       #element:Ljava/lang/String;
    :cond_1ca
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1452
    return-void
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .registers 6
    .parameter "obbState"

    .prologue
    .line 2706
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2707
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2708
    .local v1, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_22

    .line 2709
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2710
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    .line 2712
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2713
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2717
    :cond_22
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2718
    return-void
.end method

.method private sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "action"
    .parameter "path"

    .prologue
    .line 1333
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1335
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "storage_volume"

    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1336
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStorageIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1338
    return-void
.end method

.method private sendUmsIntent(Z)V
    .registers 5
    .parameter "c"

    .prologue
    .line 1341
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_f

    const-string v0, "android.intent.action.UMS_CONNECTED"

    :goto_8
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1343
    return-void

    .line 1341
    :cond_f
    const-string v0, "android.intent.action.UMS_DISCONNECTED"

    goto :goto_8
.end method

.method private setUmsEnabling(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 1678
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1679
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 1680
    monitor-exit v1

    .line 1681
    return-void

    .line 1680
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private setUmsProcessing(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 1692
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1693
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsProcessing:Z

    .line 1694
    monitor-exit v1

    .line 1695
    return-void

    .line 1694
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "path"
    .parameter "state"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 707
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePublicVolumeState :: path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    monitor-enter v7

    .line 710
    :try_start_27
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 711
    .local v3, oldState:Ljava/lang/String;
    monitor-exit v7
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_4c

    .line 712
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 713
    const-string v6, "MountService"

    const-string v7, "Duplicate state transition (%s -> %s) for %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v9

    aput-object p2, v8, v10

    const/4 v9, 0x2

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :goto_4b
    return-void

    .line 711
    .end local v3           #oldState:Ljava/lang/String;
    :catchall_4c
    move-exception v6

    :try_start_4d
    monitor-exit v7
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v6

    .line 718
    .restart local v3       #oldState:Ljava/lang/String;
    :cond_4f
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "volume state changed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    .line 721
    .local v5, storage:Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_ae

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getActivitySecureContainer()Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 724
    iget-boolean v6, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    if-nez v6, :cond_ae

    .line 725
    const-string v6, "unmounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 726
    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v9, v9}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 733
    iget-object v6, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v7, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8, p1}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 740
    :cond_ae
    :goto_ae
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 741
    :try_start_b1
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_b9
    if-ltz v2, :cond_f3

    .line 742
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_c3
    .catchall {:try_start_b1 .. :try_end_c3} :catchall_e7

    .line 744
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_c3
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, p1, v3, p2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_c3 .. :try_end_c8} :catchall_e7
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_c8} :catch_d9
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c8} :catch_ea

    .line 741
    :goto_c8
    add-int/lit8 v2, v2, -0x1

    goto :goto_b9

    .line 735
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    :cond_cb
    const-string v6, "mounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 736
    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v10, v9}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_ae

    .line 745
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_d9
    move-exception v4

    .line 746
    .local v4, rex:Landroid/os/RemoteException;
    :try_start_da
    const-string v6, "MountService"

    const-string v8, "Listener dead"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_c8

    .line 752
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v4           #rex:Landroid/os/RemoteException;
    :catchall_e7
    move-exception v6

    monitor-exit v7
    :try_end_e9
    .catchall {:try_start_da .. :try_end_e9} :catchall_e7

    throw v6

    .line 748
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_ea
    move-exception v1

    .line 749
    .local v1, ex:Ljava/lang/Exception;
    :try_start_eb
    const-string v6, "MountService"

    const-string v8, "Listener failed"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c8

    .line 752
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_f3
    monitor-exit v7
    :try_end_f4
    .catchall {:try_start_eb .. :try_end_f4} :catchall_e7

    goto/16 :goto_4b
.end method

.method private validatePermission(Ljava/lang/String;)V
    .registers 6
    .parameter "perm"

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 1347
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires %s permission"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1349
    :cond_1a
    return-void
.end method

.method private waitForReady()V
    .registers 4

    .prologue
    .line 546
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/MountService;->mReady:Z

    if-nez v1, :cond_b

    .line 547
    const/4 v0, 0x5

    .local v0, retries:I
    :goto_5
    if-lez v0, :cond_14

    .line 548
    iget-boolean v1, p0, Lcom/android/server/MountService;->mReady:Z

    if-eqz v1, :cond_c

    .line 555
    .end local v0           #retries:I
    :cond_b
    return-void

    .line 551
    .restart local v0       #retries:I
    :cond_c
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 547
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 553
    :cond_14
    const-string v1, "MountService"

    const-string v2, "waitForReady :: Waiting too long for mReady!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private warnOnNotMounted()V
    .registers 3

    .prologue
    .line 2001
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2002
    const-string v0, "MountService"

    const-string v1, "getSecureContainerList() called when storage not mounted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    :cond_13
    return-void
.end method


# virtual methods
.method public changeEncryptionPassword(Ljava/lang/String;)I
    .registers 8
    .parameter "password"

    .prologue
    .line 2582
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2583
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "password cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2586
    :cond_e
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2592
    const-string v3, "MountService"

    const-string v4, "changing encryption password..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    :try_start_21
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cryptfs changepw "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/MountService;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2598
    .local v1, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2600
    .local v2, tokens:[Ljava/lang/String;
    if-eqz v2, :cond_51

    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_53

    .line 2601
    :cond_51
    const/4 v3, -0x1

    .line 2607
    .end local v1           #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #tokens:[Ljava/lang/String;
    :goto_52
    return v3

    .line 2604
    .restart local v1       #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #tokens:[Ljava/lang/String;
    :cond_53
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_59
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_21 .. :try_end_59} :catch_5b

    move-result v3

    goto :goto_52

    .line 2605
    .end local v1           #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #tokens:[Ljava/lang/String;
    :catch_5b
    move-exception v0

    .line 2607
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v3

    goto :goto_52
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I
    .registers 13
    .parameter "id"
    .parameter "sizeMb"
    .parameter "fstype"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_d

    .line 2082
    const-string v0, "MountService"

    const-string v1, "createSecureContainer :: Can\'t find the secure container."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    const/4 v0, -0x1

    .line 2085
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/MountService;->createSecureContainer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_c
.end method

.method public createSecureContainer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I
    .registers 14
    .parameter "path"
    .parameter "id"
    .parameter "sizeMb"
    .parameter "fstype"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 2058
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: createSecureContainer :: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sizeMb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fstype = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ownerUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    const-string v3, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2060
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2061
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2063
    const/4 v2, 0x0

    .line 2064
    .local v2, rc:I
    const-string v3, "asec create %s %d %s %s %d %s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p4, v4, v5

    const/4 v5, 0x3

    aput-object p5, v4, v5

    const/4 v5, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2066
    .local v0, cmd:Ljava/lang/String;
    :try_start_6f
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_74
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6f .. :try_end_74} :catch_85

    .line 2071
    :goto_74
    if-nez v2, :cond_84

    .line 2072
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2074
    :try_start_79
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v5, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2075
    monitor-exit v4

    .line 2077
    :cond_84
    return v2

    .line 2067
    :catch_85
    move-exception v1

    .line 2068
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v2, -0x1

    goto :goto_74

    .line 2075
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_88
    move-exception v3

    monitor-exit v4
    :try_end_8a
    .catchall {:try_start_79 .. :try_end_8a} :catchall_88

    throw v3
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .registers 10
    .parameter "password"

    .prologue
    .line 2517
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2518
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "password cannot be empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2521
    :cond_e
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.CRYPT_KEEPER"

    const-string v6, "no permission to access the crypt keeper"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2524
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2527
    const-string v4, "MountService"

    const-string v5, "decrypting storage..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    :try_start_21
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cryptfs checkpw "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/MountService;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2532
    .local v2, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2534
    .local v3, tokens:[Ljava/lang/String;
    if-eqz v3, :cond_51

    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_53

    .line 2535
    :cond_51
    const/4 v0, -0x1

    .line 2553
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tokens:[Ljava/lang/String;
    :cond_52
    :goto_52
    return v0

    .line 2538
    .restart local v2       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #tokens:[Ljava/lang/String;
    :cond_53
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2540
    .local v0, code:I
    if-nez v0, :cond_52

    .line 2543
    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/MountService$6;

    invoke-direct {v5, p0}, Lcom/android/server/MountService$6;-><init>(Lcom/android/server/MountService;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_68
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_21 .. :try_end_68} :catch_69

    goto :goto_52

    .line 2551
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tokens:[Ljava/lang/String;
    :catch_69
    move-exception v1

    .line 2553
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    goto :goto_52
.end method

.method public destroySecureContainer(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 12
    .parameter "path"
    .parameter "id"
    .parameter "force"

    .prologue
    .line 2114
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: destroySecureContainer :: id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", force = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    const-string v3, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2116
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2117
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2125
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 2127
    const/4 v2, 0x0

    .line 2129
    .local v2, rc:I
    :try_start_3f
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "asec destroy %s %s %s"

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v6, v3

    const/4 v3, 0x1

    aput-object p1, v6, v3

    const/4 v7, 0x2

    if-eqz p3, :cond_78

    const-string v3, "force"

    :goto_51
    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_5a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3f .. :try_end_5a} :catch_7b

    .line 2139
    :goto_5a
    if-nez v2, :cond_77

    .line 2140
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2141
    :try_start_5f
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v5, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 2142
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v5, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2144
    :cond_76
    monitor-exit v4
    :try_end_77
    .catchall {:try_start_5f .. :try_end_77} :catchall_88

    .line 2147
    :cond_77
    return v2

    .line 2129
    :cond_78
    :try_start_78
    const-string v3, "graceful"
    :try_end_7a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_78 .. :try_end_7a} :catch_7b

    goto :goto_51

    .line 2130
    :catch_7b
    move-exception v1

    .line 2131
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2132
    .local v0, code:I
    const/16 v3, 0x195

    if-ne v0, v3, :cond_86

    .line 2133
    const/4 v2, -0x7

    goto :goto_5a

    .line 2135
    :cond_86
    const/4 v2, -0x1

    goto :goto_5a

    .line 2144
    .end local v0           #code:I
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_88
    move-exception v3

    :try_start_89
    monitor-exit v4
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw v3
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .registers 5
    .parameter "id"
    .parameter "force"

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_d

    .line 2152
    const-string v0, "MountService"

    const-string v1, "destroySecureContainer :: Can\'t find the secure container."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    const/4 v0, -0x1

    .line 2155
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/MountService;->destroySecureContainer(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    goto :goto_c
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 22
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 3148
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v16, "android.permission.DUMP"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_43

    .line 3149
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Permission Denial: can\'t dump ActivityManager from from pid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", uid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " without permission "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "android.permission.DUMP"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3216
    :goto_42
    return-void

    .line 3155
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 3156
    :try_start_4a
    const-string v15, "  mObbMounts:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3158
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3159
    .local v2, binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :cond_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a9

    .line 3160
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3161
    .local v3, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    const-string v15, "    Key="

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/IBinder;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3162
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 3163
    .local v13, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_89
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/MountService$ObbState;

    .line 3164
    .local v12, obbState:Lcom/android/server/MountService$ObbState;
    const-string v15, "      "

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_89

    .line 3176
    .end local v2           #binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .end local v3           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v12           #obbState:Lcom/android/server/MountService$ObbState;
    .end local v13           #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :catchall_a6
    move-exception v15

    monitor-exit v16
    :try_end_a8
    .catchall {:try_start_4a .. :try_end_a8} :catchall_a6

    throw v15

    .line 3168
    .restart local v2       #binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :cond_a9
    :try_start_a9
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3169
    const-string v15, "  mObbPathToStateMap:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3170
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 3171
    .local v10, maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_c3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f8

    .line 3172
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3173
    .local v5, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    const-string v15, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3174
    const-string v15, " -> "

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/MountService$ObbState;

    invoke-virtual {v15}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c3

    .line 3176
    .end local v5           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_f8
    monitor-exit v16
    :try_end_f9
    .catchall {:try_start_a9 .. :try_end_f9} :catchall_a6

    .line 3178
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 3181
    :try_start_107
    const-string v15, "  mVolumes:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3183
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3184
    .local v1, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_117
    if-ge v7, v1, :cond_136

    .line 3185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/storage/StorageVolume;

    .line 3186
    .local v14, v:Landroid/os/storage/StorageVolume;
    const-string v15, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3187
    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3184
    add-int/lit8 v7, v7, 0x1

    goto :goto_117

    .line 3189
    .end local v14           #v:Landroid/os/storage/StorageVolume;
    :cond_136
    monitor-exit v16
    :try_end_137
    .catchall {:try_start_107 .. :try_end_137} :catchall_185

    .line 3191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 3192
    :try_start_13e
    const-string v15, "  mVolumes status:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 3195
    .local v11, maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_151
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_188

    .line 3196
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3197
    .local v6, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v15, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3198
    const-string v15, "::"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_151

    .line 3200
    .end local v6           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_182
    move-exception v15

    monitor-exit v16
    :try_end_184
    .catchall {:try_start_13e .. :try_end_184} :catchall_182

    throw v15

    .line 3189
    .end local v1           #N:I
    .end local v7           #i:I
    :catchall_185
    move-exception v15

    :try_start_186
    monitor-exit v16
    :try_end_187
    .catchall {:try_start_186 .. :try_end_187} :catchall_185

    throw v15

    .line 3200
    .restart local v1       #N:I
    .restart local v7       #i:I
    .restart local v11       #maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_188
    :try_start_188
    monitor-exit v16
    :try_end_189
    .catchall {:try_start_188 .. :try_end_189} :catchall_182

    .line 3202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/LinkedHashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 3203
    :try_start_190
    const-string v15, "  mVolumes map:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3204
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 3205
    .local v9, maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/storage/StorageVolume;>;>;"
    :goto_1a3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1fd

    .line 3206
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3207
    .local v4, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/storage/StorageVolume;>;"
    const-string v15, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3208
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-eqz v15, :cond_1cf

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_1cf

    .line 3209
    const-string v15, "*"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3211
    :cond_1cf
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, ":: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3212
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15}, Ljava/lang/String;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/StorageVolume;

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a3

    .line 3214
    .end local v4           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/storage/StorageVolume;>;"
    .end local v9           #maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/storage/StorageVolume;>;>;"
    :catchall_1fa
    move-exception v15

    monitor-exit v16
    :try_end_1fc
    .catchall {:try_start_190 .. :try_end_1fc} :catchall_1fa

    throw v15

    .restart local v9       #maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/storage/StorageVolume;>;>;"
    :cond_1fd
    :try_start_1fd
    monitor-exit v16
    :try_end_1fe
    .catchall {:try_start_1fd .. :try_end_1fe} :catchall_1fa

    goto/16 :goto_42
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .registers 9
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    .line 2558
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2559
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2562
    :cond_f
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2568
    const-string v2, "MountService"

    const-string v3, "encrypting storage..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    :try_start_22
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs enablecrypto inplace %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/android/server/MountService;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_37
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_22 .. :try_end_37} :catch_38

    .line 2578
    :goto_37
    return v1

    .line 2573
    :catch_38
    move-exception v0

    .line 2575
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_37
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .registers 4
    .parameter "id"

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_d

    .line 2107
    const-string v0, "MountService"

    const-string v1, "finalizeSecureContainer :: Can\'t find the secure container."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    const/4 v0, -0x1

    .line 2110
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/MountService;->finalizeSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_c
.end method

.method public finalizeSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "path"
    .parameter "id"

    .prologue
    .line 2088
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: finalizeSecureContainer :: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2090
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2092
    const/4 v1, 0x0

    .line 2094
    .local v1, rc:I
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec finalize %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_3f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2b .. :try_end_3f} :catch_40

    .line 2102
    :goto_3f
    return v1

    .line 2099
    :catch_40
    move-exception v0

    .line 2100
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_3f
.end method

.method public finishMediaUpdate()V
    .registers 3

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2381
    return-void
.end method

.method public formatVolume(Ljava/lang/String;)I
    .registers 5
    .parameter "path"

    .prologue
    .line 1964
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " :::: formatVolume :: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1966
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1968
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDMPathIfEncryptedSD(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .parameter "password"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3599
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_10

    .line 3600
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "no permission to access the crypt keeper"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3602
    :cond_10
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDMPathIfEncryptedSD password="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3604
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3607
    :try_start_35
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "volume getDMPathIfEncryptedSD "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/android/server/MountService;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3609
    .local v2, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3610
    .local v4, tokens:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_9f

    .line 3611
    const-string v6, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getEncryptionStatusForSD cnt="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " response="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 3614
    :cond_9f
    if-eqz v4, :cond_d8

    .line 3615
    array-length v5, v4

    const/4 v6, 0x5

    if-ne v5, v6, :cond_d8

    .line 3616
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/String;

    .line 3617
    .local v3, ret:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x2

    aget-object v6, v4, v6

    aput-object v6, v3, v5

    .line 3618
    const/4 v5, 0x1

    const/4 v6, 0x3

    aget-object v6, v4, v6

    aput-object v6, v3, v5

    .line 3619
    const/4 v5, 0x2

    const/4 v6, 0x4

    aget-object v6, v4, v6

    aput-object v6, v3, v5
    :try_end_ba
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_35 .. :try_end_ba} :catch_bb

    .line 3627
    .end local v1           #i:I
    .end local v2           #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #ret:[Ljava/lang/String;
    .end local v4           #tokens:[Ljava/lang/String;
    :goto_ba
    return-object v3

    .line 3623
    :catch_bb
    move-exception v0

    .line 3624
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getEncryptionStatusForSD faile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3627
    .end local v0           #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_d8
    const/4 v3, 0x0

    goto :goto_ba
.end method

.method public getEncryptionState()I
    .registers 8

    .prologue
    const/4 v4, -0x1

    .line 2474
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.CRYPT_KEEPER"

    const-string v6, "no permission to access the crypt keeper"

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2480
    :try_start_d
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "cryptfs cryptocomplete"

    invoke-virtual {v3, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2481
    .local v1, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2483
    .local v2, tokens:[Ljava/lang/String;
    if-eqz v2, :cond_28

    array-length v3, v2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_31

    .line 2485
    :cond_28
    const-string v3, "MountService"

    const-string v5, "Unexpected result from cryptfs cryptocomplete"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2498
    .end local v1           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #tokens:[Ljava/lang/String;
    :goto_30
    return v3

    .line 2489
    .restart local v1       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #tokens:[Ljava/lang/String;
    :cond_31
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_37} :catch_39
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_37} :catch_43

    move-result v3

    goto :goto_30

    .line 2491
    .end local v1           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #tokens:[Ljava/lang/String;
    :catch_39
    move-exception v0

    .line 2493
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "MountService"

    const-string v5, "Unable to parse result from cryptfs cryptocomplete"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2494
    goto :goto_30

    .line 2495
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_43
    move-exception v0

    .line 2497
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v5, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2498
    goto :goto_30
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "filename"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2403
    if-nez p1, :cond_c

    .line 2404
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "filename cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2407
    :cond_c
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2408
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2411
    :try_start_12
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "obb path %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2412
    .local v2, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2413
    .local v3, tok:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2414
    .local v0, code:I
    const/16 v4, 0xd3

    if-eq v0, v4, :cond_5d

    .line 2415
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_52
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_12 .. :try_end_52} :catch_52

    .line 2418
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    :catch_52
    move-exception v1

    .line 2419
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2420
    .restart local v0       #code:I
    const/16 v4, 0x196

    if-ne v0, v4, :cond_61

    .line 2421
    const/4 v4, 0x0

    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    :goto_5c
    return-object v4

    .line 2417
    .restart local v2       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #tok:[Ljava/lang/String;
    :cond_5d
    const/4 v4, 0x1

    :try_start_5e
    aget-object v4, v3, v4
    :try_end_60
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5e .. :try_end_60} :catch_52

    goto :goto_5c

    .line 2423
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    .restart local v1       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_61
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "id"

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_d

    .line 2373
    const-string v0, "MountService"

    const-string v1, "getSecureContainerFilesystemPath :: Can\'t find the secure container."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    const/4 v0, 0x0

    .line 2376
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/MountService;->getSecureContainerFilesystemPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "path"
    .parameter "id"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2347
    const-string v4, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2348
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2349
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2352
    :try_start_d
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "asec fspath %s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2353
    .local v2, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2354
    .local v3, tok:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2355
    .local v0, code:I
    const/16 v4, 0xd3

    if-eq v0, v4, :cond_6a

    .line 2356
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "getSecureContainerFilesystemPath : Unexpected response code %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_50
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_50} :catch_50

    .line 2360
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    :catch_50
    move-exception v1

    .line 2361
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2362
    .restart local v0       #code:I
    const/16 v4, 0x196

    if-ne v0, v4, :cond_9d

    .line 2363
    const-string v4, "MountService"

    const-string v5, "Container \'%s\' not found"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p2, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    const/4 v4, 0x0

    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    :goto_69
    return-object v4

    .line 2358
    .restart local v2       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #tok:[Ljava/lang/String;
    :cond_6a
    :try_start_6a
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " :::: getSecureContainerFilesystemPath :: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    const/4 v4, 0x1

    aget-object v4, v3, v4
    :try_end_9c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6a .. :try_end_9c} :catch_50

    goto :goto_69

    .line 2366
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    .restart local v1       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_9d
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_f

    .line 2049
    const-string v0, "MountService"

    const-string v1, "getSecureContainerList :: Can\'t find the secure container."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 2052
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->getSecureContainerList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public getSecureContainerList(Ljava/lang/String;)[Ljava/lang/String;
    .registers 13
    .parameter "path"

    .prologue
    const/4 v10, 0x0

    .line 2007
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " :::: getSecureContainerList :: path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    const-string v6, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2009
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2010
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2013
    iget-object v7, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v7

    .line 2014
    :try_start_27
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->checkSecureContainerMounted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8d

    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8d

    .line 2015
    const-string v6, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSecureContainerList -> HashSet is not empty !!! ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2018
    .local v5, rdata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 2019
    .local v1, i:I
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2020
    .local v2, iter:Ljava/util/Iterator;
    :cond_65
    :goto_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_81

    .line 2022
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$PackageInstalledMap;

    .line 2023
    .local v3, map:Lcom/android/server/MountService$PackageInstalledMap;
    iget-object v6, v3, Lcom/android/server/MountService$PackageInstalledMap;->InstalledPath:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 2024
    iget-object v6, v3, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2025
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 2028
    .end local v3           #map:Lcom/android/server/MountService$PackageInstalledMap;
    :cond_81
    new-array v6, v1, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    monitor-exit v7

    .line 2043
    .end local v1           #i:I
    .end local v2           #iter:Ljava/util/Iterator;
    .end local v5           #rdata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_8c
    return-object v6

    .line 2030
    :cond_8d
    monitor-exit v7
    :try_end_8e
    .catchall {:try_start_27 .. :try_end_8e} :catchall_a4

    .line 2034
    :try_start_8e
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "asec list %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x6f

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_a1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_8e .. :try_end_a1} :catch_a7

    move-result-object v4

    .local v4, packages:[Ljava/lang/String;
    move-object v6, v4

    .line 2039
    goto :goto_8c

    .line 2030
    .end local v4           #packages:[Ljava/lang/String;
    :catchall_a4
    move-exception v6

    :try_start_a5
    monitor-exit v7
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw v6

    .line 2041
    :catch_a7
    move-exception v0

    .line 2042
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSecureContainerList :: NativeDaemonConnectorException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    new-array v6, v10, [Ljava/lang/String;

    goto :goto_8c
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "id"

    .prologue
    .line 2339
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_d

    .line 2340
    const-string v0, "MountService"

    const-string v1, "getSecureContainerPath :: Can\'t find the secure container."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    const/4 v0, 0x0

    .line 2343
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/MountService;->getSecureContainerPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public getSecureContainerPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "path"
    .parameter "id"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2307
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " :::: getSecureContainerPath :: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    const-string v4, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2309
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2310
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2312
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->checkSecureContainerMounted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 2313
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v5, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 2314
    const-string v4, "MountService"

    const-string v5, "getSecureContainerPath -> not mounted, just return HashSet data"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/MountService;->mASECDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2331
    :goto_62
    return-object v4

    .line 2320
    :cond_63
    :try_start_63
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "asec path %s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2321
    .local v2, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2322
    .local v3, tok:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2323
    .local v0, code:I
    const/16 v4, 0xd3

    if-eq v0, v4, :cond_c0

    .line 2324
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_a6
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_63 .. :try_end_a6} :catch_a6

    .line 2327
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    :catch_a6
    move-exception v1

    .line 2328
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2329
    .restart local v0       #code:I
    const/16 v4, 0x196

    if-ne v0, v4, :cond_c4

    .line 2330
    const-string v4, "MountService"

    const-string v5, "Container \'%s\' not found"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p2, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    const/4 v4, 0x0

    goto :goto_62

    .line 2326
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #tok:[Ljava/lang/String;
    :cond_c0
    const/4 v4, 0x1

    :try_start_c1
    aget-object v4, v3, v4
    :try_end_c3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c1 .. :try_end_c3} :catch_a6

    goto :goto_62

    .line 2333
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    .restart local v1       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_c4
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getSecureContainerVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "path"

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 3226
    const-string v7, "volume aseced %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object p1, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3227
    .local v0, cmd:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 3229
    .local v5, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3230
    .local v3, line:Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3233
    .local v6, tok:[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_29
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2e} :catch_48

    move-result v1

    .line 3238
    .local v1, code:I
    const/16 v7, 0xd6

    if-ne v1, v7, :cond_67

    .line 3239
    const/4 v7, 0x2

    aget-object v7, v6, v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 3240
    const-string v7, "MountService"

    const-string v8, "getSecureContainerVolumeState :: result = mounted"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    const-string v7, "mounted"

    .line 3251
    .end local v1           #code:I
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #tok:[Ljava/lang/String;
    :goto_47
    return-object v7

    .line 3234
    .restart local v3       #line:Ljava/lang/String;
    .restart local v6       #tok:[Ljava/lang/String;
    :catch_48
    move-exception v4

    .line 3235
    .local v4, nfe:Ljava/lang/NumberFormatException;
    const-string v7, "MountService"

    const-string v8, "getSecureContainerVolumeState :: Error parsing code %s"

    new-array v9, v9, [Ljava/lang/Object;

    aget-object v10, v6, v11

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    const-string v7, "removed"

    goto :goto_47

    .line 3243
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .restart local v1       #code:I
    :cond_5d
    const-string v7, "MountService"

    const-string v8, "getSecureContainerVolumeState :: result = unmounted"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    const-string v7, "removed"

    goto :goto_47

    .line 3246
    :cond_67
    const-string v7, "MountService"

    const-string v8, "getSecureContainerVolumeState :: Unexpected response code %d"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    const-string v7, "removed"

    goto :goto_47

    .line 3250
    .end local v1           #code:I
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #tok:[Ljava/lang/String;
    :cond_7d
    const-string v7, "MountService"

    const-string v8, "getSecureContainerVolumeState :: Got an empty response"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    const-string v7, "removed"

    goto :goto_47
.end method

.method public getStorageCidNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "path"

    .prologue
    .line 3304
    const-string v0, ""

    .line 3307
    .local v0, devPath:Ljava/lang/String;
    const-string v2, "cid"

    invoke-direct {p0, p1, v2}, Lcom/android/server/MountService;->getDeviceSystemPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3309
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 3310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3311
    invoke-direct {p0, v0}, Lcom/android/server/MountService;->getStroageInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3312
    .local v1, result:Ljava/lang/String;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: getStorageCidNumber :: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    .end local v1           #result:Ljava/lang/String;
    :goto_49
    return-object v1

    .line 3315
    :cond_4a
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStorageCidNumber :: Failed to get root path of mmc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_49
.end method

.method public getStorageSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "path"

    .prologue
    .line 3286
    const-string v0, ""

    .line 3289
    .local v0, devPath:Ljava/lang/String;
    const-string v2, "serial"

    invoke-direct {p0, p1, v2}, Lcom/android/server/MountService;->getDeviceSystemPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3291
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 3292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/serial"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3293
    invoke-direct {p0, v0}, Lcom/android/server/MountService;->getStroageInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3294
    .local v1, result:Ljava/lang/String;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: getStorageSerialNumber :: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    .end local v1           #result:Ljava/lang/String;
    :goto_49
    return-object v1

    .line 3297
    :cond_4a
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStorageSerialNumber :: Failed to get root path of mmc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_49
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .registers 15
    .parameter "path"

    .prologue
    const/4 v12, 0x0

    .line 1972
    const-string v7, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v7}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1973
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1975
    :try_start_9
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v8, "storage users %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x70

    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 1979
    .local v5, r:[Ljava/lang/String;
    array-length v7, v5

    new-array v1, v7, [I

    .line 1980
    .local v1, data:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_21
    array-length v7, v5

    if-ge v3, v7, :cond_50

    .line 1981
    aget-object v7, v5, v3

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_2b} :catch_64

    move-result-object v6

    .line 1983
    .local v6, tok:[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_2d
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v3
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_35} :catch_38
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2d .. :try_end_35} :catch_51
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2d .. :try_end_35} :catch_64

    .line 1980
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 1985
    :catch_38
    move-exception v4

    .line 1986
    .local v4, nfe:Ljava/lang/NumberFormatException;
    :try_start_39
    const-string v7, "MountService"

    const-string v8, "getStorageUsers :: Error parsing pid %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v6, v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    const/4 v7, 0x0

    new-array v1, v7, [I

    .line 1996
    .end local v1           #data:[I
    .end local v3           #i:I
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .end local v5           #r:[Ljava/lang/String;
    .end local v6           #tok:[Ljava/lang/String;
    :cond_50
    :goto_50
    return-object v1

    .line 1988
    .restart local v1       #data:[I
    .restart local v3       #i:I
    .restart local v5       #r:[Ljava/lang/String;
    .restart local v6       #tok:[Ljava/lang/String;
    :catch_51
    move-exception v0

    .line 1989
    .local v0, are:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v7, "MountService"

    const-string v8, "getStorageUsers :: out of bounds"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    const/4 v7, 0x0

    new-array v1, v7, [I
    :try_end_63
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_39 .. :try_end_63} :catch_64

    goto :goto_50

    .line 1994
    .end local v0           #are:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v1           #data:[I
    .end local v3           #i:I
    .end local v5           #r:[Ljava/lang/String;
    .end local v6           #tok:[Ljava/lang/String;
    :catch_64
    move-exception v2

    .line 1995
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v7, "MountService"

    const-string v8, "getStorageUsers :: Failed to retrieve storage users list"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1996
    new-array v1, v12, [I

    goto :goto_50
.end method

.method public getVolumeList()[Landroid/os/Parcelable;
    .registers 6

    .prologue
    .line 2659
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2660
    :try_start_3
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2661
    .local v2, size:I
    new-array v1, v2, [Landroid/os/Parcelable;

    .line 2662
    .local v1, result:[Landroid/os/Parcelable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v2, :cond_1b

    .line 2663
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    aput-object v3, v1, v0

    .line 2662
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2665
    :cond_1b
    monitor-exit v4

    return-object v1

    .line 2666
    .end local v0           #i:I
    .end local v1           #result:[Landroid/os/Parcelable;
    .end local v2           #size:I
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v3
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "mountPoint"

    .prologue
    .line 1895
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 1896
    :try_start_3
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1897
    .local v0, state:Ljava/lang/String;
    if-nez v0, :cond_39

    .line 1898
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Unknown volume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const-string v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3b

    .line 1900
    const-string v0, "removed"

    .line 1906
    :cond_39
    monitor-exit v2

    return-object v0

    .line 1902
    :cond_3b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1907
    .end local v0           #state:Ljava/lang/String;
    :catchall_41
    move-exception v1

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public isExternalStorageEmulated()Z
    .registers 2

    .prologue
    .line 1911
    iget-boolean v0, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    return v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 4
    .parameter "filename"

    .prologue
    .line 2429
    if-nez p1, :cond_a

    .line 2430
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2433
    :cond_a
    iget-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    .line 2434
    :try_start_d
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2435
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .registers 4
    .parameter "id"

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_d

    .line 2264
    const-string v0, "MountService"

    const-string v1, "isSecureContainerMounted :: Can\'t find the secure container."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    const/4 v0, 0x0

    .line 2267
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/MountService;->isSecureContainerMounted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_c
.end method

.method public isSecureContainerMounted(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "path"
    .parameter "id"

    .prologue
    .line 2251
    const-string v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2252
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2253
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2255
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v2

    .line 2256
    :try_start_e
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v3, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2257
    .local v0, ret:Z
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: isSecureContainerMounted :: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    monitor-exit v2

    return v0

    .line 2259
    .end local v0           #ret:Z
    :catchall_47
    move-exception v1

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_e .. :try_end_49} :catchall_47

    throw v1
.end method

.method public isUsbMassStorageConnected()Z
    .registers 5

    .prologue
    .line 1698
    const-string v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_e

    .line 1699
    const/4 v0, 0x0

    .line 1708
    :goto_d
    return v0

    .line 1701
    :cond_e
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1703
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1704
    const/4 v0, 0x1

    goto :goto_d

    .line 1706
    :cond_19
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1707
    :try_start_1c
    const-string v0, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUsbMassStorageConnected :: ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    monitor-exit v1

    goto :goto_d

    .line 1709
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public isUsbMassStorageEnabled()Z
    .registers 5

    .prologue
    .line 1826
    const-string v1, "share"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->isUsbMassStorageEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 1827
    .local v0, ret:Z
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " :::: isUsbMassStorageEnabled :: ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    return v0
.end method

.method public monitor()V
    .registers 2

    .prologue
    .line 3220
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_9

    .line 3221
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 3223
    :cond_9
    return-void
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .registers 12
    .parameter "filename"
    .parameter "key"
    .parameter "token"
    .parameter "nonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2440
    if-nez p1, :cond_a

    .line 2441
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2444
    :cond_a
    if-nez p3, :cond_14

    .line 2445
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "token cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2448
    :cond_14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2449
    .local v3, callerUid:I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2450
    .local v0, obbState:Lcom/android/server/MountService$ObbState;
    new-instance v6, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v6, p0, v0, p2}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;)V

    .line 2451
    .local v6, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v6}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2455
    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .parameter "id"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_d

    .line 2191
    const-string v0, "MountService"

    const-string v1, "mountSecureContainer :: Can\'t find the secure container."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    const/4 v0, -0x1

    .line 2194
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/MountService;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_c
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 13
    .parameter "path"
    .parameter "id"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 2159
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " :::: mountSecureContainer :: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ownerUid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2161
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2162
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2164
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2165
    :try_start_3a
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 2166
    const/4 v3, -0x6

    monitor-exit v5

    .line 2186
    :cond_49
    :goto_49
    return v3

    .line 2168
    :cond_4a
    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_3a .. :try_end_4b} :catchall_7e

    .line 2170
    const/4 v3, 0x0

    .line 2171
    .local v3, rc:I
    const-string v4, "asec mount %s %s %d %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    const/4 v6, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2173
    .local v0, cmd:Ljava/lang/String;
    :try_start_65
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_6a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_65 .. :try_end_6a} :catch_81

    .line 2181
    :cond_6a
    :goto_6a
    if-nez v3, :cond_49

    .line 2182
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2183
    :try_start_6f
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2184
    monitor-exit v5

    goto :goto_49

    :catchall_7b
    move-exception v4

    monitor-exit v5
    :try_end_7d
    .catchall {:try_start_6f .. :try_end_7d} :catchall_7b

    throw v4

    .line 2168
    .end local v0           #cmd:Ljava/lang/String;
    .end local v3           #rc:I
    :catchall_7e
    move-exception v4

    :try_start_7f
    monitor-exit v5
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v4

    .line 2174
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v3       #rc:I
    :catch_81
    move-exception v2

    .line 2175
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2176
    .local v1, code:I
    const/16 v4, 0x195

    if-eq v1, v4, :cond_6a

    .line 2177
    const/4 v3, -0x1

    goto :goto_6a
.end method

.method public mountVolume(Ljava/lang/String;)I
    .registers 5
    .parameter "path"

    .prologue
    .line 1915
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " :::: mountVolume :: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1918
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1919
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onDaemonConnected()V
    .registers 3

    .prologue
    .line 763
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 764
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 765
    iget-object v0, p0, Lcom/android/server/MountService;->mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    if-eqz v0, :cond_21

    .line 766
    const-string v0, "MountService"

    const-string v1, "unregister old direncryption listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v0, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/server/MountService;->mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 769
    :cond_21
    const-string v0, "MountService"

    const-string v1, "register direncryption listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    new-instance v0, Lcom/android/server/MountService$DirEncryptListner;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$DirEncryptListner;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    .line 771
    iget-object v0, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/server/MountService;->mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 778
    :cond_36
    new-instance v0, Lcom/android/server/MountService$2;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v0}, Lcom/android/server/MountService$2;->start()V

    .line 825
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 6
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/server/MountService;->mWorkQueueHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/MountService$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 836
    const/4 v0, 0x1

    return v0
.end method

.method public registerCallBackListener(Landroid/os/storage/IMountCallBackListener;)V
    .registers 7
    .parameter "callback"

    .prologue
    .line 3454
    iget-object v3, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3455
    :try_start_3
    new-instance v0, Lcom/android/server/MountService$MountCallBackBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountCallBackBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountCallBackListener;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_20

    .line 3457
    .local v0, bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    :try_start_8
    invoke-interface {p1}, Landroid/os/storage/IMountCallBackListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 3458
    iget-object v2, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_17

    .line 3462
    :goto_15
    :try_start_15
    monitor-exit v3

    .line 3463
    return-void

    .line 3459
    :catch_17
    move-exception v1

    .line 3460
    .local v1, rex:Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v4, "registerCallBackListener : Failed to link to listener death"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 3462
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .end local v1           #rex:Landroid/os/RemoteException;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .registers 7
    .parameter "listener"

    .prologue
    .line 1530
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1531
    :try_start_3
    new-instance v0, Lcom/android/server/MountService$MountServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountServiceBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountServiceListener;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_20

    .line 1533
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_8
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1534
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_17

    .line 1538
    :goto_15
    :try_start_15
    monitor-exit v3

    .line 1539
    return-void

    .line 1535
    :catch_17
    move-exception v1

    .line 1536
    .local v1, rex:Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v4, "Failed to link to listener death"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1538
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #rex:Landroid/os/RemoteException;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public removeCryptMapper(Ljava/lang/String;)Z
    .registers 10
    .parameter "label"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3633
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v6, 0x3e8

    if-eq v3, v6, :cond_12

    .line 3634
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "no permission to access the crypt keeper"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3636
    :cond_12
    const-string v3, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeCryptMapper path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3641
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cryptfs removeCryptMapper "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3643
    .local v1, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3645
    .local v2, tokens:[Ljava/lang/String;
    if-eqz v2, :cond_59

    array-length v3, v2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_5a

    .line 3653
    .end local v1           #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #tokens:[Ljava/lang/String;
    :cond_59
    :goto_59
    return v5

    .line 3649
    .restart local v1       #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #tokens:[Ljava/lang/String;
    :cond_5a
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_60
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2d .. :try_end_60} :catch_68

    move-result v3

    if-ne v3, v4, :cond_66

    move v3, v4

    :goto_64
    move v5, v3

    goto :goto_59

    :cond_66
    move v3, v5

    goto :goto_64

    .line 3650
    .end local v1           #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #tokens:[Ljava/lang/String;
    :catch_68
    move-exception v0

    .line 3652
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEncryptionStatusForSD faile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "oldId"
    .parameter "newId"

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_d

    .line 2300
    const-string v0, "MountService"

    const-string v1, "renameSecureContainer :: Can\'t find the secure container."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    const/4 v0, -0x1

    .line 2303
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/MountService;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_c
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .parameter "path"
    .parameter "oldId"
    .parameter "newId"

    .prologue
    .line 2271
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: renameSecureContainer :: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    const-string v3, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2273
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2274
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2276
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2281
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v5, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v5, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v5, p0, p1, p3}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 2283
    :cond_54
    const/4 v2, -0x6

    monitor-exit v4

    .line 2295
    :goto_56
    return v2

    .line 2285
    :cond_57
    monitor-exit v4
    :try_end_58
    .catchall {:try_start_3a .. :try_end_58} :catchall_74

    .line 2287
    const/4 v2, 0x0

    .line 2288
    .local v2, rc:I
    const-string v3, "asec rename %s %s %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2290
    .local v0, cmd:Ljava/lang/String;
    :try_start_6b
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_70
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6b .. :try_end_70} :catch_71

    goto :goto_56

    .line 2291
    :catch_71
    move-exception v1

    .line 2292
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v2, -0x1

    goto :goto_56

    .line 2285
    .end local v0           #cmd:Ljava/lang/String;
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    .end local v2           #rc:I
    :catchall_74
    move-exception v3

    :try_start_75
    monitor-exit v4
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v3
.end method

.method requiredEncPolicyCheck(Ljava/lang/String;)Z
    .registers 10
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 3569
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v5

    if-nez v5, :cond_8

    .line 3589
    :cond_7
    :goto_7
    return v4

    .line 3574
    :cond_8
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3575
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_32

    iget-object v5, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v5}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v5

    if-nez v5, :cond_32

    .line 3576
    new-instance v3, Landroid/dirEncryption/SDCardEncryptionPolicies;

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x7

    invoke-direct {v3, v5, v6, v7}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .line 3578
    .local v3, policy:Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v2

    .line 3579
    .local v2, mDep:Lcom/android/server/DirEncryptPrefs;
    invoke-virtual {v2, v3}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    .line 3582
    .end local v2           #mDep:Lcom/android/server/DirEncryptPrefs;
    .end local v3           #policy:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_32
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    .line 3583
    .local v1, lockPasswordEnabled:Z
    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v5}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v5}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 3587
    const/4 v4, 0x1

    goto :goto_7
.end method

.method public setUsbMassStorageEnabled(Z)V
    .registers 20
    .parameter "enable"

    .prologue
    .line 1729
    const-string v15, "MountService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " :::: setUsbMassStorageEnabled :: enable = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1731
    const-string v15, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1734
    if-eqz p1, :cond_44

    .line 1735
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v16, "enterprise_policy"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1737
    .local v5, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v5, :cond_44

    .line 1738
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    .line 1739
    .local v9, rp:Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v9, :cond_44

    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Landroid/app/enterprise/RestrictionPolicy;->isUsbMassStorageEnabled(Z)Z

    move-result v15

    if-nez v15, :cond_44

    .line 1823
    .end local v5           #mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v9           #rp:Landroid/app/enterprise/RestrictionPolicy;
    :cond_43
    :goto_43
    return-void

    .line 1747
    :cond_44
    const-string v15, "share"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/MountService;->isUsbMassStorageEnabled(Ljava/lang/String;)Z

    move-result v15

    move/from16 v0, p1

    if-ne v15, v0, :cond_81

    .line 1748
    const-string v15, "MountService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Duplicate state change ( "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->isVolumeStateShared()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " -> "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " )"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 1756
    :cond_81
    const/4 v8, 0x0

    .line 1757
    .local v8, paths:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 1758
    .local v11, states:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1760
    .local v2, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1761
    :try_start_8b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1762
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    .line 1763
    new-array v15, v2, [Ljava/lang/String;

    invoke-interface {v4, v15}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, [Ljava/lang/String;

    move-object v8, v0

    .line 1764
    new-array v11, v2, [Ljava/lang/String;

    .line 1765
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a4
    if-ge v3, v2, :cond_b9

    .line 1766
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    aget-object v17, v8, v3

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    aput-object v15, v11, v3

    .line 1765
    add-int/lit8 v3, v3, 0x1

    goto :goto_a4

    .line 1768
    :cond_b9
    monitor-exit v16
    :try_end_ba
    .catchall {:try_start_8b .. :try_end_ba} :catchall_104

    .line 1770
    const-string v6, "ums"

    .line 1772
    .local v6, method:Ljava/lang/String;
    if-eqz p1, :cond_122

    .line 1773
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/MountService;->setUmsProcessing(Z)V

    .line 1774
    const/4 v10, 0x0

    .line 1775
    .local v10, start:Z
    const/4 v3, 0x0

    :goto_c6
    if-ge v3, v2, :cond_107

    .line 1777
    sub-int v15, v2, v3

    add-int/lit8 v15, v15, -0x1

    aget-object v7, v8, v15

    .line 1778
    .local v7, path:Ljava/lang/String;
    sub-int v15, v2, v3

    add-int/lit8 v15, v15, -0x1

    aget-object v14, v11, v15

    .line 1782
    .local v14, vs:Ljava/lang/String;
    if-eqz p1, :cond_101

    const-string v15, "mounted"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_101

    .line 1783
    invoke-direct/range {p0 .. p1}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 1785
    new-instance v13, Lcom/android/server/MountService$UmsEnableCallBack;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v7, v6, v15}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1787
    .local v13, umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1788
    const/4 v10, 0x1

    .line 1775
    .end local v13           #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    :cond_101
    add-int/lit8 v3, v3, 0x1

    goto :goto_c6

    .line 1768
    .end local v3           #i:I
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #method:Ljava/lang/String;
    .end local v7           #path:Ljava/lang/String;
    .end local v10           #start:Z
    .end local v14           #vs:Ljava/lang/String;
    :catchall_104
    move-exception v15

    :try_start_105
    monitor-exit v16
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_104

    throw v15

    .line 1792
    .restart local v3       #i:I
    .restart local v4       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6       #method:Ljava/lang/String;
    .restart local v10       #start:Z
    :cond_107
    if-eqz v10, :cond_11c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1794
    :cond_11c
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 1800
    .end local v10           #start:Z
    :cond_122
    if-nez p1, :cond_43

    .line 1801
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/MountService;->setUmsProcessing(Z)V

    .line 1802
    const/4 v3, 0x0

    :goto_12b
    if-ge v3, v2, :cond_43

    .line 1803
    aget-object v7, v8, v3

    .line 1804
    .restart local v7       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v15, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 1806
    .local v12, storage:Landroid/os/storage/StorageVolume;
    if-eqz v12, :cond_14f

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v15

    if-eqz v15, :cond_14f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "shared"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_152

    .line 1802
    :cond_14f
    :goto_14f
    add-int/lit8 v3, v3, 0x1

    goto :goto_12b

    .line 1811
    :cond_152
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v6, v1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1812
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_14f

    .line 1813
    const-string v15, "MountService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to remount "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " after disabling share method "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14f
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .registers 25
    .parameter "observer"

    .prologue
    .line 1553
    const-string v19, "android.permission.SHUTDOWN"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1555
    const-string v19, "MountService"

    const-string v20, "Shutting down"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    const/4 v10, 0x0

    .line 1558
    .local v10, paths:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 1559
    .local v16, states:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1560
    .local v3, count:I
    const/4 v14, 0x0

    .line 1562
    .local v14, start:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1564
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 1565
    .local v7, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v3

    .line 1566
    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, [Ljava/lang/String;

    move-object v10, v0

    .line 1567
    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1569
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3e
    if-ge v5, v3, :cond_57

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    move-object/from16 v19, v0

    aget-object v21, v10, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    aput-object v19, v16, v5

    .line 1569
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 1573
    :cond_57
    const/4 v8, 0x0

    .line 1575
    .local v8, mounted_device_path:Ljava/lang/String;
    const/4 v5, 0x0

    :goto_59
    if-ge v5, v3, :cond_8d

    .line 1576
    aget-object v9, v10, v5

    .line 1577
    .local v9, path:Ljava/lang/String;
    aget-object v15, v16, v5

    .line 1578
    .local v15, state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/LinkedHashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/storage/StorageVolume;

    .line 1579
    .local v17, storage:Landroid/os/storage/StorageVolume;
    if-eqz v17, :cond_82

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v19

    const-string v21, "fuse"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_82

    .line 1575
    :cond_7f
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    .line 1581
    :cond_82
    const-string v19, "mounted"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7f

    .line 1582
    move-object v8, v9

    .line 1587
    .end local v9           #path:Ljava/lang/String;
    .end local v15           #state:Ljava/lang/String;
    .end local v17           #storage:Landroid/os/storage/StorageVolume;
    :cond_8d
    const/4 v5, 0x0

    :goto_8e
    if-ge v5, v3, :cond_163

    .line 1588
    sub-int v19, v3, v5

    add-int/lit8 v19, v19, -0x1

    aget-object v9, v10, v19

    .line 1589
    .restart local v9       #path:Ljava/lang/String;
    sub-int v19, v3, v5

    add-int/lit8 v19, v19, -0x1

    aget-object v15, v16, v19

    .line 1591
    .restart local v15       #state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/LinkedHashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/storage/StorageVolume;

    .line 1592
    .restart local v17       #storage:Landroid/os/storage/StorageVolume;
    if-eqz v17, :cond_bf

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v19

    const-string v21, "fuse"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_bf

    .line 1587
    :cond_bc
    :goto_bc
    add-int/lit8 v5, v5, 0x1

    goto :goto_8e

    .line 1594
    :cond_bf
    const/4 v11, 0x0

    .line 1595
    .local v11, report:Z
    if-eqz v8, :cond_c9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c9

    const/4 v11, 0x1

    .line 1600
    :cond_c9
    const-string v19, "shared"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_112

    .line 1608
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    .line 1631
    :cond_dc
    :goto_dc
    const-string v19, "mounted"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15f

    .line 1633
    new-instance v18, Lcom/android/server/MountService$ShutdownCallBack;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v9, v2, v11}, Lcom/android/server/MountService$ShutdownCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;Z)V

    .line 1635
    .local v18, ucb:Lcom/android/server/MountService$ShutdownCallBack;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1636
    const/4 v14, 0x1

    .line 1637
    goto :goto_bc

    .line 1609
    .end local v18           #ucb:Lcom/android/server/MountService$ShutdownCallBack;
    :cond_112
    const-string v19, "checking"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_dc

    .line 1615
    const/16 v12, 0x1e

    .local v12, retries:I
    move v13, v12

    .line 1616
    .end local v12           #retries:I
    .local v13, retries:I
    :goto_11f
    const-string v19, "checking"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_126
    .catchall {:try_start_1c .. :try_end_126} :catchall_15c

    move-result v19

    if-eqz v19, :cond_197

    add-int/lit8 v12, v13, -0x1

    .end local v13           #retries:I
    .restart local v12       #retries:I
    if-ltz v13, :cond_14e

    .line 1618
    const-wide/16 v21, 0x3e8

    :try_start_12f
    invoke-static/range {v21 .. v22}, Ljava/lang/Thread;->sleep(J)V
    :try_end_132
    .catchall {:try_start_12f .. :try_end_132} :catchall_15c
    .catch Ljava/lang/InterruptedException; {:try_start_12f .. :try_end_132} :catch_142

    .line 1624
    :try_start_132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #state:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .restart local v15       #state:Ljava/lang/String;
    move v13, v12

    .end local v12           #retries:I
    .restart local v13       #retries:I
    goto :goto_11f

    .line 1619
    .end local v13           #retries:I
    .restart local v12       #retries:I
    :catch_142
    move-exception v6

    .line 1620
    .local v6, iex:Ljava/lang/InterruptedException;
    const-string v19, "MountService"

    const-string v21, "Interrupted while waiting for media"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1626
    .end local v6           #iex:Ljava/lang/InterruptedException;
    :cond_14e
    :goto_14e
    if-nez v12, :cond_dc

    .line 1627
    const-string v19, "MountService"

    const-string v21, "Timed out waiting for media to check"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc

    .line 1668
    .end local v5           #i:I
    .end local v7           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #mounted_device_path:Ljava/lang/String;
    .end local v9           #path:Ljava/lang/String;
    .end local v11           #report:Z
    .end local v12           #retries:I
    .end local v15           #state:Ljava/lang/String;
    .end local v17           #storage:Landroid/os/storage/StorageVolume;
    :catchall_15c
    move-exception v19

    monitor-exit v20
    :try_end_15e
    .catchall {:try_start_132 .. :try_end_15e} :catchall_15c

    throw v19

    .line 1637
    .restart local v5       #i:I
    .restart local v7       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8       #mounted_device_path:Ljava/lang/String;
    .restart local v9       #path:Ljava/lang/String;
    .restart local v11       #report:Z
    .restart local v15       #state:Ljava/lang/String;
    .restart local v17       #storage:Landroid/os/storage/StorageVolume;
    :cond_15f
    if-eqz p1, :cond_bc

    goto/16 :goto_bc

    .line 1653
    .end local v9           #path:Ljava/lang/String;
    .end local v11           #report:Z
    .end local v15           #state:Ljava/lang/String;
    .end local v17           #storage:Landroid/os/storage/StorageVolume;
    :cond_163
    if-eqz v14, :cond_180

    .line 1654
    :try_start_165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1668
    :goto_17e
    monitor-exit v20
    :try_end_17f
    .catchall {:try_start_165 .. :try_end_17f} :catchall_15c

    .line 1669
    return-void

    .line 1662
    :cond_180
    const/16 v19, 0x0

    :try_start_182
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_189
    .catchall {:try_start_182 .. :try_end_189} :catchall_15c
    .catch Landroid/os/RemoteException; {:try_start_182 .. :try_end_189} :catch_18a

    goto :goto_17e

    .line 1663
    :catch_18a
    move-exception v4

    .line 1664
    .local v4, e:Landroid/os/RemoteException;
    :try_start_18b
    const-string v19, "MountService"

    const-string v21, "RemoteException when shutting down"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_196
    .catchall {:try_start_18b .. :try_end_196} :catchall_15c

    goto :goto_17e

    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v9       #path:Ljava/lang/String;
    .restart local v11       #report:Z
    .restart local v13       #retries:I
    .restart local v15       #state:Ljava/lang/String;
    .restart local v17       #storage:Landroid/os/storage/StorageVolume;
    :cond_197
    move v12, v13

    .end local v13           #retries:I
    .restart local v12       #retries:I
    goto :goto_14e
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .registers 12
    .parameter "filename"
    .parameter "force"
    .parameter "token"
    .parameter "nonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2459
    if-nez p1, :cond_a

    .line 2460
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2463
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2464
    .local v3, callerUid:I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2465
    .local v0, obbState:Lcom/android/server/MountService$ObbState;
    new-instance v6, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v6, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .line 2466
    .local v6, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v6}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2470
    return-void
.end method

.method public unmountSecureContainer(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 12
    .parameter "path"
    .parameter "id"
    .parameter "force"

    .prologue
    const/4 v4, 0x0

    .line 2198
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " :::: unmountSecureContainer :: path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", force = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    const-string v5, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v5}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2200
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2201
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2203
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2204
    :try_start_3b
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4b

    .line 2205
    const/4 v3, -0x5

    monitor-exit v5

    .line 2239
    :cond_4a
    :goto_4a
    return v3

    .line 2207
    :cond_4b
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->checkSecureContainerMounted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_65

    .line 2208
    const-string v6, "MountService"

    const-string v7, "unmountSecureContainer -> not mounted, after remove hadset, just return true"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2210
    monitor-exit v5

    move v3, v4

    goto :goto_4a

    .line 2212
    :cond_65
    monitor-exit v5
    :try_end_66
    .catchall {:try_start_3b .. :try_end_66} :catchall_9c

    .line 2219
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 2221
    const/4 v3, 0x0

    .line 2222
    .local v3, rc:I
    const-string v5, "asec unmount %s %s %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v4

    const/4 v4, 0x1

    aput-object p1, v6, v4

    const/4 v7, 0x2

    if-eqz p3, :cond_9f

    const-string v4, "force"

    :goto_7d
    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2224
    .local v0, cmd:Ljava/lang/String;
    :try_start_83
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_88
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_83 .. :try_end_88} :catch_a2

    .line 2234
    :goto_88
    if-nez v3, :cond_4a

    .line 2235
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2236
    :try_start_8d
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2237
    monitor-exit v5

    goto :goto_4a

    :catchall_99
    move-exception v4

    monitor-exit v5
    :try_end_9b
    .catchall {:try_start_8d .. :try_end_9b} :catchall_99

    throw v4

    .line 2212
    .end local v0           #cmd:Ljava/lang/String;
    .end local v3           #rc:I
    :catchall_9c
    move-exception v4

    :try_start_9d
    monitor-exit v5
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw v4

    .line 2222
    .restart local v3       #rc:I
    :cond_9f
    const-string v4, "graceful"

    goto :goto_7d

    .line 2225
    .restart local v0       #cmd:Ljava/lang/String;
    :catch_a2
    move-exception v2

    .line 2226
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2227
    .local v1, code:I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_ad

    .line 2228
    const/4 v3, -0x7

    goto :goto_88

    .line 2230
    :cond_ad
    const/4 v3, -0x1

    goto :goto_88
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .registers 5
    .parameter "id"
    .parameter "force"

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_d

    .line 2244
    const-string v0, "MountService"

    const-string v1, "unmountSecureContainer :: Can\'t find the secure container."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    const/4 v0, -0x1

    .line 2247
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/MountService;->mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/MountService;->unmountSecureContainer(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    goto :goto_c
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .registers 13
    .parameter "path"
    .parameter "force"
    .parameter "removeEncryption"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1923
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " :::: unmountVolume :: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", force = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", removeEncryption = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    const-string v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1925
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1928
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 1929
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1930
    .local v1, pathSplits:[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_97

    .line 1931
    const-string v4, "hidden"

    aget-object v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 1932
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doUnmountVolume :: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "volume unmount %s force"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    :try_start_80
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "volume unmount %s force"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_91
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_80 .. :try_end_91} :catch_92

    .line 1961
    .end local v1           #pathSplits:[Ljava/lang/String;
    :cond_91
    :goto_91
    return-void

    .line 1935
    .restart local v1       #pathSplits:[Ljava/lang/String;
    :catch_92
    move-exception v0

    .line 1936
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->printStackTrace()V

    goto :goto_91

    .line 1945
    .end local v0           #e:Lcom/android/server/NativeDaemonConnectorException;
    .end local v1           #pathSplits:[Ljava/lang/String;
    :cond_97
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1947
    .local v3, volState:Ljava/lang/String;
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unmounting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " force = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " removeEncryption = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    const-string v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_91

    const-string v4, "removed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_91

    const-string v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_91

    const-string v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_91

    .line 1959
    new-instance v2, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 1960
    .local v2, ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_91
.end method

.method public unregisterCallBackListener(Landroid/os/storage/IMountCallBackListener;)V
    .registers 7
    .parameter "callback"

    .prologue
    .line 3466
    iget-object v3, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3467
    :try_start_3
    iget-object v2, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountCallBackBinderListener;

    .line 3468
    .local v0, bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    iget-object v2, v0, Lcom/android/server/MountService$MountCallBackBinderListener;->mCallback:Landroid/os/storage/IMountCallBackListener;

    if-ne v2, p1, :cond_9

    .line 3469
    iget-object v2, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3470
    monitor-exit v3

    .line 3474
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    :goto_25
    return-void

    .line 3473
    :cond_26
    monitor-exit v3

    goto :goto_25

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_28
    move-exception v2

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .registers 7
    .parameter "listener"

    .prologue
    .line 1542
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1543
    :try_start_3
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;

    .line 1544
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    iget-object v2, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    if-ne v2, p1, :cond_9

    .line 1545
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1546
    monitor-exit v3

    .line 1550
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :goto_25
    return-void

    .line 1549
    :cond_26
    monitor-exit v3

    goto :goto_25

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_28
    move-exception v2

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .registers 10
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2617
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_10

    .line 2618
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "no permission to access the crypt keeper"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2621
    :cond_10
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.CRYPT_KEEPER"

    const-string v7, "no permission to access the crypt keeper"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 2625
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "password cannot be empty"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2628
    :cond_27
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2631
    const-string v5, "MountService"

    const-string v6, "validating encryption password..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    :try_start_31
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cryptfs verifypw "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/android/server/MountService;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2636
    .local v3, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2638
    .local v4, tokens:[Ljava/lang/String;
    if-eqz v4, :cond_61

    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_c1

    .line 2639
    :cond_61
    const-string v2, "Unexpected result from cryptfs verifypw: {"

    .line 2640
    .local v2, msg:Ljava/lang/String;
    if-nez v4, :cond_92

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2645
    :cond_78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2646
    const-string v5, "MountService"

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    const/4 v5, -0x1

    .line 2654
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #tokens:[Ljava/lang/String;
    :goto_91
    return v5

    .line 2641
    .restart local v2       #msg:Ljava/lang/String;
    .restart local v3       #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #tokens:[Ljava/lang/String;
    :cond_92
    const/4 v1, 0x0

    .local v1, i:I
    :goto_93
    array-length v5, v4

    if-ge v1, v5, :cond_78

    .line 2642
    if-eqz v1, :cond_ab

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2643
    :cond_ab
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2641
    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    .line 2650
    .end local v1           #i:I
    .end local v2           #msg:Ljava/lang/String;
    :cond_c1
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cryptfs verifypw => "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_31 .. :try_end_e2} :catch_e4

    move-result v5

    goto :goto_91

    .line 2652
    .end local v3           #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #tokens:[Ljava/lang/String;
    :catch_e4
    move-exception v0

    .line 2654
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    goto :goto_91
.end method
