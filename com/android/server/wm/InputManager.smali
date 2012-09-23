.class public Lcom/android/server/wm/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InputManager$Callbacks;,
        Lcom/android/server/wm/InputManager$InputFilterHost;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final INPUT_EVENT_INJECTION_FAILED:I = 0x2

.field static final INPUT_EVENT_INJECTION_PERMISSION_DENIED:I = 0x1

.field static final INPUT_EVENT_INJECTION_SUCCEEDED:I = 0x0

.field static final INPUT_EVENT_INJECTION_SYNC_NONE:I = 0x0

.field static final INPUT_EVENT_INJECTION_SYNC_WAIT_FOR_FINISH:I = 0x2

.field static final INPUT_EVENT_INJECTION_SYNC_WAIT_FOR_RESULT:I = 0x1

.field static final INPUT_EVENT_INJECTION_TIMED_OUT:I = 0x3

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field public static final PEN_HOVERING:Ljava/lang/String; = "pen_hovering"

.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mCallbacks:Lcom/android/server/wm/InputManager$Callbacks;

.field private final mContext:Landroid/content/Context;

.field mInputFilter:Lcom/android/server/wm/InputFilter;

.field mInputFilterHost:Lcom/android/server/wm/InputManager$InputFilterHost;

.field final mInputFilterLock:Ljava/lang/Object;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 7
    .parameter "context"
    .parameter "windowManagerService"

    .prologue
    .line 145
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilterLock:Ljava/lang/Object;

    .line 146
    iput-object p1, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 148
    new-instance v1, Lcom/android/server/wm/InputManager$Callbacks;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/InputManager$Callbacks;-><init>(Lcom/android/server/wm/InputManager;Lcom/android/server/wm/InputManager$1;)V

    iput-object v1, p0, Lcom/android/server/wm/InputManager;->mCallbacks:Lcom/android/server/wm/InputManager$Callbacks;

    .line 150
    iget-object v1, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 152
    .local v0, looper:Landroid/os/Looper;
    const-string v1, "InputManager"

    const-string v2, "Initializing input manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/InputManager;->mCallbacks:Lcom/android/server/wm/InputManager$Callbacks;

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/InputManager;->nativeInit(Landroid/content/Context;Lcom/android/server/wm/InputManager$Callbacks;Landroid/os/MessageQueue;)V

    .line 156
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 157
    return-void
.end method

.method static synthetic access$200(Landroid/view/InputEvent;IIIII)I
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 58
    invoke-static/range {p0 .. p5}, Lcom/android/server/wm/InputManager;->nativeInjectInputEvent(Landroid/view/InputEvent;IIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/InputManager;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/InputManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getPointerSpeedSetting(I)I
    .registers 5
    .parameter "defaultValue"

    .prologue
    .line 483
    move v0, p1

    .line 485
    .local v0, speed:I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_speed"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    .line 489
    :goto_d
    return v0

    .line 487
    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method private getShowHoveringSetting(I)I
    .registers 7
    .parameter "defaultValue"

    .prologue
    .line 539
    move v1, p1

    .line 541
    .local v1, result:I
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 546
    :goto_e
    return v1

    .line 543
    :catch_f
    move-exception v0

    .line 544
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getShowHoveringSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method private getShowTouchesSetting(I)I
    .registers 5
    .parameter "defaultValue"

    .prologue
    .line 527
    move v0, p1

    .line 529
    .local v0, result:I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    .line 533
    :goto_d
    return v0

    .line 531
    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method private static native nativeDump()Ljava/lang/String;
.end method

.method private static native nativeGetInputConfiguration(Landroid/content/res/Configuration;)V
.end method

.method private static native nativeGetInputDevice(I)Landroid/view/InputDevice;
.end method

.method private static native nativeGetInputDeviceIds()[I
.end method

.method private static native nativeGetKeyCodeState(III)I
.end method

.method private static native nativeGetScanCodeState(III)I
.end method

.method private static native nativeGetSwitchState(III)I
.end method

.method private static native nativeGetWakeFlag(II)Z
.end method

.method private static native nativeHasKeys(II[I[Z)Z
.end method

.method private static native nativeInit(Landroid/content/Context;Lcom/android/server/wm/InputManager$Callbacks;Landroid/os/MessageQueue;)V
.end method

.method private static native nativeInjectInputEvent(Landroid/view/InputEvent;IIIII)I
.end method

.method private static native nativeMonitor()V
.end method

.method private static native nativeRegisterInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;Z)V
.end method

.method private static native nativeSetDisplayOrientation(II)V
.end method

.method private static native nativeSetDisplaySize(IIIII)V
.end method

.method private static native nativeSetFocusedApplication(Lcom/android/server/wm/InputApplicationHandle;)V
.end method

.method private static native nativeSetInputDispatchMode(ZZ)V
.end method

.method private static native nativeSetInputFilterEnabled(Z)V
.end method

.method private static native nativeSetInputWindows([Lcom/android/server/wm/InputWindowHandle;)V
.end method

.method private static native nativeSetLedState(Z)I
.end method

.method private static native nativeSetPointerSpeed(I)V
.end method

.method private static native nativeSetShowHovering(Z)V
.end method

.method private static native nativeSetShowTouches(Z)V
.end method

.method private static native nativeSetSystemUiVisibility(I)V
.end method

.method private static native nativeStart()V
.end method

.method private static native nativeTransferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
.end method

.method private static native nativeUnregisterInputChannel(Landroid/view/InputChannel;)V
.end method

.method private registerPointerSpeedSettingObserver()V
    .registers 6

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/wm/InputManager$1;

    iget-object v4, p0, Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/InputManager$1;-><init>(Lcom/android/server/wm/InputManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 480
    return-void
.end method

.method private registerShowHoveringSettingObserver()V
    .registers 6

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/wm/InputManager$3;

    iget-object v4, p0, Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/InputManager$3;-><init>(Lcom/android/server/wm/InputManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 524
    return-void
.end method

.method private registerShowTouchesSettingObserver()V
    .registers 6

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_touches"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/wm/InputManager$2;

    iget-object v4, p0, Lcom/android/server/wm/InputManager;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/InputManager$2;-><init>(Lcom/android/server/wm/InputManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 512
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3
    .parameter "pw"

    .prologue
    .line 550
    invoke-static {}, Lcom/android/server/wm/InputManager;->nativeDump()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, dumpStr:Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 552
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    :cond_9
    return-void
.end method

.method public getInputConfiguration(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 201
    if-nez p1, :cond_a

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_a
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeGetInputConfiguration(Landroid/content/res/Configuration;)V

    .line 206
    return-void
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 3
    .parameter "deviceId"

    .prologue
    .line 406
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeGetInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public getInputDeviceIds()[I
    .registers 2

    .prologue
    .line 414
    invoke-static {}, Lcom/android/server/wm/InputManager;->nativeGetInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getKeyCodeState(III)I
    .registers 5
    .parameter "deviceId"
    .parameter "sourceMask"
    .parameter "keyCode"

    .prologue
    .line 218
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/InputManager;->nativeGetKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getScanCodeState(III)I
    .registers 5
    .parameter "deviceId"
    .parameter "sourceMask"
    .parameter "scanCode"

    .prologue
    .line 231
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/InputManager;->nativeGetScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchState(III)I
    .registers 5
    .parameter "deviceId"
    .parameter "sourceMask"
    .parameter "switchCode"

    .prologue
    .line 250
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/InputManager;->nativeGetSwitchState(III)I

    move-result v0

    return v0
.end method

.method public getWakeFlag(II)Z
    .registers 4
    .parameter "deviceId"
    .parameter "keyCode"

    .prologue
    .line 236
    invoke-static {p1, p2}, Lcom/android/server/wm/InputManager;->nativeGetWakeFlag(II)Z

    move-result v0

    return v0
.end method

.method public hasKeys(II[I[Z)Z
    .registers 7
    .parameter "deviceId"
    .parameter "sourceMask"
    .parameter "keyCodes"
    .parameter "keyExists"

    .prologue
    .line 266
    if-nez p3, :cond_a

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyCodes must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_a
    if-eqz p4, :cond_10

    array-length v0, p4

    array-length v1, p3

    if-ge v0, v1, :cond_18

    .line 270
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyExists must not be null and must be at least as large as keyCodes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_18
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/InputManager;->nativeHasKeys(II[I[Z)Z

    move-result v0

    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;IIII)I
    .registers 12
    .parameter "event"
    .parameter "injectorPid"
    .parameter "injectorUid"
    .parameter "syncMode"
    .parameter "timeoutMillis"

    .prologue
    .line 380
    if-nez p1, :cond_a

    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_a
    if-ltz p2, :cond_e

    if-gez p3, :cond_16

    .line 384
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "injectorPid and injectorUid must not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_16
    if-gtz p5, :cond_20

    .line 387
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeoutMillis must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_20
    const/high16 v5, 0x800

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->nativeInjectInputEvent(Landroid/view/InputEvent;IIIII)I

    move-result v0

    return v0
.end method

.method public monitor()V
    .registers 3

    .prologue
    .line 558
    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_8

    .line 559
    invoke-static {}, Lcom/android/server/wm/InputManager;->nativeMonitor()V

    .line 560
    return-void

    .line 558
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .registers 7
    .parameter "inputChannelName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 283
    if-nez p1, :cond_c

    .line 284
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "inputChannelName must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_c
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 288
    .local v0, inputChannels:[Landroid/view/InputChannel;
    aget-object v1, v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Lcom/android/server/wm/InputManager;->nativeRegisterInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;Z)V

    .line 289
    aget-object v1, v0, v3

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 290
    aget-object v1, v0, v4

    return-object v1
.end method

.method public registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;)V
    .registers 5
    .parameter "inputChannel"
    .parameter "inputWindowHandle"

    .prologue
    .line 301
    if-nez p1, :cond_a

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_a
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/server/wm/InputManager;->nativeRegisterInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;Z)V

    .line 306
    return-void
.end method

.method public setDisplayOrientation(II)V
    .registers 5
    .parameter "displayId"
    .parameter "rotation"

    .prologue
    .line 190
    if-ltz p2, :cond_5

    const/4 v0, 0x3

    if-le p2, v0, :cond_d

    .line 191
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid rotation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_d
    invoke-static {p1, p2}, Lcom/android/server/wm/InputManager;->nativeSetDisplayOrientation(II)V

    .line 198
    return-void
.end method

.method public setDisplaySize(IIIII)V
    .registers 8
    .parameter "displayId"
    .parameter "width"
    .parameter "height"
    .parameter "externalWidth"
    .parameter "externalHeight"

    .prologue
    .line 178
    if-lez p2, :cond_8

    if-lez p3, :cond_8

    if-lez p4, :cond_8

    if-gtz p5, :cond_10

    .line 179
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid display id or dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_10
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/wm/InputManager;->nativeSetDisplaySize(IIIII)V

    .line 187
    return-void
.end method

.method public setFocusedApplication(Lcom/android/server/wm/InputApplicationHandle;)V
    .registers 2
    .parameter "application"

    .prologue
    .line 422
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetFocusedApplication(Lcom/android/server/wm/InputApplicationHandle;)V

    .line 423
    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .registers 3
    .parameter "enabled"
    .parameter "frozen"

    .prologue
    .line 426
    invoke-static {p1, p2}, Lcom/android/server/wm/InputManager;->nativeSetInputDispatchMode(ZZ)V

    .line 427
    return-void
.end method

.method public setInputFilter(Lcom/android/server/wm/InputFilter;)V
    .registers 6
    .parameter "filter"

    .prologue
    .line 332
    iget-object v2, p0, Lcom/android/server/wm/InputManager;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v2

    .line 333
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/InputManager;->mInputFilter:Lcom/android/server/wm/InputFilter;

    .line 334
    .local v0, oldFilter:Lcom/android/server/wm/InputFilter;
    if-ne v0, p1, :cond_9

    .line 335
    monitor-exit v2

    .line 353
    :goto_8
    return-void

    .line 338
    :cond_9
    if-eqz v0, :cond_19

    .line 339
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilter:Lcom/android/server/wm/InputFilter;

    .line 340
    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilterHost:Lcom/android/server/wm/InputManager$InputFilterHost;

    invoke-virtual {v1}, Lcom/android/server/wm/InputManager$InputFilterHost;->disconnectLocked()V

    .line 341
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilterHost:Lcom/android/server/wm/InputManager$InputFilterHost;

    .line 342
    invoke-virtual {v0}, Lcom/android/server/wm/InputFilter;->uninstall()V

    .line 345
    :cond_19
    if-eqz p1, :cond_2a

    .line 346
    iput-object p1, p0, Lcom/android/server/wm/InputManager;->mInputFilter:Lcom/android/server/wm/InputFilter;

    .line 347
    new-instance v1, Lcom/android/server/wm/InputManager$InputFilterHost;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/wm/InputManager$InputFilterHost;-><init>(Lcom/android/server/wm/InputManager;Lcom/android/server/wm/InputManager$1;)V

    iput-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilterHost:Lcom/android/server/wm/InputManager$InputFilterHost;

    .line 348
    iget-object v1, p0, Lcom/android/server/wm/InputManager;->mInputFilterHost:Lcom/android/server/wm/InputManager$InputFilterHost;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/InputFilter;->install(Lcom/android/server/wm/InputFilter$Host;)V

    .line 351
    :cond_2a
    if-eqz p1, :cond_35

    const/4 v1, 0x1

    :goto_2d
    invoke-static {v1}, Lcom/android/server/wm/InputManager;->nativeSetInputFilterEnabled(Z)V

    .line 352
    monitor-exit v2

    goto :goto_8

    .end local v0           #oldFilter:Lcom/android/server/wm/InputFilter;
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1

    .line 351
    .restart local v0       #oldFilter:Lcom/android/server/wm/InputFilter;
    :cond_35
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method public setInputWindows([Lcom/android/server/wm/InputWindowHandle;)V
    .registers 2
    .parameter "windowHandles"

    .prologue
    .line 418
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetInputWindows([Lcom/android/server/wm/InputWindowHandle;)V

    .line 419
    return-void
.end method

.method public setLedState(Z)I
    .registers 3
    .parameter "on"

    .prologue
    .line 396
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetLedState(Z)I

    move-result v0

    return v0
.end method

.method public setPointerSpeed(I)V
    .registers 4
    .parameter "speed"

    .prologue
    .line 462
    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 463
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetPointerSpeed(I)V

    .line 464
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 430
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeSetSystemUiVisibility(I)V

    .line 431
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 160
    const-string v0, "InputManager"

    const-string v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Lcom/android/server/wm/InputManager;->nativeStart()V

    .line 163
    invoke-direct {p0}, Lcom/android/server/wm/InputManager;->registerPointerSpeedSettingObserver()V

    .line 164
    invoke-direct {p0}, Lcom/android/server/wm/InputManager;->registerShowTouchesSettingObserver()V

    .line 167
    invoke-direct {p0}, Lcom/android/server/wm/InputManager;->registerShowHoveringSettingObserver()V

    .line 169
    invoke-virtual {p0}, Lcom/android/server/wm/InputManager;->updatePointerSpeedFromSettings()V

    .line 170
    invoke-virtual {p0}, Lcom/android/server/wm/InputManager;->updateShowTouchesFromSettings()V

    .line 173
    invoke-virtual {p0}, Lcom/android/server/wm/InputManager;->updateShowHoveringFromSettings()V

    .line 174
    return-void
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .registers 5
    .parameter "fromChannel"
    .parameter "toChannel"

    .prologue
    .line 447
    if-nez p1, :cond_a

    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_a
    if-nez p2, :cond_14

    .line 451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "toChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_14
    invoke-static {p1, p2}, Lcom/android/server/wm/InputManager;->nativeTransferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v0

    return v0
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .registers 4
    .parameter "inputChannel"

    .prologue
    .line 313
    if-nez p1, :cond_a

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_a
    invoke-static {p1}, Lcom/android/server/wm/InputManager;->nativeUnregisterInputChannel(Landroid/view/InputChannel;)V

    .line 318
    return-void
.end method

.method public updatePointerSpeedFromSettings()V
    .registers 3

    .prologue
    .line 467
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/InputManager;->getPointerSpeedSetting(I)I

    move-result v0

    .line 468
    .local v0, speed:I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputManager;->setPointerSpeed(I)V

    .line 469
    return-void
.end method

.method public updateShowHoveringFromSettings()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 499
    invoke-direct {p0, v1}, Lcom/android/server/wm/InputManager;->getShowHoveringSetting(I)I

    move-result v0

    .line 500
    .local v0, setting:I
    if-eqz v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    invoke-static {v1}, Lcom/android/server/wm/InputManager;->nativeSetShowHovering(Z)V

    .line 501
    return-void
.end method

.method public updateShowTouchesFromSettings()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 493
    invoke-direct {p0, v1}, Lcom/android/server/wm/InputManager;->getShowTouchesSetting(I)I

    move-result v0

    .line 494
    .local v0, setting:I
    if-eqz v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    invoke-static {v1}, Lcom/android/server/wm/InputManager;->nativeSetShowTouches(Z)V

    .line 495
    return-void
.end method
