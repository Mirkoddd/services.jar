.class Lcom/android/server/wm/WindowManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 298
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 302
    const-string v3, "persist.tegra.hdmi.allowRot"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 304
    .local v2, hdmiAllowRot:Z
    if-eqz v2, :cond_1f

    .line 305
    const-string v3, "persist.tegra.hdmi.allowAni"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 307
    .local v1, hdmiAllowAni:Z
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v1, v3, Lcom/android/server/wm/WindowManagerService;->mHdmiAllowAni:Z

    .line 318
    .end local v1           #hdmiAllowAni:Z
    .end local v2           #hdmiAllowRot:Z
    :cond_1f
    :goto_1f
    return-void

    .line 310
    :cond_20
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 311
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    .line 312
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v4

    .line 314
    :try_start_35
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, -0x1

    #setter for: Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I
    invoke-static {v3, v5}, Lcom/android/server/wm/WindowManagerService;->access$202(Lcom/android/server/wm/WindowManagerService;I)I

    .line 315
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z
    invoke-static {v3, v5}, Lcom/android/server/wm/WindowManagerService;->access$102(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 316
    monitor-exit v4

    goto :goto_1f

    :catchall_43
    move-exception v3

    monitor-exit v4
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_43

    throw v3
.end method
