.class Lcom/android/server/PowerManagerService$15;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 3586
    iput-object p1, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 3641
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 13
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3588
    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v6

    monitor-enter v6

    .line 3590
    :try_start_9
    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6700(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 3591
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Light onSensorChanged : return, isScreenTurningOffLocked : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6700(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    monitor-exit v6

    .line 3637
    :goto_30
    return-void

    .line 3595
    :cond_31
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x0

    aget v5, v5, v7

    float-to-int v2, v5

    .line 3599
    .local v2, value:I
    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v7, v2

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorLatestValue:F
    invoke-static {v5, v7}, Lcom/android/server/PowerManagerService;->access$6802(Lcom/android/server/PowerManagerService;F)F

    .line 3600
    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsLockZone:Z
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-eqz v5, :cond_57

    int-to-float v5, v2

    iget-object v7, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_57

    .line 3604
    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)F

    move-result v5

    float-to-int v2, v5

    .line 3608
    :cond_57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3612
    .local v0, milliseconds:J
    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)F

    move-result v5

    const/high16 v7, -0x4080

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_79

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$7100(Lcom/android/server/PowerManagerService;)J

    move-result-wide v7

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;)I

    move-result v5

    int-to-long v9, v5

    add-long/2addr v7, v9

    cmp-long v5, v0, v7

    if-gez v5, :cond_9e

    .line 3615
    :cond_79
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$4600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3616
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$5802(Lcom/android/server/PowerManagerService;Z)Z

    .line 3617
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$5902(Lcom/android/server/PowerManagerService;Z)Z

    .line 3618
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V
    invoke-static {v3, v2}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;I)V

    .line 3636
    :cond_99
    :goto_99
    monitor-exit v6

    goto :goto_30

    .end local v0           #milliseconds:J
    .end local v2           #value:I
    :catchall_9b
    move-exception v3

    monitor-exit v6
    :try_end_9d
    .catchall {:try_start_9 .. :try_end_9d} :catchall_9b

    throw v3

    .line 3620
    .restart local v0       #milliseconds:J
    .restart local v2       #value:I
    :cond_9e
    int-to-float v5, v2

    :try_start_9f
    iget-object v7, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)F

    move-result v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_b1

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$5800(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-nez v5, :cond_df

    :cond_b1
    int-to-float v5, v2

    iget-object v7, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_c4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-nez v5, :cond_df

    :cond_c4
    int-to-float v5, v2

    iget-object v7, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)F

    move-result v7

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_df

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$5800(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-nez v5, :cond_13c

    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-nez v5, :cond_13c

    .line 3625
    :cond_df
    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$4600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3626
    iget-object v7, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v5, v2

    iget-object v8, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)F

    move-result v8

    cmpg-float v5, v5, v8

    if-gez v5, :cond_138

    move v5, v3

    :goto_fc
    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v7, v5}, Lcom/android/server/PowerManagerService;->access$5802(Lcom/android/server/PowerManagerService;Z)Z

    .line 3627
    iget-object v5, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v7, v2

    iget-object v8, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_13a

    :goto_10c
    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v5, v3}, Lcom/android/server/PowerManagerService;->access$5902(Lcom/android/server/PowerManagerService;Z)Z

    .line 3628
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$5800(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_11f

    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 3629
    :cond_11f
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v4, v2

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$6002(Lcom/android/server/PowerManagerService;F)F

    .line 3630
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$4600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v7, 0xbb8

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_99

    :cond_138
    move v5, v4

    .line 3626
    goto :goto_fc

    :cond_13a
    move v3, v4

    .line 3627
    goto :goto_10c

    .line 3633
    :cond_13c
    iget-object v3, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v4, v2

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$6002(Lcom/android/server/PowerManagerService;F)F
    :try_end_142
    .catchall {:try_start_9f .. :try_end_142} :catchall_9b

    goto/16 :goto_99
.end method
