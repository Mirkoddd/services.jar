.class final Lcom/android/server/pm/PackageManagerService$AppDirObserver;
.super Landroid/os/FileObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDirObserver"
.end annotation


# instance fields
.field private final mIsRom:Z

.field private final mRootDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V
    .registers 5
    .parameter
    .parameter "path"
    .parameter "mask"
    .parameter "isrom"

    .prologue
    .line 5913
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5914
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 5915
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    .line 5916
    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    .line 5917
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 21
    .parameter "event"
    .parameter "path"

    .prologue
    .line 5920
    const/4 v14, 0x0

    .line 5921
    .local v14, removedPackage:Ljava/lang/String;
    const/4 v15, -0x1

    .line 5922
    .local v15, removedUid:I
    const/4 v9, 0x0

    .line 5923
    .local v9, addedPackage:Ljava/lang/String;
    const/4 v10, -0x1

    .line 5926
    .local v10, addedUid:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 5927
    const/4 v13, 0x0

    .line 5928
    .local v13, fullPathStr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 5929
    .local v2, fullPath:Ljava/io/File;
    if-eqz p2, :cond_21

    .line 5930
    :try_start_11
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v12, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_31

    .line 5931
    .end local v2           #fullPath:Ljava/io/File;
    .local v12, fullPath:Ljava/io/File;
    :try_start_1c
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_fc

    move-result-object v13

    move-object v2, v12

    .line 5937
    .end local v12           #fullPath:Ljava/io/File;
    .restart local v2       #fullPath:Ljava/io/File;
    :cond_21
    :try_start_21
    #calls: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService;->access$200(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 5940
    monitor-exit v16

    .line 6006
    :cond_28
    :goto_28
    return-void

    .line 5945
    :cond_29
    #calls: Lcom/android/server/pm/PackageManagerService;->ignoreCodePath(Ljava/lang/String;)Z
    invoke-static {v13}, Lcom/android/server/pm/PackageManagerService;->access$1200(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 5946
    monitor-exit v16

    goto :goto_28

    .line 5991
    :catchall_31
    move-exception v1

    :goto_32
    monitor-exit v16
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_31

    throw v1

    .line 5948
    :cond_34
    const/4 v5, 0x0

    .line 5950
    .local v5, p:Landroid/content/pm/PackageParser$Package;
    :try_start_35
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_31

    .line 5951
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    move-object v5, v0

    .line 5952
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_ef

    .line 5953
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x248

    if-eqz v1, :cond_63

    .line 5954
    if-eqz v5, :cond_63

    .line 5955
    :try_start_53
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x1

    invoke-virtual {v1, v5, v3}, Lcom/android/server/pm/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 5956
    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5957
    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 5961
    :cond_63
    move/from16 v0, p1

    and-int/lit16 v1, v0, 0x88

    if-eqz v1, :cond_ad

    .line 5962
    if-nez v5, :cond_ad

    .line 5963
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    if-eqz v3, :cond_f2

    const/16 v3, 0x41

    :goto_77
    or-int/lit8 v3, v3, 0x2

    or-int/lit8 v3, v3, 0x4

    const/16 v4, 0x61

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .end local v5           #p:Landroid/content/pm/PackageParser$Package;
    #calls: Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$1300(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 5970
    .restart local v5       #p:Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_ad

    .line 5977
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_90
    .catchall {:try_start_53 .. :try_end_90} :catchall_31

    .line 5978
    :try_start_90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f4

    const/4 v6, 0x1

    :goto_9f
    const/4 v7, 0x0

    const/4 v8, 0x0

    #calls: Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$1400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 5980
    monitor-exit v17
    :try_end_a5
    .catchall {:try_start_90 .. :try_end_a5} :catchall_f6

    .line 5981
    :try_start_a5
    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5982
    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 5988
    :cond_ad
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_b4
    .catchall {:try_start_a5 .. :try_end_b4} :catchall_31

    .line 5989
    :try_start_b4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 5990
    monitor-exit v3
    :try_end_be
    .catchall {:try_start_b4 .. :try_end_be} :catchall_f9

    .line 5991
    :try_start_be
    monitor-exit v16
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_31

    .line 5993
    if-eqz v14, :cond_d9

    .line 5994
    new-instance v11, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v11, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 5995
    .local v11, extras:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v11, v1, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5996
    const-string v1, "android.intent.extra.DATA_REMOVED"

    const/4 v3, 0x0

    invoke-virtual {v11, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5997
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v14, v11, v3, v4}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V

    .line 6000
    .end local v11           #extras:Landroid/os/Bundle;
    :cond_d9
    if-eqz v9, :cond_28

    .line 6001
    new-instance v11, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v11, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 6002
    .restart local v11       #extras:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v11, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6003
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v9, v11, v3, v4}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V

    goto/16 :goto_28

    .line 5952
    .end local v11           #extras:Landroid/os/Bundle;
    :catchall_ef
    move-exception v1

    :try_start_f0
    monitor-exit v3
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    :try_start_f1
    throw v1
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_31

    .line 5963
    :cond_f2
    const/4 v3, 0x0

    goto :goto_77

    .line 5978
    :cond_f4
    const/4 v6, 0x0

    goto :goto_9f

    .line 5980
    :catchall_f6
    move-exception v1

    :try_start_f7
    monitor-exit v17
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    :try_start_f8
    throw v1
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_31

    .line 5990
    :catchall_f9
    move-exception v1

    :try_start_fa
    monitor-exit v3
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    :try_start_fb
    throw v1
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_31

    .line 5991
    .end local v2           #fullPath:Ljava/io/File;
    .end local v5           #p:Landroid/content/pm/PackageParser$Package;
    .restart local v12       #fullPath:Ljava/io/File;
    :catchall_fc
    move-exception v1

    move-object v2, v12

    .end local v12           #fullPath:Ljava/io/File;
    .restart local v2       #fullPath:Ljava/io/File;
    goto/16 :goto_32
.end method
