.class Lcom/android/server/sec/ClippedDataPickerDialog$3;
.super Landroid/content/BroadcastReceiver;
.source "ClippedDataPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 324
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 326
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_17

    const-string v2, "ClipboardServiceEx"

    const-string v3, "clipboard dialog get ACTION_CONFIGURATION_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_17
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$200(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 333
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$200(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->showUIDataDialog()V

    .line 359
    :cond_30
    :goto_30
    return-void

    .line 335
    :cond_31
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z
    invoke-static {v2, v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$102(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    goto :goto_30

    .line 338
    :cond_38
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 339
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, reason:Ljava/lang/String;
    const-string v2, "homekey"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 341
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_59

    const-string v2, "ClipboardServiceEx"

    const-string v3, "clipboard dialog get ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_59
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$200(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 343
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$200(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    goto :goto_30

    .line 345
    :cond_6b
    const-string v2, "recentapps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 346
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_7e

    const-string v2, "ClipboardServiceEx"

    const-string v3, "clipboard dialog get SYSTEM_DIALOG_REASON_RECENT_APPS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_7e
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$200(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 349
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$200(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    goto :goto_30

    .line 352
    .end local v1           #reason:Ljava/lang/String;
    :cond_90
    const-string v2, "DismissClipboardDialogFromIMMService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 353
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z
    invoke-static {v2, v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$102(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    .line 354
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_a9

    const-string v2, "ClipboardServiceEx"

    const-string v3, "clipboard dialog get DismissClipboardDialogFromIMMService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_a9
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$200(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 356
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$3;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$200(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    goto/16 :goto_30
.end method
