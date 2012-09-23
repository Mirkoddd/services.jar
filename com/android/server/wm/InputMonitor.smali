.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"


# static fields
.field static final mIsEngBuild:Z


# instance fields
.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 54
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/InputMonitor;->mIsEngBuild:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .parameter "service"

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 58
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/wm/InputWindowHandle;)V
    .registers 5
    .parameter "windowHandle"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    if-nez v0, :cond_a

    .line 128
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/wm/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    .line 130
    :cond_a
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1f

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    .line 134
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object p1, v0, v1

    .line 135
    return-void
.end method

.method private clearInputWindowHandlesLw()V
    .registers 4

    .prologue
    .line 138
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    if-eqz v0, :cond_10

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 141
    :cond_10
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .registers 4

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InputManager;->setInputDispatchMode(ZZ)V

    .line 406
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/wm/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 6
    .parameter "focus"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 307
    if-eqz p1, :cond_10

    iget-object v1, p1, Lcom/android/server/wm/InputWindowHandle;->windowState:Landroid/view/WindowManagerPolicy$WindowState;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 308
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    :goto_7
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    .line 307
    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public freezeInputDispatchingLw()V
    .registers 2

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_a

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 378
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 380
    :cond_a
    return-void
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/wm/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .registers 7
    .parameter "focus"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 299
    if-eqz p1, :cond_10

    iget-object v1, p1, Lcom/android/server/wm/InputWindowHandle;->windowState:Landroid/view/WindowManagerPolicy$WindowState;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 300
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    :goto_7
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    return-wide v1

    .line 299
    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .registers 5
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .registers 3
    .parameter "policyFlags"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingWhenScreenOff(I)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/wm/InputApplicationHandle;Lcom/android/server/wm/InputWindowHandle;)J
    .registers 10
    .parameter "inputApplicationHandle"
    .parameter "inputWindowHandle"

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, appWindowToken:Lcom/android/server/wm/AppWindowToken;
    if-eqz p2, :cond_2f

    .line 91
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 92
    :try_start_8
    iget-object v2, p2, Lcom/android/server/wm/InputWindowHandle;->windowState:Landroid/view/WindowManagerPolicy$WindowState;

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 93
    .local v2, windowState:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_2e

    .line 94
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input event dispatching timed out sending to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 98
    :cond_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_62

    .line 101
    .end local v2           #windowState:Lcom/android/server/wm/WindowState;
    :cond_2f
    if-nez v1, :cond_51

    if-eqz p1, :cond_51

    .line 102
    iget-object v1, p1, Lcom/android/server/wm/InputApplicationHandle;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 103
    if-eqz v1, :cond_51

    .line 104
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input event dispatching timed out sending to application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_51
    if-eqz v1, :cond_66

    iget-object v3, v1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v3, :cond_66

    .line 114
    :try_start_57
    iget-object v3, v1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v3}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut()Z

    move-result v0

    .line 115
    .local v0, abort:Z
    if-nez v0, :cond_66

    .line 118
    iget-wide v3, v1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_61} :catch_65

    .line 123
    .end local v0           #abort:Z
    :goto_61
    return-wide v3

    .line 98
    :catchall_62
    move-exception v3

    :try_start_63
    monitor-exit v4
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v3

    .line 120
    :catch_65
    move-exception v3

    .line 123
    :cond_66
    const-wide/16 v3, 0x0

    goto :goto_61
.end method

.method public notifyConfigurationChanged()V
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 255
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_8
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    if-nez v0, :cond_14

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    .line 258
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 260
    :cond_14
    monitor-exit v1

    .line 261
    return-void

    .line 260
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public notifyInputChannelBroken(Lcom/android/server/wm/InputWindowHandle;)V
    .registers 7
    .parameter "inputWindowHandle"

    .prologue
    .line 65
    if-nez p1, :cond_3

    .line 80
    :goto_2
    return-void

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 70
    :try_start_8
    iget-object v0, p1, Lcom/android/server/wm/InputWindowHandle;->windowState:Landroid/view/WindowManagerPolicy$WindowState;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 71
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_31

    .line 72
    sget-boolean v1, Lcom/android/server/wm/InputMonitor;->mIsEngBuild:Z

    if-eqz v1, :cond_36

    .line 73
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_2a
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 79
    :cond_31
    monitor-exit v2

    goto :goto_2

    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :catchall_33
    move-exception v1

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_33

    throw v1

    .line 75
    .restart local v0       #windowState:Lcom/android/server/wm/WindowState;
    :cond_36
    :try_start_36
    const-string v1, "WindowManager"

    const-string v3, "WINDOW DIED windowState"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_33

    goto :goto_2a
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 5
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 279
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 4
    .parameter "window"

    .prologue
    const/4 v1, 0x1

    .line 350
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_a

    .line 355
    iput-boolean v1, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 356
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 358
    :cond_a
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .registers 3
    .parameter "window"

    .prologue
    .line 361
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_b

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 367
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 369
    :cond_b
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_9

    .line 399
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 400
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 402
    :cond_9
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5
    .parameter "newApp"

    .prologue
    .line 338
    if-nez p1, :cond_b

    .line 339
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputManager;->setFocusedApplication(Lcom/android/server/wm/InputApplicationHandle;)V

    .line 347
    :goto_a
    return-void

    .line 341
    :cond_b
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    .line 342
    .local v0, handle:Lcom/android/server/wm/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/InputApplicationHandle;->name:Ljava/lang/String;

    .line 343
    iget-wide v1, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v1, v0, Lcom/android/server/wm/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 345
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputManager;->setFocusedApplication(Lcom/android/server/wm/InputApplicationHandle;)V

    goto :goto_a
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .registers 5
    .parameter "newWindow"
    .parameter "updateInputWindows"

    .prologue
    const/4 v1, 0x0

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_1b

    .line 320
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 324
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 327
    :cond_11
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 328
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 330
    if-eqz p2, :cond_1b

    .line 331
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 334
    :cond_1b
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 145
    return-void
.end method

.method public thawInputDispatchingLw()V
    .registers 2

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_a

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 389
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 391
    :cond_a
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .registers 21
    .parameter "force"

    .prologue
    .line 149
    if-nez p1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 249
    :goto_a
    return-void

    .line 152
    :cond_b
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 164
    .local v16, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7e

    const/4 v11, 0x1

    .line 165
    .local v11, inDrag:Z
    :goto_2e
    if-eqz v11, :cond_47

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    .line 170
    .local v5, dragWindowHandle:Lcom/android/server/wm/InputWindowHandle;
    if-eqz v5, :cond_80

    .line 171
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/wm/InputWindowHandle;)V

    .line 178
    .end local v5           #dragWindowHandle:Lcom/android/server/wm/InputWindowHandle;
    :cond_47
    :goto_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 179
    .local v3, NFW:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_58
    if-ge v10, v3, :cond_88

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/FakeWindowImpl;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/wm/InputWindowHandle;)V

    .line 179
    add-int/lit8 v10, v10, 0x1

    goto :goto_58

    .line 164
    .end local v3           #NFW:I
    .end local v10           #i:I
    .end local v11           #inDrag:Z
    :cond_7e
    const/4 v11, 0x0

    goto :goto_2e

    .line 173
    .restart local v5       #dragWindowHandle:Lcom/android/server/wm/InputWindowHandle;
    .restart local v11       #inDrag:Z
    :cond_80
    const-string v17, "WindowManager"

    const-string v18, "Drag is in progress but there is no drag window handle."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 183
    .end local v5           #dragWindowHandle:Lcom/android/server/wm/InputWindowHandle;
    .restart local v3       #NFW:I
    .restart local v10       #i:I
    :cond_88
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 184
    .local v2, N:I
    add-int/lit8 v10, v2, -0x1

    :goto_8e
    if-ltz v10, :cond_1b5

    .line 185
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 186
    .local v4, child:Lcom/android/server/wm/WindowState;
    iget-object v12, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 187
    .local v12, inputChannel:Landroid/view/InputChannel;
    iget-object v13, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    .line 188
    .local v13, inputWindowHandle:Lcom/android/server/wm/InputWindowHandle;
    if-eqz v12, :cond_a6

    if-eqz v13, :cond_a6

    iget-boolean v0, v4, Lcom/android/server/wm/WindowState;->mRemoved:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a9

    .line 184
    :cond_a6
    :goto_a6
    add-int/lit8 v10, v10, -0x1

    goto :goto_8e

    .line 193
    :cond_a9
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 194
    .local v6, flags:I
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 196
    .local v15, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_1a4

    const/4 v8, 0x1

    .line 197
    .local v8, hasFocus:Z
    :goto_c4
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v14

    .line 198
    .local v14, isVisible:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_1a7

    const/16 v17, 0x7d4

    move/from16 v0, v17

    if-eq v15, v0, :cond_1a7

    const/4 v9, 0x1

    .line 203
    .local v9, hasWallpaper:Z
    :goto_df
    if-eqz v11, :cond_f4

    if-eqz v14, :cond_f4

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    .line 208
    :cond_f4
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/android/server/wm/InputWindowHandle;->name:Ljava/lang/String;

    .line 209
    iput v6, v13, Lcom/android/server/wm/InputWindowHandle;->layoutParamsFlags:I

    .line 210
    iput v15, v13, Lcom/android/server/wm/InputWindowHandle;->layoutParamsType:I

    .line 211
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v13, Lcom/android/server/wm/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 212
    iput-boolean v14, v13, Lcom/android/server/wm/InputWindowHandle;->visible:Z

    .line 213
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v17

    move/from16 v0, v17

    iput-boolean v0, v13, Lcom/android/server/wm/InputWindowHandle;->canReceiveKeys:Z

    .line 214
    iput-boolean v8, v13, Lcom/android/server/wm/InputWindowHandle;->hasFocus:Z

    .line 215
    iput-boolean v9, v13, Lcom/android/server/wm/InputWindowHandle;->hasWallpaper:Z

    .line 216
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1aa

    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    move/from16 v17, v0

    :goto_126
    move/from16 v0, v17

    iput-boolean v0, v13, Lcom/android/server/wm/InputWindowHandle;->paused:Z

    .line 217
    iget v0, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->layer:I

    .line 218
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->ownerPid:I

    .line 219
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->ownerUid:I

    .line 220
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->inputFeatures:I

    .line 222
    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 223
    .local v7, frame:Landroid/graphics/Rect;
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->frameLeft:I

    .line 224
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->frameTop:I

    .line 225
    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->frameRight:I

    .line 226
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->frameBottom:I

    .line 228
    iget v0, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v17, v0

    const/high16 v18, 0x3f80

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_1ae

    .line 232
    const/high16 v17, 0x3f80

    iget v0, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->scaleFactor:F

    .line 237
    :goto_194
    iget-object v0, v13, Lcom/android/server/wm/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 239
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/wm/InputWindowHandle;)V

    goto/16 :goto_a6

    .line 196
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v8           #hasFocus:Z
    .end local v9           #hasWallpaper:Z
    .end local v14           #isVisible:Z
    :cond_1a4
    const/4 v8, 0x0

    goto/16 :goto_c4

    .line 198
    .restart local v8       #hasFocus:Z
    .restart local v14       #isVisible:Z
    :cond_1a7
    const/4 v9, 0x0

    goto/16 :goto_df

    .line 216
    .restart local v9       #hasWallpaper:Z
    :cond_1aa
    const/16 v17, 0x0

    goto/16 :goto_126

    .line 234
    .restart local v7       #frame:Landroid/graphics/Rect;
    :cond_1ae
    const/high16 v17, 0x3f80

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->scaleFactor:F

    goto :goto_194

    .line 243
    .end local v4           #child:Lcom/android/server/wm/WindowState;
    .end local v6           #flags:I
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v8           #hasFocus:Z
    .end local v9           #hasWallpaper:Z
    .end local v12           #inputChannel:Landroid/view/InputChannel;
    .end local v13           #inputWindowHandle:Lcom/android/server/wm/InputWindowHandle;
    .end local v14           #isVisible:Z
    .end local v15           #type:I
    :cond_1b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wm/InputManager;->setInputWindows([Lcom/android/server/wm/InputWindowHandle;)V

    .line 246
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    goto/16 :goto_a
.end method

.method public waitForInputDevicesReady(J)Z
    .registers 5
    .parameter "timeoutMillis"

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-nez v0, :cond_c

    .line 268
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_13

    .line 272
    :cond_c
    :goto_c
    :try_start_c
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    monitor-exit v1

    return v0

    .line 273
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v0

    .line 269
    :catch_13
    move-exception v0

    goto :goto_c
.end method
