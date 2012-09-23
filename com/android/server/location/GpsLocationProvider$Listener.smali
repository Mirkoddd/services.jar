.class final Lcom/android/server/location/GpsLocationProvider$Listener;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field final mListener:Landroid/location/IGpsStatusListener;

.field mSensors:I

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;Landroid/location/IGpsStatusListener;)V
    .registers 4
    .parameter
    .parameter "listener"

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$Listener;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$Listener;->mSensors:I

    .line 1076
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    .line 1077
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 1080
    const-string v0, "GpsLocationProvider"

    const-string v1, "GPS status listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$Listener;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1083
    :try_start_e
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$Listener;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1084
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_27

    .line 1085
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    if-eqz v0, :cond_26

    .line 1086
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v0}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1088
    :cond_26
    return-void

    .line 1084
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method
