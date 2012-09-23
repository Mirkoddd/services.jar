.class Lcom/android/server/MountService$ShutdownCallBack;
.super Lcom/android/server/MountService$UnmountCallBack;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShutdownCallBack"
.end annotation


# instance fields
.field observer:Landroid/os/storage/IMountShutdownObserver;

.field sendReport:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V
    .registers 6
    .parameter
    .parameter "path"
    .parameter "observer"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 400
    iput-object p1, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    .line 401
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 398
    iput-boolean v0, p0, Lcom/android/server/MountService$ShutdownCallBack;->sendReport:Z

    .line 402
    iput-object p3, p0, Lcom/android/server/MountService$ShutdownCallBack;->observer:Landroid/os/storage/IMountShutdownObserver;

    .line 403
    iput-boolean v1, p0, Lcom/android/server/MountService$ShutdownCallBack;->sendReport:Z

    .line 404
    return-void
.end method

.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;Z)V
    .registers 7
    .parameter
    .parameter "path"
    .parameter "observer"
    .parameter "sendReport"

    .prologue
    const/4 v1, 0x0

    .line 406
    iput-object p1, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    .line 407
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 398
    iput-boolean v1, p0, Lcom/android/server/MountService$ShutdownCallBack;->sendReport:Z

    .line 408
    iput-object p3, p0, Lcom/android/server/MountService$ShutdownCallBack;->observer:Landroid/os/storage/IMountShutdownObserver;

    .line 409
    iput-boolean p4, p0, Lcom/android/server/MountService$ShutdownCallBack;->sendReport:Z

    .line 410
    return-void
.end method


# virtual methods
.method handleFinished()V
    .registers 7

    .prologue
    .line 415
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleFinished :: ShutdownCallBack -> path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/server/MountService$UnmountCallBack;->removeEncryption:Z

    #calls: Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/MountService;->access$100(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I

    move-result v1

    .line 417
    .local v1, ret:I
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->observer:Landroid/os/storage/IMountShutdownObserver;

    if-eqz v2, :cond_4a

    iget-boolean v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->sendReport:Z

    if-eqz v2, :cond_4a

    .line 419
    :try_start_2d
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleFinished :: ShutdownCallBack ->  onShutDownComplete = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->observer:Landroid/os/storage/IMountShutdownObserver;

    invoke-interface {v2, v1}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4a} :catch_4b

    .line 425
    :cond_4a
    :goto_4a
    return-void

    .line 421
    :catch_4b
    move-exception v0

    .line 422
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v3, "RemoteException when shutting down"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method
