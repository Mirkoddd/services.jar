.class Lcom/android/server/ThermistorObserver$3;
.super Landroid/content/BroadcastReceiver;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermistorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThermistorObserver;


# direct methods
.method constructor <init>(Lcom/android/server/ThermistorObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 634
    iget-object v2, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mSystemReady:Z
    invoke-static {v2}, Lcom/android/server/ThermistorObserver;->access$800(Lcom/android/server/ThermistorObserver;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 656
    :cond_9
    :goto_9
    return-void

    .line 638
    :cond_a
    const-string v2, "temperature"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 639
    .local v1, newTemperature:I
    const/16 v0, 0x1a4

    .line 642
    .local v0, TEMPERATURE_THRESHOLD:I
    iget-object v2, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mBoolCurrentLimitBrightness:Z
    invoke-static {v2}, Lcom/android/server/ThermistorObserver;->access$900(Lcom/android/server/ThermistorObserver;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 643
    if-le v1, v0, :cond_9

    .line 644
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBatteryBRForAMOLED : onReceive() : limit brightness : true : newTemperature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v2, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    const/4 v3, 0x1

    #calls: Lcom/android/server/ThermistorObserver;->limitBrightness(Z)V
    invoke-static {v2, v3}, Lcom/android/server/ThermistorObserver;->access$1000(Lcom/android/server/ThermistorObserver;Z)V

    .line 646
    iget-object v2, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/ThermistorObserver;->access$1200(Lcom/android/server/ThermistorObserver;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mIntentSIOPEnable:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/server/ThermistorObserver;->access$1100(Lcom/android/server/ThermistorObserver;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9

    .line 650
    :cond_4c
    if-gt v1, v0, :cond_9

    .line 651
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBatteryBRForAMOLED : onReceive() : limit brightness : false : newTemperature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v2, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    #calls: Lcom/android/server/ThermistorObserver;->limitBrightness(Z)V
    invoke-static {v2, v5}, Lcom/android/server/ThermistorObserver;->access$1000(Lcom/android/server/ThermistorObserver;Z)V

    .line 653
    iget-object v2, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/ThermistorObserver;->access$1200(Lcom/android/server/ThermistorObserver;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThermistorObserver$3;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mIntentSIOPDisable:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/server/ThermistorObserver;->access$1300(Lcom/android/server/ThermistorObserver;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9
.end method
