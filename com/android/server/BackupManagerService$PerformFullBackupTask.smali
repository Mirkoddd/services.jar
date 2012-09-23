.class Lcom/android/server/BackupManagerService$PerformFullBackupTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformFullBackupTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    }
.end annotation


# instance fields
.field mAllApps:Z

.field mCurrentPassword:Ljava/lang/String;

.field mDeflater:Ljava/util/zip/DeflaterOutputStream;

.field mEncryptPassword:Ljava/lang/String;

.field mFilesDir:Ljava/io/File;

.field mIncludeApks:Z

.field mIncludeShared:Z

.field final mIncludeSystem:Z

.field mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mManifestFile:Ljava/io/File;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZLjava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 15
    .parameter
    .parameter "fd"
    .parameter "observer"
    .parameter "includeApks"
    .parameter "includeShared"
    .parameter "curPassword"
    .parameter "encryptPassword"
    .parameter "doAllApps"
    .parameter "doSystem"
    .parameter "packages"
    .parameter "latch"

    .prologue
    .line 2305
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2306
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 2307
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 2308
    iput-boolean p4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeApks:Z

    .line 2309
    iput-boolean p5, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeShared:Z

    .line 2310
    iput-boolean p8, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mAllApps:Z

    .line 2311
    iput-boolean p9, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeSystem:Z

    .line 2312
    iput-object p10, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mPackages:[Ljava/lang/String;

    .line 2313
    iput-object p6, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mCurrentPassword:Ljava/lang/String;

    .line 2318
    if-eqz p7, :cond_1f

    const-string v0, ""

    invoke-virtual {v0, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2319
    :cond_1f
    iput-object p6, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 2323
    :goto_21
    iput-object p11, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2325
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mFilesDir:Ljava/io/File;

    .line 2326
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mFilesDir:Ljava/io/File;

    const-string v2, "_manifest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mManifestFile:Ljava/io/File;

    .line 2327
    return-void

    .line 2321
    :cond_38
    iput-object p7, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_21
.end method

.method static synthetic access$1000(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2238
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2238
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V

    return-void
.end method

.method private backupOnePackage(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)V
    .registers 21
    .parameter "pkg"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2560
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to full backup agent : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v4

    .line 2564
    .local v4, agent:Landroid/app/IBackupAgent;
    if-eqz v4, :cond_17f

    .line 2565
    const/4 v14, 0x0

    .line 2567
    .local v14, pipes:[Landroid/os/ParcelFileDescriptor;
    :try_start_2c
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    .line 2569
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2570
    .local v8, app:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeApks:Z

    if-eqz v2, :cond_b1

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x2000

    and-int/2addr v2, v3

    if-nez v2, :cond_b1

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4d

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_b1

    :cond_4d
    const/4 v7, 0x1

    .line 2575
    .local v7, sendApk:Z
    :goto_4e
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 2577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v6

    .line 2578
    .local v6, token:I
    new-instance v1, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;

    const/4 v2, 0x1

    aget-object v5, v14, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;-><init>(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZ)V

    .line 2580
    .local v1, runner:Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    const/4 v2, 0x1

    aget-object v2, v14, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2581
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v14, v2

    .line 2582
    new-instance v16, Ljava/lang/Thread;

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2583
    .local v16, t:Ljava/lang/Thread;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V
    :try_end_7f
    .catchall {:try_start_2c .. :try_end_7f} :catchall_162
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_7f} :catch_120

    .line 2587
    :try_start_7f
    new-instance v15, Ljava/io/FileInputStream;

    const/4 v2, 0x0

    aget-object v2, v14, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 2588
    .local v15, raw:Ljava/io/FileInputStream;
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2590
    .local v12, in:Ljava/io/DataInputStream;
    const/16 v2, 0x4000

    new-array v9, v2, [B

    .line 2592
    .local v9, buffer:[B
    :cond_94
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .local v10, chunkTotal:I
    if-lez v10, :cond_be

    .line 2593
    :goto_9a
    if-lez v10, :cond_94

    .line 2594
    array-length v2, v9

    if-le v10, v2, :cond_b3

    array-length v0, v9

    move/from16 v17, v0

    .line 2596
    .local v17, toRead:I
    :goto_a2
    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v9, v2, v0}, Ljava/io/DataInputStream;->read([BII)I

    move-result v13

    .line 2597
    .local v13, nRead:I
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v2, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_af
    .catchall {:try_start_7f .. :try_end_af} :catchall_162
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_af} :catch_b6

    .line 2598
    sub-int/2addr v10, v13

    .line 2599
    goto :goto_9a

    .line 2570
    .end local v1           #runner:Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .end local v6           #token:I
    .end local v7           #sendApk:Z
    .end local v9           #buffer:[B
    .end local v10           #chunkTotal:I
    .end local v12           #in:Ljava/io/DataInputStream;
    .end local v13           #nRead:I
    .end local v15           #raw:Ljava/io/FileInputStream;
    .end local v16           #t:Ljava/lang/Thread;
    .end local v17           #toRead:I
    :cond_b1
    const/4 v7, 0x0

    goto :goto_4e

    .restart local v1       #runner:Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .restart local v6       #token:I
    .restart local v7       #sendApk:Z
    .restart local v9       #buffer:[B
    .restart local v10       #chunkTotal:I
    .restart local v12       #in:Ljava/io/DataInputStream;
    .restart local v15       #raw:Ljava/io/FileInputStream;
    .restart local v16       #t:Ljava/lang/Thread;
    :cond_b3
    move/from16 v17, v10

    .line 2594
    goto :goto_a2

    .line 2601
    .end local v9           #buffer:[B
    .end local v10           #chunkTotal:I
    .end local v12           #in:Ljava/io/DataInputStream;
    .end local v15           #raw:Ljava/io/FileInputStream;
    :catch_b6
    move-exception v11

    .line 2602
    .local v11, e:Ljava/io/IOException;
    :try_start_b7
    const-string v2, "BackupManagerService"

    const-string v3, "Caught exception reading from agent"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2605
    .end local v11           #e:Ljava/io/IOException;
    :cond_be
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v2, v6}, Lcom/android/server/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v2

    if-nez v2, :cond_103

    .line 2606
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Full backup failed on package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catchall {:try_start_b7 .. :try_end_e4} :catchall_162
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_e4} :catch_120

    .line 2616
    :goto_e4
    :try_start_e4
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    .line 2617
    if-eqz v14, :cond_ff

    .line 2618
    const/4 v2, 0x0

    aget-object v2, v14, v2

    if-eqz v2, :cond_f4

    const/4 v2, 0x0

    aget-object v2, v14, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2619
    :cond_f4
    const/4 v2, 0x1

    aget-object v2, v14, v2

    if-eqz v2, :cond_ff

    const/4 v2, 0x1

    aget-object v2, v14, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_ff} :catch_1a6

    .line 2628
    .end local v1           #runner:Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .end local v6           #token:I
    .end local v7           #sendApk:Z
    .end local v8           #app:Landroid/content/pm/ApplicationInfo;
    .end local v14           #pipes:[Landroid/os/ParcelFileDescriptor;
    .end local v16           #t:Ljava/lang/Thread;
    :cond_ff
    :goto_ff
    invoke-direct/range {p0 .. p1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2629
    return-void

    .line 2608
    .restart local v1       #runner:Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .restart local v6       #token:I
    .restart local v7       #sendApk:Z
    .restart local v8       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v14       #pipes:[Landroid/os/ParcelFileDescriptor;
    .restart local v16       #t:Ljava/lang/Thread;
    :cond_103
    :try_start_103
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Full package backup success: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catchall {:try_start_103 .. :try_end_11f} :catchall_162
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_11f} :catch_120

    goto :goto_e4

    .line 2611
    .end local v1           #runner:Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .end local v6           #token:I
    .end local v7           #sendApk:Z
    .end local v8           #app:Landroid/content/pm/ApplicationInfo;
    .end local v16           #t:Ljava/lang/Thread;
    :catch_120
    move-exception v11

    .line 2612
    .restart local v11       #e:Ljava/io/IOException;
    :try_start_121
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error backing up "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13d
    .catchall {:try_start_121 .. :try_end_13d} :catchall_162

    .line 2616
    :try_start_13d
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    .line 2617
    if-eqz v14, :cond_ff

    .line 2618
    const/4 v2, 0x0

    aget-object v2, v14, v2

    if-eqz v2, :cond_14d

    const/4 v2, 0x0

    aget-object v2, v14, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2619
    :cond_14d
    const/4 v2, 0x1

    aget-object v2, v14, v2

    if-eqz v2, :cond_ff

    const/4 v2, 0x1

    aget-object v2, v14, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_158} :catch_159

    goto :goto_ff

    .line 2621
    :catch_159
    move-exception v11

    .line 2622
    const-string v2, "BackupManagerService"

    const-string v3, "Error bringing down backup stack"

    :goto_15e
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    .line 2614
    .end local v11           #e:Ljava/io/IOException;
    :catchall_162
    move-exception v2

    .line 2616
    :try_start_163
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    .line 2617
    if-eqz v14, :cond_17e

    .line 2618
    const/4 v3, 0x0

    aget-object v3, v14, v3

    if-eqz v3, :cond_173

    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2619
    :cond_173
    const/4 v3, 0x1

    aget-object v3, v14, v3

    if-eqz v3, :cond_17e

    const/4 v3, 0x1

    aget-object v3, v14, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_17e} :catch_19d

    .line 2614
    :cond_17e
    :goto_17e
    throw v2

    .line 2626
    .end local v14           #pipes:[Landroid/os/ParcelFileDescriptor;
    :cond_17f
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind to full agent for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ff

    .line 2621
    .restart local v14       #pipes:[Landroid/os/ParcelFileDescriptor;
    :catch_19d
    move-exception v11

    .line 2622
    .restart local v11       #e:Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    const-string v5, "Error bringing down backup stack"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17e

    .line 2621
    .end local v11           #e:Ljava/io/IOException;
    .restart local v1       #runner:Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .restart local v6       #token:I
    .restart local v7       #sendApk:Z
    .restart local v8       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v16       #t:Ljava/lang/Thread;
    :catch_1a6
    move-exception v11

    .line 2622
    .restart local v11       #e:Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Error bringing down backup stack"

    goto :goto_15e
.end method

.method private backupSharedStorage()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2655
    const/4 v2, 0x0

    .line 2657
    .local v2, pkg:Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.android.sharedstoragebackup"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2658
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 2660
    .local v0, agent:Landroid/app/IBackupAgent;
    if-eqz v0, :cond_5f

    .line 2661
    const-string v4, "Shared storage"

    invoke-virtual {p0, v4}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 2663
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v3

    .line 2664
    .local v3, token:I
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-wide/32 v5, 0x1b7740

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/android/server/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/BackupManagerService$BackupRestoreTask;)V

    .line 2665
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    iget-object v5, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, v4, v3, v5}, Landroid/app/IBackupAgent;->doFullBackup(Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 2666
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v4

    if-nez v4, :cond_49

    .line 2667
    const-string v4, "BackupManagerService"

    const-string v5, "Full backup failed on shared storage"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_45} :catch_51

    .line 2677
    .end local v0           #agent:Landroid/app/IBackupAgent;
    .end local v3           #token:I
    :goto_45
    invoke-direct {p0, v2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2679
    return-void

    .line 2669
    .restart local v0       #agent:Landroid/app/IBackupAgent;
    .restart local v3       #token:I
    :cond_49
    :try_start_49
    const-string v4, "BackupManagerService"

    const-string v5, "Full shared storage backup success"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_49 .. :try_end_50} :catch_51

    goto :goto_45

    .line 2674
    .end local v0           #agent:Landroid/app/IBackupAgent;
    .end local v3           #token:I
    :catch_51
    move-exception v1

    .line 2675
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_52
    const-string v4, "BackupManagerService"

    const-string v5, "Shared storage backup package not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_5a

    goto :goto_45

    .line 2677
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_5a
    move-exception v4

    invoke-direct {p0, v2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    throw v4

    .line 2672
    .restart local v0       #agent:Landroid/app/IBackupAgent;
    :cond_5f
    :try_start_5f
    const-string v4, "BackupManagerService"

    const-string v5, "Could not bind to shared storage backup agent"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5f .. :try_end_66} :catch_51

    goto :goto_45
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 23
    .parameter "headerbuf"
    .parameter "ofstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x200

    #calls: Lcom/android/server/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v17 .. v18}, Lcom/android/server/BackupManagerService;->access$1100(Lcom/android/server/BackupManagerService;I)[B

    move-result-object v15

    .line 2491
    .local v15, newUserSalt:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2710

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    #calls: Lcom/android/server/BackupManagerService;->buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    invoke-static {v0, v1, v15, v2}, Lcom/android/server/BackupManagerService;->access$1200(Lcom/android/server/BackupManagerService;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v16

    .line 2495
    .local v16, userKey:Ljavax/crypto/SecretKey;
    const/16 v17, 0x20

    move/from16 v0, v17

    new-array v11, v0, [B

    .line 2496
    .local v11, masterPw:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/BackupManagerService;->mRng:Ljava/security/SecureRandom;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$1300(Lcom/android/server/BackupManagerService;)Ljava/security/SecureRandom;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 2497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x200

    #calls: Lcom/android/server/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v17 .. v18}, Lcom/android/server/BackupManagerService;->access$1100(Lcom/android/server/BackupManagerService;I)[B

    move-result-object v7

    .line 2500
    .local v7, checksumSalt:[B
    const-string v17, "AES/CBC/PKCS5Padding"

    invoke-static/range {v17 .. v17}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 2501
    .local v5, c:Ljavax/crypto/Cipher;
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string v17, "AES"

    move-object/from16 v0, v17

    invoke-direct {v10, v11, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 2502
    .local v10, masterKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 2503
    new-instance v9, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v9, v0, v5}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 2506
    .local v9, finalOutput:Ljava/io/OutputStream;
    const-string v17, "AES-256"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2507
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v15}, Lcom/android/server/BackupManagerService;->access$1400(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2510
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/android/server/BackupManagerService;->access$1400(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2513
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2515
    const/16 v17, 0x2710

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2516
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2519
    const-string v17, "AES/CBC/PKCS5Padding"

    invoke-static/range {v17 .. v17}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v13

    .line 2520
    .local v13, mkC:Ljavax/crypto/Cipher;
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 2522
    invoke-virtual {v13}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    .line 2523
    .local v3, IV:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/server/BackupManagerService;->access$1400(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2536
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    .line 2537
    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v12

    .line 2538
    .local v12, mk:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v18

    const/16 v19, 0x2710

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    #calls: Lcom/android/server/BackupManagerService;->makeKeyChecksum([B[BI)[B
    invoke-static {v0, v1, v7, v2}, Lcom/android/server/BackupManagerService;->access$1500(Lcom/android/server/BackupManagerService;[B[BI)[B

    move-result-object v6

    .line 2541
    .local v6, checksum:[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    array-length v0, v3

    move/from16 v17, v0

    array-length v0, v12

    move/from16 v18, v0

    add-int v17, v17, v18

    array-length v0, v6

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2543
    .local v4, blob:Ljava/io/ByteArrayOutputStream;
    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2544
    .local v14, mkOut:Ljava/io/DataOutputStream;
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2545
    invoke-virtual {v14, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 2546
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2547
    invoke-virtual {v14, v12}, Ljava/io/DataOutputStream;->write([B)V

    .line 2548
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2549
    invoke-virtual {v14, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 2550
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->flush()V

    .line 2551
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    .line 2552
    .local v8, encryptedMk:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v8}, Lcom/android/server/BackupManagerService;->access$1400(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2553
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2555
    return-object v9
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .registers 6
    .parameter "out"

    .prologue
    .line 2684
    const/16 v2, 0x400

    :try_start_2
    new-array v1, v2, [B

    .line 2685
    .local v1, eof:[B
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_8

    .line 2689
    .end local v1           #eof:[B
    :goto_7
    return-void

    .line 2686
    :catch_8
    move-exception v0

    .line 2687
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Error attempting to finalize backup stream"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private tearDown(Landroid/content/pm/PackageInfo;)V
    .registers 7
    .parameter "pkg"

    .prologue
    .line 2731
    if-eqz p1, :cond_28

    .line 2732
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2733
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_28

    .line 2736
    :try_start_6
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$700(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 2739
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_28

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_28

    .line 2742
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$700(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_28} :catch_29

    .line 2751
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    :cond_28
    :goto_28
    return-void

    .line 2746
    .restart local v0       #app:Landroid/content/pm/ApplicationInfo;
    :catch_29
    move-exception v1

    .line 2747
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BackupManagerService"

    const-string v3, "Lost app trying to shut down"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V
    .registers 21
    .parameter "pkg"
    .parameter "output"

    .prologue
    .line 2633
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2634
    .local v5, appSourceDir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 2635
    .local v4, apkDir:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "a"

    const/4 v3, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    .line 2640
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 2641
    .local v16, obbDir:Ljava/io/File;
    if-eqz v16, :cond_4a

    .line 2643
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    .line 2644
    .local v17, obbFiles:[Ljava/io/File;
    if-eqz v17, :cond_4a

    .line 2645
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 2646
    .local v9, obbDirName:Ljava/lang/String;
    move-object/from16 v12, v17

    .local v12, arr$:[Ljava/io/File;
    array-length v14, v12

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_33
    if-ge v13, v14, :cond_4a

    aget-object v15, v12, v13

    .line 2647
    .local v15, obb:Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "obb"

    const/4 v8, 0x0

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    .line 2646
    add-int/lit8 v13, v13, 0x1

    goto :goto_33

    .line 2652
    .end local v9           #obbDirName:Ljava/lang/String;
    .end local v12           #arr$:[Ljava/io/File;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v15           #obb:Ljava/io/File;
    .end local v17           #obbFiles:[Ljava/io/File;
    :cond_4a
    return-void
.end method

.method private writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V
    .registers 14
    .parameter "pkg"
    .parameter "manifestFile"
    .parameter "withApk"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2704
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v8, 0x1000

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2705
    .local v1, builder:Ljava/lang/StringBuilder;
    new-instance v6, Landroid/util/StringBuilderPrinter;

    invoke-direct {v6, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 2707
    .local v6, printer:Landroid/util/StringBuilderPrinter;
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 2708
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 2709
    iget v8, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 2710
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 2712
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2713
    .local v3, installerName:Ljava/lang/String;
    if-eqz v3, :cond_60

    .end local v3           #installerName:Ljava/lang/String;
    :goto_39
    invoke-virtual {v6, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 2715
    if-eqz p3, :cond_63

    const-string v8, "1"

    :goto_40
    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 2716
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v8, :cond_66

    .line 2717
    const-string v8, "0"

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 2725
    :cond_4c
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2726
    .local v5, outstream:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 2727
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 2728
    return-void

    .line 2713
    .end local v5           #outstream:Ljava/io/FileOutputStream;
    .restart local v3       #installerName:Ljava/lang/String;
    :cond_60
    const-string v3, ""

    goto :goto_39

    .line 2715
    .end local v3           #installerName:Ljava/lang/String;
    :cond_63
    const-string v8, "0"

    goto :goto_40

    .line 2719
    :cond_66
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 2720
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_74
    if-ge v2, v4, :cond_4c

    aget-object v7, v0, v2

    .line 2721
    .local v7, sig:Landroid/content/pm/Signature;
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 2720
    add-int/lit8 v2, v2, 0x1

    goto :goto_74
.end method


# virtual methods
.method public run()V
    .registers 26

    .prologue
    .line 2331
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2333
    .local v18, packagesToBackup:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v21, "BackupManagerService"

    const-string v22, "--- Performing full-dataset backup ---"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendStartBackup()V

    .line 2337
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mAllApps:Z

    move/from16 v21, v0

    if-eqz v21, :cond_59

    .line 2338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v21 .. v21}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v21

    const/16 v22, 0x40

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v18

    .line 2341
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeSystem:Z

    move/from16 v21, v0

    if-nez v21, :cond_59

    .line 2342
    const/4 v13, 0x0

    .local v13, i:I
    :goto_30
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_59

    .line 2343
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PackageInfo;

    .line 2344
    .local v19, pkg:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_56

    .line 2345
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_30

    .line 2347
    :cond_56
    add-int/lit8 v13, v13, 0x1

    goto :goto_30

    .line 2356
    .end local v13           #i:I
    .end local v19           #pkg:Landroid/content/pm/PackageInfo;
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_af

    .line 2357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mPackages:[Ljava/lang/String;

    .local v4, arr$:[Ljava/lang/String;
    array-length v15, v4

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_67
    if-ge v14, v15, :cond_af

    aget-object v20, v4, v14

    .line 2359
    .local v20, pkgName:Ljava/lang/String;
    :try_start_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v21 .. v21}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v21

    const/16 v22, 0x40

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_88
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6b .. :try_end_88} :catch_8b

    .line 2357
    :goto_88
    add-int/lit8 v14, v14, 0x1

    goto :goto_67

    .line 2361
    :catch_8b
    move-exception v7

    .line 2362
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v21, "BackupManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unknown package "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", skipping"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 2368
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v20           #pkgName:Ljava/lang/String;
    :cond_af
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_b0
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_dc

    .line 2369
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PackageInfo;

    .line 2370
    .restart local v19       #pkg:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v21, v0

    const v22, 0x8000

    and-int v21, v21, v22

    if-nez v21, :cond_d9

    .line 2371
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_b0

    .line 2373
    :cond_d9
    add-int/lit8 v13, v13, 0x1

    goto :goto_b0

    .line 2377
    .end local v19           #pkg:Landroid/content/pm/PackageInfo;
    :cond_dc
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 2378
    .local v16, ofstream:Ljava/io/FileOutputStream;
    const/16 v17, 0x0

    .line 2380
    .local v17, out:Ljava/io/OutputStream;
    const/16 v19, 0x0

    .line 2382
    .restart local v19       #pkg:Landroid/content/pm/PackageInfo;
    :try_start_f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_19c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_19c

    const/4 v8, 0x1

    .line 2383
    .local v8, encrypting:Z
    :goto_108
    const/4 v5, 0x1

    .line 2384
    .local v5, compressing:Z
    move-object/from16 v9, v16

    .line 2388
    .local v9, finalOutput:Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/BackupManagerService;->hasBackupPassword()Z

    move-result v21

    if-eqz v21, :cond_19f

    .line 2389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mCurrentPassword:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x2710

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;I)Z

    move-result v21

    if-nez v21, :cond_19f

    .line 2390
    const-string v21, "BackupManagerService"

    const-string v22, "Backup password mismatch; aborting"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_132
    .catchall {:try_start_f3 .. :try_end_132} :catchall_37a
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_132} :catch_308

    .line 2467
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2469
    if-eqz v17, :cond_13c

    :try_start_13b
    throw v17

    .line 2470
    :cond_13c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_145} :catch_407

    .line 2474
    :goto_145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2475
    :try_start_152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V

    .line 2476
    monitor-exit v22
    :try_end_162
    .catchall {:try_start_152 .. :try_end_162} :catchall_3ef

    .line 2477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2478
    :try_start_169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 2480
    monitor-exit v22
    :try_end_182
    .catchall {:try_start_169 .. :try_end_182} :catchall_3f2

    .line 2481
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    .line 2482
    const-string v21, "BackupManagerService"

    const-string v22, "Full backup pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    .end local v5           #compressing:Z
    .end local v8           #encrypting:Z
    .end local v9           #finalOutput:Ljava/io/OutputStream;
    :goto_198
    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2485
    return-void

    .line 2382
    :cond_19c
    const/4 v8, 0x0

    goto/16 :goto_108

    .line 2420
    .restart local v5       #compressing:Z
    .restart local v8       #encrypting:Z
    .restart local v9       #finalOutput:Ljava/io/OutputStream;
    :cond_19f
    :try_start_19f
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v21, 0x400

    move/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2422
    .local v12, headerbuf:Ljava/lang/StringBuilder;
    const-string v21, "ANDROID BACKUP\n"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2423
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2424
    if-eqz v5, :cond_20c

    const-string v21, "\n1\n"

    :goto_1ba
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1bf
    .catchall {:try_start_19f .. :try_end_1bf} :catchall_37a
    .catch Landroid/os/RemoteException; {:try_start_19f .. :try_end_1bf} :catch_308

    .line 2428
    if-eqz v8, :cond_20f

    .line 2429
    :try_start_1c1
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_1c6
    .catchall {:try_start_1c1 .. :try_end_1c6} :catchall_37a
    .catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_1c6} :catch_218
    .catch Landroid/os/RemoteException; {:try_start_1c1 .. :try_end_1c6} :catch_308

    move-result-object v9

    move-object v10, v9

    .line 2434
    .end local v9           #finalOutput:Ljava/io/OutputStream;
    .local v10, finalOutput:Ljava/io/OutputStream;
    :goto_1c8
    :try_start_1c8
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "UTF-8"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 2435
    .local v11, header:[B
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 2438
    if-eqz v5, :cond_413

    .line 2439
    new-instance v6, Ljava/util/zip/Deflater;

    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 2440
    .local v6, deflater:Ljava/util/zip/Deflater;
    new-instance v9, Ljava/util/zip/DeflaterOutputStream;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-direct {v9, v10, v6, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_1eb
    .catchall {:try_start_1c8 .. :try_end_1eb} :catchall_37a
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1eb} :catch_40f
    .catch Landroid/os/RemoteException; {:try_start_1c8 .. :try_end_1eb} :catch_308

    .line 2443
    .end local v6           #deflater:Ljava/util/zip/Deflater;
    .end local v10           #finalOutput:Ljava/io/OutputStream;
    .restart local v9       #finalOutput:Ljava/io/OutputStream;
    :goto_1eb
    move-object/from16 v17, v9

    .line 2451
    :try_start_1ed
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    .line 2452
    .local v3, N:I
    const/4 v13, 0x0

    :goto_1f2
    if-ge v13, v3, :cond_28c

    .line 2453
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object/from16 v19, v0

    .line 2454
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->backupOnePackage(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)V

    .line 2452
    add-int/lit8 v13, v13, 0x1

    goto :goto_1f2

    .line 2424
    .end local v3           #N:I
    .end local v11           #header:[B
    :cond_20c
    const-string v21, "\n0\n"
    :try_end_20e
    .catchall {:try_start_1ed .. :try_end_20e} :catchall_37a
    .catch Landroid/os/RemoteException; {:try_start_1ed .. :try_end_20e} :catch_308

    goto :goto_1ba

    .line 2431
    :cond_20f
    :try_start_20f
    const-string v21, "none\n"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_216
    .catchall {:try_start_20f .. :try_end_216} :catchall_37a
    .catch Ljava/lang/Exception; {:try_start_20f .. :try_end_216} :catch_218
    .catch Landroid/os/RemoteException; {:try_start_20f .. :try_end_216} :catch_308

    move-object v10, v9

    .end local v9           #finalOutput:Ljava/io/OutputStream;
    .restart local v10       #finalOutput:Ljava/io/OutputStream;
    goto :goto_1c8

    .line 2444
    .end local v10           #finalOutput:Ljava/io/OutputStream;
    .restart local v9       #finalOutput:Ljava/io/OutputStream;
    :catch_218
    move-exception v7

    .line 2446
    .local v7, e:Ljava/lang/Exception;
    :goto_219
    :try_start_219
    const-string v21, "BackupManagerService"

    const-string v22, "Unable to emit archive header"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_224
    .catchall {:try_start_219 .. :try_end_224} :catchall_37a
    .catch Landroid/os/RemoteException; {:try_start_219 .. :try_end_224} :catch_308

    .line 2467
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2469
    if-eqz v17, :cond_22e

    :try_start_22d
    throw v17

    .line 2470
    :cond_22e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_237
    .catch Ljava/io/IOException; {:try_start_22d .. :try_end_237} :catch_404

    .line 2474
    :goto_237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2475
    :try_start_244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V

    .line 2476
    monitor-exit v22
    :try_end_254
    .catchall {:try_start_244 .. :try_end_254} :catchall_3f5

    .line 2477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2478
    :try_start_25b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 2480
    monitor-exit v22
    :try_end_274
    .catchall {:try_start_25b .. :try_end_274} :catchall_3f8

    .line 2481
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    .line 2482
    const-string v21, "BackupManagerService"

    const-string v22, "Full backup pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    goto/16 :goto_198

    .line 2458
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #N:I
    .restart local v11       #header:[B
    :cond_28c
    :try_start_28c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeShared:Z

    move/from16 v21, v0

    if-eqz v21, :cond_297

    .line 2459
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->backupSharedStorage()V

    .line 2463
    :cond_297
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_29e
    .catchall {:try_start_28c .. :try_end_29e} :catchall_37a
    .catch Landroid/os/RemoteException; {:try_start_28c .. :try_end_29e} :catch_308

    .line 2467
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2469
    if-eqz v17, :cond_2aa

    :try_start_2a7
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 2470
    :cond_2aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2b3
    .catch Ljava/io/IOException; {:try_start_2a7 .. :try_end_2b3} :catch_401

    .line 2474
    :goto_2b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2475
    :try_start_2c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V

    .line 2476
    monitor-exit v22
    :try_end_2d0
    .catchall {:try_start_2c0 .. :try_end_2d0} :catchall_3fb

    .line 2477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2478
    :try_start_2d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 2480
    monitor-exit v22
    :try_end_2f0
    .catchall {:try_start_2d7 .. :try_end_2f0} :catchall_3fe

    .line 2481
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    .line 2482
    const-string v21, "BackupManagerService"

    const-string v22, "Full backup pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    goto/16 :goto_198

    .line 2464
    .end local v3           #N:I
    .end local v5           #compressing:Z
    .end local v8           #encrypting:Z
    .end local v9           #finalOutput:Ljava/io/OutputStream;
    .end local v11           #header:[B
    .end local v12           #headerbuf:Ljava/lang/StringBuilder;
    :catch_308
    move-exception v7

    .line 2465
    .local v7, e:Landroid/os/RemoteException;
    :try_start_309
    const-string v21, "BackupManagerService"

    const-string v22, "App died during full backup"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_310
    .catchall {:try_start_309 .. :try_end_310} :catchall_37a

    .line 2467
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2469
    if-eqz v17, :cond_31c

    :try_start_319
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 2470
    :cond_31c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_325
    .catch Ljava/io/IOException; {:try_start_319 .. :try_end_325} :catch_40a

    .line 2474
    :goto_325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2475
    :try_start_332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V

    .line 2476
    monitor-exit v22
    :try_end_342
    .catchall {:try_start_332 .. :try_end_342} :catchall_3e9

    .line 2477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2478
    :try_start_349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 2480
    monitor-exit v22
    :try_end_362
    .catchall {:try_start_349 .. :try_end_362} :catchall_3ec

    .line 2481
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    .line 2482
    const-string v21, "BackupManagerService"

    const-string v22, "Full backup pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    goto/16 :goto_198

    .line 2467
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_37a
    move-exception v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2469
    if-eqz v17, :cond_387

    :try_start_384
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 2470
    :cond_387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_390
    .catch Ljava/io/IOException; {:try_start_384 .. :try_end_390} :catch_40d

    .line 2474
    :goto_390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2475
    :try_start_39d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->clear()V

    .line 2476
    monitor-exit v22
    :try_end_3ad
    .catchall {:try_start_39d .. :try_end_3ad} :catchall_3e3

    .line 2477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2478
    :try_start_3b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    .line 2480
    monitor-exit v22
    :try_end_3c9
    .catchall {:try_start_3b4 .. :try_end_3c9} :catchall_3e6

    .line 2481
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    .line 2482
    const-string v22, "BackupManagerService"

    const-string v23, "Full backup pass complete."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2467
    throw v21

    .line 2476
    :catchall_3e3
    move-exception v21

    :try_start_3e4
    monitor-exit v22
    :try_end_3e5
    .catchall {:try_start_3e4 .. :try_end_3e5} :catchall_3e3

    throw v21

    .line 2480
    :catchall_3e6
    move-exception v21

    :try_start_3e7
    monitor-exit v22
    :try_end_3e8
    .catchall {:try_start_3e7 .. :try_end_3e8} :catchall_3e6

    throw v21

    .line 2476
    .restart local v7       #e:Landroid/os/RemoteException;
    :catchall_3e9
    move-exception v21

    :try_start_3ea
    monitor-exit v22
    :try_end_3eb
    .catchall {:try_start_3ea .. :try_end_3eb} :catchall_3e9

    throw v21

    .line 2480
    :catchall_3ec
    move-exception v21

    :try_start_3ed
    monitor-exit v22
    :try_end_3ee
    .catchall {:try_start_3ed .. :try_end_3ee} :catchall_3ec

    throw v21

    .line 2476
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v5       #compressing:Z
    .restart local v8       #encrypting:Z
    .restart local v9       #finalOutput:Ljava/io/OutputStream;
    :catchall_3ef
    move-exception v21

    :try_start_3f0
    monitor-exit v22
    :try_end_3f1
    .catchall {:try_start_3f0 .. :try_end_3f1} :catchall_3ef

    throw v21

    .line 2480
    :catchall_3f2
    move-exception v21

    :try_start_3f3
    monitor-exit v22
    :try_end_3f4
    .catchall {:try_start_3f3 .. :try_end_3f4} :catchall_3f2

    throw v21

    .line 2476
    .local v7, e:Ljava/lang/Exception;
    .restart local v12       #headerbuf:Ljava/lang/StringBuilder;
    :catchall_3f5
    move-exception v21

    :try_start_3f6
    monitor-exit v22
    :try_end_3f7
    .catchall {:try_start_3f6 .. :try_end_3f7} :catchall_3f5

    throw v21

    .line 2480
    :catchall_3f8
    move-exception v21

    :try_start_3f9
    monitor-exit v22
    :try_end_3fa
    .catchall {:try_start_3f9 .. :try_end_3fa} :catchall_3f8

    throw v21

    .line 2476
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #N:I
    .restart local v11       #header:[B
    :catchall_3fb
    move-exception v21

    :try_start_3fc
    monitor-exit v22
    :try_end_3fd
    .catchall {:try_start_3fc .. :try_end_3fd} :catchall_3fb

    throw v21

    .line 2480
    :catchall_3fe
    move-exception v21

    :try_start_3ff
    monitor-exit v22
    :try_end_400
    .catchall {:try_start_3ff .. :try_end_400} :catchall_3fe

    throw v21

    .line 2471
    :catch_401
    move-exception v21

    goto/16 :goto_2b3

    .end local v3           #N:I
    .end local v11           #header:[B
    .restart local v7       #e:Ljava/lang/Exception;
    :catch_404
    move-exception v21

    goto/16 :goto_237

    .end local v7           #e:Ljava/lang/Exception;
    .end local v12           #headerbuf:Ljava/lang/StringBuilder;
    :catch_407
    move-exception v21

    goto/16 :goto_145

    .end local v5           #compressing:Z
    .end local v8           #encrypting:Z
    .end local v9           #finalOutput:Ljava/io/OutputStream;
    .local v7, e:Landroid/os/RemoteException;
    :catch_40a
    move-exception v21

    goto/16 :goto_325

    .end local v7           #e:Landroid/os/RemoteException;
    :catch_40d
    move-exception v22

    goto :goto_390

    .line 2444
    .restart local v5       #compressing:Z
    .restart local v8       #encrypting:Z
    .restart local v10       #finalOutput:Ljava/io/OutputStream;
    .restart local v12       #headerbuf:Ljava/lang/StringBuilder;
    :catch_40f
    move-exception v7

    move-object v9, v10

    .end local v10           #finalOutput:Ljava/io/OutputStream;
    .restart local v9       #finalOutput:Ljava/io/OutputStream;
    goto/16 :goto_219

    .end local v9           #finalOutput:Ljava/io/OutputStream;
    .restart local v10       #finalOutput:Ljava/io/OutputStream;
    .restart local v11       #header:[B
    :cond_413
    move-object v9, v10

    .end local v10           #finalOutput:Ljava/io/OutputStream;
    .restart local v9       #finalOutput:Ljava/io/OutputStream;
    goto/16 :goto_1eb
.end method

.method sendEndBackup()V
    .registers 4

    .prologue
    .line 2778
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    .line 2780
    :try_start_4
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndBackup()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 2786
    :cond_9
    :goto_9
    return-void

    .line 2781
    :catch_a
    move-exception v0

    .line 2782
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: endBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method

.method sendOnBackupPackage(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 2766
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    .line 2769
    :try_start_4
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 2775
    :cond_9
    :goto_9
    return-void

    .line 2770
    :catch_a
    move-exception v0

    .line 2771
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: backupPackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method

.method sendStartBackup()V
    .registers 4

    .prologue
    .line 2755
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    .line 2757
    :try_start_4
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartBackup()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 2763
    :cond_9
    :goto_9
    return-void

    .line 2758
    :catch_a
    move-exception v0

    .line 2759
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: startBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method
