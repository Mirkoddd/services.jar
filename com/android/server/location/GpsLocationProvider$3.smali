.class Lcom/android/server/location/GpsLocationProvider$3;
.super Ljava/lang/Thread;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V
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
    .line 665
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 670
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$700(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 671
    const/4 v0, 0x1

    .line 675
    .local v0, success:I
    :goto_d
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v2, 0x6

    const/4 v3, 0x0

    #calls: Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v1, v2, v0, v3}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V

    .line 676
    return-void

    .line 673
    .end local v0           #success:I
    :cond_15
    const/4 v0, 0x0

    .restart local v0       #success:I
    goto :goto_d
.end method
