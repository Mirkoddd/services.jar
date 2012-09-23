.class Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService$PerformFullBackupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupRunner"
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mPackage:Landroid/content/pm/PackageInfo;

.field mPipe:Landroid/os/ParcelFileDescriptor;

.field mSendApk:Z

.field mToken:I

.field final synthetic this$1:Lcom/android/server/BackupManagerService$PerformFullBackupTask;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZ)V
    .registers 8
    .parameter
    .parameter "pack"
    .parameter "agent"
    .parameter "pipe"
    .parameter "token"
    .parameter "sendApk"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2261
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->this$1:Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2262
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    .line 2263
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    .line 2264
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    .line 2265
    iput p5, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mToken:I

    .line 2266
    iput-boolean p6, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mSendApk:Z

    .line 2267
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 2272
    :try_start_0
    new-instance v5, Landroid/app/backup/BackupDataOutput;

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 2276
    .local v5, output:Landroid/app/backup/BackupDataOutput;
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->this$1:Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->this$1:Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    iget-object v2, v2, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mManifestFile:Ljava/io/File;

    iget-boolean v3, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mSendApk:Z

    #calls: Lcom/android/server/BackupManagerService$PerformFullBackupTask;->writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->access$900(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V

    .line 2277
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->this$1:Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    iget-object v3, v3, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->this$1:Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    iget-object v4, v4, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mManifestFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    .line 2282
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mSendApk:Z

    if-eqz v0, :cond_3c

    .line 2283
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->this$1:Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    #calls: Lcom/android/server/BackupManagerService$PerformFullBackupTask;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V
    invoke-static {v0, v1, v5}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->access$1000(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V

    .line 2286
    :cond_3c
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling doFullBackup() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->this$1:Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mToken:I

    const-wide/32 v2, 0x493e0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/BackupManagerService$BackupRestoreTask;)V

    .line 2288
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    iget v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mToken:I

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->this$1:Lcom/android/server/BackupManagerService$PerformFullBackupTask;

    iget-object v3, v3, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IBackupAgent;->doFullBackup(Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_74
    .catchall {:try_start_0 .. :try_end_74} :catchall_c2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_74} :catch_7a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_74} :catch_9f

    .line 2296
    :try_start_74
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_79} :catch_9d

    .line 2299
    .end local v5           #output:Landroid/app/backup/BackupDataOutput;
    :goto_79
    return-void

    .line 2289
    :catch_7a
    move-exception v6

    .line 2290
    .local v6, e:Ljava/io/IOException;
    :try_start_7b
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error running full backup for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_7b .. :try_end_97} :catchall_c2

    .line 2296
    :try_start_97
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9c} :catch_9d

    goto :goto_79

    .line 2297
    .end local v6           #e:Ljava/io/IOException;
    :catch_9d
    move-exception v0

    goto :goto_79

    .line 2291
    :catch_9f
    move-exception v6

    .line 2292
    .local v6, e:Landroid/os/RemoteException;
    :try_start_a0
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote agent vanished during full backup of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catchall {:try_start_a0 .. :try_end_bc} :catchall_c2

    .line 2296
    :try_start_bc
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_c1} :catch_9d

    goto :goto_79

    .line 2295
    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_c2
    move-exception v0

    .line 2296
    :try_start_c3
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c8} :catch_c9

    .line 2295
    :goto_c8
    throw v0

    .line 2297
    :catch_c9
    move-exception v1

    goto :goto_c8
.end method
