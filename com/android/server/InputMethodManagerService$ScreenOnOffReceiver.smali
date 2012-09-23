.class Lcom/android/server/InputMethodManagerService$ScreenOnOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenOnOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ScreenOnOffReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 493
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 494
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ScreenOnOffReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-boolean v6, v3, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    .line 495
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ScreenOnOffReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    #calls: Lcom/android/server/InputMethodManagerService;->refreshImeWindowVisibilityLocked()V
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$000(Lcom/android/server/InputMethodManagerService;)V

    .line 523
    :goto_17
    :try_start_17
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ScreenOnOffReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ScreenOnOffReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v3, :cond_32

    .line 524
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ScreenOnOffReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$ScreenOnOffReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v4, v4, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputMethodClient;->setActive(Z)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_32} :catch_b3

    .line 530
    :cond_32
    :goto_32
    return-void

    .line 496
    :cond_33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 497
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ScreenOnOffReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-boolean v5, v3, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    .line 498
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ScreenOnOffReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    #calls: Lcom/android/server/InputMethodManagerService;->setImeWindowVisibilityStatusHiddenLocked()V
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$100(Lcom/android/server/InputMethodManagerService;)V

    goto :goto_17

    .line 499
    :cond_49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 500
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ScreenOnOffReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    .line 502
    const/4 v2, 0x0

    .line 503
    .local v2, reason:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 504
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_69

    .line 505
    const-string v3, "reason"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #reason:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 506
    .restart local v2       #reason:Ljava/lang/String;
    :cond_69
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ScreenOnOffReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v3, v3, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    if-ne v3, v6, :cond_32

    if-eqz v2, :cond_81

    const-string v3, "search"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    const-string v3, "recentapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 510
    :cond_81
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ScreenOnOffReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v3, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 511
    :try_start_86
    const-string v3, "InputManagerService"

    const-string v5, "onReceive() calling hidecurrentInputLocked"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ScreenOnOffReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 513
    monitor-exit v4

    goto :goto_32

    :catchall_96
    move-exception v3

    monitor-exit v4
    :try_end_98
    .catchall {:try_start_86 .. :try_end_98} :catchall_96

    throw v3

    .line 518
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #reason:Ljava/lang/String;
    :cond_99
    const-string v3, "InputManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 526
    :catch_b3
    move-exception v1

    .line 527
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "InputManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got RemoteException sending \'screen on/off\' notification to pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$ScreenOnOffReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$ScreenOnOffReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32
.end method
