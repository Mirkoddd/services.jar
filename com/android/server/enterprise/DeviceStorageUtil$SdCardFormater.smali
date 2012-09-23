.class Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;
.super Ljava/lang/Object;
.source "DeviceStorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/DeviceStorageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdCardFormater"
.end annotation


# static fields
.field public static final OperationSucceeded:I


# instance fields
.field finished:Z

.field isPreMounted:Z

.field mExternal:Z

.field private mMountService:Landroid/os/storage/IMountService;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field success:Z

.field final synthetic this$0:Lcom/android/server/enterprise/DeviceStorageUtil;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/DeviceStorageUtil;Z)V
    .registers 5
    .parameter
    .parameter "isExternal"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 385
    iput-object p1, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object v1, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mMountService:Landroid/os/storage/IMountService;

    .line 338
    iput-boolean v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->finished:Z

    .line 339
    iput-boolean v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->success:Z

    .line 340
    iput-boolean v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mExternal:Z

    .line 341
    iput-boolean v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->isPreMounted:Z

    .line 342
    iput-object v1, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 344
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;-><init>(Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;)V

    iput-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 386
    iput-boolean p2, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mExternal:Z

    .line 387
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_39

    .line 388
    #getter for: Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/enterprise/DeviceStorageUtil;->access$400(Lcom/android/server/enterprise/DeviceStorageUtil;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 389
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_39

    .line 390
    const-string v0, "DeviceStorageUtil"

    const-string v1, "Failed to get StorageManager"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_39
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;)Landroid/os/storage/StorageEventListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;)Landroid/os/storage/StorageManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->getSdCardPath()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mountSdCard()Z

    move-result v0

    return v0
.end method

.method private disconnectSdCardOperations()V
    .registers 8

    .prologue
    .line 397
    const-string v4, "DeviceStorageUtil"

    const-string v5, "END MTP"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.END_MTP"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v1, intentBroadcast:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    #getter for: Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/DeviceStorageUtil;->access$400(Lcom/android/server/enterprise/DeviceStorageUtil;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 400
    const-string v4, "DeviceStorageUtil"

    const-string v5, "END UMS"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    #getter for: Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/DeviceStorageUtil;->access$400(Lcom/android/server/enterprise/DeviceStorageUtil;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 403
    .local v3, sm:Landroid/os/storage/StorageManager;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 404
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    .line 406
    const/4 v2, 0x0

    .line 407
    .local v2, retryCount:I
    :goto_36
    :try_start_36
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 419
    .end local v2           #retryCount:I
    :cond_3c
    :goto_3c
    return-void

    .line 410
    .restart local v2       #retryCount:I
    :cond_3d
    const-string v4, "DeviceStorageUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UMS not yet disabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_5a} :catch_5d

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 414
    :catch_5d
    move-exception v0

    .line 415
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DeviceStorageUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .registers 5

    .prologue
    .line 438
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mMountService:Landroid/os/storage/IMountService;

    if-nez v2, :cond_13

    .line 439
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 440
    .local v1, service:Landroid/os/IBinder;
    if-eqz v1, :cond_17

    .line 441
    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mMountService:Landroid/os/storage/IMountService;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_1f

    .line 449
    .end local v1           #service:Landroid/os/IBinder;
    :cond_13
    :goto_13
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mMountService:Landroid/os/storage/IMountService;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_24

    monitor-exit p0

    return-object v2

    .line 443
    .restart local v1       #service:Landroid/os/IBinder;
    :cond_17
    :try_start_17
    const-string v2, "DeviceStorageUtil"

    const-string v3, "Can\'t get mount service"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_24
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_13

    .line 446
    .end local v1           #service:Landroid/os/IBinder;
    :catch_1f
    move-exception v0

    .line 447
    .local v0, e:Ljava/lang/Exception;
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_13

    .line 438
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getSdCardPath()Ljava/io/File;
    .registers 2

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mExternal:Z

    if-eqz v0, :cond_b

    .line 430
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    #calls: Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->access$700(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/io/File;

    move-result-object v0

    .line 432
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    #calls: Lcom/android/server/enterprise/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->access$800(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/io/File;

    move-result-object v0

    goto :goto_a
.end method

.method private getSdCardState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mExternal:Z

    if-eqz v0, :cond_b

    .line 423
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    #calls: Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardState()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->access$500(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/lang/String;

    move-result-object v0

    .line 425
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    #calls: Lcom/android/server/enterprise/DeviceStorageUtil;->getInternalSdCardState()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->access$600(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private isSdCardMounted()Z
    .registers 3

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->getSdCardState()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, status:Ljava/lang/String;
    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 456
    :cond_14
    const/4 v1, 0x1

    .line 458
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private mountSdCard()Z
    .registers 11

    .prologue
    .line 479
    const/4 v6, 0x0

    .line 480
    .local v6, success:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 482
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-eqz v1, :cond_5f

    .line 483
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->getSdCardPath()Ljava/io/File;

    move-result-object v5

    .line 484
    .local v5, sdPath:Ljava/io/File;
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    #calls: Lcom/android/server/enterprise/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;
    invoke-static {v7}, Lcom/android/server/enterprise/DeviceStorageUtil;->access$800(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/io/File;

    move-result-object v4

    .line 485
    .local v4, sdInternalPath:Ljava/io/File;
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    #calls: Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;
    invoke-static {v7}, Lcom/android/server/enterprise/DeviceStorageUtil;->access$700(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/io/File;

    move-result-object v3

    .line 487
    .local v3, sdExternalPath:Ljava/io/File;
    if-eqz v5, :cond_1d

    if-eqz v4, :cond_1d

    if-nez v3, :cond_1f

    .line 488
    :cond_1d
    const/4 v7, 0x0

    .line 508
    .end local v3           #sdExternalPath:Ljava/io/File;
    .end local v4           #sdInternalPath:Ljava/io/File;
    .end local v5           #sdPath:Ljava/io/File;
    :goto_1e
    return v7

    .line 490
    .restart local v3       #sdExternalPath:Ljava/io/File;
    .restart local v4       #sdInternalPath:Ljava/io/File;
    .restart local v5       #sdPath:Ljava/io/File;
    :cond_1f
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    move-result v2

    .line 492
    .local v2, result:I
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 493
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 495
    :cond_3c
    if-nez v2, :cond_41

    .line 496
    const/4 v6, 0x1

    .end local v2           #result:I
    .end local v3           #sdExternalPath:Ljava/io/File;
    .end local v4           #sdInternalPath:Ljava/io/File;
    .end local v5           #sdPath:Ljava/io/File;
    :goto_3f
    move v7, v6

    .line 508
    goto :goto_1e

    .line 498
    .restart local v2       #result:I
    .restart local v3       #sdExternalPath:Ljava/io/File;
    .restart local v4       #sdInternalPath:Ljava/io/File;
    .restart local v5       #sdPath:Ljava/io/File;
    :cond_41
    const-string v7, "DeviceStorageUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Oops!!! Unable to mount media - error code : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_59} :catch_5a

    goto :goto_3f

    .line 505
    .end local v2           #result:I
    .end local v3           #sdExternalPath:Ljava/io/File;
    .end local v4           #sdInternalPath:Ljava/io/File;
    .end local v5           #sdPath:Ljava/io/File;
    :catch_5a
    move-exception v0

    .line 506
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3f

    .line 502
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_5f
    :try_start_5f
    const-string v7, "DeviceStorageUtil"

    const-string v8, "Oops!!! Mount service is null, can\'t mount"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_66} :catch_5a

    goto :goto_3f
.end method

.method private unmountSdCard(Z)Z
    .registers 7
    .parameter "force"

    .prologue
    .line 463
    const/4 v3, 0x0

    .line 464
    .local v3, success:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 465
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->getSdCardPath()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, extStoragePath:Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_e
    invoke-interface {v2, v1, p1, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_13

    .line 469
    const/4 v3, 0x1

    .line 475
    :goto_12
    return v3

    .line 470
    :catch_13
    move-exception v0

    .line 472
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 473
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method


# virtual methods
.method public formatSdCard()V
    .registers 11

    .prologue
    .line 512
    monitor-enter p0

    .line 513
    const/4 v7, 0x0

    :try_start_2
    iput-boolean v7, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->success:Z

    .line 514
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->finished:Z

    .line 516
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_5d

    move-result-wide v5

    .line 518
    .local v5, token:J
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->disconnectSdCardOperations()V

    .line 519
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    .line 520
    .local v4, service:Landroid/os/storage/IMountService;
    if-eqz v4, :cond_e0

    .line 521
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->isSdCardMounted()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->isPreMounted:Z

    .line 522
    iget-boolean v7, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->isPreMounted:Z

    if-eqz v7, :cond_87

    .line 525
    const-string v7, "DeviceStorageUtil"

    const-string v8, "SDcard is mounted, will try to unmount it first!!!"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->unmountSdCard(Z)Z

    move-result v2

    .line 528
    .local v2, retSuccess:Z
    if-nez v2, :cond_43

    .line 529
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "DeviceStorageUtil: Unable to unMount SDCard."

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_34} :catch_34

    .line 581
    .end local v2           #retSuccess:Z
    .end local v4           #service:Landroid/os/storage/IMountService;
    :catch_34
    move-exception v0

    .line 582
    .local v0, e:Ljava/lang/Exception;
    :try_start_35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_58

    .line 584
    :try_start_38
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 586
    .end local v0           #e:Ljava/lang/Exception;
    :goto_3b
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->finished:Z

    .line 587
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 588
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_5d

    .line 589
    return-void

    .line 533
    .restart local v2       #retSuccess:Z
    .restart local v4       #service:Landroid/os/storage/IMountService;
    :cond_43
    const/4 v3, 0x0

    .line 534
    .local v3, retryCount:I
    :goto_44
    :try_start_44
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->isSdCardMounted()Z

    move-result v7

    if-nez v7, :cond_60

    .line 542
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->isSdCardMounted()Z

    move-result v7

    if-eqz v7, :cond_80

    .line 543
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "DeviceStorageUtil: Unable to unMount SDCard, Wait time over. :-("

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_58
    .catchall {:try_start_44 .. :try_end_58} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_58} :catch_34

    .line 584
    .end local v2           #retSuccess:Z
    .end local v3           #retryCount:I
    .end local v4           #service:Landroid/os/storage/IMountService;
    :catchall_58
    move-exception v7

    :try_start_59
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 588
    .end local v5           #token:J
    :catchall_5d
    move-exception v7

    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_5d

    throw v7

    .line 537
    .restart local v2       #retSuccess:Z
    .restart local v3       #retryCount:I
    .restart local v4       #service:Landroid/os/storage/IMountService;
    .restart local v5       #token:J
    :cond_60
    :try_start_60
    const-string v7, "DeviceStorageUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SDcard not yet Unmounted : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 533
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 547
    :cond_80
    const-string v7, "DeviceStorageUtil"

    const-string v8, "SDcard is Unmounted successfully :-)"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_60 .. :try_end_87} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_87} :catch_34

    .line 551
    .end local v2           #retSuccess:Z
    .end local v3           #retryCount:I
    :cond_87
    :try_start_87
    const-string v7, "DeviceStorageUtil"

    const-string v8, "Let\'s try to format it!!!"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->getSdCardPath()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    move-result v1

    .line 554
    .local v1, result:I
    if-nez v1, :cond_bb

    .line 555
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->success:Z

    .line 556
    const-string v7, "DeviceStorageUtil"

    const-string v8, "SDcard is formatted successfully :-)"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-boolean v7, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->isPreMounted:Z

    if-eqz v7, :cond_b7

    .line 561
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mountSdCard()Z

    move-result v2

    .line 562
    .restart local v2       #retSuccess:Z
    if-nez v2, :cond_b7

    .line 563
    const-string v7, "DeviceStorageUtil"

    const-string v8, "Unable to mount SDcard. :-("

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b7
    .catchall {:try_start_87 .. :try_end_b7} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_b7} :catch_d4

    .line 584
    .end local v1           #result:I
    .end local v2           #retSuccess:Z
    :cond_b7
    :goto_b7
    :try_start_b7
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_5d

    goto :goto_3b

    .line 568
    .restart local v1       #result:I
    :cond_bb
    :try_start_bb
    const-string v7, "DeviceStorageUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Oops!!! Unable to format media - error code : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d3
    .catchall {:try_start_bb .. :try_end_d3} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_d3} :catch_d4

    goto :goto_b7

    .line 572
    .end local v1           #result:I
    :catch_d4
    move-exception v0

    .line 573
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_d5
    const-string v7, "DeviceStorageUtil"

    const-string v8, "Unable to invoke IMountService.formatMedia()"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b7

    .line 578
    .end local v0           #e:Ljava/lang/Exception;
    :cond_e0
    const-string v7, "DeviceStorageUtil"

    const-string v8, "Unable to locate IMountService"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e7
    .catchall {:try_start_d5 .. :try_end_e7} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_e7} :catch_34

    goto :goto_b7
.end method
