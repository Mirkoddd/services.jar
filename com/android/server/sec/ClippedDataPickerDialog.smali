.class public Lcom/android/server/sec/ClippedDataPickerDialog;
.super Landroid/app/Dialog;
.source "ClippedDataPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;,
        Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String; = "ClipBoardDialog"


# instance fields
.field mAdapter:Landroid/widget/BaseAdapter;

.field private mAddScenario:Z

.field private mBroadCastListener:Landroid/content/BroadcastReceiver;

.field private mCalledDismissIntentFromSIPFlag:Z

.field private mCbm:Landroid/sec/clipboard/ClipboardExManager;

.field private mClipBoardLandscapeHeight:I

.field private mClipBoardPanelLandscapeHeight:I

.field private mClipBoardPanelPortraitHeight:I

.field private mClipBoardPortraitHeight:I

.field private mClipDrawer:Landroid/widget/SlidingDrawer;

.field private mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

.field private mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

.field private mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

.field mContentPanel:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mCurrentTargetDataType:I

.field private mDataCount:I

.field final mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

.field final mDismissIntentFromSIP:Ljava/lang/String;

.field mGrid:Landroid/widget/GridView;

.field mGridItemHeight:I

.field mGridItemWidth:I

.field mGridViewAniGoingOn:Z

.field mHTMLImageHeight:I

.field mHTMLImageWidth:I

.field private mSelectedIndex:I

.field final mTextViewMaxLineLand:I

.field final mTextViewMaxLinePort:I

.field final mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final mTmpLocation:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 211
    const v0, 0x2070028

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 133
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    .line 134
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    .line 137
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridViewAniGoingOn:Z

    .line 138
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    .line 139
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    .line 141
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    .line 142
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    .line 144
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    .line 145
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    .line 146
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLinePort:I

    .line 147
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLineLand:I

    .line 150
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 151
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    .line 152
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    .line 153
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    .line 157
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpLocation:[I

    .line 162
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    .line 163
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    .line 164
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    .line 165
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    .line 166
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    .line 168
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    .line 169
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    .line 172
    const-string v0, "DismissClipboardDialogFromIMMService"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromSIP:Ljava/lang/String;

    .line 173
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    .line 321
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$3;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$3;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    .line 391
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$4;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$4;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

    .line 212
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/sec/clipboard/ClipboardExManager;)V
    .registers 6
    .parameter "context"
    .parameter "mgr"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 217
    const v0, 0x2070028

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 133
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    .line 134
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    .line 137
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridViewAniGoingOn:Z

    .line 138
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    .line 139
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    .line 141
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    .line 142
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    .line 144
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    .line 145
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    .line 146
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLinePort:I

    .line 147
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLineLand:I

    .line 150
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 151
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    .line 152
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    .line 153
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    .line 157
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpLocation:[I

    .line 162
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    .line 163
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    .line 164
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    .line 165
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    .line 166
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    .line 168
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    .line 169
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    .line 172
    const-string v0, "DismissClipboardDialogFromIMMService"

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDismissIntentFromSIP:Ljava/lang/String;

    .line 173
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    .line 321
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$3;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$3;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    .line 391
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$4;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$4;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

    .line 218
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    .line 220
    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 221
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCalledDismissIntentFromSIPFlag:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/sec/ClippedDataPickerDialog;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataUiEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/IClipboardDataUiEvent;)Landroid/sec/clipboard/IClipboardDataUiEvent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/sec/ClippedDataPickerDialog;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/IClipboardDataList;)Landroid/sec/clipboard/data/IClipboardDataList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-object v0
.end method


# virtual methods
.method public deleteAnimation()V
    .registers 8

    .prologue
    .line 420
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v4

    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    if-lt v4, v5, :cond_67

    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v4

    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    if-gt v4, v5, :cond_67

    .line 422
    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v2, v4, v5

    .line 423
    .local v2, position:I
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_3a

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_3a
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 426
    .local v0, ani:Landroid/view/animation/AlphaAnimation;
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDeleteAnimation:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 427
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 430
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 432
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_5b

    .line 433
    invoke-virtual {v3, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 434
    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 480
    .end local v0           #ani:Landroid/view/animation/AlphaAnimation;
    .end local v2           #position:I
    .end local v3           #v:Landroid/view/View;
    :cond_5a
    :goto_5a
    return-void

    .line 436
    .restart local v0       #ani:Landroid/view/animation/AlphaAnimation;
    .restart local v2       #position:I
    .restart local v3       #v:Landroid/view/View;
    :cond_5b
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_5a

    const-string v4, "ClipboardServiceEx"

    const-string v5, "v is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 443
    .end local v0           #ani:Landroid/view/animation/AlphaAnimation;
    .end local v2           #position:I
    .end local v3           #v:Landroid/view/View;
    :cond_67
    :try_start_67
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-interface {v4, v5}, Landroid/sec/clipboard/IClipboardDataUiEvent;->removeItem(I)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6e} :catch_7a

    .line 451
    :goto_6e
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v4}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v4

    if-nez v4, :cond_5a

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    goto :goto_5a

    .line 445
    :catch_7a
    move-exception v1

    .line 447
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6e
.end method

.method public dismiss()V
    .registers 3

    .prologue
    .line 1111
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ClipboardServiceEx"

    const-string v1, "Clipboard dialog is closed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_b
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1113
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1117
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onClipBoardDialogSizeChanged()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 1136
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1137
    .local v0, cfg:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    if-eq v2, v3, :cond_45

    .line 1138
    const v2, 0x2040068

    invoke-virtual {p0, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1139
    .local v1, clipBoardBottomPanel:Landroid/widget/LinearLayout;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    .line 1140
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v2, :cond_45

    .line 1141
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_46

    .line 1142
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Landroid/widget/SlidingDrawer;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1143
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1144
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1151
    .end local v1           #clipBoardBottomPanel:Landroid/widget/LinearLayout;
    :cond_45
    :goto_45
    return-void

    .line 1145
    .restart local v1       #clipBoardBottomPanel:Landroid/widget/LinearLayout;
    :cond_46
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_45

    .line 1146
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Landroid/widget/SlidingDrawer;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1147
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_45
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 231
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x206001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    .line 232
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x206001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    .line 233
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x206001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    .line 234
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x206001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    .line 236
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x206001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    .line 237
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    .line 238
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    .line 239
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    .line 240
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 241
    .local v0, theWindow:Landroid/view/Window;
    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 243
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_cf

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Width :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   Height :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_cf
    const v1, 0x2030017

    invoke-virtual {p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->setContentView(I)V

    .line 247
    const v1, 0x2040069

    invoke-virtual {p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    .line 251
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    if-nez v1, :cond_f2

    .line 252
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 255
    :cond_f2
    new-instance v1, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Lcom/android/server/sec/ClippedDataPickerDialog$1;)V

    iput-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    .line 256
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z

    .line 259
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    new-instance v2, Lcom/android/server/sec/ClippedDataPickerDialog$1;

    invoke-direct {v2, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 275
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 277
    const v1, 0x2040066

    invoke-virtual {p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SlidingDrawer;

    iput-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Landroid/widget/SlidingDrawer;

    .line 279
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Landroid/widget/SlidingDrawer;

    new-instance v2, Lcom/android/server/sec/ClippedDataPickerDialog$2;

    invoke-direct {v2, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$2;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->rebuildView()V

    .line 288
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->onClipBoardDialogSizeChanged()V

    .line 289
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 363
    invoke-super {p0, p1, p2, p3}, Landroid/app/Dialog;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 364
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 365
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x20a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 366
    const v1, 0x2080026

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 367
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1, p2}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    .line 369
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 5
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 484
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 504
    invoke-super {p0, p2}, Landroid/app/Dialog;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 486
    :pswitch_c
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_17

    const-string v0, "ClipboardServiceEx"

    const-string v1, "select delete menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->deleteAnimation()V

    .line 502
    const/4 v0, 0x1

    goto :goto_b

    .line 484
    :pswitch_data_1c
    .packed-switch 0x204007e
        :pswitch_c
    .end packed-switch
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v1, :cond_9

    .line 296
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->open()V

    .line 300
    :cond_9
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 302
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v1, "DismissClipboardDialogFromIMMService"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 315
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 316
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 317
    return-void
.end method

.method public rebuildView()V
    .registers 4

    .prologue
    .line 1100
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1102
    .local v1, theWindow:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1104
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7dc

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1108
    return-void
.end method

.method public setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 6
    .parameter "type"
    .parameter "clPasteEvent"

    .prologue
    .line 1085
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    if-eq v0, p1, :cond_2f

    .line 1086
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasteTargetViewDataType() called !  mCurrentTargetDataType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_22
    iput p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    .line 1089
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1095
    :cond_2f
    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 1096
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 1121
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/sec/ClippedDataPickerDialog$5;

    invoke-direct {v1, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$5;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1130
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1132
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 1133
    return-void
.end method
