.class Lcom/android/server/am/AppNotRespondingDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppNotRespondingDialog.java"


# static fields
.field static final ALLOW_AUTO_REPORT:I = 0x4

.field static final FORCE_CLOSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppNotRespondingDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 20
    .parameter "service"
    .parameter "context"
    .parameter "app"
    .parameter "activity"

    .prologue
    .line 51
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 174
    new-instance v11, Lcom/android/server/am/AppNotRespondingDialog$1;

    invoke-direct {v11, p0}, Lcom/android/server/am/AppNotRespondingDialog$1;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    iput-object v11, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    .line 53
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 54
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 57
    .local v9, res:Landroid/content/res/Resources;
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/am/AppNotRespondingDialog;->setCancelable(Z)V

    .line 60
    if-eqz p4, :cond_1b9

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 63
    .local v6, name1:Ljava/lang/CharSequence;
    :goto_2a
    const/4 v7, 0x0

    .line 64
    .local v7, name2:Ljava/lang/CharSequence;
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1c6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_1c6

    .line 66
    if-eqz v6, :cond_1bc

    .line 67
    const v10, 0x104047e

    .line 84
    .local v10, resid:I
    :goto_49
    invoke-static {}, Lcom/samsung/CustomerCrashReport;->isCCRInstalled()Z

    move-result v11

    if-eqz v11, :cond_1ff

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-nez v11, :cond_1ff

    .line 93
    const-string v2, "-k -t -z -d -o /data/log/"

    .line 94
    .local v2, dumpstateCmd:Ljava/lang/String;
    const-string v3, "dumpstate#anr#"

    .line 95
    .local v3, fileName:Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v11, :cond_1da

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 96
    .local v8, processName:Ljava/lang/String;
    :goto_63
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v11, :cond_1e2

    .line 97
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 103
    :goto_6d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "MD5"

    invoke-static {v11, v12}, Lcom/samsung/CustomerCrashReport;->makeHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, hashValue:Ljava/lang/String;
    const-string v11, "[. ]"

    const-string v12, "_"

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/samsung/CustomerCrashReport;->getModelName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/samsung/CustomerCrashReport;->getSWVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v2}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 113
    new-instance v1, Landroid/content/Intent;

    const-string v11, "android.intent.action.SAMSUNG_CRASHREPORT"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, ccrErrorIntent:Landroid/content/Intent;
    if-eqz v1, :cond_1f6

    .line 118
    const/high16 v11, 0x1000

    invoke-virtual {v1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    const-string v11, "errorType"

    const-string v12, "ANR"

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v11, "dumpfilePath"

    invoke-virtual {v1, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v11, "activity"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v11, "cause"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v11, "info"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 134
    .end local v1           #ccrErrorIntent:Landroid/content/Intent;
    .end local v2           #dumpstateCmd:Ljava/lang/String;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #hashValue:Ljava/lang/String;
    .end local v8           #processName:Ljava/lang/String;
    :goto_12c
    const/4 v5, 0x0

    .line 135
    .local v5, messageString:Ljava/lang/String;
    if-eqz v7, :cond_216

    .line 136
    if-eqz v6, :cond_206

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 143
    :goto_146
    const/4 v11, -0x1

    const v12, 0x1040482

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 146
    const/4 v11, -0x2

    const v12, 0x1040484

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 150
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v11, :cond_22c

    .line 151
    const/4 v11, -0x3

    const v12, 0x1040483

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 163
    :cond_182
    :goto_182
    invoke-virtual {p0, v5}, Lcom/android/server/am/AppNotRespondingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 166
    const v11, 0x104047d

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/am/AppNotRespondingDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/high16 v12, 0x4000

    invoke-virtual {v11, v12}, Landroid/view/Window;->addFlags(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Application Not Responding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    return-void

    .line 60
    .end local v5           #messageString:Ljava/lang/String;
    .end local v6           #name1:Ljava/lang/CharSequence;
    .end local v7           #name2:Ljava/lang/CharSequence;
    .end local v10           #resid:I
    :cond_1b9
    const/4 v6, 0x0

    goto/16 :goto_2a

    .line 69
    .restart local v6       #name1:Ljava/lang/CharSequence;
    .restart local v7       #name2:Ljava/lang/CharSequence;
    :cond_1bc
    move-object v6, v7

    .line 70
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 71
    const v10, 0x1040480

    .restart local v10       #resid:I
    goto/16 :goto_49

    .line 74
    .end local v10           #resid:I
    :cond_1c6
    if-eqz v6, :cond_1d1

    .line 75
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 76
    const v10, 0x104047f

    .restart local v10       #resid:I
    goto/16 :goto_49

    .line 78
    .end local v10           #resid:I
    :cond_1d1
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 79
    const v10, 0x1040481

    .restart local v10       #resid:I
    goto/16 :goto_49

    .line 95
    .restart local v2       #dumpstateCmd:Ljava/lang/String;
    .restart local v3       #fileName:Ljava/lang/String;
    :cond_1da
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v11, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    goto/16 :goto_63

    .line 98
    .restart local v8       #processName:Ljava/lang/String;
    :cond_1e2
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v11, :cond_1f2

    .line 99
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v11, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    goto/16 :goto_6d

    .line 101
    :cond_1f2
    const-string v8, "unkownProcess"

    goto/16 :goto_6d

    .line 126
    .restart local v1       #ccrErrorIntent:Landroid/content/Intent;
    .restart local v4       #hashValue:Ljava/lang/String;
    :cond_1f6
    const-string v11, "AppNotRespondingDialog"

    const-string v12, "CCR reporter can\'t send broadcast because ccrErrorIntent is null"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12c

    .line 130
    .end local v1           #ccrErrorIntent:Landroid/content/Intent;
    .end local v2           #dumpstateCmd:Ljava/lang/String;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #hashValue:Ljava/lang/String;
    .end local v8           #processName:Ljava/lang/String;
    :cond_1ff
    const-string v11, "-k -t -z -d -o /data/log/dumpstate_app_anr"

    invoke-static {v11}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    goto/16 :goto_12c

    .line 137
    .restart local v5       #messageString:Ljava/lang/String;
    :cond_206
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_146

    .line 139
    :cond_216
    if-eqz v6, :cond_228

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_146

    .line 140
    :cond_228
    const-string v5, ""

    goto/16 :goto_146

    .line 155
    :cond_22c
    invoke-static {}, Lcom/samsung/CustomerCrashReport;->isCCRInstalled()Z

    move-result v11

    if-eqz v11, :cond_182

    invoke-static {}, Lcom/samsung/CustomerCrashReport;->isAutoSend()Z

    move-result v11

    if-nez v11, :cond_182

    .line 157
    const/4 v11, -0x3

    const v12, 0x104064c

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 160
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x104064d

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_182
.end method

.method static synthetic access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .registers 1

    .prologue
    .line 172
    return-void
.end method
