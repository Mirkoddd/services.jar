.class Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider$SensorAiding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V
    .registers 2
    .parameter

    .prologue
    .line 2484
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 5
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 2486
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 2487
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #setter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I
    invoke-static {v0, p2}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$5802(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I

    .line 2490
    :cond_c
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2493
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2494
    .local v0, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_53

    .line 2495
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$5800(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    .line 2496
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #setter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$5802(Lcom/android/server/location/GpsLocationProvider$SensorAiding;I)I

    .line 2501
    :cond_1a
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$5900(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    aput v2, v1, v3

    .line 2502
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$5900(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    aput v2, v1, v4

    .line 2503
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$5900(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    aput v2, v1, v5

    .line 2504
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrRecent:[F
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$5900(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)[F

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #getter for: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->mGyrAccuracy:I
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$5800(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    .line 2507
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$SensorAiding$4;->this$1:Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    #calls: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingMakeSensorPacket()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$5300(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    .line 2509
    :cond_53
    return-void
.end method
