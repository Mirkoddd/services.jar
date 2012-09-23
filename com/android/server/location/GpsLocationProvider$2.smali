.class Lcom/android/server/location/GpsLocationProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 377
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 380
    const-string v1, "GpsLocationProvider"

    const-string v2, "ALARM_WAKEUP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v2, 0x0

    #calls: Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V
    invoke-static {v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$100(Lcom/android/server/location/GpsLocationProvider;Z)V

    .line 407
    :cond_19
    :goto_19
    return-void

    .line 382
    :cond_1a
    const-string v1, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 383
    const-string v1, "GpsLocationProvider"

    const-string v2, "ALARM_TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->hibernate()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_19

    .line 385
    :cond_2f
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 387
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 388
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSensorAiding:Lcom/android/server/location/GpsLocationProvider$SensorAiding;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$SensorAiding;

    move-result-object v1

    #calls: Lcom/android/server/location/GpsLocationProvider$SensorAiding;->SensorAidingRotationChanged()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$SensorAiding;->access$400(Lcom/android/server/location/GpsLocationProvider$SensorAiding;)V

    goto :goto_19

    .line 390
    :cond_49
    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 391
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_19

    .line 392
    :cond_57
    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 393
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_19
.end method
