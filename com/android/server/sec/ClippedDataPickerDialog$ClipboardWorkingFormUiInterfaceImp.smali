.class Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipboardWorkingFormUiInterfaceImp"
.end annotation


# instance fields
.field private final mBinder:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;

.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .registers 3
    .parameter

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1157
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->mBinder:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;Lcom/android/server/sec/ClippedDataPickerDialog$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1155
    invoke-direct {p0, p1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 1236
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ClipboardServiceEx"

    const-string v1, "asBinder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_b
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->mBinder:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;

    return-object v0
.end method

.method public setClipboardDataListChange()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1203
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$600(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/data/IClipboardDataList;->size()I

    move-result v0

    .line 1204
    .local v0, currentDataCnt:I
    const/16 v1, 0x14

    if-le v0, v1, :cond_10

    const/16 v0, 0x14

    .line 1206
    :cond_10
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_3c

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setClipboardDataListChange() mDataCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1100(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentDataCnt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_3c
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I
    invoke-static {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1100(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v1

    if-gt v1, v0, :cond_5c

    .line 1208
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z
    invoke-static {v1, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$502(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    .line 1212
    :goto_4a
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I
    invoke-static {v1, v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1102(Lcom/android/server/sec/ClippedDataPickerDialog;I)I

    .line 1215
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v1, v1, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    new-instance v2, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$2;

    invoke-direct {v2, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$2;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 1232
    return-void

    .line 1210
    :cond_5c
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z
    invoke-static {v1, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$502(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    goto :goto_4a
.end method

.method public setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V
    .registers 5
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1179
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ClipboardServiceEx"

    const-string v1, "setClipboardDataMgr called!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_b
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v0, p1}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$602(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/IClipboardDataList;)Landroid/sec/clipboard/data/IClipboardDataList;

    .line 1185
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$600(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/data/IClipboardDataList;->size()I

    move-result v1

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I
    invoke-static {v0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1102(Lcom/android/server/sec/ClippedDataPickerDialog;I)I

    .line 1186
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_41

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClipboardDataMgr() mDataCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1100(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_41
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    new-instance v1, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct {v1, v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v1, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    .line 1189
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v1, v1, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1190
    return-void
.end method

.method public setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V
    .registers 4
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1196
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ClipboardServiceEx"

    const-string v1, "setClipboardDataUiEvent(IClipboardDataUiEvent arg0) called!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_b
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;
    invoke-static {v0, p1}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$402(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/IClipboardDataUiEvent;)Landroid/sec/clipboard/IClipboardDataUiEvent;

    .line 1198
    return-void
.end method
