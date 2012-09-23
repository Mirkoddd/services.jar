.class Lcom/android/server/pm/PackageManagerService$10;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8413
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$10;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$10;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 8415
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8417
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 8418
    :try_start_c
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$10;->val$packageName:Ljava/lang/String;

    #calls: Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesLI(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/android/server/pm/PackageManagerService;->access$3200(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v1

    .line 8419
    .local v1, succeded:Z
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_21

    .line 8420
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$10;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v2, :cond_20

    .line 8422
    :try_start_19
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$10;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$10;->val$packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_24

    .line 8427
    :cond_20
    :goto_20
    return-void

    .line 8419
    .end local v1           #succeded:Z
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2

    .line 8423
    .restart local v1       #succeded:Z
    :catch_24
    move-exception v0

    .line 8424
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v3, "Observer no longer exists."

    invoke-static {v2, v3}, Landroid/util/safelog/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method
