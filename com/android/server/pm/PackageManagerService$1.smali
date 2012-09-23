.class final Lcom/android/server/pm/PackageManagerService$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->prefetch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 485
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 488
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 489
    .local v12, mStartTime:J
    sget v2, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    .line 490
    new-instance v2, Lcom/android/server/pm/PackageManagerService$PackageObjectMap;

    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerService$PackageObjectMap;-><init>()V

    sput-object v2, Lcom/android/server/pm/PackageManagerService;->pom:Lcom/android/server/pm/PackageManagerService$PackageObjectMap;

    .line 491
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "app"

    invoke-direct {v5, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 492
    .local v5, dir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, files:[Ljava/lang/String;
    const-string v2, "debug.separate_processes"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 497
    .local v20, separateProcesses:Ljava/lang/String;
    if-eqz v20, :cond_ba

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_ba

    .line 498
    const-string v2, "*"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 499
    const/16 v14, 0x8

    .line 500
    .local v14, nDefParseFlags:I
    const/16 v16, 0x0

    .line 501
    .local v16, nSeparateProcesses:[Ljava/lang/String;
    const-string v2, "PackageManager"

    const-string v3, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :goto_43
    move-object/from16 v6, v16

    .line 513
    .local v6, nSeparateProcessesInner:[Ljava/lang/String;
    or-int/lit8 v7, v14, 0x41

    .line 514
    .local v7, parseFlags:I
    new-instance v21, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$1$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService$1$1;-><init>(Lcom/android/server/pm/PackageManagerService$1;[Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;I)V

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 547
    .local v21, t1:Ljava/lang/Thread;
    const/16 v2, 0xa

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 548
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    .line 550
    new-instance v15, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "framework"

    invoke-direct {v15, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 551
    .local v15, nFrameDir:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 552
    .local v10, framedirfiles:[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_6f
    array-length v2, v10

    if-ge v11, v2, :cond_ff

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->isError:Z

    if-nez v2, :cond_ff

    .line 553
    new-instance v9, Ljava/io/File;

    aget-object v2, v10, v11

    invoke-direct {v9, v15, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 555
    .local v9, file:Ljava/io/File;
    aget-object v2, v10, v11

    #calls: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$200(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_be

    .line 552
    :cond_85
    :goto_85
    add-int/lit8 v11, v11, 0x1

    goto :goto_6f

    .line 503
    .end local v6           #nSeparateProcessesInner:[Ljava/lang/String;
    .end local v7           #parseFlags:I
    .end local v9           #file:Ljava/io/File;
    .end local v10           #framedirfiles:[Ljava/lang/String;
    .end local v11           #i:I
    .end local v14           #nDefParseFlags:I
    .end local v15           #nFrameDir:Ljava/io/File;
    .end local v16           #nSeparateProcesses:[Ljava/lang/String;
    .end local v21           #t1:Ljava/lang/Thread;
    :cond_88
    const/4 v14, 0x0

    .line 504
    .restart local v14       #nDefParseFlags:I
    const-string v2, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 505
    .restart local v16       #nSeparateProcesses:[Ljava/lang/String;
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Running with debug.separate_processes: "

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ad} :catch_ae

    goto :goto_43

    .line 610
    .end local v4           #files:[Ljava/lang/String;
    .end local v5           #dir:Ljava/io/File;
    .end local v12           #mStartTime:J
    .end local v14           #nDefParseFlags:I
    .end local v16           #nSeparateProcesses:[Ljava/lang/String;
    .end local v20           #separateProcesses:Ljava/lang/String;
    :catch_ae
    move-exception v8

    .line 611
    .local v8, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->isError:Z

    .line 612
    const-string v2, "BootTime"

    const-string v3, "Exiting Thread"

    invoke-static {v2, v3, v8}, Landroid/util/safelog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    .end local v8           #e:Ljava/lang/Exception;
    :goto_b9
    return-void

    .line 509
    .restart local v4       #files:[Ljava/lang/String;
    .restart local v5       #dir:Ljava/io/File;
    .restart local v12       #mStartTime:J
    .restart local v20       #separateProcesses:Ljava/lang/String;
    :cond_ba
    const/4 v14, 0x0

    .line 510
    .restart local v14       #nDefParseFlags:I
    const/16 v16, 0x0

    .restart local v16       #nSeparateProcesses:[Ljava/lang/String;
    goto :goto_43

    .line 559
    .restart local v6       #nSeparateProcessesInner:[Ljava/lang/String;
    .restart local v7       #parseFlags:I
    .restart local v9       #file:Ljava/io/File;
    .restart local v10       #framedirfiles:[Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v15       #nFrameDir:Ljava/io/File;
    .restart local v21       #t1:Ljava/lang/Thread;
    :cond_be
    :try_start_be
    aget-object v2, v10, v11

    const-string v3, "PhoneSetupWizard.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 561
    aget-object v2, v10, v11

    const-string v3, "SetupWizard.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 563
    aget-object v2, v10, v11

    const-string v3, "OrangeSetupWizard.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 567
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 568
    .local v19, scanPath:Ljava/lang/String;
    new-instance v18, Landroid/content/pm/PackageParser;

    invoke-direct/range {v18 .. v19}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 569
    .local v18, pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 570
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v1, v2, v7}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 573
    .local v17, pkg:Landroid/content/pm/PackageParser$Package;
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->pom:Lcom/android/server/pm/PackageManagerService$PackageObjectMap;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageObjectMap;->map:Ljava/util/HashMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_85

    .line 576
    .end local v9           #file:Ljava/io/File;
    .end local v17           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v18           #pp:Landroid/content/pm/PackageParser;
    .end local v19           #scanPath:Ljava/lang/String;
    :cond_ff
    array-length v2, v4

    div-int/lit8 v11, v2, 0x2

    :goto_102
    array-length v2, v4

    if-ge v11, v2, :cond_15c

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->isError:Z

    if-nez v2, :cond_15c

    .line 577
    new-instance v9, Ljava/io/File;

    aget-object v2, v4, v11

    invoke-direct {v9, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 579
    .restart local v9       #file:Ljava/io/File;
    aget-object v2, v4, v11

    #calls: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$200(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11b

    .line 576
    :cond_118
    :goto_118
    add-int/lit8 v11, v11, 0x1

    goto :goto_102

    .line 583
    :cond_11b
    aget-object v2, v4, v11

    const-string v3, "PhoneSetupWizard.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_118

    .line 585
    aget-object v2, v4, v11

    const-string v3, "SetupWizard.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_118

    .line 587
    aget-object v2, v4, v11

    const-string v3, "OrangeSetupWizard.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_118

    .line 591
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 592
    .restart local v19       #scanPath:Ljava/lang/String;
    new-instance v18, Landroid/content/pm/PackageParser;

    invoke-direct/range {v18 .. v19}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 593
    .restart local v18       #pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 594
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v1, v2, v7}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 597
    .restart local v17       #pkg:Landroid/content/pm/PackageParser$Package;
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->pom:Lcom/android/server/pm/PackageManagerService$PackageObjectMap;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageObjectMap;->map:Ljava/util/HashMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_118

    .line 600
    .end local v9           #file:Ljava/io/File;
    .end local v17           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v18           #pp:Landroid/content/pm/PackageParser;
    .end local v19           #scanPath:Ljava/lang/String;
    :cond_15c
    :goto_15c
    sget v2, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_177

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->isError:Z
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_163} :catch_ae

    if-nez v2, :cond_177

    .line 602
    :try_start_165
    const-string v2, "BootTime"

    const-string v3, "!@Sleeping for 10ms in prefetch Thread"

    invoke-static {v2, v3}, Landroid/util/safelog/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_171
    .catch Ljava/lang/InterruptedException; {:try_start_165 .. :try_end_171} :catch_172
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_171} :catch_ae

    goto :goto_15c

    .line 604
    :catch_172
    move-exception v8

    .line 605
    .local v8, e:Ljava/lang/InterruptedException;
    :try_start_173
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_15c

    .line 608
    .end local v8           #e:Ljava/lang/InterruptedException;
    :cond_177
    sget v2, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    .line 609
    const-string v2, "BootTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Prefetch Time Taken:"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v12

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_19f} :catch_ae

    goto/16 :goto_b9
.end method
