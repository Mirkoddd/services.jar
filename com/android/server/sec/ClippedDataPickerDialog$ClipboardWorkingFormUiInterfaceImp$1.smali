.class Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$1;
.super Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;
.source "ClippedDataPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;)V
    .registers 2
    .parameter

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setClipboardDataListChange()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    invoke-virtual {v0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->setClipboardDataListChange()V

    .line 1168
    return-void
.end method

.method public setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V
    .registers 3
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    .line 1163
    return-void
.end method

.method public setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V
    .registers 3
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V

    .line 1172
    return-void
.end method
