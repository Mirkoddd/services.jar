.class Lcom/android/server/am/AppPermissionErrorDialog$2;
.super Landroid/os/Handler;
.source "AppPermissionErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPermissionErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPermissionErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPermissionErrorDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/am/AppPermissionErrorDialog$2;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_4c

    .line 158
    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog$2;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    #getter for: Lcom/android/server/am/AppPermissionErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/AppPermissionErrorDialog;->access$600(Lcom/android/server/am/AppPermissionErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    monitor-enter v1

    .line 159
    :try_start_b
    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog$2;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    #getter for: Lcom/android/server/am/AppPermissionErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/AppPermissionErrorDialog;->access$600(Lcom/android/server/am/AppPermissionErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog$2;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    #getter for: Lcom/android/server/am/AppPermissionErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/AppPermissionErrorDialog;->access$600(Lcom/android/server/am/AppPermissionErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/server/am/AppPermissionErrorDialog$2;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    if-ne v0, v2, :cond_28

    .line 160
    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog$2;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    #getter for: Lcom/android/server/am/AppPermissionErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/AppPermissionErrorDialog;->access$600(Lcom/android/server/am/AppPermissionErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 162
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_49

    .line 163
    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog$2;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    #getter for: Lcom/android/server/am/AppPermissionErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v0}, Lcom/android/server/am/AppPermissionErrorDialog;->access$700(Lcom/android/server/am/AppPermissionErrorDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 164
    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog$2;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    #getter for: Lcom/android/server/am/AppPermissionErrorDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPermissionErrorDialog;->access$900(Lcom/android/server/am/AppPermissionErrorDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionErrorDialog$2;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    #getter for: Lcom/android/server/am/AppPermissionErrorDialog;->serviceConn:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/android/server/am/AppPermissionErrorDialog;->access$800(Lcom/android/server/am/AppPermissionErrorDialog;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog$2;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    invoke-virtual {v0}, Lcom/android/server/am/AppPermissionErrorDialog;->dismiss()V

    .line 169
    :cond_48
    :goto_48
    return-void

    .line 162
    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0

    .line 166
    :cond_4c
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    .line 167
    iget-object v0, p0, Lcom/android/server/am/AppPermissionErrorDialog$2;->this$0:Lcom/android/server/am/AppPermissionErrorDialog;

    #calls: Lcom/android/server/am/AppPermissionErrorDialog;->setTitleAndMessageByApp()V
    invoke-static {v0}, Lcom/android/server/am/AppPermissionErrorDialog;->access$1000(Lcom/android/server/am/AppPermissionErrorDialog;)V

    goto :goto_48
.end method
