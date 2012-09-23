.class public Lcom/android/server/usb/UsbHostManager;
.super Ljava/lang/Object;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbHostManager$UsbHostHandler;
    }
.end annotation


# static fields
.field private static final CABLE_UPDATE_STATE:I = 0x0

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = null

.field private static final UPDATE_DELAY:I = 0xbb8

.field private static final USBDEVICE_UPDATE_STATE:I = 0x1

.field private static final USB_HOST_DEVICE_UEVENT:Ljava/lang/String; = "DEVTYPE=usb_interface"

.field private static final USB_HOST_PATH:Ljava/lang/String; = "/devices/virtual/host_notify"

.field private static final USB_HOST_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/host_notify"

.field private static final mStringConverter:Lcom/android/server/usb/UsbStringTable;


# instance fields
.field private mConnectedKeyBorad:Z

.field private final mContext:Landroid/content/Context;

.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

.field private final mHostBlacklist:[Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private final mUEventHostDeviceObserver:Landroid/os/UEventObserver;

.field private final mUEventHostObserver:Landroid/os/UEventObserver;

.field private mUsbObserverNotification:Landroid/app/Notification;

.field private nNotiCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const-class v0, Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/android/server/usb/UsbStringTable;

    invoke-direct {v0}, Lcom/android/server/usb/UsbStringTable;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbSettingsManager;)V
    .registers 7
    .parameter "context"
    .parameter "settingsManager"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 80
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    .line 84
    iput-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 355
    iput-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    .line 431
    iput v2, p0, Lcom/android/server/usb/UsbHostManager;->nNotiCount:I

    .line 433
    new-instance v1, Lcom/android/server/usb/UsbHostManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbHostManager$2;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUEventHostObserver:Landroid/os/UEventObserver;

    .line 508
    new-instance v1, Lcom/android/server/usb/UsbHostManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbHostManager$3;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUEventHostDeviceObserver:Landroid/os/UEventObserver;

    .line 651
    iput-boolean v2, p0, Lcom/android/server/usb/UsbHostManager;->mConnectedKeyBorad:Z

    .line 96
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    .line 101
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 103
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUEventHostObserver:Landroid/os/UEventObserver;

    const-string v2, "DEVPATH=/devices/virtual/host_notify"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUEventHostDeviceObserver:Landroid/os/UEventObserver;

    const-string v2, "DEVTYPE=usb_interface"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UsbHostNotification"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 109
    new-instance v1, Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/usb/UsbHostManager$UsbHostHandler;-><init>(Lcom/android/server/usb/UsbHostManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbHostManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->monitorUsbHostBus()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbHostManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbHostManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/usb/UsbHostManager;->nNotiCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/usb/UsbHostManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/server/usb/UsbHostManager;->nNotiCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/server/usb/UsbHostManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/usb/UsbHostManager;->nNotiCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/usb/UsbHostManager;->nNotiCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbHostManager;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p7}, Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbHostManager;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private attachedUsbHostDock(III)V
    .registers 8
    .parameter "clazz"
    .parameter "subClass"
    .parameter "protocol"

    .prologue
    const/4 v3, 0x1

    .line 654
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2e

    if-ne p2, v3, :cond_2e

    if-ne p3, v3, :cond_2e

    .line 656
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v2, "USB keyboard connected, dock intent boardcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 659
    .local v0, kbdIntent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 660
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 661
    const-string v1, "android.intent.extra.KEYBOARD_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 662
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 663
    iput-boolean v3, p0, Lcom/android/server/usb/UsbHostManager;->mConnectedKeyBorad:Z

    .line 665
    .end local v0           #kbdIntent:Landroid/content/Intent;
    :cond_2e
    return-void
.end method

.method private detachedUsbHostDock(Ljava/lang/String;)V
    .registers 6
    .parameter "deviceName"

    .prologue
    const/4 v3, 0x0

    .line 668
    iget-boolean v1, p0, Lcom/android/server/usb/UsbHostManager;->mConnectedKeyBorad:Z

    if-eqz v1, :cond_2a

    .line 669
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v2, "USB keyboard disconnected, dock intent boardcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    .local v0, kbdIntent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 673
    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 674
    const-string v1, "android.intent.extra.KEYBOARD_STATE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 675
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 676
    iput-boolean v3, p0, Lcom/android/server/usb/UsbHostManager;->mConnectedKeyBorad:Z

    .line 678
    .end local v0           #kbdIntent:Landroid/content/Intent;
    :cond_2a
    return-void
.end method

.method private isBlackListed(II)Z
    .registers 10
    .parameter "vendorID"
    .parameter "productID"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 325
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    array-length v0, v5

    .line 326
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v0, :cond_33

    .line 328
    :try_start_8
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, tok:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    if-eqz v5, :cond_20

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, p1, :cond_2e

    :cond_20
    const/4 v5, 0x1

    aget-object v5, v2, v5

    if-eqz v5, :cond_30

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2b} :catch_2f

    move-result v5

    if-ne v5, p2, :cond_30

    .line 337
    .end local v2           #tok:[Ljava/lang/String;
    :cond_2e
    :goto_2e
    return v3

    .line 334
    :catch_2f
    move-exception v5

    .line 326
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_33
    move v3, v4

    .line 337
    goto :goto_2e
.end method

.method private isBlackListed(III)Z
    .registers 6
    .parameter "clazz"
    .parameter "subClass"
    .parameter "protocol"

    .prologue
    const/4 v0, 0x1

    .line 125
    const/16 v1, 0x9

    if-ne p1, v1, :cond_6

    .line 133
    :cond_5
    :goto_5
    return v0

    .line 128
    :cond_6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_b

    if-eq p2, v0, :cond_5

    .line 133
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isBlackListed(Ljava/lang/String;)Z
    .registers 5
    .parameter "deviceName"

    .prologue
    .line 113
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    array-length v0, v2

    .line 114
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    if-ge v1, v0, :cond_15

    .line 115
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 116
    const/4 v2, 0x1

    .line 119
    :goto_11
    return v2

    .line 114
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 119
    :cond_15
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private native monitorUsbHostBus()V
.end method

.method private native nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method private declared-synchronized setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 18
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "visible"
    .parameter "dismissable"
    .parameter "pi"
    .parameter "device"

    .prologue
    .line 359
    monitor-enter p0

    :try_start_1
    sget-object v7, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setUsbObserverNotification :: titleId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", messageId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", icon = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", visible = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", dismissable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", device = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-nez p4, :cond_55

    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_f3

    if-nez v7, :cond_55

    .line 426
    :cond_53
    :goto_53
    monitor-exit p0

    return-void

    .line 366
    :cond_55
    :try_start_55
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 369
    .local v4, notificationManager:Landroid/app/NotificationManager;
    if-eqz v4, :cond_53

    .line 373
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    if-eqz v7, :cond_6e

    if-eqz p4, :cond_6e

    .line 379
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 380
    .local v3, notificationId:I
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 387
    .end local v3           #notificationId:I
    :cond_6e
    if-eqz p4, :cond_b4

    .line 388
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 389
    .local v5, r:Landroid/content/res/Resources;
    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 390
    .local v6, title:Ljava/lang/CharSequence;
    if-nez p2, :cond_f6

    .line 391
    const/4 v2, 0x0

    .line 396
    .local v2, message:Ljava/lang/CharSequence;
    :goto_7b
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    if-nez v7, :cond_8c

    .line 397
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    .line 398
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    .line 401
    :cond_8c
    if-eqz p5, :cond_fb

    .line 402
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    const/16 v8, 0x10

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 407
    :goto_94
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    iput-object v6, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 408
    if-nez p6, :cond_a7

    .line 409
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 410
    .local v1, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 413
    .end local v1           #intent:Landroid/content/Intent;
    :cond_a7
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    iput p3, v7, Landroid/app/Notification;->icon:I

    .line 414
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-virtual {v7, v8, v6, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 418
    .end local v2           #message:Ljava/lang/CharSequence;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_b4
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 419
    .restart local v3       #notificationId:I
    if-eqz p4, :cond_101

    .line 420
    sget-object v7, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setUsbObserverNotification : notify id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", device = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", title = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    iget-object v9, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    invoke-virtual {v4, v3, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_f1
    .catchall {:try_start_55 .. :try_end_f1} :catchall_f3

    goto/16 :goto_53

    .line 359
    .end local v3           #notificationId:I
    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    :catchall_f3
    move-exception v7

    monitor-exit p0

    throw v7

    .line 393
    .restart local v4       #notificationManager:Landroid/app/NotificationManager;
    .restart local v5       #r:Landroid/content/res/Resources;
    .restart local v6       #title:Ljava/lang/CharSequence;
    :cond_f6
    :try_start_f6
    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2       #message:Ljava/lang/CharSequence;
    goto :goto_7b

    .line 404
    :cond_fb
    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mUsbObserverNotification:Landroid/app/Notification;

    const/4 v8, 0x2

    iput v8, v7, Landroid/app/Notification;->flags:I

    goto :goto_94

    .line 423
    .end local v2           #message:Ljava/lang/CharSequence;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #title:Ljava/lang/CharSequence;
    .restart local v3       #notificationId:I
    :cond_101
    sget-object v7, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setUsbObserverNotification : cancel id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", device = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_128
    .catchall {:try_start_f6 .. :try_end_128} :catchall_f3

    goto/16 :goto_53
.end method

.method private turnOnLcd()V
    .registers 7

    .prologue
    .line 345
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v2, "turnOnLcd :: "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :try_start_7
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mPowerManagerService:Landroid/os/IPowerManager;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_17

    .line 353
    :cond_16
    :goto_16
    return-void

    .line 350
    :catch_17
    move-exception v0

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.userActivityWithForce() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method private usbDeviceAdded(Ljava/lang/String;IIIII[I[I)V
    .registers 41
    .parameter "deviceName"
    .parameter "vendorID"
    .parameter "productID"
    .parameter "deviceClass"
    .parameter "deviceSubclass"
    .parameter "deviceProtocol"
    .parameter "interfaceValues"
    .parameter "endpointValues"

    .prologue
    .line 146
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    const-string v11, "usbDeviceAdded : device :: %s [%04xh:%04xh] [%02xh,%02xh,%02xh] (%s)"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    sget-object v14, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/usb/UsbStringTable;->findString(III)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_68

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(III)Z

    move-result v4

    if-nez v4, :cond_68

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(II)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 152
    :cond_68
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    const-string v11, "%s is put on a blocklist [%04xh:%04xh:%02xh:%02xh:%02xh]"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_a1
    return-void

    .line 156
    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    move-object/from16 v31, v0

    monitor-enter v31

    .line 157
    :try_start_a9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_d4

    .line 158
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "device already on mDevices list: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    monitor-exit v31

    goto :goto_a1

    .line 208
    :catchall_d1
    move-exception v4

    monitor-exit v31
    :try_end_d3
    .catchall {:try_start_a9 .. :try_end_d3} :catchall_d1

    throw v4

    .line 162
    :cond_d4
    :try_start_d4
    move-object/from16 v0, p7

    array-length v4, v0

    div-int/lit8 v30, v4, 0x5

    .line 163
    .local v30, numInterfaces:I
    move/from16 v0, v30

    new-array v0, v0, [Landroid/hardware/usb/UsbInterface;

    move-object/from16 v17, v0
    :try_end_df
    .catchall {:try_start_d4 .. :try_end_df} :catchall_d1

    .line 166
    .local v17, interfaces:[Landroid/os/Parcelable;
    const/16 v26, 0x0

    .local v26, ival:I
    const/16 v22, 0x0

    .line 167
    .local v22, eval:I
    const/16 v25, 0x0

    .local v25, intf:I
    move/from16 v27, v26

    .end local v26           #ival:I
    .local v27, ival:I
    :goto_e7
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_19f

    .line 168
    add-int/lit8 v26, v27, 0x1

    .end local v27           #ival:I
    .restart local v26       #ival:I
    :try_start_ef
    aget v5, p7, v27
    :try_end_f1
    .catchall {:try_start_ef .. :try_end_f1} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f1} :catch_192

    .line 169
    .local v5, interfaceId:I
    add-int/lit8 v27, v26, 0x1

    .end local v26           #ival:I
    .restart local v27       #ival:I
    :try_start_f3
    aget v6, p7, v26
    :try_end_f5
    .catchall {:try_start_f3 .. :try_end_f5} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f5} :catch_1c3

    .line 170
    .local v6, interfaceClass:I
    add-int/lit8 v26, v27, 0x1

    .end local v27           #ival:I
    .restart local v26       #ival:I
    :try_start_f7
    aget v7, p7, v27
    :try_end_f9
    .catchall {:try_start_f7 .. :try_end_f9} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_f9} :catch_192

    .line 171
    .local v7, interfaceSubclass:I
    add-int/lit8 v27, v26, 0x1

    .end local v26           #ival:I
    .restart local v27       #ival:I
    :try_start_fb
    aget v8, p7, v26
    :try_end_fd
    .catchall {:try_start_fb .. :try_end_fd} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_fd} :catch_1c3

    .line 172
    .local v8, interfaceProtocol:I
    add-int/lit8 v26, v27, 0x1

    .end local v27           #ival:I
    .restart local v26       #ival:I
    :try_start_ff
    aget v29, p7, v27

    .line 174
    .local v29, numEndpoints:I
    move/from16 v0, v29

    new-array v9, v0, [Landroid/hardware/usb/UsbEndpoint;

    .line 175
    .local v9, endpoints:[Landroid/os/Parcelable;
    const/16 v21, 0x0

    .local v21, endp:I
    move/from16 v23, v22

    .end local v22           #eval:I
    .local v23, eval:I
    :goto_109
    move/from16 v0, v21

    move/from16 v1, v29

    if-ge v0, v1, :cond_131

    .line 176
    add-int/lit8 v22, v23, 0x1

    .end local v23           #eval:I
    .restart local v22       #eval:I
    aget v18, p8, v23
    :try_end_113
    .catchall {:try_start_ff .. :try_end_113} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_113} :catch_192

    .line 177
    .local v18, address:I
    add-int/lit8 v23, v22, 0x1

    .end local v22           #eval:I
    .restart local v23       #eval:I
    :try_start_115
    aget v19, p8, v22
    :try_end_117
    .catchall {:try_start_115 .. :try_end_117} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_117} :catch_1c7

    .line 178
    .local v19, attributes:I
    add-int/lit8 v22, v23, 0x1

    .end local v23           #eval:I
    .restart local v22       #eval:I
    :try_start_119
    aget v28, p8, v23
    :try_end_11b
    .catchall {:try_start_119 .. :try_end_11b} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_11b} :catch_192

    .line 179
    .local v28, maxPacketSize:I
    add-int/lit8 v23, v22, 0x1

    .end local v22           #eval:I
    .restart local v23       #eval:I
    :try_start_11d
    aget v24, p8, v22

    .line 180
    .local v24, interval:I
    new-instance v4, Landroid/hardware/usb/UsbEndpoint;

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    aput-object v4, v9, v21

    .line 175
    add-int/lit8 v21, v21, 0x1

    goto :goto_109

    .line 184
    .end local v18           #address:I
    .end local v19           #attributes:I
    .end local v24           #interval:I
    .end local v28           #maxPacketSize:I
    :cond_131
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    const-string v11, "usbDeviceAdded : interface :: %s [%04xh:%04xh] [%02xh,%02xh,%02xh] (%s)"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    sget-object v14, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    invoke-virtual {v14, v6, v7, v8}, Lcom/android/server/usb/UsbStringTable;->findString(III)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Lcom/android/server/usb/UsbHostManager;->attachedUsbHostDock(III)V

    .line 191
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(III)Z
    :try_end_17d
    .catchall {:try_start_11d .. :try_end_17d} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_17d} :catch_1c7

    move-result v4

    if-eqz v4, :cond_183

    .line 192
    :try_start_180
    monitor-exit v31
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_d1

    goto/16 :goto_a1

    .line 194
    :cond_183
    :try_start_183
    new-instance v4, Landroid/hardware/usb/UsbInterface;

    invoke-direct/range {v4 .. v9}, Landroid/hardware/usb/UsbInterface;-><init>(IIII[Landroid/os/Parcelable;)V

    aput-object v4, v17, v25
    :try_end_18a
    .catchall {:try_start_183 .. :try_end_18a} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_18a} :catch_1c7

    .line 167
    add-int/lit8 v25, v25, 0x1

    move/from16 v22, v23

    .end local v23           #eval:I
    .restart local v22       #eval:I
    move/from16 v27, v26

    .end local v26           #ival:I
    .restart local v27       #ival:I
    goto/16 :goto_e7

    .line 197
    .end local v5           #interfaceId:I
    .end local v6           #interfaceClass:I
    .end local v7           #interfaceSubclass:I
    .end local v8           #interfaceProtocol:I
    .end local v9           #endpoints:[Landroid/os/Parcelable;
    .end local v21           #endp:I
    .end local v27           #ival:I
    .end local v29           #numEndpoints:I
    .restart local v26       #ival:I
    :catch_192
    move-exception v20

    .line 200
    .local v20, e:Ljava/lang/Exception;
    :goto_193
    :try_start_193
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v11, "error parsing USB descriptors"

    move-object/from16 v0, v20

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    monitor-exit v31

    goto/16 :goto_a1

    .line 204
    .end local v20           #e:Ljava/lang/Exception;
    .end local v26           #ival:I
    .restart local v27       #ival:I
    :cond_19f
    new-instance v10, Landroid/hardware/usb/UsbDevice;

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    invoke-direct/range {v10 .. v17}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIII[Landroid/os/Parcelable;)V

    .line 206
    .local v10, device:Landroid/hardware/usb/UsbDevice;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v4, v10}, Lcom/android/server/usb/UsbSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 208
    monitor-exit v31
    :try_end_1c1
    .catchall {:try_start_193 .. :try_end_1c1} :catchall_d1

    goto/16 :goto_a1

    .line 197
    .end local v10           #device:Landroid/hardware/usb/UsbDevice;
    .restart local v5       #interfaceId:I
    :catch_1c3
    move-exception v20

    move/from16 v26, v27

    .end local v27           #ival:I
    .restart local v26       #ival:I
    goto :goto_193

    .end local v22           #eval:I
    .restart local v6       #interfaceClass:I
    .restart local v7       #interfaceSubclass:I
    .restart local v8       #interfaceProtocol:I
    .restart local v9       #endpoints:[Landroid/os/Parcelable;
    .restart local v21       #endp:I
    .restart local v23       #eval:I
    .restart local v29       #numEndpoints:I
    :catch_1c7
    move-exception v20

    move/from16 v22, v23

    .end local v23           #eval:I
    .restart local v22       #eval:I
    goto :goto_193
.end method

.method private usbDeviceRemoved(Ljava/lang/String;)V
    .registers 7
    .parameter "deviceName"

    .prologue
    .line 213
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 214
    :try_start_3
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbDeviceRemoved :: deviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->detachedUsbHostDock(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 218
    .local v0, device:Landroid/hardware/usb/UsbDevice;
    if-eqz v0, :cond_2d

    .line 219
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->deviceDetached(Landroid/hardware/usb/UsbDevice;)V

    .line 221
    :cond_2d
    monitor-exit v2

    .line 222
    return-void

    .line 221
    .end local v0           #device:Landroid/hardware/usb/UsbDevice;
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method


# virtual methods
.method public RemoveCableNotification()V
    .registers 5

    .prologue
    .line 681
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 682
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/usb/UsbHostManager$UsbHostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    if-nez v1, :cond_29

    .line 683
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update RemoveCableNotification :: failed to send message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_29
    return-void
.end method

.method public RemoveUsbDeviceNotification()V
    .registers 5

    .prologue
    .line 689
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 690
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbHostManager$UsbHostHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/usb/UsbHostManager$UsbHostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    if-nez v1, :cond_29

    .line 691
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update RemoveCableNotification :: failed to send message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_29
    return-void
.end method

.method displayNotification(Ljava/lang/String;III)V
    .registers 13
    .parameter "action"
    .parameter "deviceClass"
    .parameter "deviceSubclass"
    .parameter "deviceProtocol"

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x0

    const v3, 0x1080547

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 556
    const-string v0, "add"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 557
    const/4 v0, 0x6

    if-ne p2, v0, :cond_22

    .line 558
    const v1, 0x1040603

    new-instance v7, Ljava/lang/String;

    const-string v0, "UsbDevices"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 649
    :cond_21
    :goto_21
    return-void

    .line 567
    :cond_22
    if-ne p2, v1, :cond_38

    if-ne p3, v4, :cond_38

    if-ne p4, v4, :cond_38

    .line 570
    const v1, 0x10405f3

    new-instance v7, Ljava/lang/String;

    const-string v0, "UsbDevices"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_21

    .line 578
    :cond_38
    if-ne p2, v1, :cond_4f

    if-ne p3, v4, :cond_4f

    const/4 v0, 0x2

    if-ne p4, v0, :cond_4f

    .line 581
    const v1, 0x10405f6

    new-instance v7, Ljava/lang/String;

    const-string v0, "UsbDevices"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_21

    .line 589
    :cond_4f
    const/4 v0, 0x7

    if-ne p2, v0, :cond_62

    .line 590
    const v1, 0x1040600

    new-instance v7, Ljava/lang/String;

    const-string v0, "UsbDevices"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_21

    .line 599
    :cond_62
    const-string v0, "remove"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 601
    const/4 v0, 0x6

    if-ne p2, v0, :cond_80

    .line 602
    const v1, 0x1040604

    new-instance v7, Ljava/lang/String;

    const-string v0, "UsbDevices"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostManager;->RemoveUsbDeviceNotification()V

    goto :goto_21

    .line 613
    :cond_80
    if-ne p2, v1, :cond_99

    if-ne p3, v4, :cond_99

    if-ne p4, v4, :cond_99

    .line 616
    const v1, 0x10405f4

    new-instance v7, Ljava/lang/String;

    const-string v0, "UsbDevices"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostManager;->RemoveUsbDeviceNotification()V

    goto :goto_21

    .line 625
    :cond_99
    if-ne p2, v1, :cond_b4

    if-ne p3, v4, :cond_b4

    const/4 v0, 0x2

    if-ne p4, v0, :cond_b4

    .line 628
    const v1, 0x10405f7

    new-instance v7, Ljava/lang/String;

    const-string v0, "UsbDevices"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostManager;->RemoveUsbDeviceNotification()V

    goto/16 :goto_21

    .line 637
    :cond_b4
    const/4 v0, 0x7

    if-ne p2, v0, :cond_21

    .line 638
    const v1, 0x1040601

    new-instance v7, Ljava/lang/String;

    const-string v0, "UsbDevices"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 643
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostManager;->RemoveUsbDeviceNotification()V

    goto/16 :goto_21
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 25
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 267
    :try_start_7
    const-string v17, "  USB Host State:"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_18d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 269
    .local v10, name:Ljava/lang/String;
    sget-object v19, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/usb/UsbDevice;

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/usb/UsbDevice;

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/usb/UsbDevice;

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v17

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usb/UsbStringTable;->findString(III)Ljava/lang/String;

    move-result-object v14

    .line 273
    .local v14, szdevice:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "    "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ": "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ::"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    const/4 v5, 0x0

    .local v5, i:I
    :goto_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/usb/UsbDevice;

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_1e

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/usb/UsbDevice;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v7

    .line 277
    .local v7, iface:Landroid/hardware/usb/UsbInterface;
    sget-object v17, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v19

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v20

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usb/UsbStringTable;->findString(III)Ljava/lang/String;

    move-result-object v15

    .line 281
    .local v15, szinterface:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "       "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ": "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ::"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    const/4 v8, 0x0

    .local v8, j:I
    :goto_148
    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_189

    .line 284
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "         "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ": "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7, v8}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_186
    .catchall {:try_start_7 .. :try_end_186} :catchall_26b

    .line 283
    add-int/lit8 v8, v8, 0x1

    goto :goto_148

    .line 275
    :cond_189
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_bd

    .line 292
    .end local v5           #i:I
    .end local v7           #iface:Landroid/hardware/usb/UsbInterface;
    .end local v8           #j:I
    .end local v10           #name:Ljava/lang/String;
    .end local v14           #szdevice:Ljava/lang/String;
    .end local v15           #szinterface:Ljava/lang/String;
    :cond_18d
    :try_start_18d
    new-instance v11, Ljava/io/File;

    const-string v17, "/dev/bus/usb/"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v11, root:Ljava/io/File;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  files : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_221

    .line 296
    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 297
    .local v9, list:[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_1c7
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_221

    .line 298
    new-instance v13, Ljava/io/File;

    aget-object v17, v9, v5

    move-object/from16 v0, v17

    invoke-direct {v13, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 299
    .local v13, sub:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_21d

    .line 300
    invoke-virtual {v13}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v12

    .line 301
    .local v12, slist:[Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8       #j:I
    :goto_1e2
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_21d

    .line 302
    new-instance v16, Ljava/io/File;

    aget-object v17, v12, v8

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v13, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    .local v16, tmp:Ljava/io/File;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "      "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_21a
    .catchall {:try_start_18d .. :try_end_21a} :catchall_26b
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_21a} :catch_220

    .line 301
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e2

    .line 297
    .end local v8           #j:I
    .end local v12           #slist:[Ljava/lang/String;
    .end local v16           #tmp:Ljava/io/File;
    :cond_21d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c7

    .line 309
    .end local v5           #i:I
    .end local v9           #list:[Ljava/lang/String;
    .end local v11           #root:Ljava/io/File;
    .end local v13           #sub:Ljava/io/File;
    :catch_220
    move-exception v17

    .line 313
    :cond_221
    :try_start_221
    monitor-exit v18
    :try_end_222
    .catchall {:try_start_221 .. :try_end_222} :catchall_26b

    .line 315
    const-string v17, "  USB Host black list:"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 317
    :try_start_232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .line 318
    .local v4, count:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_23c
    if-ge v5, v4, :cond_26e

    .line 319
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "    "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_268
    .catchall {:try_start_232 .. :try_end_268} :catchall_270

    .line 318
    add-int/lit8 v5, v5, 0x1

    goto :goto_23c

    .line 313
    .end local v4           #count:I
    .end local v5           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_26b
    move-exception v17

    :try_start_26c
    monitor-exit v18
    :try_end_26d
    .catchall {:try_start_26c .. :try_end_26d} :catchall_26b

    throw v17

    .line 321
    .restart local v4       #count:I
    .restart local v5       #i:I
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_26e
    :try_start_26e
    monitor-exit v18

    .line 322
    return-void

    .line 321
    .end local v4           #count:I
    .end local v5           #i:I
    :catchall_270
    move-exception v17

    monitor-exit v18
    :try_end_272
    .catchall {:try_start_26e .. :try_end_272} :catchall_270

    throw v17
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .registers 6
    .parameter "devices"

    .prologue
    .line 240
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 241
    :try_start_3
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 242
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_d

    .line 244
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_28
    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    .line 245
    return-void
.end method

.method public openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .parameter "deviceName"

    .prologue
    .line 249
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ::: openDevice : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 251
    :try_start_1b
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 252
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "USB device is on a restricted bus"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_29

    throw v1

    .line 254
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 255
    .local v0, device:Landroid/hardware/usb/UsbDevice;
    if-nez v0, :cond_55

    .line 257
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist or is restricted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_55
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->checkPermission(Landroid/hardware/usb/UsbDevice;)V

    .line 261
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_2c .. :try_end_5f} :catchall_29

    return-object v1
.end method

.method public systemReady()V
    .registers 6

    .prologue
    .line 225
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v2, "systemReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 229
    :try_start_a
    new-instance v0, Lcom/android/server/usb/UsbHostManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostManager$1;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    .line 234
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "UsbService host thread"

    invoke-direct {v1, v3, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 235
    monitor-exit v2

    .line 236
    return-void

    .line 235
    .end local v0           #runnable:Ljava/lang/Runnable;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw v1
.end method
