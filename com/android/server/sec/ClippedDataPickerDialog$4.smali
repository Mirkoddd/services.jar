.class Lcom/android/server/sec/ClippedDataPickerDialog$4;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 391
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .parameter "animation"

    .prologue
    .line 404
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "ClipboardServiceEx"

    const-string v2, "clipped dialog. onAnimationEnd START"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;
    invoke-static {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$400(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataUiEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$300(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardDataUiEvent;->removeItem(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_2c

    .line 413
    :goto_1a
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$200(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$4;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    .line 415
    :cond_2b
    return-void

    .line 408
    :catch_2c
    move-exception v0

    .line 410
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1a
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 399
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ClipboardServiceEx"

    const-string v1, "clipped dialog. onAnimationRepeat START"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_b
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 394
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ClipboardServiceEx"

    const-string v1, "clipped dialog. onAnimationStart START"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_b
    return-void
.end method
