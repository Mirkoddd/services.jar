.class Lcom/android/server/am/AppNotRespondingDialog$1;
.super Landroid/os/Handler;
.source "AppNotRespondingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppNotRespondingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppNotRespondingDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppNotRespondingDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, appErrorIntent:Landroid/content/Intent;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_70

    .line 208
    :goto_6
    if-eqz v1, :cond_11

    .line 210
    :try_start_8
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {v3}, Lcom/android/server/am/AppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_11} :catch_66

    .line 215
    :cond_11
    :goto_11
    return-void

    .line 180
    :pswitch_12
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/AppNotRespondingDialog;->access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v4}, Lcom/android/server/am/AppNotRespondingDialog;->access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    goto :goto_6

    .line 185
    :pswitch_24
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/AppNotRespondingDialog;->access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    monitor-enter v4

    .line 186
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v3}, Lcom/android/server/am/AppNotRespondingDialog;->access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 188
    .local v0, app:Lcom/android/server/am/ProcessRecord;
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_45

    .line 189
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/AppNotRespondingDialog;->access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 193
    :cond_45
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 194
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 195
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    if-ne v3, v5, :cond_54

    .line 196
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 198
    :cond_54
    monitor-exit v4

    goto :goto_6

    .end local v0           #app:Lcom/android/server/am/ProcessRecord;
    :catchall_56
    move-exception v3

    monitor-exit v4
    :try_end_58
    .catchall {:try_start_2b .. :try_end_58} :catchall_56

    throw v3

    .line 202
    :pswitch_59
    new-instance v1, Landroid/content/Intent;

    .end local v1           #appErrorIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SAMSUNG_CRASHREPORT_SETTING"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .restart local v1       #appErrorIntent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_6

    .line 211
    :catch_66
    move-exception v2

    .line 212
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "AppNotRespondingDialog"

    const-string v4, "bug report receiver dissappeared"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 177
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_12
        :pswitch_24
        :pswitch_24
        :pswitch_59
    .end packed-switch
.end method
