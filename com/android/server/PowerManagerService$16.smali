.class Lcom/android/server/PowerManagerService$16;
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


# static fields
.field private static final ACCELERATING_TIME_CONSTANT_MS:I = 0x7d0

.field private static final MAX_DEVIATION_FROM_GRAVITY:F = 1.5f

.field private static final MIN_ABS_ACCELERATION:F = 1.5f

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SAMPLING_PERIOD_MS:I = 0xc8


# instance fields
.field private mAccelerationDistrust:I

.field private mCnt:I

.field private mTiltDistrust:I

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3645
    iput-object p1, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3654
    iput v0, p0, Lcom/android/server/PowerManagerService$16;->mAccelerationDistrust:I

    .line 3655
    iput v0, p0, Lcom/android/server/PowerManagerService$16;->mTiltDistrust:I

    .line 3656
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/PowerManagerService$16;->mCnt:I

    return-void
.end method

.method private handleAccelerationDistrust(F)V
    .registers 4
    .parameter "deviation"

    .prologue
    .line 3674
    const/high16 v0, 0x3fc0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_12

    .line 3675
    iget v0, p0, Lcom/android/server/PowerManagerService$16;->mAccelerationDistrust:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_11

    .line 3676
    iget v0, p0, Lcom/android/server/PowerManagerService$16;->mAccelerationDistrust:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/PowerManagerService$16;->mAccelerationDistrust:I

    .line 3681
    :cond_11
    :goto_11
    return-void

    .line 3678
    :cond_12
    iget v0, p0, Lcom/android/server/PowerManagerService$16;->mAccelerationDistrust:I

    if-lez v0, :cond_11

    .line 3679
    iget v0, p0, Lcom/android/server/PowerManagerService$16;->mAccelerationDistrust:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService$16;->mAccelerationDistrust:I

    goto :goto_11
.end method

.method private lowpassFilter(FFF)F
    .registers 6
    .parameter "newValue"
    .parameter "oldValue"
    .parameter "alpha"

    .prologue
    .line 3659
    mul-float v0, p3, p1

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p3

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private tiltAngle(FF)F
    .registers 5
    .parameter "z"
    .parameter "magnitude"

    .prologue
    .line 3670
    div-float v0, p1, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    return v0
.end method

.method private vectorMagnitude(FFF)F
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 3662
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 3743
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 16
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3685
    iget-object v10, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$6700(Lcom/android/server/PowerManagerService;)Z

    move-result v10

    if-eqz v10, :cond_29

    .line 3686
    const-string v8, "PowerManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tilt onSensorChanged : return, isScreenTurningOffLocked : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$6700(Lcom/android/server/PowerManagerService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    :cond_28
    :goto_28
    return-void

    .line 3692
    :cond_29
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v10, v9

    .line 3693
    .local v5, x:F
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v10, v8

    .line 3694
    .local v6, y:F
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x2

    aget v7, v10, v11

    .line 3695
    .local v7, z:F
    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/PowerManagerService$16;->vectorMagnitude(FFF)F

    move-result v2

    .line 3696
    .local v2, magnitude:F
    const v10, 0x411ce80a

    sub-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 3698
    .local v1, deviation:F
    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService$16;->handleAccelerationDistrust(F)V

    .line 3699
    const/high16 v10, 0x3fc0

    cmpg-float v10, v2, v10

    if-ltz v10, :cond_28

    .line 3704
    const/high16 v0, 0x3f80

    .line 3705
    .local v0, alpha:F
    iget v10, p0, Lcom/android/server/PowerManagerService$16;->mAccelerationDistrust:I

    if-lez v10, :cond_55

    .line 3706
    const v0, 0x3dba2e8c

    .line 3708
    :cond_55
    invoke-direct {p0, v7, v2}, Lcom/android/server/PowerManagerService$16;->tiltAngle(FF)F

    move-result v3

    .line 3709
    .local v3, newTiltAngle:F
    iget-object v10, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v11, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mTiltAngle:F
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$7400(Lcom/android/server/PowerManagerService;)F

    move-result v11

    invoke-direct {p0, v3, v11, v0}, Lcom/android/server/PowerManagerService$16;->lowpassFilter(FFF)F

    move-result v11

    #setter for: Lcom/android/server/PowerManagerService;->mTiltAngle:F
    invoke-static {v10, v11}, Lcom/android/server/PowerManagerService;->access$7402(Lcom/android/server/PowerManagerService;F)F

    .line 3711
    iget-object v10, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v11

    monitor-enter v11

    .line 3712
    :try_start_6f
    iget-object v10, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v12, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsLockZone:Z
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)Z

    move-result v12

    #setter for: Lcom/android/server/PowerManagerService;->mBeforeIsLockZone:Z
    invoke-static {v10, v12}, Lcom/android/server/PowerManagerService;->access$7502(Lcom/android/server/PowerManagerService;Z)Z

    .line 3713
    iget-object v10, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mTiltAngle:F
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$7400(Lcom/android/server/PowerManagerService;)F

    move-result v10

    const/high16 v12, 0x4270

    cmpg-float v10, v10, v12

    if-gez v10, :cond_140

    iget-object v10, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorLatestValue:F
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$6800(Lcom/android/server/PowerManagerService;)F

    move-result v10

    const/high16 v12, 0x3f80

    cmpl-float v10, v10, v12

    if-lez v10, :cond_140

    .line 3714
    iget-object v10, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v12, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mIsLockZone:Z
    invoke-static {v10, v12}, Lcom/android/server/PowerManagerService;->access$6902(Lcom/android/server/PowerManagerService;Z)Z

    .line 3721
    :goto_98
    iget-object v10, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBeforeIsLockZone:Z
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$7500(Lcom/android/server/PowerManagerService;)Z

    move-result v10

    iget-object v12, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsLockZone:Z
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)Z

    move-result v12

    if-eq v10, v12, :cond_13a

    .line 3723
    const-string v10, "PowerManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mIsLockZone =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsLockZone:Z
    invoke-static {v13}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3725
    iget-object v10, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsLockZone:Z
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)Z

    move-result v10

    if-eqz v10, :cond_148

    iget-object v10, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)F

    move-result v10

    iget-object v12, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorLatestValue:F
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$6800(Lcom/android/server/PowerManagerService;)F

    move-result v12

    cmpl-float v10, v10, v12

    if-lez v10, :cond_148

    .line 3726
    iget-object v10, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)F

    move-result v10

    float-to-int v4, v10

    .line 3730
    .local v4, value:I
    :goto_e3
    iget-object v10, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$4600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3731
    iget-object v12, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v10, v4

    iget-object v13, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v13}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)F

    move-result v13

    cmpg-float v10, v10, v13

    if-gez v10, :cond_150

    move v10, v8

    :goto_100
    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v12, v10}, Lcom/android/server/PowerManagerService;->access$5802(Lcom/android/server/PowerManagerService;Z)Z

    .line 3732
    iget-object v10, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v12, v4

    iget-object v13, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v13}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_152

    :goto_110
    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v10, v8}, Lcom/android/server/PowerManagerService;->access$5902(Lcom/android/server/PowerManagerService;Z)Z

    .line 3733
    iget-object v8, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$5800(Lcom/android/server/PowerManagerService;)Z

    move-result v8

    if-nez v8, :cond_123

    iget-object v8, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)Z

    move-result v8

    if-eqz v8, :cond_13a

    .line 3734
    :cond_123
    iget-object v8, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v9, v4

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F
    invoke-static {v8, v9}, Lcom/android/server/PowerManagerService;->access$6002(Lcom/android/server/PowerManagerService;F)F

    .line 3735
    iget-object v8, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$4600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v9

    const-wide/16 v12, 0xbb8

    invoke-virtual {v8, v9, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3738
    .end local v4           #value:I
    :cond_13a
    monitor-exit v11

    goto/16 :goto_28

    :catchall_13d
    move-exception v8

    monitor-exit v11
    :try_end_13f
    .catchall {:try_start_6f .. :try_end_13f} :catchall_13d

    throw v8

    .line 3716
    :cond_140
    :try_start_140
    iget-object v10, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mIsLockZone:Z
    invoke-static {v10, v12}, Lcom/android/server/PowerManagerService;->access$6902(Lcom/android/server/PowerManagerService;Z)Z

    goto/16 :goto_98

    .line 3728
    :cond_148
    iget-object v10, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorLatestValue:F
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$6800(Lcom/android/server/PowerManagerService;)F
    :try_end_14d
    .catchall {:try_start_140 .. :try_end_14d} :catchall_13d

    move-result v10

    float-to-int v4, v10

    .restart local v4       #value:I
    goto :goto_e3

    :cond_150
    move v10, v9

    .line 3731
    goto :goto_100

    :cond_152
    move v8, v9

    .line 3732
    goto :goto_110
.end method
