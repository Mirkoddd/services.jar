.class Lcom/android/server/pm/PackageManagerService$MeasureParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MeasureParams"
.end annotation


# instance fields
.field private final mObserver:Landroid/content/pm/IPackageStatsObserver;

.field private final mStats:Landroid/content/pm/PackageStats;

.field private mSuccess:Z

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageStats;ZLandroid/content/pm/IPackageStatsObserver;)V
    .registers 6
    .parameter
    .parameter "stats"
    .parameter "success"
    .parameter "observer"

    .prologue
    .line 6381
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V

    .line 6382
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    .line 6383
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    .line 6384
    iput-boolean p3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z

    .line 6385
    return-void
.end method


# virtual methods
.method handleReturnCode()V
    .registers 5

    .prologue
    .line 6430
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    if-eqz v1, :cond_d

    .line 6432
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mObserver:Landroid/content/pm/IPackageStatsObserver;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mSuccess:Z

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageStatsObserver;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 6437
    :cond_d
    :goto_d
    return-void

    .line 6433
    :catch_e
    move-exception v0

    .line 6434
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PackageManager"

    const-string v2, "Observer no longer exists."

    invoke-static {v1, v2}, Landroid/util/safelog/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method handleServiceError()V
    .registers 4

    .prologue
    .line 6441
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not measure application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v2, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " external storage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6443
    return-void
.end method

.method handleStartCopy()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6391
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 6392
    const/4 v8, 0x1

    .line 6399
    .local v8, mounted:Z
    :goto_7
    if-eqz v8, :cond_7c

    .line 6400
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v9, v9, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 6402
    .local v0, externalCacheDir:Ljava/io/File;
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v9}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v1

    .line 6404
    .local v1, externalCacheSize:J
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 6406
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v9, v9, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 6408
    .local v3, externalDataDir:Ljava/io/File;
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v9}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v4

    .line 6411
    .local v4, externalDataSize:J
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_44

    .line 6412
    sub-long/2addr v4, v1

    .line 6414
    :cond_44
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iput-wide v4, v9, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 6416
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v9, v9, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 6418
    .local v6, externalMediaDir:Ljava/io/File;
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v10

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 6421
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v9, v9, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 6423
    .local v7, externalObbDir:Ljava/io/File;
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->mStats:Landroid/content/pm/PackageStats;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 6426
    .end local v0           #externalCacheDir:Ljava/io/File;
    .end local v1           #externalCacheSize:J
    .end local v3           #externalDataDir:Ljava/io/File;
    .end local v4           #externalDataSize:J
    .end local v6           #externalMediaDir:Ljava/io/File;
    .end local v7           #externalObbDir:Ljava/io/File;
    :cond_7c
    return-void

    .line 6395
    .end local v8           #mounted:Z
    :cond_7d
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$MeasureParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerService;->isInstalledStorageMounted()Z

    move-result v8

    .restart local v8       #mounted:Z
    goto :goto_7
.end method
