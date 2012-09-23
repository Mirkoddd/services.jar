.class Lcom/android/server/DevicePolicyManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;

.field final synthetic val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

.field final synthetic val$adminReceiver:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iput-object p3, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 734
    monitor-enter p0

    .line 735
    :try_start_1
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v5, v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v0

    .line 737
    .local v0, doProxyCleanup:Z
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 738
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked()V

    .line 740
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked()V

    .line 741
    if-eqz v0, :cond_2d

    .line 742
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    #calls: Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxy()V
    invoke-static {v5}, Lcom/android/server/DevicePolicyManagerService;->access$200(Lcom/android/server/DevicePolicyManagerService;)V

    .line 746
    :cond_2d
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;)J
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_57

    move-result-wide v3

    .line 747
    .local v3, timeMs:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_3d

    .line 748
    const-wide/32 v3, 0x7fffffff

    .line 751
    :cond_3d
    :try_start_3d
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    #calls: Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;
    invoke-static {v5}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;)Landroid/os/IPowerManager;

    move-result-object v5

    long-to-int v6, v3

    invoke-interface {v5, v6}, Landroid/os/IPowerManager;->setMaximumScreenOffTimeount(I)V
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_57
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_47} :catch_4e
    .catch Ljava/lang/SecurityException; {:try_start_3d .. :try_end_47} :catch_5a

    .line 758
    :goto_47
    :try_start_47
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    #calls: Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    invoke-static {v5}, Lcom/android/server/DevicePolicyManagerService;->access$100(Lcom/android/server/DevicePolicyManagerService;)V

    .line 759
    monitor-exit p0

    .line 760
    return-void

    .line 752
    :catch_4e
    move-exception v1

    .line 753
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failure talking with power manager"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    .line 759
    .end local v0           #doProxyCleanup:Z
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #timeMs:J
    :catchall_57
    move-exception v5

    monitor-exit p0
    :try_end_59
    .catchall {:try_start_47 .. :try_end_59} :catchall_57

    throw v5

    .line 754
    .restart local v0       #doProxyCleanup:Z
    .restart local v3       #timeMs:J
    :catch_5a
    move-exception v2

    .line 755
    .local v2, se:Ljava/lang/SecurityException;
    :try_start_5b
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failure talking with power manager"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_57

    goto :goto_47
.end method
