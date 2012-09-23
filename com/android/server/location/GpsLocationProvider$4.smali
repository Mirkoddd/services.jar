.class Lcom/android/server/location/GpsLocationProvider$4;
.super Ljava/lang/Thread;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V
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
    .line 716
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$4;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 718
    new-instance v0, Lcom/android/server/location/GpsXtraDownloader;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$4;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$900(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$4;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$1000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Landroid/content/Context;Ljava/util/Properties;)V

    .line 719
    .local v0, xtraDownloader:Lcom/android/server/location/GpsXtraDownloader;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$4;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v2

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mXtraData:[B
    invoke-static {v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$1102(Lcom/android/server/location/GpsLocationProvider;[B)[B

    .line 720
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$4;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    #calls: Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V

    .line 721
    return-void
.end method
