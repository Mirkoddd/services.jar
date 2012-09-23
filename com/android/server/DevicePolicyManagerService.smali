.class public Lcom/android/server/DevicePolicyManagerService;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DevicePolicyManagerService$MyPackageMonitor;,
        Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    }
.end annotation


# static fields
.field protected static final ACTION_EXPIRED_PASSWORD_NOTIFICATION:Ljava/lang/String; = "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

.field private static final EXPIRATION_GRACE_PERIOD_MS:J = 0x19bfcc00L

.field private static final MS_PER_DAY:J = 0x5265c00L

.field private static final REQUEST_EXPIRE_PASSWORD:I = 0x15c3

.field public static final SYSTEM_PROP_DISABLE_CAMERA:Ljava/lang/String; = "sys.secpolicy.camera.disabled"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"


# instance fields
.field mActivePasswordLength:I

.field mActivePasswordLetters:I

.field mActivePasswordLowerCase:I

.field mActivePasswordNonLetter:I

.field mActivePasswordNumeric:I

.field mActivePasswordQuality:I

.field mActivePasswordRecoverable:Z

.field mActivePasswordSymbols:I

.field mActivePasswordUpperCase:I

.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mFailedPasswordAttempts:I

.field mHandler:Landroid/os/Handler;

.field mIPowerManager:Landroid/os/IPowerManager;

.field mIWindowManager:Landroid/view/IWindowManager;

.field final mMonitor:Lcom/android/server/DevicePolicyManagerService$MyPackageMonitor;

.field mNotifyChanges:Z

.field mPasswordOwner:I

.field mReceiver:Landroid/content/BroadcastReceiver;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 596
    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    .line 97
    iput v1, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    .line 98
    iput v1, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    .line 99
    iput v1, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordUpperCase:I

    .line 100
    iput v1, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLowerCase:I

    .line 101
    iput v1, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLetters:I

    .line 102
    iput v1, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordNumeric:I

    .line 103
    iput v1, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordSymbols:I

    .line 104
    iput v1, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordNonLetter:I

    .line 105
    iput v1, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    .line 107
    iput-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordRecoverable:Z

    .line 112
    iput-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    .line 115
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    .line 116
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    .line 121
    new-instance v1, Lcom/android/server/DevicePolicyManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DevicePolicyManagerService$1;-><init>(Lcom/android/server/DevicePolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 597
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 598
    new-instance v1, Lcom/android/server/DevicePolicyManagerService$MyPackageMonitor;

    invoke-direct {v1, p0}, Lcom/android/server/DevicePolicyManagerService$MyPackageMonitor;-><init>(Lcom/android/server/DevicePolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mMonitor:Lcom/android/server/DevicePolicyManagerService$MyPackageMonitor;

    .line 599
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mMonitor:Lcom/android/server/DevicePolicyManagerService$MyPackageMonitor;

    invoke-virtual {v1, p1, v3}, Lcom/android/server/DevicePolicyManagerService$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 600
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "DPM"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 602
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 603
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 604
    const-string v1, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 605
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 606
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DevicePolicyManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->handlePasswordExpirationNotification()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DevicePolicyManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DevicePolicyManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxy()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DevicePolicyManagerService;)Landroid/os/IPowerManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptionStatus()I
    .registers 4

    .prologue
    .line 2682
    const-string v1, "ro.crypto.state"

    const-string v2, "unsupported"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2683
    .local v0, status:Ljava/lang/String;
    const-string v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2684
    const/4 v1, 0x3

    .line 2688
    :goto_11
    return v1

    .line 2685
    :cond_12
    const-string v1, "unencrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2686
    const/4 v1, 0x1

    goto :goto_11

    .line 2688
    :cond_1c
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private getIPowerManager()Landroid/os/IPowerManager;
    .registers 3

    .prologue
    .line 646
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_10

    .line 647
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 648
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    .line 650
    .end local v0           #b:Landroid/os/IBinder;
    :cond_10
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    return-object v1
.end method

.method private getPasswordExpirationLocked(Landroid/content/ComponentName;)J
    .registers 11
    .parameter "who"

    .prologue
    const-wide/16 v5, 0x0

    .line 1400
    if-eqz p1, :cond_d

    .line 1401
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1402
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_c

    iget-wide v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 1413
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_c
    :goto_c
    return-wide v5

    .line 1404
    :cond_d
    const-wide/16 v3, 0x0

    .line 1405
    .local v3, timeout:J
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1406
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v0, :cond_35

    .line 1407
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1408
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v7, v3, v5

    if-eqz v7, :cond_30

    iget-wide v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_32

    iget-wide v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v7, v3, v7

    if-lez v7, :cond_32

    .line 1410
    :cond_30
    iget-wide v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 1406
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_35
    move-wide v5, v3

    .line 1413
    goto :goto_c
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .registers 3

    .prologue
    .line 653
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_10

    .line 654
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 655
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 657
    .end local v0           #b:Landroid/os/IBinder;
    :cond_10
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private handlePasswordExpirationNotification()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    .line 1075
    monitor-enter p0

    .line 1076
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1077
    .local v4, now:J
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1078
    .local v0, N:I
    if-gtz v0, :cond_11

    .line 1079
    monitor-exit p0

    .line 1098
    :goto_10
    return-void

    .line 1081
    :cond_11
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    if-ge v2, v0, :cond_61

    .line 1082
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1083
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_5e

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_5e

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_5e

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/32 v8, 0x19bfcc00

    sub-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-ltz v6, :cond_5e

    .line 1087
    const-string v6, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p0, v1, v6}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 1089
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.server.MDM_PASSWORD_EXPIRING_NOTIFICATION"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "pkgName"

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
    const-string v6, "expiration"

    iget-wide v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1092
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1081
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1096
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_61
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;)V

    .line 1097
    monitor-exit p0

    goto :goto_10

    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #now:J
    :catchall_68
    move-exception v6

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_68

    throw v6
.end method

.method private isEncryptionSupported()Z
    .registers 2

    .prologue
    .line 2673
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isExtStorageEncrypted()Z
    .registers 3

    .prologue
    .line 2364
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2365
    .local v0, state:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private loadSettingsLocked()V
    .registers 26

    .prologue
    .line 863
    invoke-static {}, Lcom/android/server/DevicePolicyManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v8

    .line 864
    .local v8, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v14, 0x0

    .line 865
    .local v14, stream:Ljava/io/FileInputStream;
    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v7

    .line 867
    .local v7, file:Ljava/io/File;
    :try_start_9
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_e} :catch_45d
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_e} :catch_45a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_e} :catch_457
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_e} :catch_454
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_451
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_e} :catch_44f

    .line 868
    .end local v14           #stream:Ljava/io/FileInputStream;
    .local v15, stream:Ljava/io/FileInputStream;
    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 869
    .local v11, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-interface {v11, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 872
    :cond_19
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, type:I
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_2d

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 874
    :cond_2d
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 875
    .local v16, tag:Ljava/lang/String;
    const-string v21, "policies"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_3a} :catch_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_3a} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_3a} :catch_23a
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_3a} :catch_28b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_3a} :catch_3ba
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_3a} :catch_3ed

    move-result v21

    if-nez v21, :cond_141

    .line 877
    if-eqz v15, :cond_42

    .line 878
    :try_start_3f
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_449
    .catch Ljava/lang/NullPointerException; {:try_start_3f .. :try_end_42} :catch_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_42} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f .. :try_end_42} :catch_23a
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_42} :catch_28b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3f .. :try_end_42} :catch_3ed

    .line 881
    :cond_42
    :goto_42
    :try_start_42
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Settings do not start with policies tag: found "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_5f
    .catch Ljava/lang/NullPointerException; {:try_start_42 .. :try_end_5f} :catch_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_5f} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_5f} :catch_23a
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_5f} :catch_28b
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_5f} :catch_3ba
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_42 .. :try_end_5f} :catch_3ed

    .line 961
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v16           #tag:Ljava/lang/String;
    .end local v19           #type:I
    :catch_5f
    move-exception v6

    move-object v14, v15

    .line 962
    .end local v15           #stream:Ljava/io/FileInputStream;
    .local v6, e:Ljava/lang/NullPointerException;
    .restart local v14       #stream:Ljava/io/FileInputStream;
    :goto_61
    const-string v21, "DevicePolicyManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed parsing "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    .end local v6           #e:Ljava/lang/NullPointerException;
    :goto_87
    if-eqz v14, :cond_8c

    .line 976
    :try_start_89
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_44c

    .line 985
    :cond_8c
    :goto_8c
    new-instance v20, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 986
    .local v20, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_11b

    .line 987
    const-string v21, "DevicePolicyManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Active password quality 0x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " does not match actual quality 0x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    .line 992
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    .line 993
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordUpperCase:I

    .line 994
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLowerCase:I

    .line 995
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLetters:I

    .line 996
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordNumeric:I

    .line 997
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordSymbols:I

    .line 998
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordNonLetter:I

    .line 1000
    :cond_11b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked()V

    .line 1001
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked()V

    .line 1002
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v17

    .line 1003
    .local v17, timeMs:J
    const-wide/16 v21, 0x0

    cmp-long v21, v17, v21

    if-gtz v21, :cond_134

    .line 1004
    const-wide/32 v17, 0x7fffffff

    .line 1007
    :cond_134
    :try_start_134
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v21

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Landroid/os/IPowerManager;->setMaximumScreenOffTimeount(I)V
    :try_end_140
    .catch Landroid/os/RemoteException; {:try_start_134 .. :try_end_140} :catch_43b

    .line 1011
    :goto_140
    return-void

    .line 884
    .end local v14           #stream:Ljava/io/FileInputStream;
    .end local v17           #timeMs:J
    .end local v20           #utils:Lcom/android/internal/widget/LockPatternUtils;
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15       #stream:Ljava/io/FileInputStream;
    .restart local v16       #tag:Ljava/lang/String;
    .restart local v19       #type:I
    :cond_141
    :try_start_141
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .line 885
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 887
    .local v10, outerDepth:I
    :cond_149
    :goto_149
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_438

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_165

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v10, :cond_438

    .line 888
    :cond_165
    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_149

    const/16 v21, 0x4

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_149

    .line 891
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 892
    const-string v21, "admin"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_213

    .line 893
    const/16 v21, 0x0

    const-string v22, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_190
    .catch Ljava/lang/NullPointerException; {:try_start_141 .. :try_end_190} :catch_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_141 .. :try_end_190} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_141 .. :try_end_190} :catch_23a
    .catch Ljava/io/FileNotFoundException; {:try_start_141 .. :try_end_190} :catch_28b
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_190} :catch_3ba
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_141 .. :try_end_190} :catch_3ed

    move-result-object v9

    .line 895
    .local v9, name:Ljava/lang/String;
    :try_start_191
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v5

    .line 897
    .local v5, dai:Landroid/app/admin/DeviceAdminInfo;
    if-eqz v5, :cond_149

    .line 898
    new-instance v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v4, v5}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 899
    .local v4, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v4, v11}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c7
    .catch Ljava/lang/RuntimeException; {:try_start_191 .. :try_end_1c7} :catch_1c8
    .catch Ljava/lang/NullPointerException; {:try_start_191 .. :try_end_1c7} :catch_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_191 .. :try_end_1c7} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_191 .. :try_end_1c7} :catch_23a
    .catch Ljava/io/FileNotFoundException; {:try_start_191 .. :try_end_1c7} :catch_28b
    .catch Ljava/io/IOException; {:try_start_191 .. :try_end_1c7} :catch_3ba
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_191 .. :try_end_1c7} :catch_3ed

    goto :goto_149

    .line 903
    .end local v4           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v5           #dai:Landroid/app/admin/DeviceAdminInfo;
    :catch_1c8
    move-exception v6

    .line 904
    .local v6, e:Ljava/lang/RuntimeException;
    :try_start_1c9
    const-string v21, "DevicePolicyManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed loading admin "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e7
    .catch Ljava/lang/NullPointerException; {:try_start_1c9 .. :try_end_1e7} :catch_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_1c9 .. :try_end_1e7} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c9 .. :try_end_1e7} :catch_23a
    .catch Ljava/io/FileNotFoundException; {:try_start_1c9 .. :try_end_1e7} :catch_28b
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1e7} :catch_3ba
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c9 .. :try_end_1e7} :catch_3ed

    goto/16 :goto_149

    .line 963
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #outerDepth:I
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v16           #tag:Ljava/lang/String;
    .end local v19           #type:I
    :catch_1e9
    move-exception v6

    move-object v14, v15

    .line 964
    .end local v15           #stream:Ljava/io/FileInputStream;
    .local v6, e:Ljava/lang/NumberFormatException;
    .restart local v14       #stream:Ljava/io/FileInputStream;
    :goto_1eb
    const-string v21, "DevicePolicyManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed parsing "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_87

    .line 906
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .end local v14           #stream:Ljava/io/FileInputStream;
    .restart local v10       #outerDepth:I
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15       #stream:Ljava/io/FileInputStream;
    .restart local v16       #tag:Ljava/lang/String;
    .restart local v19       #type:I
    :cond_213
    :try_start_213
    const-string v21, "failed-password-attempts"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_264

    .line 907
    const/16 v21, 0x0

    const-string v22, "value"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    .line 909
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_238
    .catch Ljava/lang/NullPointerException; {:try_start_213 .. :try_end_238} :catch_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_213 .. :try_end_238} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_213 .. :try_end_238} :catch_23a
    .catch Ljava/io/FileNotFoundException; {:try_start_213 .. :try_end_238} :catch_28b
    .catch Ljava/io/IOException; {:try_start_213 .. :try_end_238} :catch_3ba
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_213 .. :try_end_238} :catch_3ed

    goto/16 :goto_149

    .line 965
    .end local v10           #outerDepth:I
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v16           #tag:Ljava/lang/String;
    .end local v19           #type:I
    :catch_23a
    move-exception v6

    move-object v14, v15

    .line 966
    .end local v15           #stream:Ljava/io/FileInputStream;
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v14       #stream:Ljava/io/FileInputStream;
    :goto_23c
    const-string v21, "DevicePolicyManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed parsing "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_87

    .line 910
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v14           #stream:Ljava/io/FileInputStream;
    .restart local v10       #outerDepth:I
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15       #stream:Ljava/io/FileInputStream;
    .restart local v16       #tag:Ljava/lang/String;
    .restart local v19       #type:I
    :cond_264
    :try_start_264
    const-string v21, "password-owner"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_28f

    .line 911
    const/16 v21, 0x0

    const-string v22, "value"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    .line 913
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_149

    .line 967
    .end local v10           #outerDepth:I
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v16           #tag:Ljava/lang/String;
    .end local v19           #type:I
    :catch_28b
    move-exception v21

    move-object v14, v15

    .end local v15           #stream:Ljava/io/FileInputStream;
    .restart local v14       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_87

    .line 914
    .end local v14           #stream:Ljava/io/FileInputStream;
    .restart local v10       #outerDepth:I
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15       #stream:Ljava/io/FileInputStream;
    .restart local v16       #tag:Ljava/lang/String;
    .restart local v19       #type:I
    :cond_28f
    const-string v21, "active-password"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_417

    .line 915
    const/16 v21, 0x0

    const-string v22, "quality"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    .line 917
    const/16 v21, 0x0

    const-string v22, "length"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    .line 919
    const/16 v21, 0x0

    const-string v22, "uppercase"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordUpperCase:I

    .line 921
    const/16 v21, 0x0

    const-string v22, "lowercase"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLowerCase:I

    .line 923
    const/16 v21, 0x0

    const-string v22, "letters"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLetters:I

    .line 925
    const/16 v21, 0x0

    const-string v22, "numeric"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordNumeric:I

    .line 927
    const/16 v21, 0x0

    const-string v22, "symbols"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordSymbols:I

    .line 929
    const/16 v21, 0x0

    const-string v22, "nonletter"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordNonLetter:I

    .line 932
    const/16 v21, 0x0

    const-string v22, "recoverable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordRecoverable:Z

    .line 938
    const-wide/16 v21, -0x1

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_366
    .catch Ljava/lang/NullPointerException; {:try_start_264 .. :try_end_366} :catch_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_264 .. :try_end_366} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_264 .. :try_end_366} :catch_23a
    .catch Ljava/io/FileNotFoundException; {:try_start_264 .. :try_end_366} :catch_28b
    .catch Ljava/io/IOException; {:try_start_264 .. :try_end_366} :catch_3ba
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_264 .. :try_end_366} :catch_3ed

    move-result-object v13

    .line 940
    .local v13, pwExpirationDate:Ljava/lang/Long;
    const/16 v21, 0x0

    :try_start_369
    const-string v22, "expires"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 942
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-eqz v21, :cond_3b5

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "alarm"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 944
    .local v3, am:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x15c3

    new-instance v23, Landroid/content/Intent;

    const-string v24, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v24, 0x4800

    invoke-static/range {v21 .. v24}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 947
    .local v12, pi:Landroid/app/PendingIntent;
    const/16 v21, 0x1

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v3, v0, v1, v2, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_3b5
    .catch Ljava/lang/Exception; {:try_start_369 .. :try_end_3b5} :catch_3e4
    .catch Ljava/lang/NullPointerException; {:try_start_369 .. :try_end_3b5} :catch_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_369 .. :try_end_3b5} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_369 .. :try_end_3b5} :catch_23a
    .catch Ljava/io/FileNotFoundException; {:try_start_369 .. :try_end_3b5} :catch_28b
    .catch Ljava/io/IOException; {:try_start_369 .. :try_end_3b5} :catch_3ba
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_369 .. :try_end_3b5} :catch_3ed

    .line 954
    .end local v3           #am:Landroid/app/AlarmManager;
    .end local v12           #pi:Landroid/app/PendingIntent;
    :cond_3b5
    :goto_3b5
    :try_start_3b5
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3b8
    .catch Ljava/lang/NullPointerException; {:try_start_3b5 .. :try_end_3b8} :catch_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_3b5 .. :try_end_3b8} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3b5 .. :try_end_3b8} :catch_23a
    .catch Ljava/io/FileNotFoundException; {:try_start_3b5 .. :try_end_3b8} :catch_28b
    .catch Ljava/io/IOException; {:try_start_3b5 .. :try_end_3b8} :catch_3ba
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3b5 .. :try_end_3b8} :catch_3ed

    goto/16 :goto_149

    .line 969
    .end local v10           #outerDepth:I
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #pwExpirationDate:Ljava/lang/Long;
    .end local v16           #tag:Ljava/lang/String;
    .end local v19           #type:I
    :catch_3ba
    move-exception v6

    move-object v14, v15

    .line 970
    .end local v15           #stream:Ljava/io/FileInputStream;
    .local v6, e:Ljava/io/IOException;
    .restart local v14       #stream:Ljava/io/FileInputStream;
    :goto_3bc
    const-string v21, "DevicePolicyManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed parsing "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_87

    .line 949
    .end local v6           #e:Ljava/io/IOException;
    .end local v14           #stream:Ljava/io/FileInputStream;
    .restart local v10       #outerDepth:I
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13       #pwExpirationDate:Ljava/lang/Long;
    .restart local v15       #stream:Ljava/io/FileInputStream;
    .restart local v16       #tag:Ljava/lang/String;
    .restart local v19       #type:I
    :catch_3e4
    move-exception v6

    .line 950
    .local v6, e:Ljava/lang/Exception;
    :try_start_3e5
    const-string v21, "DevicePolicyManagerService"

    const-string v22, "There is no expires tag in active-password - just ignore!"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ec
    .catch Ljava/lang/NullPointerException; {:try_start_3e5 .. :try_end_3ec} :catch_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_3e5 .. :try_end_3ec} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3e5 .. :try_end_3ec} :catch_23a
    .catch Ljava/io/FileNotFoundException; {:try_start_3e5 .. :try_end_3ec} :catch_28b
    .catch Ljava/io/IOException; {:try_start_3e5 .. :try_end_3ec} :catch_3ba
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3e5 .. :try_end_3ec} :catch_3ed

    goto :goto_3b5

    .line 971
    .end local v6           #e:Ljava/lang/Exception;
    .end local v10           #outerDepth:I
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #pwExpirationDate:Ljava/lang/Long;
    .end local v16           #tag:Ljava/lang/String;
    .end local v19           #type:I
    :catch_3ed
    move-exception v6

    move-object v14, v15

    .line 972
    .end local v15           #stream:Ljava/io/FileInputStream;
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v14       #stream:Ljava/io/FileInputStream;
    :goto_3ef
    const-string v21, "DevicePolicyManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed parsing "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_87

    .line 957
    .end local v6           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v14           #stream:Ljava/io/FileInputStream;
    .restart local v10       #outerDepth:I
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15       #stream:Ljava/io/FileInputStream;
    .restart local v16       #tag:Ljava/lang/String;
    .restart local v19       #type:I
    :cond_417
    :try_start_417
    const-string v21, "DevicePolicyManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unknown tag: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_436
    .catch Ljava/lang/NullPointerException; {:try_start_417 .. :try_end_436} :catch_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_417 .. :try_end_436} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_417 .. :try_end_436} :catch_23a
    .catch Ljava/io/FileNotFoundException; {:try_start_417 .. :try_end_436} :catch_28b
    .catch Ljava/io/IOException; {:try_start_417 .. :try_end_436} :catch_3ba
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_417 .. :try_end_436} :catch_3ed

    goto/16 :goto_149

    :cond_438
    move-object v14, v15

    .line 973
    .end local v15           #stream:Ljava/io/FileInputStream;
    .restart local v14       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_87

    .line 1008
    .end local v10           #outerDepth:I
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v16           #tag:Ljava/lang/String;
    .end local v19           #type:I
    .restart local v17       #timeMs:J
    .restart local v20       #utils:Lcom/android/internal/widget/LockPatternUtils;
    :catch_43b
    move-exception v6

    .line 1009
    .local v6, e:Landroid/os/RemoteException;
    const-string v21, "DevicePolicyManagerService"

    const-string v22, "Failure talking with power manager"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_140

    .line 880
    .end local v6           #e:Landroid/os/RemoteException;
    .end local v14           #stream:Ljava/io/FileInputStream;
    .end local v17           #timeMs:J
    .end local v20           #utils:Lcom/android/internal/widget/LockPatternUtils;
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15       #stream:Ljava/io/FileInputStream;
    .restart local v16       #tag:Ljava/lang/String;
    .restart local v19       #type:I
    :catch_449
    move-exception v21

    goto/16 :goto_42

    .line 978
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v15           #stream:Ljava/io/FileInputStream;
    .end local v16           #tag:Ljava/lang/String;
    .end local v19           #type:I
    .restart local v14       #stream:Ljava/io/FileInputStream;
    :catch_44c
    move-exception v21

    goto/16 :goto_8c

    .line 971
    :catch_44f
    move-exception v6

    goto :goto_3ef

    .line 969
    :catch_451
    move-exception v6

    goto/16 :goto_3bc

    .line 967
    :catch_454
    move-exception v21

    goto/16 :goto_87

    .line 965
    :catch_457
    move-exception v6

    goto/16 :goto_23c

    .line 963
    :catch_45a
    move-exception v6

    goto/16 :goto_1eb

    .line 961
    :catch_45d
    move-exception v6

    goto/16 :goto_61
.end method

.method private static makeJournaledFile()Lcom/android/internal/util/JournaledFile;
    .registers 5

    .prologue
    .line 783
    const-string v0, "/data/system/device_policies.xml"

    .line 784
    .local v0, base:Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/device_policies.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/device_policies.xml.tmp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private resetGlobalProxy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2567
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2568
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v0, :cond_21

    .line 2569
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2570
    .local v1, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v3, :cond_1e

    .line 2571
    iget-object v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->saveGlobalProxy(Ljava/lang/String;Ljava/lang/String;)V

    .line 2577
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1d
    return-void

    .line 2568
    .restart local v1       #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2576
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_21
    invoke-direct {p0, v4, v4}, Lcom/android/server/DevicePolicyManagerService;->saveGlobalProxy(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private saveGlobalProxy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "proxySpec"
    .parameter "exclusionList"

    .prologue
    const/4 v4, 0x1

    .line 2579
    if-nez p2, :cond_5

    .line 2580
    const-string p2, ""

    .line 2582
    :cond_5
    if-nez p1, :cond_9

    .line 2583
    const-string p1, ""

    .line 2586
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2587
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2588
    .local v0, data:[Ljava/lang/String;
    const/16 v1, 0x1f90

    .line 2589
    .local v1, proxyPort:I
    array-length v3, v0

    if-le v3, v4, :cond_1f

    .line 2591
    const/4 v3, 0x1

    :try_start_19
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_1e} :catch_3c

    move-result v1

    .line 2594
    :cond_1f
    :goto_1f
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2595
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2596
    .local v2, res:Landroid/content/ContentResolver;
    const-string v3, "global_http_proxy_host"

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2597
    const-string v3, "global_http_proxy_port"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2598
    const-string v3, "global_http_proxy_exclusion_list"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2600
    return-void

    .line 2592
    .end local v2           #res:Landroid/content/ContentResolver;
    :catch_3c
    move-exception v3

    goto :goto_1f
.end method

.method private saveSettingsLocked()V
    .registers 12

    .prologue
    .line 787
    invoke-static {}, Lcom/android/server/DevicePolicyManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    .line 788
    .local v4, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v6, 0x0

    .line 790
    .local v6, stream:Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_145

    .line 791
    .end local v6           #stream:Ljava/io/FileOutputStream;
    .local v7, stream:Ljava/io/FileOutputStream;
    :try_start_f
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 792
    .local v5, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v8, "utf-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 793
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 794
    const/4 v8, 0x0

    const-string v9, "policies"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 795
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 796
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2f
    if-ge v3, v0, :cond_5d

    .line 797
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 798
    .local v1, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_5a

    .line 799
    const/4 v8, 0x0

    const-string v9, "admin"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 800
    const/4 v8, 0x0

    const-string v9, "name"

    iget-object v10, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v10}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 801
    invoke-virtual {v1, v5}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 802
    const/4 v8, 0x0

    const-string v9, "admin"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 796
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 805
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_5d
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    if-ltz v8, :cond_79

    .line 806
    const/4 v8, 0x0

    const-string v9, "password-owner"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 807
    const/4 v8, 0x0

    const-string v9, "value"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 808
    const/4 v8, 0x0

    const-string v9, "password-owner"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 810
    :cond_79
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    if-eqz v8, :cond_95

    .line 811
    const/4 v8, 0x0

    const-string v9, "failed-password-attempts"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 812
    const/4 v8, 0x0

    const-string v9, "value"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 813
    const/4 v8, 0x0

    const-string v9, "failed-password-attempts"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 815
    :cond_95
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    if-nez v8, :cond_b9

    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    if-nez v8, :cond_b9

    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordUpperCase:I

    if-nez v8, :cond_b9

    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLowerCase:I

    if-nez v8, :cond_b9

    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLetters:I

    if-nez v8, :cond_b9

    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordNumeric:I

    if-nez v8, :cond_b9

    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordSymbols:I

    if-nez v8, :cond_b9

    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordNonLetter:I

    if-nez v8, :cond_b9

    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordRecoverable:Z

    if-eqz v8, :cond_131

    .line 821
    :cond_b9
    const/4 v8, 0x0

    const-string v9, "active-password"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 822
    const/4 v8, 0x0

    const-string v9, "quality"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 823
    const/4 v8, 0x0

    const-string v9, "length"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 824
    const/4 v8, 0x0

    const-string v9, "uppercase"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordUpperCase:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 825
    const/4 v8, 0x0

    const-string v9, "lowercase"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLowerCase:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 826
    const/4 v8, 0x0

    const-string v9, "letters"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLetters:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 827
    const/4 v8, 0x0

    const-string v9, "numeric"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordNumeric:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 829
    const/4 v8, 0x0

    const-string v9, "symbols"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordSymbols:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 830
    const/4 v8, 0x0

    const-string v9, "nonletter"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordNonLetter:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 832
    const/4 v8, 0x0

    const-string v9, "recoverable"

    iget-boolean v10, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordRecoverable:Z

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 833
    const/4 v8, 0x0

    const-string v9, "active-password"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 836
    :cond_131
    const/4 v8, 0x0

    const-string v9, "policies"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 837
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 838
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 839
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->commit()V

    .line 840
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->sendChangedNotification()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_143} :catch_151

    move-object v6, v7

    .line 851
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .restart local v6       #stream:Ljava/io/FileOutputStream;
    :goto_144
    return-void

    .line 841
    :catch_145
    move-exception v2

    .line 843
    .local v2, e:Ljava/io/IOException;
    :goto_146
    if-eqz v6, :cond_14b

    .line 844
    :try_start_148
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_14b} :catch_14f

    .line 849
    :cond_14b
    :goto_14b
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_144

    .line 846
    :catch_14f
    move-exception v8

    goto :goto_14b

    .line 841
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #stream:Ljava/io/FileOutputStream;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :catch_151
    move-exception v2

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileOutputStream;
    .restart local v6       #stream:Ljava/io/FileOutputStream;
    goto :goto_146
.end method

.method private sendChangedNotification()V
    .registers 3

    .prologue
    .line 854
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    if-nez v1, :cond_5

    .line 861
    :goto_4
    return-void

    .line 858
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 859
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 860
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method private setEncryptionRequested(Z)V
    .registers 2
    .parameter "encrypt"

    .prologue
    .line 2695
    return-void
.end method

.method private updatePasswordExpirationsLocked()V
    .registers 12

    .prologue
    const-wide/16 v7, 0x0

    .line 2461
    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2462
    .local v0, N:I
    if-lez v0, :cond_34

    .line 2463
    const/4 v4, 0x0

    .local v4, i:I
    :goto_b
    if-ge v4, v0, :cond_31

    .line 2464
    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2465
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v9, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 2466
    iget-wide v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 2467
    .local v5, timeout:J
    cmp-long v9, v5, v7

    if-lez v9, :cond_2f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    add-long v2, v5, v9

    .line 2468
    .local v2, expiration:J
    :goto_2a
    iput-wide v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2463
    .end local v2           #expiration:J
    .end local v5           #timeout:J
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .restart local v5       #timeout:J
    :cond_2f
    move-wide v2, v7

    .line 2467
    goto :goto_2a

    .line 2471
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v5           #timeout:J
    :cond_31
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 2473
    .end local v4           #i:I
    :cond_34
    return-void
.end method

.method static validateQualityConstant(I)V
    .registers 4
    .parameter "quality"

    .prologue
    .line 1013
    sparse-switch p0, :sswitch_data_22

    .line 1024
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid quality constant: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1022
    :sswitch_20
    return-void

    .line 1013
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_20
        0x8000 -> :sswitch_20
        0x9000 -> :sswitch_20
        0x10000 -> :sswitch_20
        0x20000 -> :sswitch_20
        0x40000 -> :sswitch_20
        0x50000 -> :sswitch_20
        0x60000 -> :sswitch_20
    .end sparse-switch
.end method


# virtual methods
.method public checkPassword(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 10
    .parameter "who"
    .parameter "password"

    .prologue
    .line 2285
    monitor-enter p0

    .line 2286
    if-nez p1, :cond_e

    .line 2287
    :try_start_3
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2301
    :catchall_b
    move-exception v5

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v5

    .line 2289
    :cond_e
    const/16 v5, 0x9

    :try_start_10
    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2292
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_b

    move-result-wide v1

    .line 2294
    .local v1, ident:J
    :try_start_18
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2295
    .local v3, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v4

    .line 2297
    .local v4, mRecoveryPassword:Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_2c

    move-result v5

    .line 2299
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2297
    monitor-exit p0

    return v5

    .line 2299
    .end local v3           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v4           #mRecoveryPassword:Ljava/lang/String;
    :catchall_2c
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_b
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2785
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_33

    .line 2787
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump DevicePolicyManagerService from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2819
    :goto_32
    return-void

    .line 2792
    :cond_33
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2793
    .local v3, p:Landroid/util/Printer;
    monitor-enter p0

    .line 2794
    :try_start_39
    const-string v4, "Current Device Policy Manager state:"

    invoke-interface {v3, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2795
    const-string v4, "  Enabled Device Admins:"

    invoke-interface {v3, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2796
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2797
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4a
    if-ge v2, v0, :cond_75

    .line 2798
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2799
    .local v1, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_72

    .line 2800
    const-string v4, "  "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2801
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2802
    const-string v4, "    "

    invoke-virtual {v1, v4, p2}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2797
    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 2805
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_75
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2817
    const-string v4, "  mPasswordOwner="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2818
    monitor-exit p0

    goto :goto_32

    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_86
    move-exception v4

    monitor-exit p0
    :try_end_88
    .catchall {:try_start_39 .. :try_end_88} :catchall_86

    throw v4
.end method

.method public findAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;
    .registers 9
    .parameter "adminName"

    .prologue
    const/4 v5, 0x0

    .line 765
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 766
    .local v2, resolveIntent:Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 767
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 769
    .local v1, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_36

    .line 770
    :cond_1d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 773
    :cond_36
    :try_start_36
    new-instance v4, Landroid/app/admin/DeviceAdminInfo;

    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4, v6, v3}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_44
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_44} :catch_46
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_44} :catch_61

    move-object v3, v4

    .line 779
    :goto_45
    return-object v3

    .line 774
    :catch_46
    move-exception v0

    .line 775
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 776
    goto :goto_45

    .line 777
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_61
    move-exception v0

    .line 778
    .local v0, e:Ljava/io/IOException;
    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 779
    goto :goto_45
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .registers 10
    .parameter "who"
    .parameter "reqPolicy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 671
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 672
    .local v2, callingUid:I
    if-eqz p1, :cond_8d

    .line 673
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 674
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v1, :cond_29

    .line 675
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No active admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 677
    :cond_29
    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v4

    if-eq v4, v2, :cond_56

    .line 678
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not owned by uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 681
    :cond_56
    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-nez v4, :cond_ac

    .line 682
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not specify uses-policy for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6, p2}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 688
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_8d
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 689
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_94
    if-ge v3, v0, :cond_b0

    .line 690
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 691
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v4

    if-ne v4, v2, :cond_ad

    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 692
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_ac
    return-object v1

    .line 689
    .restart local v0       #N:I
    .restart local v3       #i:I
    :cond_ad
    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    .line 695
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_b0
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No active admin owned by uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for policy #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .registers 5
    .parameter "who"

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 662
    .local v0, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 667
    .end local v0           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_2e
    return-object v0

    .restart local v0       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public getActiveAdmins()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1156
    monitor-enter p0

    .line 1157
    :try_start_1
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1158
    .local v0, N:I
    if-gtz v0, :cond_c

    .line 1159
    const/4 v2, 0x0

    monitor-exit p0

    .line 1165
    :goto_b
    return-object v2

    .line 1161
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1162
    .local v2, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_28

    .line 1163
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1165
    :cond_28
    monitor-exit p0

    goto :goto_b

    .line 1166
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_2a
    move-exception v3

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw v3
.end method

.method public getAllowBluetoothMode(Landroid/content/ComponentName;)I
    .registers 7
    .parameter "who"

    .prologue
    .line 2186
    monitor-enter p0

    .line 2187
    const/4 v3, 0x2

    .line 2189
    .local v3, value:I
    if-eqz p1, :cond_10

    .line 2190
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2191
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    :goto_c
    monitor-exit p0

    .line 2201
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 2191
    goto :goto_c

    .line 2194
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2195
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_29

    .line 2196
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2197
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    .line 2198
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    .line 2195
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2201
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_29
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 2202
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2c
    move-exception v4

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_2c

    throw v4
.end method

.method public getAllowBrowser(Landroid/content/ComponentName;)Z
    .registers 7
    .parameter "who"

    .prologue
    .line 2106
    monitor-enter p0

    .line 2107
    const/4 v3, 0x1

    .line 2109
    .local v3, value:Z
    if-eqz p1, :cond_10

    .line 2110
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2111
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    :goto_c
    monitor-exit p0

    .line 2121
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 2111
    goto :goto_c

    .line 2114
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2115
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_29

    .line 2116
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2117
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    .line 2118
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    .line 2115
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2121
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_29
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 2122
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2c
    move-exception v4

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_2c

    throw v4
.end method

.method public getAllowCamera(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 1962
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getAllowDesktopSync(Landroid/content/ComponentName;)Z
    .registers 7
    .parameter "who"

    .prologue
    .line 2225
    monitor-enter p0

    .line 2226
    const/4 v3, 0x1

    .line 2228
    .local v3, value:Z
    if-eqz p1, :cond_10

    .line 2229
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2230
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    :goto_c
    monitor-exit p0

    .line 2240
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 2230
    goto :goto_c

    .line 2233
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2234
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_29

    .line 2235
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2236
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    .line 2237
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    .line 2234
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2240
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_29
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 2241
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2c
    move-exception v4

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_2c

    throw v4
.end method

.method public getAllowInternetSharing(Landroid/content/ComponentName;)Z
    .registers 7
    .parameter "who"

    .prologue
    .line 2146
    monitor-enter p0

    .line 2147
    const/4 v3, 0x1

    .line 2149
    .local v3, value:Z
    if-eqz p1, :cond_10

    .line 2150
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2151
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    :goto_c
    monitor-exit p0

    .line 2161
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 2151
    goto :goto_c

    .line 2154
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2155
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_29

    .line 2156
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2157
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    .line 2158
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    .line 2155
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2161
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_29
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 2162
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2c
    move-exception v4

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_2c

    throw v4
.end method

.method public getAllowIrDA(Landroid/content/ComponentName;)Z
    .registers 7
    .parameter "who"

    .prologue
    .line 2265
    monitor-enter p0

    .line 2266
    const/4 v3, 0x1

    .line 2268
    .local v3, value:Z
    if-eqz p1, :cond_10

    .line 2269
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2270
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    :goto_c
    monitor-exit p0

    .line 2280
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 2270
    goto :goto_c

    .line 2273
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2274
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_29

    .line 2275
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2276
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    .line 2277
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    .line 2274
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2280
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_29
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 2281
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2c
    move-exception v4

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_2c

    throw v4
.end method

.method public getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z
    .registers 7
    .parameter "who"

    .prologue
    .line 2066
    monitor-enter p0

    .line 2067
    const/4 v3, 0x1

    .line 2069
    .local v3, value:Z
    if-eqz p1, :cond_10

    .line 2070
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2071
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    :goto_c
    monitor-exit p0

    .line 2081
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 2071
    goto :goto_c

    .line 2074
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2075
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_29

    .line 2076
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2077
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    .line 2078
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    .line 2075
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2081
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_29
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 2082
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2c
    move-exception v4

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_2c

    throw v4
.end method

.method public getAllowStorageCard(Landroid/content/ComponentName;)Z
    .registers 7
    .parameter "who"

    .prologue
    .line 1904
    monitor-enter p0

    .line 1905
    const/4 v3, 0x1

    .line 1907
    .local v3, value:Z
    if-eqz p1, :cond_10

    .line 1908
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1909
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    :goto_c
    monitor-exit p0

    .line 1919
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 1909
    goto :goto_c

    .line 1912
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1913
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_29

    .line 1914
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1915
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    .line 1916
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    .line 1913
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1919
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_29
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 1920
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2c
    move-exception v4

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_2c

    throw v4
.end method

.method public getAllowTextMessaging(Landroid/content/ComponentName;)Z
    .registers 7
    .parameter "who"

    .prologue
    .line 2026
    monitor-enter p0

    .line 2027
    const/4 v3, 0x1

    .line 2029
    .local v3, value:Z
    if-eqz p1, :cond_10

    .line 2030
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2031
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    :goto_c
    monitor-exit p0

    .line 2041
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 2031
    goto :goto_c

    .line 2034
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2035
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_29

    .line 2036
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2037
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    .line 2038
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    .line 2035
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2041
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_29
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 2042
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2c
    move-exception v4

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_2c

    throw v4
.end method

.method public getAllowWifi(Landroid/content/ComponentName;)Z
    .registers 7
    .parameter "who"

    .prologue
    .line 1986
    monitor-enter p0

    .line 1987
    const/4 v3, 0x1

    .line 1989
    .local v3, value:Z
    if-eqz p1, :cond_10

    .line 1990
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1991
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    :goto_c
    monitor-exit p0

    .line 2001
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 1991
    goto :goto_c

    .line 1994
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1995
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_29

    .line 1996
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1997
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    .line 1998
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    .line 1995
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2001
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_29
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 2002
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2c
    move-exception v4

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_2c

    throw v4
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;)Z
    .registers 7
    .parameter "who"

    .prologue
    const/4 v3, 0x0

    .line 2724
    monitor-enter p0

    .line 2725
    if-eqz p1, :cond_e

    .line 2726
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2727
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_c

    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    :cond_c
    monitor-exit p0

    .line 2737
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v3

    .line 2730
    :cond_e
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2731
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    if-ge v2, v0, :cond_2c

    .line 2732
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2733
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v4, :cond_29

    .line 2734
    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_d

    .line 2738
    .end local v0           #N:I
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v2           #i:I
    :catchall_26
    move-exception v3

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_26

    throw v3

    .line 2731
    .restart local v0       #N:I
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2       #i:I
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 2737
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_26

    goto :goto_d
.end method

.method public getCurrentFailedPasswordAttempts()I
    .registers 2

    .prologue
    .line 1633
    monitor-enter p0

    .line 1640
    :try_start_1
    iget v0, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    monitor-exit p0

    return v0

    .line 1641
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getGlobalProxyAdmin()Landroid/content/ComponentName;
    .registers 5

    .prologue
    .line 2550
    monitor-enter p0

    .line 2553
    :try_start_1
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2554
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v0, :cond_21

    .line 2555
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2556
    .local v1, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v3, :cond_1e

    .line 2559
    iget-object v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    monitor-exit p0

    .line 2564
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1d
    return-object v3

    .line 2554
    .restart local v1       #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2562
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_21
    monitor-exit p0

    .line 2564
    const/4 v3, 0x0

    goto :goto_1d

    .line 2562
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_24
    move-exception v3

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_24

    throw v3
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I
    .registers 7
    .parameter "who"

    .prologue
    .line 1658
    monitor-enter p0

    .line 1659
    const/4 v2, 0x0

    .line 1660
    .local v2, count:I
    if-eqz p1, :cond_10

    .line 1661
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1662
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    :goto_c
    monitor-exit p0

    .line 1674
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v2

    .line 1662
    goto :goto_c

    .line 1664
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1665
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_17
    if-ge v3, v0, :cond_33

    .line 1666
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1667
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v2, :cond_28

    .line 1668
    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 1665
    :cond_25
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1669
    :cond_28
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v4, :cond_25

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-le v2, v4, :cond_25

    .line 1671
    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto :goto_25

    .line 1674
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_33
    monitor-exit p0

    move v4, v2

    goto :goto_d

    .line 1675
    .end local v0           #N:I
    .end local v3           #i:I
    :catchall_36
    move-exception v4

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_36

    throw v4
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;)J
    .registers 11
    .parameter "who"

    .prologue
    const-wide/16 v7, 0x0

    .line 1821
    monitor-enter p0

    .line 1822
    const-wide/16 v3, 0x0

    .line 1823
    .local v3, time:J
    if-eqz p1, :cond_13

    .line 1824
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1825
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_11

    iget-wide v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    :goto_f
    monitor-exit p0

    .line 1837
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_10
    return-wide v5

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_11
    move-wide v5, v3

    .line 1825
    goto :goto_f

    .line 1827
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_13
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1828
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1a
    if-ge v2, v0, :cond_3c

    .line 1829
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1830
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v5, v3, v7

    if-nez v5, :cond_2d

    .line 1831
    iget-wide v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 1828
    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1832
    :cond_2d
    iget-wide v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2a

    iget-wide v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_2a

    .line 1834
    iget-wide v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto :goto_2a

    .line 1837
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3c
    monitor-exit p0

    move-wide v5, v3

    goto :goto_10

    .line 1838
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_3f
    move-exception v5

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_3f

    throw v5
.end method

.method public getMinPasswordComplexChars(Landroid/content/ComponentName;)I
    .registers 3
    .parameter "who"

    .prologue
    .line 2933
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 6
    .parameter "who"

    .prologue
    .line 2897
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "getPassword DevicePolicyManagerService returns hash"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2900
    .local v1, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 2901
    .local v0, pwd:Ljava/lang/String;
    if-eqz v0, :cond_15

    .line 2904
    .end local v0           #pwd:Ljava/lang/String;
    :goto_14
    return-object v0

    .restart local v0       #pwd:Ljava/lang/String;
    :cond_15
    const-string v0, ""

    goto :goto_14
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;)J
    .registers 4
    .parameter "who"

    .prologue
    .line 1416
    monitor-enter p0

    .line 1417
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;)J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 1418
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;)J
    .registers 11
    .parameter "who"

    .prologue
    const-wide/16 v5, 0x0

    .line 1378
    monitor-enter p0

    .line 1379
    if-eqz p1, :cond_11

    .line 1380
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1381
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_f

    iget-wide v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    :goto_d
    monitor-exit p0

    .line 1392
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_e
    return-wide v3

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_f
    move-wide v3, v5

    .line 1381
    goto :goto_d

    .line 1383
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_11
    const-wide/16 v3, 0x0

    .line 1384
    .local v3, timeout:J
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1385
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1a
    if-ge v2, v0, :cond_39

    .line 1386
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1387
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v7, v3, v5

    if-eqz v7, :cond_34

    iget-wide v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_36

    iget-wide v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v7, v3, v7

    if-lez v7, :cond_36

    .line 1389
    :cond_34
    iget-wide v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 1385
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1392
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_39
    monitor-exit p0

    goto :goto_e

    .line 1393
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #timeout:J
    :catchall_3b
    move-exception v5

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3b

    throw v5
.end method

.method public getPasswordExpires(Landroid/content/ComponentName;)I
    .registers 6
    .parameter "who"

    .prologue
    .line 2913
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 2914
    .local v0, timeout:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_11

    .line 2915
    const-wide/32 v2, 0x5265c00

    div-long v2, v0, v2

    long-to-int v2, v2

    .line 2917
    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public getPasswordHistory(Landroid/content/ComponentName;)I
    .registers 3
    .parameter "who"

    .prologue
    .line 2925
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;)I
    .registers 7
    .parameter "who"

    .prologue
    .line 1334
    monitor-enter p0

    .line 1335
    const/4 v3, 0x0

    .line 1336
    .local v3, length:I
    if-eqz p1, :cond_10

    .line 1337
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1338
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    :goto_c
    monitor-exit p0

    .line 1347
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 1338
    goto :goto_c

    .line 1340
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1341
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_2a

    .line 1342
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1343
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-ge v3, v4, :cond_27

    .line 1344
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 1341
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1347
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2a
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 1348
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2d
    move-exception v4

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2d

    throw v4
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;)I
    .registers 7
    .parameter "who"

    .prologue
    .line 1304
    monitor-enter p0

    .line 1305
    const/4 v3, 0x0

    .line 1306
    .local v3, length:I
    if-eqz p1, :cond_10

    .line 1307
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1308
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    :goto_c
    monitor-exit p0

    .line 1317
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 1308
    goto :goto_c

    .line 1310
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1311
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_2a

    .line 1312
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1313
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-ge v3, v4, :cond_27

    .line 1314
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 1311
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1317
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2a
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 1318
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2d
    move-exception v4

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2d

    throw v4
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;)I
    .registers 7
    .parameter "who"

    .prologue
    .line 1494
    monitor-enter p0

    .line 1495
    const/4 v3, 0x0

    .line 1496
    .local v3, length:I
    if-eqz p1, :cond_10

    .line 1497
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1498
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    :goto_c
    monitor-exit p0

    .line 1507
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 1498
    goto :goto_c

    .line 1500
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1501
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_2a

    .line 1502
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1503
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-ge v3, v4, :cond_27

    .line 1504
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 1501
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1507
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2a
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 1508
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2d
    move-exception v4

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2d

    throw v4
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I
    .registers 7
    .parameter "who"

    .prologue
    .line 1464
    monitor-enter p0

    .line 1465
    const/4 v3, 0x0

    .line 1466
    .local v3, length:I
    if-eqz p1, :cond_10

    .line 1467
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1468
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    :goto_c
    monitor-exit p0

    .line 1477
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 1468
    goto :goto_c

    .line 1470
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1471
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_2a

    .line 1472
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1473
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-ge v3, v4, :cond_27

    .line 1474
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 1471
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1477
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2a
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 1478
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2d
    move-exception v4

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2d

    throw v4
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I
    .registers 7
    .parameter "who"

    .prologue
    .line 1584
    monitor-enter p0

    .line 1585
    const/4 v3, 0x0

    .line 1586
    .local v3, length:I
    if-eqz p1, :cond_10

    .line 1587
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1588
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    :goto_c
    monitor-exit p0

    .line 1597
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 1588
    goto :goto_c

    .line 1590
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1591
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_2a

    .line 1592
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1593
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-ge v3, v4, :cond_27

    .line 1594
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 1591
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1597
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2a
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 1598
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2d
    move-exception v4

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2d

    throw v4
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;)I
    .registers 7
    .parameter "who"

    .prologue
    .line 1524
    monitor-enter p0

    .line 1525
    const/4 v3, 0x0

    .line 1526
    .local v3, length:I
    if-eqz p1, :cond_10

    .line 1527
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1528
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    :goto_c
    monitor-exit p0

    .line 1537
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 1528
    goto :goto_c

    .line 1530
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1531
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_2a

    .line 1532
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1533
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-ge v3, v4, :cond_27

    .line 1534
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 1531
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1537
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2a
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 1538
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2d
    move-exception v4

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2d

    throw v4
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;)I
    .registers 7
    .parameter "who"

    .prologue
    .line 1554
    monitor-enter p0

    .line 1555
    const/4 v3, 0x0

    .line 1556
    .local v3, length:I
    if-eqz p1, :cond_10

    .line 1557
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1558
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    :goto_c
    monitor-exit p0

    .line 1567
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 1558
    goto :goto_c

    .line 1560
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1561
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_2a

    .line 1562
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1563
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-ge v3, v4, :cond_27

    .line 1564
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 1561
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1567
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2a
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 1568
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2d
    move-exception v4

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2d

    throw v4
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I
    .registers 7
    .parameter "who"

    .prologue
    .line 1434
    monitor-enter p0

    .line 1435
    const/4 v3, 0x0

    .line 1436
    .local v3, length:I
    if-eqz p1, :cond_10

    .line 1437
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1438
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    :goto_c
    monitor-exit p0

    .line 1447
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 1438
    goto :goto_c

    .line 1440
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1441
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_2a

    .line 1442
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1443
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-ge v3, v4, :cond_27

    .line 1444
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 1441
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1447
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2a
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 1448
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2d
    move-exception v4

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2d

    throw v4
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;)I
    .registers 10
    .parameter "who"

    .prologue
    .line 1253
    monitor-enter p0

    .line 1254
    const/4 v4, 0x0

    .line 1256
    .local v4, mode:I
    if-eqz p1, :cond_10

    .line 1257
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1258
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    :goto_c
    monitor-exit p0

    .line 1286
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v6

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v6, v4

    .line 1258
    goto :goto_c

    .line 1261
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1262
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_17
    if-ge v3, v0, :cond_2a

    .line 1263
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1264
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v4, v6, :cond_27

    .line 1265
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 1262
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1271
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2a
    new-instance v2, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 1272
    .local v2, dem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v5

    .line 1273
    .local v5, sdPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v5, :cond_3c

    .line 1274
    new-instance v5, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v5           #sdPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v5}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 1276
    .restart local v5       #sdPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_3c
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_4e

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4e

    const/4 v6, 0x2

    iget v7, v5, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v6, v7, :cond_54

    .line 1281
    :cond_4e
    const/high16 v6, 0x2

    if-ge v4, v6, :cond_54

    const/high16 v4, 0x5

    .line 1286
    :cond_54
    monitor-exit p0

    move v6, v4

    goto :goto_d

    .line 1287
    .end local v0           #N:I
    .end local v2           #dem:Landroid/dirEncryption/DirEncryptionManager;
    .end local v3           #i:I
    .end local v5           #sdPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :catchall_57
    move-exception v6

    monitor-exit p0
    :try_end_59
    .catchall {:try_start_4 .. :try_end_59} :catchall_57

    throw v6
.end method

.method public getPasswordRecoverable(Landroid/content/ComponentName;)Z
    .registers 7
    .parameter "who"

    .prologue
    .line 1862
    monitor-enter p0

    .line 1863
    const/4 v3, 0x0

    .line 1865
    .local v3, value:Z
    if-eqz p1, :cond_10

    .line 1866
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1867
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    :goto_c
    monitor-exit p0

    .line 1877
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 1867
    goto :goto_c

    .line 1870
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1871
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_28

    .line 1872
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1873
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_25

    .line 1874
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    .line 1871
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1877
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_28
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 1878
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2b
    move-exception v4

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v4
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .registers 12
    .parameter "comp"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 2400
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2402
    monitor-enter p0

    .line 2403
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_36

    move-result-object v8

    .line 2404
    .local v8, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v8, :cond_15

    .line 2406
    const/4 v0, 0x0

    :try_start_10
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_36
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_39

    .line 2409
    :goto_13
    :try_start_13
    monitor-exit p0

    .line 2423
    :goto_14
    return-void

    .line 2411
    :cond_15
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2412
    .local v1, intent:Landroid/content/Intent;
    iget-object v0, v8, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2413
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/DevicePolicyManagerService$3;

    invoke-direct {v3, p0, p2}, Lcom/android/server/DevicePolicyManagerService$3;-><init>(Lcom/android/server/DevicePolicyManagerService;Landroid/os/RemoteCallback;)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2422
    monitor-exit p0

    goto :goto_14

    .end local v1           #intent:Landroid/content/Intent;
    .end local v8           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_36

    throw v0

    .line 2407
    .restart local v8       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catch_39
    move-exception v0

    goto :goto_13
.end method

.method public getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    .registers 7
    .parameter "who"

    .prologue
    .line 2325
    monitor-enter p0

    .line 2326
    const/4 v3, 0x0

    .line 2328
    .local v3, value:Z
    if-eqz p1, :cond_10

    .line 2329
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2330
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    :goto_c
    monitor-exit p0

    .line 2340
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 2330
    goto :goto_c

    .line 2333
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2334
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_28

    .line 2335
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2336
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_25

    .line 2337
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    .line 2334
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2340
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_28
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 2341
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2b
    move-exception v4

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v4
.end method

.method public getSimplePasswordEnabled(Landroid/content/ComponentName;)Z
    .registers 7
    .parameter "who"

    .prologue
    .line 1941
    monitor-enter p0

    .line 1942
    const/4 v3, 0x1

    .line 1943
    .local v3, value:Z
    if-eqz p1, :cond_10

    .line 1944
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1945
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    :goto_c
    monitor-exit p0

    .line 1954
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v4, v3

    .line 1945
    goto :goto_c

    .line 1947
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1948
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_29

    .line 1949
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1950
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    .line 1951
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    .line 1948
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1954
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_29
    monitor-exit p0

    move v4, v3

    goto :goto_d

    .line 1955
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2c
    move-exception v4

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_2c

    throw v4
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;)Z
    .registers 7
    .parameter "who"

    .prologue
    const/4 v4, 0x0

    .line 2641
    monitor-enter p0

    .line 2643
    if-eqz p1, :cond_10

    .line 2645
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2646
    .local v1, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_e

    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    :goto_c
    monitor-exit p0

    .line 2656
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_d
    return v3

    .restart local v1       #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_e
    move v3, v4

    .line 2646
    goto :goto_c

    .line 2650
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_10
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2651
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_2e

    .line 2652
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v3, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eqz v3, :cond_2b

    .line 2653
    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_d

    .line 2657
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_28
    move-exception v3

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v3

    .line 2651
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2656
    :cond_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_28

    move v3, v4

    goto :goto_d
.end method

.method public getStorageEncryptionStatus()I
    .registers 2

    .prologue
    .line 2663
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    return v0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .registers 7
    .parameter "adminReceiver"
    .parameter "policyId"

    .prologue
    .line 1147
    monitor-enter p0

    .line 1148
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1149
    .local v0, administrator:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_23

    .line 1150
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1153
    .end local v0           #administrator:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_20
    move-exception v1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v1

    .line 1152
    .restart local v0       #administrator:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_23
    :try_start_23
    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    return v1
.end method

.method public isActivePasswordSufficient()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1601
    monitor-enter p0

    .line 1604
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1606
    iget v3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v4

    if-lt v3, v4, :cond_1a

    iget v3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v4

    if-ge v3, v4, :cond_1c

    .line 1608
    :cond_1a
    monitor-exit p0

    .line 1624
    :goto_1b
    return v1

    .line 1610
    :cond_1c
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->getSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 1611
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_40

    .line 1612
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1613
    .local v0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDevicePasswordSimple()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1614
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "isActivePasswordSufficient() : simple password is not allowed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    monitor-exit p0

    goto :goto_1b

    .line 1630
    .end local v0           #mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :catchall_3d
    move-exception v1

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_3d

    throw v1

    .line 1618
    :cond_40
    :try_start_40
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "isActivePasswordSufficient() : fail to get isDevicePasswordSimple() due to mContext == null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_47
    iget v3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    const/high16 v4, 0x6

    if-eq v3, v4, :cond_50

    .line 1622
    monitor-exit p0

    move v1, v2

    goto :goto_1b

    .line 1624
    :cond_50
    iget v3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordUpperCase:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v4

    if-lt v3, v4, :cond_87

    iget v3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLowerCase:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v4

    if-lt v3, v4, :cond_87

    iget v3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLetters:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v4

    if-lt v3, v4, :cond_87

    iget v3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordNumeric:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v4

    if-lt v3, v4, :cond_87

    iget v3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordSymbols:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v4

    if-lt v3, v4, :cond_87

    iget v3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordNonLetter:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v4

    if-lt v3, v4, :cond_87

    move v1, v2

    :cond_87
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_40 .. :try_end_88} :catchall_3d

    goto :goto_1b
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "adminReceiver"

    .prologue
    .line 1142
    monitor-enter p0

    .line 1143
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 1144
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public lockNow()V
    .registers 7

    .prologue
    .line 2345
    monitor-enter p0

    .line 2348
    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_3
    invoke-virtual {p0, v2, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2350
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_25

    move-result-wide v0

    .line 2353
    .local v0, ident:J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/os/IPowerManager;->goToSleepWithReason(JI)V

    .line 2356
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->lockNow()V
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_20
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1b} :catch_28

    .line 2359
    :try_start_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2361
    :goto_1e
    monitor-exit p0

    .line 2362
    return-void

    .line 2359
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2361
    .end local v0           #ident:J
    :catchall_25
    move-exception v2

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_25

    throw v2

    .line 2357
    .restart local v0       #ident:J
    :catch_28
    move-exception v2

    .line 2359
    :try_start_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_25

    goto :goto_1e
.end method

.method public notifyChanges(Landroid/content/ComponentName;Z)V
    .registers 7
    .parameter "comp"
    .parameter "notifyChanges"

    .prologue
    .line 2831
    const/4 v1, 0x0

    .line 2833
    .local v1, enforceNotification:Z
    if-nez p1, :cond_4

    .line 2854
    :cond_3
    :goto_3
    return-void

    .line 2837
    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2838
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "notifyChanges(): Not Email Admin not proceeding."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2842
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2843
    .local v0, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_3

    .line 2847
    if-eqz p2, :cond_25

    iget-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    if-nez v2, :cond_25

    .line 2848
    const/4 v1, 0x1

    .line 2850
    :cond_25
    iput-boolean p2, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    .line 2851
    if-eqz v1, :cond_3

    .line 2852
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->sendChangedNotification()V

    goto :goto_3
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    .line 1169
    monitor-enter p0

    .line 1170
    :try_start_1
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1171
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_24

    .line 1172
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v2, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1173
    const/4 v2, 0x1

    monitor-exit p0

    .line 1176
    :goto_20
    return v2

    .line 1171
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1176
    :cond_24
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_20

    .line 1177
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_27
    move-exception v2

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public reboot(Ljava/lang/String;)V
    .registers 8
    .parameter "reason"

    .prologue
    .line 2885
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_SECURITY"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2886
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2888
    .local v1, ident:J
    :try_start_c
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IPowerManager;->reboot(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_20
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_17

    .line 2892
    :goto_13
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2894
    return-void

    .line 2889
    :catch_17
    move-exception v0

    .line 2890
    .local v0, e:Landroid/os/RemoteException;
    :try_start_18
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "Failure talking with power manager"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 2892
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public recoverPassword()V
    .registers 6

    .prologue
    .line 2742
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2745
    monitor-enter p0

    .line 2746
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_1e

    move-result-wide v0

    .line 2748
    .local v0, ident:J
    :try_start_d
    const-string v2, "android.app.action.ACTION_RECOVERY_PASSWORD_REQUESTED"

    const/16 v3, 0x9

    invoke-virtual {p0, v2, v3}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;I)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_19

    .line 2752
    :try_start_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2754
    monitor-exit p0

    .line 2755
    return-void

    .line 2752
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2754
    .end local v0           #ident:J
    :catchall_1e
    move-exception v2

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .registers 9
    .parameter "adminReceiver"

    .prologue
    .line 1181
    new-instance v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 1182
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->isAdminRemovable(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1208
    :goto_d
    return-void

    .line 1186
    :cond_e
    monitor-enter p0

    .line 1187
    :try_start_f
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1188
    .local v0, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1a

    .line 1189
    monitor-exit p0

    goto :goto_d

    .line 1204
    .end local v0           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_17
    move-exception v4

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_17

    throw v4

    .line 1191
    .restart local v0       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1a
    :try_start_1a
    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-eq v4, v5, :cond_2d

    .line 1193
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BIND_DEVICE_ADMIN"

    const-string v6, "Only system or itself can remove an DPM admin"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :cond_2d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_17

    move-result-wide v2

    .line 1200
    .local v2, ident:J
    :try_start_31
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 1202
    :try_start_34
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1204
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_17

    .line 1206
    invoke-virtual {v1, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->removeActiveAdminFromDpm(Landroid/content/ComponentName;)V

    goto :goto_d

    .line 1202
    :catchall_3c
    move-exception v4

    :try_start_3d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_17
.end method

.method removeActiveAdminLocked(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "adminReceiver"

    .prologue
    .line 727
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 728
    .local v0, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_10

    .line 729
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    new-instance v2, Lcom/android/server/DevicePolicyManagerService$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService$2;-><init>(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 763
    :cond_10
    return-void
.end method

.method public reportFailedPasswordAttempt()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2475
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    monitor-enter p0

    .line 2478
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_2b

    move-result-wide v0

    .line 2480
    .local v0, ident:J
    :try_start_d
    iget v3, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    .line 2481
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 2482
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v2

    .line 2487
    .local v2, max:I
    const-string v3, "android.app.action.ACTION_PASSWORD_FAILED"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;I)V
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_26

    .line 2490
    :try_start_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2492
    monitor-exit p0

    .line 2493
    return-void

    .line 2490
    .end local v2           #max:I
    :catchall_26
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2492
    .end local v0           #ident:J
    :catchall_2b
    move-exception v3

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2b

    throw v3
.end method

.method public reportSuccessfulPasswordAttempt()V
    .registers 6

    .prologue
    .line 2495
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    monitor-enter p0

    .line 2499
    :try_start_9
    iget v2, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    if-nez v2, :cond_11

    iget v2, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    if-ltz v2, :cond_27

    .line 2500
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_2e

    move-result-wide v0

    .line 2502
    .local v0, ident:J
    const/4 v2, 0x0

    :try_start_16
    iput v2, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    .line 2503
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    .line 2504
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 2505
    const-string v2, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;I)V
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_29

    .line 2508
    :try_start_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2511
    .end local v0           #ident:J
    :cond_27
    monitor-exit p0

    .line 2512
    return-void

    .line 2508
    .restart local v0       #ident:J
    :catchall_29
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2511
    .end local v0           #ident:J
    :catchall_2e
    move-exception v2

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_2e

    throw v2
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .registers 31
    .parameter "password"
    .parameter "flags"

    .prologue
    .line 1679
    monitor-enter p0

    .line 1682
    const/16 v25, 0x0

    const/16 v26, 0x2

    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1684
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v20

    .line 1685
    .local v20, quality:I
    if-eqz v20, :cond_62

    .line 1686
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v21

    .line 1687
    .local v21, realQuality:I
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_5a

    const/high16 v25, 0x6

    move/from16 v0, v20

    move/from16 v1, v25

    if-eq v0, v1, :cond_5a

    .line 1689
    const-string v25, "DevicePolicyManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "resetPassword: password quality 0x"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " does not meet required quality 0x"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    const/16 v25, 0x0

    monitor-exit p0

    .line 1791
    .end local v21           #realQuality:I
    :goto_59
    return v25

    .line 1695
    .restart local v21       #realQuality:I
    :cond_5a
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 1697
    .end local v21           #realQuality:I
    :cond_62
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v8

    .line 1698
    .local v8, length:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v0, v8, :cond_a3

    .line 1699
    const-string v25, "DevicePolicyManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "resetPassword: password length "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " does not meet required length "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    const/16 v25, 0x0

    monitor-exit p0

    goto :goto_59

    .line 1768
    .end local v8           #length:I
    .end local v20           #quality:I
    :catchall_a0
    move-exception v25

    monitor-exit p0
    :try_end_a2
    .catchall {:try_start_5 .. :try_end_a2} :catchall_a0

    throw v25

    .line 1703
    .restart local v8       #length:I
    .restart local v20       #quality:I
    :cond_a3
    const/high16 v25, 0x6

    move/from16 v0, v20

    move/from16 v1, v25

    if-ne v0, v1, :cond_25c

    .line 1704
    const/4 v9, 0x0

    .line 1705
    .local v9, letters:I
    const/16 v23, 0x0

    .line 1706
    .local v23, uppercase:I
    const/4 v10, 0x0

    .line 1707
    .local v10, lowercase:I
    const/16 v19, 0x0

    .line 1708
    .local v19, numbers:I
    const/16 v22, 0x0

    .line 1709
    .local v22, symbols:I
    const/16 v18, 0x0

    .line 1710
    .local v18, nonletter:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_b6
    :try_start_b6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v5, v0, :cond_fe

    .line 1711
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1712
    .local v3, c:C
    const/16 v25, 0x41

    move/from16 v0, v25

    if-lt v3, v0, :cond_d7

    const/16 v25, 0x5a

    move/from16 v0, v25

    if-gt v3, v0, :cond_d7

    .line 1713
    add-int/lit8 v9, v9, 0x1

    .line 1714
    add-int/lit8 v23, v23, 0x1

    .line 1710
    :goto_d4
    add-int/lit8 v5, v5, 0x1

    goto :goto_b6

    .line 1715
    :cond_d7
    const/16 v25, 0x61

    move/from16 v0, v25

    if-lt v3, v0, :cond_e8

    const/16 v25, 0x7a

    move/from16 v0, v25

    if-gt v3, v0, :cond_e8

    .line 1716
    add-int/lit8 v9, v9, 0x1

    .line 1717
    add-int/lit8 v10, v10, 0x1

    goto :goto_d4

    .line 1718
    :cond_e8
    const/16 v25, 0x30

    move/from16 v0, v25

    if-lt v3, v0, :cond_f9

    const/16 v25, 0x39

    move/from16 v0, v25

    if-gt v3, v0, :cond_f9

    .line 1719
    add-int/lit8 v19, v19, 0x1

    .line 1720
    add-int/lit8 v18, v18, 0x1

    goto :goto_d4

    .line 1722
    :cond_f9
    add-int/lit8 v22, v22, 0x1

    .line 1723
    add-int/lit8 v18, v18, 0x1

    goto :goto_d4

    .line 1726
    .end local v3           #c:C
    :cond_fe
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v11

    .line 1727
    .local v11, neededLetters:I
    if-ge v9, v11, :cond_135

    .line 1728
    const-string v25, "DevicePolicyManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "resetPassword: number of letters "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " does not meet required number of letters "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const/16 v25, 0x0

    monitor-exit p0

    goto/16 :goto_59

    .line 1732
    :cond_135
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v14

    .line 1733
    .local v14, neededNumbers:I
    move/from16 v0, v19

    if-ge v0, v14, :cond_170

    .line 1734
    const-string v25, "DevicePolicyManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "resetPassword: number of numerical digits "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " does not meet required number of numerical digits "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    const/16 v25, 0x0

    monitor-exit p0

    goto/16 :goto_59

    .line 1740
    :cond_170
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v12

    .line 1741
    .local v12, neededLowerCase:I
    if-ge v10, v12, :cond_1a7

    .line 1742
    const-string v25, "DevicePolicyManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "resetPassword: number of lowercase letters "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " does not meet required number of lowercase letters "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    const/16 v25, 0x0

    monitor-exit p0

    goto/16 :goto_59

    .line 1747
    :cond_1a7
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v16

    .line 1748
    .local v16, neededUpperCase:I
    move/from16 v0, v23

    move/from16 v1, v16

    if-ge v0, v1, :cond_1e6

    .line 1749
    const-string v25, "DevicePolicyManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "resetPassword: number of uppercase letters "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " does not meet required number of uppercase letters "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    const/16 v25, 0x0

    monitor-exit p0

    goto/16 :goto_59

    .line 1754
    :cond_1e6
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v15

    .line 1755
    .local v15, neededSymbols:I
    move/from16 v0, v22

    if-ge v0, v15, :cond_221

    .line 1756
    const-string v25, "DevicePolicyManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "resetPassword: number of special symbols "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " does not meet required number of special symbols "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    const/16 v25, 0x0

    monitor-exit p0

    goto/16 :goto_59

    .line 1760
    :cond_221
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v13

    .line 1761
    .local v13, neededNonLetter:I
    move/from16 v0, v18

    if-ge v0, v13, :cond_25c

    .line 1762
    const-string v25, "DevicePolicyManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "resetPassword: number of non-letter characters "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " does not meet required number of non-letter characters "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    const/16 v25, 0x0

    monitor-exit p0

    goto/16 :goto_59

    .line 1768
    .end local v5           #i:I
    .end local v9           #letters:I
    .end local v10           #lowercase:I
    .end local v11           #neededLetters:I
    .end local v12           #neededLowerCase:I
    .end local v13           #neededNonLetter:I
    .end local v14           #neededNumbers:I
    .end local v15           #neededSymbols:I
    .end local v16           #neededUpperCase:I
    .end local v18           #nonletter:I
    .end local v19           #numbers:I
    .end local v22           #symbols:I
    .end local v23           #uppercase:I
    :cond_25c
    monitor-exit p0
    :try_end_25d
    .catchall {:try_start_b6 .. :try_end_25d} :catchall_a0

    .line 1769
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1770
    .local v4, callingUid:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    move/from16 v25, v0

    if-ltz v25, :cond_27e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v4, :cond_27e

    .line 1771
    const-string v25, "DevicePolicyManagerService"

    const-string v26, "resetPassword: already set by another uid and not entered by user"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    const/16 v25, 0x0

    goto/16 :goto_59

    .line 1776
    :cond_27e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1778
    .local v6, ident:J
    :try_start_282
    new-instance v24, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1779
    .local v24, utils:Lcom/android/internal/widget/LockPatternUtils;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 1780
    monitor-enter p0
    :try_end_297
    .catchall {:try_start_282 .. :try_end_297} :catchall_2c0

    .line 1781
    and-int/lit8 v25, p2, 0x1

    if-eqz v25, :cond_2ba

    move/from16 v17, v4

    .line 1783
    .local v17, newOwner:I
    :goto_29d
    :try_start_29d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v17

    if-eq v0, v1, :cond_2b2

    .line 1784
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    .line 1785
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1787
    :cond_2b2
    monitor-exit p0
    :try_end_2b3
    .catchall {:try_start_29d .. :try_end_2b3} :catchall_2bd

    .line 1789
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1791
    const/16 v25, 0x1

    goto/16 :goto_59

    .line 1781
    .end local v17           #newOwner:I
    :cond_2ba
    const/16 v17, -0x1

    goto :goto_29d

    .line 1787
    .restart local v17       #newOwner:I
    :catchall_2bd
    move-exception v25

    :try_start_2be
    monitor-exit p0
    :try_end_2bf
    .catchall {:try_start_2be .. :try_end_2bf} :catchall_2bd

    :try_start_2bf
    throw v25
    :try_end_2c0
    .catchall {:try_start_2bf .. :try_end_2c0} :catchall_2c0

    .line 1789
    .end local v17           #newOwner:I
    .end local v24           #utils:Lcom/android/internal/widget/LockPatternUtils;
    :catchall_2c0
    move-exception v25

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v25
.end method

.method public satisfyFIPSPassword()Z
    .registers 8

    .prologue
    .line 2858
    const/4 v3, 0x0

    .line 2859
    .local v3, mode:I
    const/4 v4, 0x0

    .line 2861
    .local v4, ret:Z
    monitor-enter p0

    .line 2862
    :try_start_3
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2863
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v0, :cond_1d

    .line 2864
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2865
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v3, v5, :cond_1a

    .line 2866
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 2863
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2870
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1d
    const/high16 v5, 0x2

    if-lt v3, v5, :cond_28

    .line 2871
    iget v5, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    if-lt v5, v3, :cond_26

    .line 2872
    const/4 v4, 0x1

    .line 2878
    :cond_26
    :goto_26
    monitor-exit p0

    .line 2880
    return v4

    .line 2874
    :cond_28
    iget v5, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    const/high16 v6, 0x5

    if-lt v5, v6, :cond_26

    iget v5, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    const/4 v6, 0x6

    if-lt v5, v6, :cond_26

    .line 2876
    const/4 v4, 0x1

    goto :goto_26

    .line 2878
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_35
    move-exception v5

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v5
.end method

.method sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    .registers 4
    .parameter "admin"
    .parameter "action"

    .prologue
    .line 700
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 701
    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .registers 12
    .parameter "admin"
    .parameter "action"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 703
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 704
    .local v1, intent:Landroid/content/Intent;
    iget-object v0, p1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 705
    const-string v0, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 706
    const-string v0, "expiration"

    iget-wide v3, p1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 708
    :cond_1e
    if-eqz p3, :cond_2c

    .line 709
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, -0x1

    move-object v3, p3

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 714
    :goto_2b
    return-void

    .line 712
    :cond_2c
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2b
.end method

.method sendAdminCommandLocked(Ljava/lang/String;I)V
    .registers 7
    .parameter "action"
    .parameter "reqPolicy"

    .prologue
    .line 716
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 717
    .local v0, N:I
    if-lez v0, :cond_21

    .line 718
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v0, :cond_21

    .line 719
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 720
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 721
    invoke-virtual {p0, v1, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 718
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 725
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v2           #i:I
    :cond_21
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .registers 14
    .parameter "adminReceiver"
    .parameter "refreshing"

    .prologue
    .line 1104
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v4

    .line 1107
    .local v4, info:Landroid/app/admin/DeviceAdminInfo;
    if-nez v4, :cond_27

    .line 1108
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1110
    :cond_27
    monitor-enter p0

    .line 1111
    :try_start_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_41

    move-result-wide v2

    .line 1113
    .local v2, ident:J
    if-nez p2, :cond_44

    :try_start_2e
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v8

    if-eqz v8, :cond_44

    .line 1114
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Admin is already added"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_3c

    .line 1137
    :catchall_3c
    move-exception v8

    :try_start_3d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1139
    .end local v2           #ident:J
    :catchall_41
    move-exception v8

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_41

    throw v8

    .line 1116
    .restart local v2       #ident:J
    :cond_44
    :try_start_44
    new-instance v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v5, v4}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 1117
    .local v5, newAdmin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    const/4 v7, -0x1

    .line 1119
    .local v7, replaceIndex:I
    if-eqz p2, :cond_6f

    .line 1120
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1121
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_58
    if-ge v1, v0, :cond_6f

    .line 1122
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1123
    .local v6, oldAdmin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v6, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 1124
    move v7, v1

    .line 1129
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v6           #oldAdmin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_6f
    const/4 v8, -0x1

    if-ne v7, v8, :cond_87

    .line 1130
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    :goto_77
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1135
    const-string v8, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {p0, v5, v8}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_44 .. :try_end_7f} :catchall_3c

    .line 1137
    :try_start_7f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1139
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_41

    .line 1140
    return-void

    .line 1121
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v6       #oldAdmin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 1132
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v6           #oldAdmin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_87
    :try_start_87
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catchall {:try_start_87 .. :try_end_8c} :catchall_3c

    goto :goto_77
.end method

.method public setActivePasswordState(IIIIIIII)V
    .registers 14
    .parameter "quality"
    .parameter "length"
    .parameter "letters"
    .parameter "uppercase"
    .parameter "lowercase"
    .parameter "numbers"
    .parameter "symbols"
    .parameter "nonletter"

    .prologue
    .line 2426
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 2429
    monitor-enter p0

    .line 2430
    :try_start_c
    iget v2, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    if-ne v2, p1, :cond_30

    iget v2, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    if-ne v2, p2, :cond_30

    iget v2, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    if-nez v2, :cond_30

    iget v2, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLetters:I

    if-ne v2, p3, :cond_30

    iget v2, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordUpperCase:I

    if-ne v2, p4, :cond_30

    iget v2, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLowerCase:I

    if-ne v2, p5, :cond_30

    iget v2, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordNumeric:I

    if-ne v2, p6, :cond_30

    iget v2, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordSymbols:I

    if-ne v2, p7, :cond_30

    iget v2, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordNonLetter:I

    if-eq v2, p8, :cond_5b

    .line 2435
    :cond_30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_62

    move-result-wide v0

    .line 2437
    .local v0, ident:J
    :try_start_34
    iput p1, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    .line 2438
    iput p2, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    .line 2439
    iput p3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLetters:I

    .line 2440
    iput p5, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLowerCase:I

    .line 2441
    iput p4, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordUpperCase:I

    .line 2442
    iput p6, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordNumeric:I

    .line 2443
    iput p7, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordSymbols:I

    .line 2444
    iput p8, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordNonLetter:I

    .line 2445
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    .line 2446
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 2447
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->updatePasswordExpirationsLocked()V

    .line 2448
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;)V

    .line 2449
    const-string v2, "android.app.action.ACTION_PASSWORD_CHANGED"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;I)V
    :try_end_58
    .catchall {:try_start_34 .. :try_end_58} :catchall_5d

    .line 2452
    :try_start_58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2455
    .end local v0           #ident:J
    :cond_5b
    monitor-exit p0

    .line 2456
    return-void

    .line 2452
    .restart local v0       #ident:J
    :catchall_5d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2455
    .end local v0           #ident:J
    :catchall_62
    move-exception v2

    monitor-exit p0
    :try_end_64
    .catchall {:try_start_58 .. :try_end_64} :catchall_62

    throw v2
.end method

.method public setAdminPermissions(Landroid/content/ComponentName;)V
    .registers 9
    .parameter "adminReceiver"

    .prologue
    .line 1214
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1215
    .local v0, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_7

    .line 1234
    :goto_6
    return-void

    .line 1220
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v3

    .line 1221
    .local v3, info:Landroid/app/admin/DeviceAdminInfo;
    if-nez v3, :cond_26

    .line 1222
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad admin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1225
    :cond_26
    monitor-enter p0

    .line 1226
    :try_start_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_3c

    move-result-wide v1

    .line 1228
    .local v1, ident:J
    :try_start_2b
    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPermissions()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo;->setPermissions(J)V

    .line 1229
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_3f

    .line 1231
    :try_start_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1233
    monitor-exit p0

    goto :goto_6

    .end local v1           #ident:J
    :catchall_3c
    move-exception v4

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3c

    throw v4

    .line 1231
    .restart local v1       #ident:J
    :catchall_3f
    move-exception v4

    :try_start_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_3c
.end method

.method public setAllowBluetoothMode(Landroid/content/ComponentName;I)V
    .registers 8
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2166
    monitor-enter p0

    .line 2167
    if-nez p1, :cond_e

    .line 2168
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2182
    :catchall_b
    move-exception v3

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v3

    .line 2170
    :cond_e
    const/16 v3, 0x10

    :try_start_10
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2172
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    if-eq v3, p2, :cond_24

    .line 2173
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    .line 2175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_b

    move-result-wide v1

    .line 2177
    .local v1, ident:J
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 2179
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2182
    .end local v1           #ident:J
    :cond_24
    monitor-exit p0

    .line 2183
    return-void

    .line 2179
    .restart local v1       #ident:J
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_b
.end method

.method public setAllowBrowser(Landroid/content/ComponentName;Z)V
    .registers 8
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2086
    monitor-enter p0

    .line 2087
    if-nez p1, :cond_e

    .line 2088
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2102
    :catchall_b
    move-exception v3

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v3

    .line 2090
    :cond_e
    const/16 v3, 0xe

    :try_start_10
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2092
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    if-eq v3, p2, :cond_24

    .line 2093
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    .line 2095
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_b

    move-result-wide v1

    .line 2097
    .local v1, ident:J
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 2099
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2102
    .end local v1           #ident:J
    :cond_24
    monitor-exit p0

    .line 2103
    return-void

    .line 2099
    .restart local v1       #ident:J
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_b
.end method

.method public setAllowCamera(Landroid/content/ComponentName;Z)V
    .registers 4
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1958
    if-nez p2, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/DevicePolicyManagerService;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 1959
    return-void

    .line 1958
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setAllowDesktopSync(Landroid/content/ComponentName;Z)V
    .registers 8
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2205
    monitor-enter p0

    .line 2206
    if-nez p1, :cond_e

    .line 2207
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2221
    :catchall_b
    move-exception v3

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v3

    .line 2209
    :cond_e
    const/16 v3, 0x11

    :try_start_10
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2211
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    if-eq v3, p2, :cond_24

    .line 2212
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    .line 2214
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_b

    move-result-wide v1

    .line 2216
    .local v1, ident:J
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 2218
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2221
    .end local v1           #ident:J
    :cond_24
    monitor-exit p0

    .line 2222
    return-void

    .line 2218
    .restart local v1       #ident:J
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_b
.end method

.method public setAllowInternetSharing(Landroid/content/ComponentName;Z)V
    .registers 8
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2126
    monitor-enter p0

    .line 2127
    if-nez p1, :cond_e

    .line 2128
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2142
    :catchall_b
    move-exception v3

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v3

    .line 2130
    :cond_e
    const/16 v3, 0xf

    :try_start_10
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2132
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    if-eq v3, p2, :cond_24

    .line 2133
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    .line 2135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_b

    move-result-wide v1

    .line 2137
    .local v1, ident:J
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 2139
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2142
    .end local v1           #ident:J
    :cond_24
    monitor-exit p0

    .line 2143
    return-void

    .line 2139
    .restart local v1       #ident:J
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_b
.end method

.method public setAllowIrDA(Landroid/content/ComponentName;Z)V
    .registers 8
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2245
    monitor-enter p0

    .line 2246
    if-nez p1, :cond_e

    .line 2247
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2261
    :catchall_b
    move-exception v3

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v3

    .line 2249
    :cond_e
    const/16 v3, 0x12

    :try_start_10
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2251
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    if-eq v3, p2, :cond_24

    .line 2252
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    .line 2254
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_b

    move-result-wide v1

    .line 2256
    .local v1, ident:J
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 2258
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2261
    .end local v1           #ident:J
    :cond_24
    monitor-exit p0

    .line 2262
    return-void

    .line 2258
    .restart local v1       #ident:J
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_b
.end method

.method public setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V
    .registers 8
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2046
    monitor-enter p0

    .line 2047
    if-nez p1, :cond_e

    .line 2048
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2062
    :catchall_b
    move-exception v3

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v3

    .line 2050
    :cond_e
    const/16 v3, 0xd

    :try_start_10
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2052
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    if-eq v3, p2, :cond_24

    .line 2053
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    .line 2055
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_b

    move-result-wide v1

    .line 2057
    .local v1, ident:J
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 2059
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2062
    .end local v1           #ident:J
    :cond_24
    monitor-exit p0

    .line 2063
    return-void

    .line 2059
    .restart local v1       #ident:J
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_b
.end method

.method public setAllowStorageCard(Landroid/content/ComponentName;Z)V
    .registers 8
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1884
    monitor-enter p0

    .line 1885
    if-nez p1, :cond_e

    .line 1886
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1900
    :catchall_b
    move-exception v3

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v3

    .line 1888
    :cond_e
    const/16 v3, 0xa

    :try_start_10
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1890
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    if-eq v3, p2, :cond_24

    .line 1891
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    .line 1893
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_b

    move-result-wide v1

    .line 1895
    .local v1, ident:J
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 1897
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1900
    .end local v1           #ident:J
    :cond_24
    monitor-exit p0

    .line 1901
    return-void

    .line 1897
    .restart local v1       #ident:J
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_b
.end method

.method public setAllowTextMessaging(Landroid/content/ComponentName;Z)V
    .registers 8
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2006
    monitor-enter p0

    .line 2007
    if-nez p1, :cond_e

    .line 2008
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2022
    :catchall_b
    move-exception v3

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v3

    .line 2010
    :cond_e
    const/16 v3, 0xc

    :try_start_10
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2012
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    if-eq v3, p2, :cond_24

    .line 2013
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    .line 2015
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_b

    move-result-wide v1

    .line 2017
    .local v1, ident:J
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 2019
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2022
    .end local v1           #ident:J
    :cond_24
    monitor-exit p0

    .line 2023
    return-void

    .line 2019
    .restart local v1       #ident:J
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_b
.end method

.method public setAllowWifi(Landroid/content/ComponentName;Z)V
    .registers 8
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1966
    monitor-enter p0

    .line 1967
    if-nez p1, :cond_e

    .line 1968
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1982
    :catchall_b
    move-exception v3

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v3

    .line 1970
    :cond_e
    const/16 v3, 0xb

    :try_start_10
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1972
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    if-eq v3, p2, :cond_24

    .line 1973
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    .line 1975
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_b

    move-result-wide v1

    .line 1977
    .local v1, ident:J
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 1979
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1982
    .end local v1           #ident:J
    :cond_24
    monitor-exit p0

    .line 1983
    return-void

    .line 1979
    .restart local v1       #ident:J
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_b
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "who"
    .parameter "disabled"

    .prologue
    .line 2706
    monitor-enter p0

    .line 2707
    if-nez p1, :cond_e

    .line 2708
    :try_start_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2717
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1

    .line 2710
    :cond_e
    const/16 v1, 0x8

    :try_start_10
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2712
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eq v1, p2, :cond_1d

    .line 2713
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    .line 2714
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 2716
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked()V

    .line 2717
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_b

    .line 2718
    return-void
.end method

.method protected setExpirationAlarmCheckLocked(Landroid/content/Context;)V
    .registers 23
    .parameter "context"

    .prologue
    .line 612
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;)J

    move-result-wide v9

    .line 613
    .local v9, expiration:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 614
    .local v11, now:J
    sub-long v14, v9, v11

    .line 616
    .local v14, timeToExpire:J
    const-wide/16 v18, 0x0

    cmp-long v18, v9, v18

    if-nez v18, :cond_53

    .line 618
    const-wide/16 v6, 0x0

    .line 631
    .local v6, alarmTime:J
    :goto_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 633
    .local v16, token:J
    :try_start_1c
    const-string v18, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 634
    .local v8, am:Landroid/app/AlarmManager;
    const/16 v18, 0x15c3

    new-instance v19, Landroid/content/Intent;

    const-string v20, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v20, 0x4800

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 637
    .local v13, pi:Landroid/app/PendingIntent;
    invoke-virtual {v8, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 638
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-eqz v18, :cond_4f

    .line 639
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0, v6, v7, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_4f
    .catchall {:try_start_1c .. :try_end_4f} :catchall_70

    .line 642
    :cond_4f
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 644
    return-void

    .line 619
    .end local v6           #alarmTime:J
    .end local v8           #am:Landroid/app/AlarmManager;
    .end local v13           #pi:Landroid/app/PendingIntent;
    .end local v16           #token:J
    :cond_53
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-gtz v18, :cond_5f

    .line 621
    const-wide/32 v18, 0x5265c00

    add-long v6, v11, v18

    .restart local v6       #alarmTime:J
    goto :goto_18

    .line 625
    .end local v6           #alarmTime:J
    :cond_5f
    const-wide/32 v18, 0x5265c00

    rem-long v4, v14, v18

    .line 626
    .local v4, alarmInterval:J
    const-wide/16 v18, 0x0

    cmp-long v18, v4, v18

    if-nez v18, :cond_6d

    .line 627
    const-wide/32 v4, 0x5265c00

    .line 629
    :cond_6d
    add-long v6, v11, v4

    .restart local v6       #alarmTime:J
    goto :goto_18

    .line 642
    .end local v4           #alarmInterval:J
    .restart local v16       #token:J
    :catchall_70
    move-exception v18

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 13
    .parameter "who"
    .parameter "proxySpec"
    .parameter "exclusionList"

    .prologue
    const/4 v7, 0x0

    .line 2515
    monitor-enter p0

    .line 2516
    if-nez p1, :cond_f

    .line 2517
    :try_start_4
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "ComponentName is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2547
    :catchall_c
    move-exception v7

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v7

    .line 2519
    :cond_f
    const/4 v8, 0x5

    :try_start_10
    invoke-virtual {p0, p1, v8}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2523
    .local v0, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2524
    .local v2, compSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 2525
    .local v3, component:Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2526
    .local v1, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v8, :cond_1e

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    .line 2529
    monitor-exit p0

    .line 2546
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v3           #component:Landroid/content/ComponentName;
    :goto_3d
    return-object v3

    .line 2532
    :cond_3e
    if-nez p2, :cond_56

    .line 2533
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 2534
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 2535
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 2543
    :goto_49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2544
    .local v5, origId:J
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxy()V

    .line 2545
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2546
    monitor-exit p0

    move-object v3, v7

    goto :goto_3d

    .line 2537
    .end local v5           #origId:J
    :cond_56
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 2538
    iput-object p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 2539
    iput-object p3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_10 .. :try_end_5d} :catchall_c

    goto :goto_49
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .registers 5
    .parameter "who"
    .parameter "num"

    .prologue
    .line 1644
    monitor-enter p0

    .line 1647
    const/4 v1, 0x4

    :try_start_2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1649
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1651
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eq v1, p2, :cond_13

    .line 1652
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 1653
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1655
    :cond_13
    monitor-exit p0

    .line 1656
    return-void

    .line 1655
    .end local v0           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_15
    move-exception v1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    .registers 10
    .parameter "who"
    .parameter "timeMs"

    .prologue
    .line 1794
    monitor-enter p0

    .line 1795
    if-nez p1, :cond_e

    .line 1796
    :try_start_3
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1818
    :catchall_b
    move-exception v4

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v4

    .line 1798
    :cond_e
    const/4 v4, 0x3

    :try_start_f
    invoke-virtual {p0, p1, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1800
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-wide v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v4, v4, p2

    if-eqz v4, :cond_3b

    .line 1801
    iput-wide p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 1802
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_b

    move-result-wide v2

    .line 1804
    .local v2, ident:J
    :try_start_1f
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1805
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;)J
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_46

    move-result-wide p2

    .line 1806
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gtz v4, :cond_30

    .line 1807
    const-wide/32 p2, 0x7fffffff

    .line 1810
    :cond_30
    :try_start_30
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v4

    long-to-int v5, p2

    invoke-interface {v4, v5}, Landroid/os/IPowerManager;->setMaximumScreenOffTimeount(I)V
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_46
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_38} :catch_3d

    .line 1815
    :goto_38
    :try_start_38
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1818
    .end local v2           #ident:J
    :cond_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_b

    .line 1819
    return-void

    .line 1811
    .restart local v2       #ident:J
    :catch_3d
    move-exception v1

    .line 1812
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3e
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Failure talking with power manager"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_46

    goto :goto_38

    .line 1815
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_46
    move-exception v4

    :try_start_47
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_b
.end method

.method public setMinPasswordComplexChars(Landroid/content/ComponentName;I)V
    .registers 3
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2929
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 2930
    return-void
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    .registers 11
    .parameter "who"
    .parameter "timeout"

    .prologue
    const-wide/16 v3, 0x0

    .line 1351
    monitor-enter p0

    .line 1352
    if-nez p1, :cond_10

    .line 1353
    :try_start_5
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1371
    :catchall_d
    move-exception v3

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v3

    .line 1355
    :cond_10
    cmp-long v5, p2, v3

    if-gez v5, :cond_1c

    .line 1356
    :try_start_14
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Timeout must be >= 0 ms"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1358
    :cond_1c
    const/4 v5, 0x6

    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1361
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v5, p2, v3

    if-lez v5, :cond_64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long v1, p2, v5

    .line 1362
    .local v1, expiration:J
    :goto_2b
    iput-wide v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 1363
    iput-wide p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 1364
    cmp-long v3, p2, v3

    if-lez v3, :cond_5a

    .line 1365
    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordExpiration(): password will expire on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_5a
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1370
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;)V

    .line 1371
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_14 .. :try_end_63} :catchall_d

    .line 1372
    return-void

    .end local v1           #expiration:J
    :cond_64
    move-wide v1, v3

    .line 1361
    goto :goto_2b
.end method

.method public setPasswordExpires(Landroid/content/ComponentName;I)V
    .registers 7
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2909
    int-to-long v0, p2

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 2910
    return-void
.end method

.method public setPasswordHistory(Landroid/content/ComponentName;I)V
    .registers 3
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2921
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 2922
    return-void
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "who"
    .parameter "length"

    .prologue
    .line 1321
    monitor-enter p0

    .line 1322
    if-nez p1, :cond_e

    .line 1323
    :try_start_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1331
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1

    .line 1325
    :cond_e
    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1327
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eq v1, p2, :cond_1c

    .line 1328
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 1329
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1331
    :cond_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_b

    .line 1332
    return-void
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "who"
    .parameter "length"

    .prologue
    .line 1291
    monitor-enter p0

    .line 1292
    if-nez p1, :cond_e

    .line 1293
    :try_start_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1301
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1

    .line 1295
    :cond_e
    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1297
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-eq v1, p2, :cond_1c

    .line 1298
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 1299
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1301
    :cond_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_b

    .line 1302
    return-void
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "who"
    .parameter "length"

    .prologue
    .line 1481
    monitor-enter p0

    .line 1482
    if-nez p1, :cond_e

    .line 1483
    :try_start_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1491
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1

    .line 1485
    :cond_e
    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1487
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-eq v1, p2, :cond_1c

    .line 1488
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 1489
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1491
    :cond_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_b

    .line 1492
    return-void
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "who"
    .parameter "length"

    .prologue
    .line 1451
    monitor-enter p0

    .line 1452
    if-nez p1, :cond_e

    .line 1453
    :try_start_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1461
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1

    .line 1455
    :cond_e
    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1457
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-eq v1, p2, :cond_1c

    .line 1458
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 1459
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1461
    :cond_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_b

    .line 1462
    return-void
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "who"
    .parameter "length"

    .prologue
    .line 1571
    monitor-enter p0

    .line 1572
    if-nez p1, :cond_e

    .line 1573
    :try_start_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1581
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1

    .line 1575
    :cond_e
    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1577
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-eq v1, p2, :cond_1c

    .line 1578
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 1579
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1581
    :cond_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_b

    .line 1582
    return-void
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "who"
    .parameter "length"

    .prologue
    .line 1511
    monitor-enter p0

    .line 1512
    if-nez p1, :cond_e

    .line 1513
    :try_start_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1521
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1

    .line 1515
    :cond_e
    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1517
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-eq v1, p2, :cond_1c

    .line 1518
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 1519
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1521
    :cond_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_b

    .line 1522
    return-void
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "who"
    .parameter "length"

    .prologue
    .line 1541
    monitor-enter p0

    .line 1542
    if-nez p1, :cond_e

    .line 1543
    :try_start_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1551
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1

    .line 1545
    :cond_e
    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1547
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-eq v1, p2, :cond_1c

    .line 1548
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 1549
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1551
    :cond_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_b

    .line 1552
    return-void
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "who"
    .parameter "length"

    .prologue
    .line 1421
    monitor-enter p0

    .line 1422
    if-nez p1, :cond_e

    .line 1423
    :try_start_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1431
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1

    .line 1425
    :cond_e
    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1427
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-eq v1, p2, :cond_1c

    .line 1428
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 1429
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1431
    :cond_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_b

    .line 1432
    return-void
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .registers 6
    .parameter "who"
    .parameter "quality"

    .prologue
    .line 1238
    invoke-static {p2}, Lcom/android/server/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 1239
    monitor-enter p0

    .line 1240
    if-nez p1, :cond_11

    .line 1241
    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1249
    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    .line 1243
    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1245
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-eq v1, p2, :cond_1f

    .line 1246
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 1247
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1249
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    .line 1250
    return-void
.end method

.method public setPasswordRecoverable(Landroid/content/ComponentName;Z)V
    .registers 8
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1842
    monitor-enter p0

    .line 1843
    if-nez p1, :cond_e

    .line 1844
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1858
    :catchall_b
    move-exception v3

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v3

    .line 1846
    :cond_e
    const/16 v3, 0x9

    :try_start_10
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1848
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    if-eq v3, p2, :cond_24

    .line 1849
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    .line 1851
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_b

    move-result-wide v1

    .line 1853
    .local v1, ident:J
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 1855
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1858
    .end local v1           #ident:J
    :cond_24
    monitor-exit p0

    .line 1859
    return-void

    .line 1855
    .restart local v1       #ident:J
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_b
.end method

.method public setRecoveryPasswordState(Landroid/content/ComponentName;Z)V
    .registers 10
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2760
    monitor-enter p0

    .line 2761
    if-nez p1, :cond_e

    .line 2762
    :try_start_3
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2779
    :catchall_b
    move-exception v5

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v5

    .line 2764
    :cond_e
    const/16 v5, 0x9

    :try_start_10
    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2767
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne p2, v5, :cond_2d

    .line 2768
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_b

    move-result-wide v1

    .line 2770
    .local v1, ident:J
    :try_start_1b
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2771
    .local v3, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v4

    .line 2772
    .local v4, mRecoveryPassword:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2f

    .line 2776
    :try_start_2a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2779
    .end local v1           #ident:J
    .end local v3           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v4           #mRecoveryPassword:Ljava/lang/String;
    :cond_2d
    monitor-exit p0

    .line 2780
    return-void

    .line 2776
    .restart local v1       #ident:J
    :catchall_2f
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_b
.end method

.method public setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    .registers 8
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2305
    monitor-enter p0

    .line 2306
    if-nez p1, :cond_e

    .line 2307
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2321
    :catchall_b
    move-exception v3

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v3

    .line 2309
    :cond_e
    const/16 v3, 0x13

    :try_start_10
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2311
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    if-eq v3, p2, :cond_24

    .line 2312
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    .line 2314
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_b

    move-result-wide v1

    .line 2316
    .local v1, ident:J
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 2318
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2321
    .end local v1           #ident:J
    :cond_24
    monitor-exit p0

    .line 2322
    return-void

    .line 2318
    .restart local v1       #ident:J
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_b
.end method

.method public setSimplePasswordEnabled(Landroid/content/ComponentName;Z)V
    .registers 8
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1923
    monitor-enter p0

    .line 1924
    if-nez p1, :cond_e

    .line 1925
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1938
    :catchall_b
    move-exception v3

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v3

    .line 1927
    :cond_e
    const/4 v3, 0x0

    :try_start_f
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1929
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    if-eq v3, p2, :cond_23

    .line 1930
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    .line 1931
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_b

    move-result-wide v1

    .line 1933
    .local v1, ident:J
    :try_start_1d
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25

    .line 1935
    :try_start_20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1938
    .end local v1           #ident:J
    :cond_23
    monitor-exit p0

    .line 1939
    return-void

    .line 1935
    .restart local v1       #ident:J
    :catchall_25
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_b
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;Z)I
    .registers 9
    .parameter "who"
    .parameter "encrypt"

    .prologue
    .line 2606
    monitor-enter p0

    .line 2608
    if-nez p1, :cond_e

    .line 2609
    :try_start_3
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2634
    :catchall_b
    move-exception v4

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v4

    .line 2611
    :cond_e
    const/4 v4, 0x7

    :try_start_f
    invoke-virtual {p0, p1, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2614
    .local v1, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isEncryptionSupported()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 2615
    const/4 v4, 0x0

    monitor-exit p0

    .line 2631
    :goto_1b
    return v4

    .line 2618
    :cond_1c
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eq v4, p2, :cond_25

    .line 2619
    iput-boolean p2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    .line 2620
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 2623
    :cond_25
    const/4 v3, 0x0

    .line 2624
    .local v3, newRequested:Z
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2625
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2d
    if-ge v2, v0, :cond_3d

    .line 2626
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v4, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    or-int/2addr v3, v4

    .line 2625
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 2629
    :cond_3d
    invoke-direct {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->setEncryptionRequested(Z)V

    .line 2631
    if-eqz v3, :cond_45

    const/4 v4, 0x3

    :goto_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_f .. :try_end_44} :catchall_b

    goto :goto_1b

    :cond_45
    const/4 v4, 0x1

    goto :goto_43
.end method

.method syncDeviceCapabilitiesLocked()V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 1050
    const-string v6, "sys.secpolicy.camera.disabled"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1053
    .local v2, systemState:Z
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1055
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/DevicePolicyManagerService;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_22

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v6

    if-nez v6, :cond_23

    :cond_22
    const/4 v0, 0x1

    .line 1057
    .local v0, cameraDisabled:Z
    :cond_23
    if-eq v0, v2, :cond_4d

    .line 1058
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1060
    .local v3, token:J
    if-eqz v0, :cond_4e

    :try_start_2b
    const-string v5, "1"

    .line 1061
    .local v5, value:Ljava/lang/String;
    :goto_2d
    const-string v6, "DevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Change in camera state [sys.secpolicy.camera.disabled] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const-string v6, "sys.secpolicy.camera.disabled"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_2b .. :try_end_4a} :catchall_51

    .line 1065
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1068
    .end local v3           #token:J
    .end local v5           #value:Ljava/lang/String;
    :cond_4d
    return-void

    .line 1060
    .restart local v3       #token:J
    :cond_4e
    :try_start_4e
    const-string v5, "0"
    :try_end_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_51

    goto :goto_2d

    .line 1065
    :catchall_51
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public systemReady()V
    .registers 2

    .prologue
    .line 1070
    monitor-enter p0

    .line 1071
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked()V

    .line 1072
    monitor-exit p0

    .line 1073
    return-void

    .line 1072
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method validatePasswordOwnerLocked()V
    .registers 6

    .prologue
    .line 1028
    iget v2, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    if-ltz v2, :cond_45

    .line 1029
    const/4 v0, 0x0

    .line 1030
    .local v0, haveOwner:Z
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_d
    if-ltz v1, :cond_20

    .line 1031
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v2}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v2

    iget v3, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    if-ne v2, v3, :cond_46

    .line 1032
    const/4 v0, 0x1

    .line 1036
    :cond_20
    if-nez v0, :cond_45

    .line 1037
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous password owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " no longer active; disabling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    .line 1042
    .end local v0           #haveOwner:Z
    .end local v1           #i:I
    :cond_45
    return-void

    .line 1030
    .restart local v0       #haveOwner:Z
    .restart local v1       #i:I
    :cond_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_d
.end method

.method public wipeData(I)V
    .registers 6
    .parameter "flags"

    .prologue
    .line 2386
    monitor-enter p0

    .line 2389
    const/4 v2, 0x0

    const/4 v3, 0x4

    :try_start_3
    invoke-virtual {p0, v2, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2391
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_17

    move-result-wide v0

    .line 2393
    .local v0, ident:J
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDataLocked(I)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_12

    .line 2395
    :try_start_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2397
    monitor-exit p0

    .line 2398
    return-void

    .line 2395
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2397
    .end local v0           #ident:J
    :catchall_17
    move-exception v2

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw v2
.end method

.method wipeDataLocked(I)V
    .registers 9
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2369
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v5

    if-nez v5, :cond_36

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isExtStorageEncrypted()Z

    move-result v5

    if-eqz v5, :cond_36

    move v1, v3

    .line 2370
    .local v1, forceExtWipe:Z
    :goto_f
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_38

    .line 2372
    .local v3, wipeExtRequested:Z
    :goto_13
    if-nez v1, :cond_17

    if-eqz v3, :cond_3a

    :cond_17
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 2373
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2374
    .local v2, intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2375
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2376
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2384
    .end local v2           #intent:Landroid/content/Intent;
    :goto_35
    return-void

    .end local v1           #forceExtWipe:Z
    .end local v3           #wipeExtRequested:Z
    :cond_36
    move v1, v4

    .line 2369
    goto :goto_f

    .restart local v1       #forceExtWipe:Z
    :cond_38
    move v3, v4

    .line 2370
    goto :goto_13

    .line 2379
    .restart local v3       #wipeExtRequested:Z
    :cond_3a
    :try_start_3a
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_40

    goto :goto_35

    .line 2380
    :catch_40
    move-exception v0

    .line 2381
    .local v0, e:Ljava/io/IOException;
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Failed requesting data wipe"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method
