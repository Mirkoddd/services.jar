.class Lcom/android/server/PowerManagerService$TimeoutTask;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutTask"
.end annotation


# instance fields
.field nextState:I

.field remainingTimeoutOverride:J

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1445
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$TimeoutTask;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v6

    monitor-enter v6

    .line 1456
    :try_start_7
    iget v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_e

    .line 1457
    monitor-exit v6

    .line 1482
    :goto_d
    return-void

    .line 1460
    :cond_e
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    #setter for: Lcom/android/server/PowerManagerService;->mUserState:I
    invoke-static {v0, v3}, Lcom/android/server/PowerManagerService;->access$3102(Lcom/android/server/PowerManagerService;I)I

    .line 1461
    const-string v0, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timer 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerState:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$1000(Lcom/android/server/PowerManagerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mUserState:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWakeLockState:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$3200(Lcom/android/server/PowerManagerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x3

    #calls: Lcom/android/server/PowerManagerService;->printCurLock(I)V
    invoke-static {v0, v3}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;I)V

    .line 1463
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_75

    iget v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    iget-object v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWakeLockState:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$3200(Lcom/android/server/PowerManagerService;)I

    move-result v3

    or-int/2addr v0, v3

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_75

    .line 1464
    const-string v0, "PowerManagerService"

    const-string v3, "Screen__Off : Timeout"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_75
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    iget-object v4, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWakeLockState:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$3200(Lcom/android/server/PowerManagerService;)I

    move-result v4

    or-int/2addr v3, v4

    #calls: Lcom/android/server/PowerManagerService;->setPowerState(I)V
    invoke-static {v0, v3}, Lcom/android/server/PowerManagerService;->access$3400(Lcom/android/server/PowerManagerService;I)V

    .line 1468
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1470
    .local v1, now:J
    iget v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    packed-switch v0, :pswitch_data_ac

    .line 1481
    :goto_8c
    :pswitch_8c
    monitor-exit v6

    goto :goto_d

    .end local v1           #now:J
    :catchall_8e
    move-exception v0

    monitor-exit v6
    :try_end_90
    .catchall {:try_start_7 .. :try_end_90} :catchall_8e

    throw v0

    .line 1473
    .restart local v1       #now:J
    :pswitch_91
    :try_start_91
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDimDelay:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3500(Lcom/android/server/PowerManagerService;)I

    move-result v0

    if-ltz v0, :cond_a2

    .line 1474
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget-wide v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    const/4 v5, 0x1

    #calls: Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->access$3600(Lcom/android/server/PowerManagerService;JJI)V

    goto :goto_8c

    .line 1478
    :cond_a2
    :pswitch_a2
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget-wide v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    const/4 v5, 0x0

    #calls: Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->access$3600(Lcom/android/server/PowerManagerService;JJI)V
    :try_end_aa
    .catchall {:try_start_91 .. :try_end_aa} :catchall_8e

    goto :goto_8c

    .line 1470
    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_8c
        :pswitch_91
    .end packed-switch
.end method
