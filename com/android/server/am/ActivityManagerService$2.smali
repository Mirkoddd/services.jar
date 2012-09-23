.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 926
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 56
    .parameter "msg"

    .prologue
    .line 932
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_7d2

    .line 1406
    :cond_7
    :goto_7
    return-void

    .line 934
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/util/HashMap;

    .line 935
    .local v25, data:Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 936
    :try_start_15
    const-string v4, "app"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .line 937
    .local v44, proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v44, :cond_46

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_46

    .line 938
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has crash dialog: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    monitor-exit v5

    goto :goto_7

    .line 962
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_43
    move-exception v4

    monitor-exit v5
    :try_end_45
    .catchall {:try_start_15 .. :try_end_45} :catchall_43

    throw v4

    .line 941
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_46
    :try_start_46
    const-string v4, "result"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/am/AppErrorResult;

    .line 942
    .local v48, res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_b7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_b7

    .line 944
    const/16 v24, 0x0

    .line 946
    .local v24, d:Landroid/app/Dialog;
    invoke-static {}, Lcom/samsung/CustomerCrashReport;->isCCRInstalled()Z

    move-result v4

    if-eqz v4, :cond_a5

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-nez v4, :cond_a5

    .line 947
    const-string v4, "ActivityManager"

    const-string v6, "This device is CCR target. it will make CCR button"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const-string v4, "crashInfo"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 950
    .local v23, crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;
    new-instance v24, Lcom/android/server/am/AppErrorDialog;

    .end local v24           #d:Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move-object/from16 v2, v44

    move-object/from16 v3, v23

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 954
    .end local v23           #crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local v24       #d:Landroid/app/Dialog;
    :goto_92
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/BaseErrorDialog;->show()V

    .line 955
    move-object/from16 v0, v24

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 962
    .end local v24           #d:Landroid/app/Dialog;
    :goto_9b
    monitor-exit v5
    :try_end_9c
    .catchall {:try_start_46 .. :try_end_9c} :catchall_43

    .line 964
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 952
    .restart local v24       #d:Landroid/app/Dialog;
    :cond_a5
    :try_start_a5
    new-instance v24, Lcom/android/server/am/AppErrorDialog;

    .end local v24           #d:Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move-object/from16 v2, v44

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .restart local v24       #d:Landroid/app/Dialog;
    goto :goto_92

    .line 960
    .end local v24           #d:Landroid/app/Dialog;
    :cond_b7
    const/4 v4, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_bd
    .catchall {:try_start_a5 .. :try_end_bd} :catchall_43

    goto :goto_9b

    .line 967
    .end local v25           #data:Ljava/util/HashMap;
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v48           #res:Lcom/android/server/am/AppErrorResult;
    :sswitch_be
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/util/HashMap;

    .line 968
    .restart local v25       #data:Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 969
    :try_start_cb
    const-string v4, "errorpermission"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    .line 970
    .local v41, permission:Ljava/lang/String;
    const-string v4, "app"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .line 971
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v44, :cond_107

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_107

    .line 972
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has crash dialog: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    monitor-exit v5

    goto/16 :goto_7

    .line 985
    .end local v41           #permission:Ljava/lang/String;
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_104
    move-exception v4

    monitor-exit v5
    :try_end_106
    .catchall {:try_start_cb .. :try_end_106} :catchall_104

    throw v4

    .line 975
    .restart local v41       #permission:Ljava/lang/String;
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_107
    :try_start_107
    const-string v4, "result"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/am/AppErrorResult;

    .line 976
    .restart local v48       #res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_147

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_147

    .line 977
    new-instance v24, Lcom/android/server/am/AppPermissionErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move-object/from16 v2, v44

    move-object/from16 v3, v41

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/AppPermissionErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 978
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/AppPermissionErrorDialog;->show()V

    .line 979
    move-object/from16 v0, v24

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 985
    .end local v24           #d:Landroid/app/Dialog;
    :goto_13d
    monitor-exit v5
    :try_end_13e
    .catchall {:try_start_107 .. :try_end_13e} :catchall_104

    .line 987
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 983
    :cond_147
    const/4 v4, 0x0

    :try_start_148
    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_14d
    .catchall {:try_start_148 .. :try_end_14d} :catchall_104

    goto :goto_13d

    .line 990
    .end local v25           #data:Ljava/util/HashMap;
    .end local v41           #permission:Ljava/lang/String;
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v48           #res:Lcom/android/server/am/AppErrorResult;
    :sswitch_14e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/util/HashMap;

    .line 991
    .restart local v25       #data:Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 992
    :try_start_15b
    const-string v4, "newIntent_intent"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/Intent;

    .line 993
    .local v35, newIntent:Landroid/content/Intent;
    const-string v4, "newIntent_packagename"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;
    :try_end_16f
    .catchall {:try_start_15b .. :try_end_16f} :catchall_192

    .line 996
    .local v20, cmPackagename:Ljava/lang/String;
    :try_start_16f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/content/pm/IPackageManager;->getManagedPermissions(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_178
    .catchall {:try_start_16f .. :try_end_178} :catchall_192
    .catch Landroid/os/RemoteException; {:try_start_16f .. :try_end_178} :catch_195

    move-result-object v21

    .line 1000
    .local v21, cmPermissions:[Ljava/lang/String;
    :goto_179
    :try_start_179
    new-instance v24, Lcom/android/server/am/AppPermissionAlertDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v35

    move-object/from16 v3, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/AppPermissionAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;[Ljava/lang/String;)V

    .line 1001
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/BaseErrorDialog;->show()V

    .line 1003
    monitor-exit v5

    goto/16 :goto_7

    .end local v20           #cmPackagename:Ljava/lang/String;
    .end local v21           #cmPermissions:[Ljava/lang/String;
    .end local v24           #d:Landroid/app/Dialog;
    .end local v35           #newIntent:Landroid/content/Intent;
    :catchall_192
    move-exception v4

    monitor-exit v5
    :try_end_194
    .catchall {:try_start_179 .. :try_end_194} :catchall_192

    throw v4

    .line 997
    .restart local v20       #cmPackagename:Ljava/lang/String;
    .restart local v35       #newIntent:Landroid/content/Intent;
    :catch_195
    move-exception v27

    .line 998
    .local v27, e:Landroid/os/RemoteException;
    const/16 v21, 0x0

    .restart local v21       #cmPermissions:[Ljava/lang/String;
    goto :goto_179

    .line 1006
    .end local v20           #cmPackagename:Ljava/lang/String;
    .end local v21           #cmPermissions:[Ljava/lang/String;
    .end local v25           #data:Ljava/util/HashMap;
    .end local v27           #e:Landroid/os/RemoteException;
    .end local v35           #newIntent:Landroid/content/Intent;
    :sswitch_199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v53, v0

    monitor-enter v53

    .line 1007
    :try_start_1a0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/util/HashMap;

    .line 1008
    .restart local v25       #data:Ljava/util/HashMap;
    const-string v4, "app"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .line 1009
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v44, :cond_1da

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_1da

    .line 1010
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App already has anr dialog: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    monitor-exit v53

    goto/16 :goto_7

    .line 1026
    .end local v25           #data:Ljava/util/HashMap;
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_1d7
    move-exception v4

    monitor-exit v53
    :try_end_1d9
    .catchall {:try_start_1a0 .. :try_end_1d9} :catchall_1d7

    throw v4

    .line 1014
    .restart local v25       #data:Ljava/util/HashMap;
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_1da
    :try_start_1da
    new-instance v7, Landroid/content/Intent;

    const-string v4, "android.intent.action.ANR"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1015
    .local v7, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v4, :cond_1ee

    .line 1016
    const/high16 v4, 0x4000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1018
    :cond_1ee
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    #calls: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZII)I
    invoke-static/range {v4 .. v17}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZII)I

    .line 1022
    new-instance v24, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v24

    move-object/from16 v1, v44

    invoke-direct {v0, v5, v6, v1, v4}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 1024
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/BaseErrorDialog;->show()V

    .line 1025
    move-object/from16 v0, v24

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1026
    monitor-exit v53
    :try_end_22a
    .catchall {:try_start_1da .. :try_end_22a} :catchall_1d7

    .line 1028
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1031
    .end local v7           #intent:Landroid/content/Intent;
    .end local v24           #d:Landroid/app/Dialog;
    .end local v25           #data:Ljava/util/HashMap;
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    :sswitch_233
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/HashMap;

    .line 1032
    .local v26, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1033
    :try_start_240
    const-string v4, "app"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .line 1034
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    if-nez v44, :cond_259

    .line 1035
    const-string v4, "ActivityManager"

    const-string v6, "App not found when showing strict mode dialog."

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    monitor-exit v5

    goto/16 :goto_7

    .line 1052
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_256
    move-exception v4

    monitor-exit v5
    :try_end_258
    .catchall {:try_start_240 .. :try_end_258} :catchall_256

    throw v4

    .line 1038
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_259
    :try_start_259
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_27c

    .line 1039
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has strict mode dialog: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    monitor-exit v5

    goto/16 :goto_7

    .line 1042
    :cond_27c
    const-string v4, "result"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/am/AppErrorResult;

    .line 1043
    .restart local v48       #res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_2ba

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_2ba

    .line 1044
    new-instance v24, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move-object/from16 v2, v44

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1045
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/BaseErrorDialog;->show()V

    .line 1046
    move-object/from16 v0, v24

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1052
    .end local v24           #d:Landroid/app/Dialog;
    :goto_2b0
    monitor-exit v5
    :try_end_2b1
    .catchall {:try_start_259 .. :try_end_2b1} :catchall_256

    .line 1053
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1050
    :cond_2ba
    const/4 v4, 0x0

    :try_start_2bb
    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_2c0
    .catchall {:try_start_2bb .. :try_end_2c0} :catchall_256

    goto :goto_2b0

    .line 1056
    .end local v26           #data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v48           #res:Lcom/android/server/am/AppErrorResult;
    :sswitch_2c1
    new-instance v24, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v5}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1058
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/BaseErrorDialog;->show()V

    .line 1059
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1062
    .end local v24           #d:Landroid/app/Dialog;
    :sswitch_2e4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    .line 1063
    .local v49, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    move-object/from16 v0, v49

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_7

    .line 1066
    .end local v49           #resolver:Landroid/content/ContentResolver;
    :sswitch_2fb
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1067
    :try_start_300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1068
    monitor-exit v5

    goto/16 :goto_7

    :catchall_30a
    move-exception v4

    monitor-exit v5
    :try_end_30c
    .catchall {:try_start_300 .. :try_end_30c} :catchall_30a

    throw v4

    .line 1071
    :sswitch_30d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1072
    :try_start_312
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/am/ProcessRecord;

    .line 1073
    .local v18, app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_34d

    .line 1074
    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v4, :cond_347

    .line 1075
    new-instance v24, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v6, v1}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1078
    .restart local v24       #d:Landroid/app/Dialog;
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1079
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1080
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/BaseErrorDialog;->show()V

    .line 1088
    .end local v24           #d:Landroid/app/Dialog;
    :cond_347
    :goto_347
    monitor-exit v5

    goto/16 :goto_7

    .end local v18           #app:Lcom/android/server/am/ProcessRecord;
    :catchall_34a
    move-exception v4

    monitor-exit v5
    :try_end_34c
    .catchall {:try_start_312 .. :try_end_34c} :catchall_34a

    throw v4

    .line 1083
    .restart local v18       #app:Lcom/android/server/am/ProcessRecord;
    :cond_34d
    :try_start_34d
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_347

    .line 1084
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1085
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_35f
    .catchall {:try_start_34d .. :try_end_35f} :catchall_34a

    goto :goto_347

    .line 1093
    .end local v18           #app:Lcom/android/server/am/ProcessRecord;
    :sswitch_360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    #calls: Lcom/android/server/am/ActivityManagerService;->processNextBroadcast(Z)V
    invoke-static {v4, v5}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;Z)V

    goto/16 :goto_7

    .line 1096
    :sswitch_36a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1097
    :try_start_36f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    #calls: Lcom/android/server/am/ActivityManagerService;->broadcastTimeoutLocked(Z)V
    invoke-static {v4, v6}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Z)V

    .line 1098
    monitor-exit v5

    goto/16 :goto_7

    :catchall_37a
    move-exception v4

    monitor-exit v5
    :try_end_37c
    .catchall {:try_start_36f .. :try_end_37c} :catchall_37a

    throw v4

    .line 1101
    :sswitch_37d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_3af

    .line 1102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    .line 1104
    .local v36, nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v36

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7530

    move-object/from16 v0, v36

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 1108
    .end local v36           #nmsg:Landroid/os/Message;
    :cond_3af
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_7

    .line 1111
    :sswitch_3be
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1112
    :try_start_3c3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v32, v4, -0x1

    .local v32, i:I
    :goto_3cf
    if-ltz v32, :cond_412

    .line 1113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/am/ProcessRecord;

    .line 1114
    .local v47, r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_3e3
    .catchall {:try_start_3c3 .. :try_end_3e3} :catchall_40f

    if-eqz v4, :cond_3ec

    .line 1116
    :try_start_3e5
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_3ec
    .catchall {:try_start_3e5 .. :try_end_3ec} :catchall_40f
    .catch Landroid/os/RemoteException; {:try_start_3e5 .. :try_end_3ec} :catch_3ef

    .line 1112
    :cond_3ec
    :goto_3ec
    add-int/lit8 v32, v32, -0x1

    goto :goto_3cf

    .line 1117
    :catch_3ef
    move-exception v28

    .line 1118
    .local v28, ex:Landroid/os/RemoteException;
    :try_start_3f0
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update time zone for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v47

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3ec

    .line 1122
    .end local v28           #ex:Landroid/os/RemoteException;
    .end local v32           #i:I
    .end local v47           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_40f
    move-exception v4

    monitor-exit v5
    :try_end_411
    .catchall {:try_start_3f0 .. :try_end_411} :catchall_40f

    throw v4

    .restart local v32       #i:I
    :cond_412
    :try_start_412
    monitor-exit v5
    :try_end_413
    .catchall {:try_start_412 .. :try_end_413} :catchall_40f

    goto/16 :goto_7

    .line 1125
    .end local v32           #i:I
    :sswitch_415
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1126
    :try_start_41a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v32, v4, -0x1

    .restart local v32       #i:I
    :goto_426
    if-ltz v32, :cond_469

    .line 1127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/am/ProcessRecord;

    .line 1128
    .restart local v47       #r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_43a
    .catchall {:try_start_41a .. :try_end_43a} :catchall_466

    if-eqz v4, :cond_443

    .line 1130
    :try_start_43c
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_443
    .catchall {:try_start_43c .. :try_end_443} :catchall_466
    .catch Landroid/os/RemoteException; {:try_start_43c .. :try_end_443} :catch_446

    .line 1126
    :cond_443
    :goto_443
    add-int/lit8 v32, v32, -0x1

    goto :goto_426

    .line 1131
    :catch_446
    move-exception v28

    .line 1132
    .restart local v28       #ex:Landroid/os/RemoteException;
    :try_start_447
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clear dns cache for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v47

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_443

    .line 1136
    .end local v28           #ex:Landroid/os/RemoteException;
    .end local v32           #i:I
    .end local v47           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_466
    move-exception v4

    monitor-exit v5
    :try_end_468
    .catchall {:try_start_447 .. :try_end_468} :catchall_466

    throw v4

    .restart local v32       #i:I
    :cond_469
    :try_start_469
    monitor-exit v5
    :try_end_46a
    .catchall {:try_start_469 .. :try_end_46a} :catchall_466

    goto/16 :goto_7

    .line 1139
    .end local v32           #i:I
    :sswitch_46c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/net/ProxyProperties;

    .line 1140
    .local v46, proxy:Landroid/net/ProxyProperties;
    const-string v31, ""

    .line 1141
    .local v31, host:Ljava/lang/String;
    const-string v43, ""

    .line 1142
    .local v43, port:Ljava/lang/String;
    const-string v29, ""

    .line 1143
    .local v29, exclList:Ljava/lang/String;
    if-eqz v46, :cond_48c

    .line 1144
    invoke-virtual/range {v46 .. v46}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v31

    .line 1145
    invoke-virtual/range {v46 .. v46}, Landroid/net/ProxyProperties;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    .line 1146
    invoke-virtual/range {v46 .. v46}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v29

    .line 1148
    :cond_48c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1149
    :try_start_491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v32, v4, -0x1

    .restart local v32       #i:I
    :goto_49d
    if-ltz v32, :cond_4e6

    .line 1150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/am/ProcessRecord;

    .line 1151
    .restart local v47       #r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_4b1
    .catchall {:try_start_491 .. :try_end_4b1} :catchall_4e3

    if-eqz v4, :cond_4c0

    .line 1153
    :try_start_4b3
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v31

    move-object/from16 v1, v43

    move-object/from16 v2, v29

    invoke-interface {v4, v0, v1, v2}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c0
    .catchall {:try_start_4b3 .. :try_end_4c0} :catchall_4e3
    .catch Landroid/os/RemoteException; {:try_start_4b3 .. :try_end_4c0} :catch_4c3

    .line 1149
    :cond_4c0
    :goto_4c0
    add-int/lit8 v32, v32, -0x1

    goto :goto_49d

    .line 1154
    :catch_4c3
    move-exception v28

    .line 1155
    .restart local v28       #ex:Landroid/os/RemoteException;
    :try_start_4c4
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update http proxy for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v47

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c0

    .line 1160
    .end local v28           #ex:Landroid/os/RemoteException;
    .end local v32           #i:I
    .end local v47           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_4e3
    move-exception v4

    monitor-exit v5
    :try_end_4e5
    .catchall {:try_start_4c4 .. :try_end_4e5} :catchall_4e3

    throw v4

    .restart local v32       #i:I
    :cond_4e6
    :try_start_4e6
    monitor-exit v5
    :try_end_4e7
    .catchall {:try_start_4e6 .. :try_end_4e7} :catchall_4e3

    goto/16 :goto_7

    .line 1164
    .end local v29           #exclList:Ljava/lang/String;
    .end local v31           #host:Ljava/lang/String;
    .end local v32           #i:I
    .end local v43           #port:Ljava/lang/String;
    .end local v46           #proxy:Landroid/net/ProxyProperties;
    :sswitch_4e9
    new-instance v24, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1165
    .local v24, d:Landroid/app/AlertDialog;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7da

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1166
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1167
    const-string v4, "System UIDs Inconsistent"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1168
    const-string v4, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1169
    const/4 v4, -0x1

    const-string v5, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xf

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    .line 1172
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/BaseErrorDialog;->show()V

    goto/16 :goto_7

    .line 1175
    .end local v24           #d:Landroid/app/AlertDialog;
    :sswitch_534
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_7

    .line 1176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_7

    .line 1181
    :sswitch_54e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_580

    .line 1182
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    .line 1184
    .restart local v36       #nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v36

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    move-object/from16 v0, v36

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 1188
    .end local v36           #nmsg:Landroid/os/Message;
    :cond_580
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/am/ProcessRecord;

    .line 1189
    .restart local v18       #app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1190
    :try_start_58d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v18

    #calls: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1191
    monitor-exit v5

    goto/16 :goto_7

    :catchall_599
    move-exception v4

    monitor-exit v5
    :try_end_59b
    .catchall {:try_start_58d .. :try_end_59b} :catchall_599

    throw v4

    .line 1194
    .end local v18           #app:Lcom/android/server/am/ProcessRecord;
    :sswitch_59c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1195
    :try_start_5a1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 1196
    monitor-exit v5

    goto/16 :goto_7

    :catchall_5ac
    move-exception v4

    monitor-exit v5
    :try_end_5ae
    .catchall {:try_start_5a1 .. :try_end_5ae} :catchall_5ac

    throw v4

    .line 1199
    :sswitch_5af
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1200
    :try_start_5b4
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 1201
    .local v10, uid:I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5d6

    const/4 v11, 0x1

    .line 1202
    .local v11, restart:Z
    :goto_5c0
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 1203
    .local v9, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    #calls: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZ)Z
    invoke-static/range {v8 .. v14}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZ)Z

    .line 1204
    monitor-exit v5

    goto/16 :goto_7

    .end local v9           #pkg:Ljava/lang/String;
    .end local v10           #uid:I
    .end local v11           #restart:Z
    :catchall_5d3
    move-exception v4

    monitor-exit v5
    :try_end_5d5
    .catchall {:try_start_5b4 .. :try_end_5d5} :catchall_5d3

    throw v4

    .line 1201
    .restart local v10       #uid:I
    :cond_5d6
    const/4 v11, 0x0

    goto :goto_5c0

    .line 1207
    .end local v10           #uid:I
    :sswitch_5d8
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_7

    .line 1210
    :sswitch_5e3
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v33

    .line 1211
    .local v33, inm:Landroid/app/INotificationManager;
    if-eqz v33, :cond_7

    .line 1215
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Lcom/android/server/am/ActivityRecord;

    .line 1216
    .local v50, root:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v45, v0

    .line 1217
    .local v45, process:Lcom/android/server/am/ProcessRecord;
    if-eqz v45, :cond_7

    .line 1222
    :try_start_5f9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v45

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v22

    .line 1223
    .local v22, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040491

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v51

    .line 1225
    .local v51, text:Ljava/lang/String;
    new-instance v37, Landroid/app/Notification;

    invoke-direct/range {v37 .. v37}, Landroid/app/Notification;-><init>()V

    .line 1226
    .local v37, notification:Landroid/app/Notification;
    const v4, 0x1080529

    move-object/from16 v0, v37

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 1227
    const-wide/16 v4, 0x0

    move-object/from16 v0, v37

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    .line 1228
    const/4 v4, 0x2

    move-object/from16 v0, v37

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 1229
    move-object/from16 v0, v51

    move-object/from16 v1, v37

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1230
    const/4 v4, 0x0

    move-object/from16 v0, v37

    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 1231
    const/4 v4, 0x0

    move-object/from16 v0, v37

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1232
    const/4 v4, 0x0

    move-object/from16 v0, v37

    iput-object v4, v0, Landroid/app/Notification;->vibrate:[J

    .line 1233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040492

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move-object/from16 v0, v50

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v12, 0x1000

    invoke-static {v5, v6, v8, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_67c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5f9 .. :try_end_67c} :catch_69d

    .line 1239
    const/4 v4, 0x1

    :try_start_67d
    new-array v0, v4, [I

    move-object/from16 v40, v0

    .line 1240
    .local v40, outId:[I
    const-string v4, "android"

    const v5, 0x1040491

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-interface {v0, v4, v5, v1, v2}, Landroid/app/INotificationManager;->enqueueNotification(Ljava/lang/String;ILandroid/app/Notification;[I)V
    :try_end_68f
    .catch Ljava/lang/RuntimeException; {:try_start_67d .. :try_end_68f} :catch_691
    .catch Landroid/os/RemoteException; {:try_start_67d .. :try_end_68f} :catch_7cf
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_67d .. :try_end_68f} :catch_69d

    goto/16 :goto_7

    .line 1242
    .end local v40           #outId:[I
    :catch_691
    move-exception v27

    .line 1243
    .local v27, e:Ljava/lang/RuntimeException;
    :try_start_692
    const-string v4, "ActivityManager"

    const-string v5, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_692 .. :try_end_69b} :catch_69d

    goto/16 :goto_7

    .line 1247
    .end local v22           #context:Landroid/content/Context;
    .end local v27           #e:Ljava/lang/RuntimeException;
    .end local v37           #notification:Landroid/app/Notification;
    .end local v51           #text:Ljava/lang/String;
    :catch_69d
    move-exception v27

    .line 1248
    .local v27, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActivityManager"

    const-string v5, "Unable to create context for heavy notification"

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1252
    .end local v27           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v33           #inm:Landroid/app/INotificationManager;
    .end local v45           #process:Lcom/android/server/am/ProcessRecord;
    .end local v50           #root:Lcom/android/server/am/ActivityRecord;
    :sswitch_6a9
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v33

    .line 1253
    .restart local v33       #inm:Landroid/app/INotificationManager;
    if-eqz v33, :cond_7

    .line 1257
    :try_start_6af
    const-string v4, "android"

    const v5, 0x1040491

    move-object/from16 v0, v33

    invoke-interface {v0, v4, v5}, Landroid/app/INotificationManager;->cancelNotification(Ljava/lang/String;I)V
    :try_end_6b9
    .catch Ljava/lang/RuntimeException; {:try_start_6af .. :try_end_6b9} :catch_6bb
    .catch Landroid/os/RemoteException; {:try_start_6af .. :try_end_6b9} :catch_7cc

    goto/16 :goto_7

    .line 1259
    :catch_6bb
    move-exception v27

    .line 1260
    .local v27, e:Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v5, "Error canceling notification for service"

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1266
    .end local v27           #e:Ljava/lang/RuntimeException;
    .end local v33           #inm:Landroid/app/INotificationManager;
    :sswitch_6c7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1267
    :try_start_6cc
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 1268
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$2;->removeMessages(I)V

    .line 1269
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    .line 1270
    .restart local v36       #nmsg:Landroid/os/Message;
    const-wide/32 v12, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/am/ActivityManagerService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1271
    monitor-exit v5

    goto/16 :goto_7

    .end local v36           #nmsg:Landroid/os/Message;
    :catchall_6f0
    move-exception v4

    monitor-exit v5
    :try_end_6f2
    .catchall {:try_start_6cc .. :try_end_6f2} :catchall_6f0

    throw v4

    .line 1275
    :sswitch_6f3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZ)V

    goto/16 :goto_7

    .line 1281
    :sswitch_6fe
    const-string v4, "ActivityManager"

    const-string v5, "5 minutes is passed. So change the mTenMinsPassed to TRUE, becuase print the PSS at the low memory condition "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/am/ActivityManagerService;->mTenMinsPassed:Z

    goto/16 :goto_7

    .line 1285
    :sswitch_70a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1286
    :try_start_70f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/am/ActivityRecord;

    .line 1287
    .local v19, ar:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v4, :cond_74d

    .line 1288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v4, v4, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73d

    .line 1290
    monitor-exit v5

    goto/16 :goto_7

    .line 1309
    .end local v19           #ar:Lcom/android/server/am/ActivityRecord;
    :catchall_73a
    move-exception v4

    monitor-exit v5
    :try_end_73c
    .catchall {:try_start_70f .. :try_end_73c} :catchall_73a

    throw v4

    .line 1292
    .restart local v19       #ar:Lcom/android/server/am/ActivityRecord;
    :cond_73d
    :try_start_73d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v4}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    .line 1293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    .line 1295
    :cond_74d
    if-eqz v19, :cond_74f

    .line 1309
    :cond_74f
    monitor-exit v5
    :try_end_750
    .catchall {:try_start_73d .. :try_end_750} :catchall_73a

    goto/16 :goto_7

    .line 1313
    .end local v19           #ar:Lcom/android/server/am/ActivityRecord;
    :sswitch_752
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 1314
    .local v42, pid:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    .line 1315
    .restart local v10       #uid:I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 1316
    .local v30, foregroundActivities:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v42

    move/from16 v1, v30

    #calls: Lcom/android/server/am/ActivityManagerService;->dispatchForegroundActivitiesChanged(IIZ)V
    invoke-static {v4, v0, v10, v1}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;IIZ)V

    goto/16 :goto_7

    .line 1320
    .end local v10           #uid:I
    .end local v30           #foregroundActivities:Z
    .end local v42           #pid:I
    :sswitch_773
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 1321
    .restart local v42       #pid:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    .line 1322
    .restart local v10       #uid:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v42

    #calls: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v4, v0, v10}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_7

    .line 1326
    .end local v10           #uid:I
    .end local v42           #pid:I
    :sswitch_788
    const-string v4, "1"

    const-string v5, "ro.debuggable"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 1327
    .local v34, isDebuggable:Z
    if-eqz v34, :cond_7

    .line 1330
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1331
    :try_start_79d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    .line 1332
    .local v38, now:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v12, v4, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    const-wide/32 v14, 0x493e0

    add-long/2addr v12, v14

    cmp-long v4, v38, v12

    if-gez v4, :cond_7b5

    .line 1335
    monitor-exit v5

    goto/16 :goto_7

    .line 1338
    .end local v38           #now:J
    :catchall_7b2
    move-exception v4

    monitor-exit v5
    :try_end_7b4
    .catchall {:try_start_79d .. :try_end_7b4} :catchall_7b2

    throw v4

    .line 1337
    .restart local v38       #now:J
    :cond_7b5
    :try_start_7b5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-wide/from16 v0, v38

    iput-wide v0, v4, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    .line 1338
    monitor-exit v5
    :try_end_7be
    .catchall {:try_start_7b5 .. :try_end_7be} :catchall_7b2

    .line 1339
    new-instance v52, Lcom/android/server/am/ActivityManagerService$2$1;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityManagerService$2$1;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    .line 1402
    .local v52, thread:Ljava/lang/Thread;
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 1262
    .end local v34           #isDebuggable:Z
    .end local v38           #now:J
    .end local v52           #thread:Ljava/lang/Thread;
    .restart local v33       #inm:Landroid/app/INotificationManager;
    :catch_7cc
    move-exception v4

    goto/16 :goto_7

    .line 1245
    .restart local v22       #context:Landroid/content/Context;
    .restart local v37       #notification:Landroid/app/Notification;
    .restart local v45       #process:Lcom/android/server/am/ProcessRecord;
    .restart local v50       #root:Lcom/android/server/am/ActivityRecord;
    .restart local v51       #text:Ljava/lang/String;
    :catch_7cf
    move-exception v4

    goto/16 :goto_7

    .line 932
    :sswitch_data_7d2
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_199
        0x3 -> :sswitch_2c1
        0x4 -> :sswitch_2e4
        0x5 -> :sswitch_2fb
        0x6 -> :sswitch_30d
        0x7 -> :sswitch_360
        0x8 -> :sswitch_36a
        0xc -> :sswitch_37d
        0xd -> :sswitch_3be
        0xe -> :sswitch_4e9
        0xf -> :sswitch_534
        0x14 -> :sswitch_54e
        0x15 -> :sswitch_59c
        0x16 -> :sswitch_5af
        0x17 -> :sswitch_5d8
        0x18 -> :sswitch_5e3
        0x19 -> :sswitch_6a9
        0x1a -> :sswitch_233
        0x1b -> :sswitch_6c7
        0x1c -> :sswitch_415
        0x1d -> :sswitch_46c
        0x1e -> :sswitch_70a
        0x1f -> :sswitch_752
        0x20 -> :sswitch_773
        0x21 -> :sswitch_788
        0x22 -> :sswitch_6fe
        0x23 -> :sswitch_be
        0x24 -> :sswitch_14e
        0x3e7 -> :sswitch_6f3
    .end sparse-switch
.end method
