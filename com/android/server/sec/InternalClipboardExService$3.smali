.class Lcom/android/server/sec/InternalClipboardExService$3;
.super Landroid/os/Handler;
.source "InternalClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/InternalClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/InternalClipboardExService;


# direct methods
.method constructor <init>(Lcom/android/server/sec/InternalClipboardExService;)V
    .registers 2
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 660
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_96

    .line 698
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "ClipboardServiceEx"

    const-string v1, "handler msg : default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_10
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 701
    :cond_13
    :goto_13
    return-void

    .line 666
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 667
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    .line 670
    :cond_25
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    new-instance v1, Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0, v1}, Lcom/android/server/sec/InternalClipboardExService;->access$402(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/ClippedDataPickerDialog;

    .line 673
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$600(Lcom/android/server/sec/InternalClipboardExService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v2}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 676
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->show()V

    goto :goto_13

    .line 684
    :pswitch_54
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 685
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$600(Lcom/android/server/sec/InternalClipboardExService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v2}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_13

    .line 689
    :pswitch_72
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 690
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    .line 694
    :cond_83
    :goto_83
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$3;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0, v1}, Lcom/android/server/sec/InternalClipboardExService;->access$402(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/ClippedDataPickerDialog;

    goto :goto_13

    .line 692
    :cond_8a
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_83

    const-string v0, "ClipboardServiceEx"

    const-string v1, "mCBPickerDialog enter case. MSG_DISMISS_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 660
    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_14
        :pswitch_54
        :pswitch_72
    .end packed-switch
.end method
