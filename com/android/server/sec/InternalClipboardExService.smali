.class public Lcom/android/server/sec/InternalClipboardExService;
.super Landroid/sec/clipboard/IClipboardService$Stub;
.source "InternalClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;
    }
.end annotation


# static fields
.field private static sService:Landroid/content/IClipboard;


# instance fields
.field private final MSG_DISMISS_DIALOG:I

.field private final MSG_SHOW_DIALOG:I

.field private final MSG_UPDATE_DIALOG:I

.field private edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

.field private mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

.field private mClipboardFormatList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardFormatListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/IClipboardFormatListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

.field private mContext:Landroid/content/Context;

.field private mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

.field private mEnableFormatId:I

.field private final mHandler:Landroid/os/Handler;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 204
    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardService$Stub;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    .line 90
    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    .line 92
    iput-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 94
    new-instance v0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-direct {v0, p0, v4}, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;-><init>(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/InternalClipboardExService$1;)V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    .line 593
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/sec/InternalClipboardExService;->MSG_SHOW_DIALOG:I

    .line 594
    iput v2, p0, Lcom/android/server/sec/InternalClipboardExService;->MSG_UPDATE_DIALOG:I

    .line 595
    iput v3, p0, Lcom/android/server/sec/InternalClipboardExService;->MSG_DISMISS_DIALOG:I

    .line 657
    new-instance v0, Lcom/android/server/sec/InternalClipboardExService$3;

    invoke-direct {v0, p0}, Lcom/android/server/sec/InternalClipboardExService$3;-><init>(Lcom/android/server/sec/InternalClipboardExService;)V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    .line 205
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    .line 208
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 210
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_4e

    .line 211
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 215
    :cond_4e
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Bitmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HTMLFlagment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sec/InternalClipboardExService;ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/server/sec/InternalClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/ClippedDataPickerDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/sec/InternalClipboardExService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-object v0
.end method

.method private addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .registers 12
    .parameter "format"
    .parameter "data"

    .prologue
    .line 487
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_b

    const-string v6, "ClipboardServiceEx"

    const-string v7, "addData.."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_b
    const/4 v0, 0x0

    .line 490
    .local v0, Res:Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {p0, p2}, Lcom/android/server/sec/InternalClipboardExService;->checkEquals(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 491
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v6, :cond_32

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The data are the same.:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    move-object v1, v0

    .line 519
    .end local v0           #Res:Landroid/sec/clipboard/data/ClipboardData;
    .local v1, Res:Landroid/sec/clipboard/data/ClipboardData;
    :goto_33
    return-object v1

    .line 494
    .end local v1           #Res:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v0       #Res:Landroid/sec/clipboard/data/ClipboardData;
    :cond_34
    invoke-virtual {p2, p1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 496
    .local v2, addItem:Landroid/sec/clipboard/data/ClipboardData;
    iget-object v6, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->addData(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 498
    iget-object v6, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 499
    invoke-direct {p0, v0}, Lcom/android/server/sec/InternalClipboardExService;->updateDataListChange(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 505
    :cond_4a
    :goto_4a
    packed-switch p1, :pswitch_data_8e

    :cond_4d
    :goto_4d
    move-object v1, v0

    .line 519
    .end local v0           #Res:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v1       #Res:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_33

    .line 501
    .end local v1           #Res:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v0       #Res:Landroid/sec/clipboard/data/ClipboardData;
    :cond_4f
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_4a

    const-string v6, "ClipboardServiceEx"

    const-string v7, "Failed to add data."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    :pswitch_5b
    move-object v5, p2

    .line 507
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 508
    .local v5, trgData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 509
    .local v4, imagePath:Ljava/lang/String;
    if-eqz v4, :cond_4d

    const-string v6, "data/data/com.android.clipboardsaveservice/temp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 510
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_77

    const-string v6, "ClipboardServiceEx"

    const-string v7, "Delete intent will be called"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_77
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.clipboardsaveservice.CLIPBOARD_DELETE_RECEIVER"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    .local v3, deleteIntent:Landroid/content/Intent;
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 513
    const-string v6, "deletePath"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    iget-object v6, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4d

    .line 505
    :pswitch_data_8e
    .packed-switch 0x3
        :pswitch_5b
    .end packed-switch
.end method

.method private checkEquals(Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .parameter "data"

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 380
    .local v1, result:Z
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    if-gtz v3, :cond_b

    move v2, v1

    .line 391
    .end local v1           #result:Z
    .local v2, result:I
    :goto_a
    return v2

    .line 383
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_b
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 385
    .local v0, latestData:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    if-eq v3, v4, :cond_1e

    move v2, v1

    .line 386
    .restart local v2       #result:I
    goto :goto_a

    .line 389
    .end local v2           #result:I
    :cond_1e
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v2, v1

    .line 391
    .restart local v2       #result:I
    goto :goto_a
.end method

.method private dump()V
    .registers 6

    .prologue
    .line 722
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    .line 723
    .local v1, size:I
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_11

    const-string v2, "ClipboardServiceEx"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-ge v0, v1, :cond_47

    .line 725
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v2, :cond_44

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 727
    :cond_47
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_52

    const-string v2, "ClipboardServiceEx"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_52
    return-void
.end method

.method private static getService()Landroid/content/IClipboard;
    .registers 3

    .prologue
    .line 705
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    if-eqz v1, :cond_7

    .line 706
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    .line 714
    .local v0, b:Landroid/os/IBinder;
    :goto_6
    return-object v1

    .line 708
    .end local v0           #b:Landroid/os/IBinder;
    :cond_7
    const-string v1, "clipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 709
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v1

    sput-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    .line 711
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    if-nez v1, :cond_22

    .line 712
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_22

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Original clipboard service is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_22
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    goto :goto_6
.end method

.method private sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 7
    .parameter "data"

    .prologue
    const/4 v4, 0x2

    .line 541
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v2

    if-ne v2, v4, :cond_2b

    move-object v1, p1

    .line 542
    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 544
    .local v1, txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :try_start_a
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 546
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_25

    const-string v2, "ClipboardServiceEx"

    const-string v3, "String was copied.(FORMAT_TEXT_ID)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_25} :catch_26

    .line 563
    .end local v1           #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_25
    :goto_25
    return-void

    .line 547
    .restart local v1       #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :catch_26
    move-exception v0

    .line 548
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_25

    .line 550
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_2b
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_25

    .line 551
    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 552
    .restart local v1       #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {p1, v4, v1}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    .line 554
    :try_start_3a
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 557
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_25

    const-string v2, "ClipboardServiceEx"

    const-string v3, "String was copied.(FORMAT_HTML_FLAGMENT_ID)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_55} :catch_56

    goto :goto_25

    .line 558
    :catch_56
    move-exception v0

    .line 559
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_25
.end method

.method private updateDataListChange(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 5
    .parameter "clip"

    .prologue
    .line 524
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v1, :cond_16

    if-eqz p1, :cond_16

    .line 526
    :try_start_6
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_11

    const-string v1, "ClipboardServiceEx"

    const-string v2, "change list..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_11
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataListChange()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_1e

    .line 533
    :cond_16
    :goto_16
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/sec/InternalClipboardExService;->ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V

    .line 534
    return-void

    .line 529
    :catch_1e
    move-exception v0

    .line 530
    .local v0, e:Landroid/os/RemoteException;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_16

    const-string v1, "ClipboardServiceEx"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method


# virtual methods
.method public AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .registers 4
    .parameter "listener"

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x1

    .line 315
    .local v0, Result:Z
    :goto_9
    if-eqz v0, :cond_10

    .line 316
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_10
    return v0

    .line 314
    .end local v0           #Result:Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 9
    .parameter "format"

    .prologue
    const/4 v6, 0x1

    .line 347
    monitor-enter p0

    .line 348
    const/4 v0, 0x0

    .line 350
    .local v0, Result:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_3
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_f

    .line 351
    const/4 v3, 0x0

    monitor-exit p0

    .line 372
    :goto_e
    return-object v3

    .line 354
    :cond_f
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v2

    .line 356
    .local v2, iClipboardDataCount:I
    if-ge v2, v6, :cond_1a

    .line 357
    monitor-exit p0

    move-object v3, v0

    goto :goto_e

    .line 360
    :cond_1a
    const/4 v1, 0x0

    .line 361
    .local v1, cbData:Landroid/sec/clipboard/data/ClipboardData;
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_5a

    .line 365
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_4e

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getItem id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", input id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_4e
    if-eq p1, v6, :cond_5d

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    if-eq v3, p1, :cond_5d

    .line 368
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 372
    :cond_5a
    :goto_5a
    monitor-exit p0

    move-object v3, v0

    goto :goto_e

    .line 370
    :cond_5d
    move-object v0, v1

    goto :goto_5a

    .line 373
    .end local v1           #cbData:Landroid/sec/clipboard/data/ClipboardData;
    .end local v2           #iClipboardDataCount:I
    :catchall_5f
    move-exception v3

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    throw v3
.end method

.method public GetClipboardFormatName(I)Ljava/lang/String;
    .registers 5
    .parameter "format"

    .prologue
    .line 293
    const-string v0, ""

    .line 295
    .local v0, Result:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 296
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #Result:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 298
    .restart local v0       #Result:Ljava/lang/String;
    :cond_1a
    return-object v0
.end method

.method public IsShowUIClipboardData()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 610
    const/4 v0, 0x0

    .line 611
    .local v0, Result:Z
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->isShowing()Z

    move-result v0

    .line 613
    :cond_b
    return v0
.end method

.method public ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V
    .registers 7
    .parameter "format"
    .parameter "data"

    .prologue
    .line 235
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/IClipboardFormatListener;

    .line 237
    .local v0, Item:Landroid/sec/clipboard/IClipboardFormatListener;
    :try_start_12
    invoke-interface {v0, p1, p2}, Landroid/sec/clipboard/IClipboardFormatListener;->onNewClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    .line 238
    :catch_16
    move-exception v1

    .line 239
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 242
    .end local v0           #Item:Landroid/sec/clipboard/IClipboardFormatListener;
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1b
    return-void
.end method

.method public RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .registers 4
    .parameter "iRegInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 576
    monitor-enter p0

    .line 577
    :try_start_1
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 579
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v0, :cond_17

    .line 580
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-interface {v0, v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    .line 581
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-interface {v0, v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V

    .line 586
    :cond_15
    :goto_15
    monitor-exit p0

    .line 587
    return-void

    .line 584
    :cond_17
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "ClipboardServiceEx"

    const-string v1, "RegistClipboardWorkingFormUiInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 586
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public RegisterClipboardFormat(Ljava/lang/String;)I
    .registers 9
    .parameter "formatName"

    .prologue
    .line 266
    const/4 v1, 0x0

    .line 268
    .local v1, Result:I
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 269
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, 0x2

    .line 270
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_1a
    :goto_1a
    return v1

    .line 272
    :cond_1b
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 273
    .local v0, Keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 274
    .local v3, iVal:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 275
    .local v4, sValue:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_25

    .line 276
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 277
    goto :goto_1a
.end method

.method public RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .registers 4
    .parameter "listener"

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 331
    .local v0, Result:Z
    if-eqz v0, :cond_d

    .line 332
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 334
    :cond_d
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v0, 0x1

    .line 336
    :goto_16
    return v0

    .line 334
    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .parameter "format"
    .parameter "data"

    .prologue
    .line 435
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "ClipboardServiceEx"

    const-string v2, "==================================================================="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_b
    const/4 v0, 0x0

    .line 438
    .local v0, result:Z
    monitor-enter p0

    .line 439
    :try_start_d
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_18

    const-string v1, "ClipboardServiceEx"

    const-string v2, "----------------------------------------------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_18
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_23

    const-string v1, "ClipboardServiceEx"

    const-string v2, "in synchronized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_23
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 443
    const/4 v1, 0x0

    monitor-exit p0

    .line 454
    :goto_2e
    return v1

    .line 447
    :cond_2f
    if-nez p2, :cond_50

    .line 452
    :cond_31
    :goto_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_5b

    .line 453
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_4e

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==================================================================="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    move v1, v0

    .line 454
    goto :goto_2e

    .line 448
    :cond_50
    :try_start_50
    invoke-direct {p0, p1, p2}, Lcom/android/server/sec/InternalClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 449
    invoke-direct {p0, p2}, Lcom/android/server/sec/InternalClipboardExService;->sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 450
    const/4 v0, 0x1

    goto :goto_31

    .line 452
    :catchall_5b
    move-exception v1

    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .parameter "format"
    .parameter "data"

    .prologue
    .line 458
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "ClipboardServiceEx"

    const-string v2, "==================================================================="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_b
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_16

    const-string v1, "ClipboardServiceEx"

    const-string v2, "SetClipboardDataOriginalToEx"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_16
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v1, :cond_36

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetClipboardData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/sec/InternalClipboardExService$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/sec/InternalClipboardExService$2;-><init>(Lcom/android/server/sec/InternalClipboardExService;Landroid/sec/clipboard/data/ClipboardData;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 479
    .local v0, setDataThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 480
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_4e

    const-string v1, "ClipboardServiceEx"

    const-string v2, "==================================================================="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_4e
    const/4 v1, 0x1

    return v1
.end method

.method public SetSyncClipboardData(Ljava/lang/CharSequence;)Z
    .registers 6
    .parameter "text"

    .prologue
    .line 408
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "ClipboardServiceEx"

    const-string v3, "SetSyncClipboardData"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_b
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 410
    .local v0, data:Landroid/sec/clipboard/data/list/ClipboardDataText;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/sec/InternalClipboardExService$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/sec/InternalClipboardExService$1;-><init>(Lcom/android/server/sec/InternalClipboardExService;Landroid/sec/clipboard/data/list/ClipboardDataText;Ljava/lang/CharSequence;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 421
    .local v1, setDataThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 422
    const/4 v2, 0x1

    return v2
.end method

.method public ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 5
    .parameter "format"
    .parameter "clPasteEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 600
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ClipboardServiceEx"

    const-string v1, "show ui clipboard dialog in service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_b
    iput p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I

    .line 603
    iput-object p2, p0, Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 604
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 605
    return-void
.end method

.method public UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 5
    .parameter "format"
    .parameter "clPasteEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->IsShowUIClipboardData()Z

    move-result v0

    if-nez v0, :cond_7

    .line 632
    :goto_6
    return-void

    .line 628
    :cond_7
    iput p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I

    .line 629
    iput-object p2, p0, Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 630
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6
.end method

.method public dismissUIDataDialog()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 644
    return-void
.end method

.method public getDataSize()I
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    return v0
.end method

.method public showUIDataDialog()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_10

    .line 649
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "ClipboardServiceEx"

    const-string v1, "showUIDataDialog : Context is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_f
    :goto_f
    return-void

    .line 653
    :cond_10
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_f
.end method
