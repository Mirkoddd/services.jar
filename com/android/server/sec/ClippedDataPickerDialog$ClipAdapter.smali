.class public Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClippedDataPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClipAdapter"
.end annotation


# instance fields
.field layoutAni:Landroid/view/animation/Animation;

.field mBody:Landroid/widget/TextView;

.field private mChildViewIDs:[I

.field private mLayoutInflator:Landroid/view/LayoutInflater;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .registers 4
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 513
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mChildViewIDs:[I

    .line 519
    invoke-virtual {p1}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 520
    return-void

    .line 513
    :array_1c
    .array-data 0x4
        0x6ft 0x0t 0x4t 0x2t
        0x71t 0x0t 0x4t 0x2t
        0x70t 0x0t 0x4t 0x2t
    .end array-data
.end method

.method private getBitmap(Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "clipData"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 709
    const/4 v6, 0x1

    .line 710
    .local v6, sampleSize:I
    const/4 v2, 0x0

    .line 711
    .local v2, bm:Landroid/graphics/Bitmap;
    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local p1
    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v1

    .line 713
    .local v1, bitmapPath:Ljava/lang/String;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v7, :cond_24

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bitmapPath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_24
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 718
    .local v0, bitmapOption:Landroid/graphics/BitmapFactory$Options;
    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 721
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 725
    const/4 v7, 0x0

    :try_start_2f
    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 726
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_47} :catch_50

    move-result-object v2

    .line 734
    :cond_48
    :goto_48
    invoke-direct {p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->getExifOrientation(Ljava/lang/String;)I

    move-result v4

    .line 736
    .local v4, degree:I
    if-nez v4, :cond_5d

    move-object v3, v2

    .line 740
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .local v3, bm:Landroid/graphics/Bitmap;
    :goto_4f
    return-object v3

    .line 727
    .end local v3           #bm:Landroid/graphics/Bitmap;
    .end local v4           #degree:I
    .restart local v2       #bm:Landroid/graphics/Bitmap;
    :catch_50
    move-exception v5

    .line 728
    .local v5, e:Ljava/lang/Exception;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_48

    const-string v7, "ClipboardServiceEx"

    const-string v8, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 739
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v4       #degree:I
    :cond_5d
    invoke-virtual {p0, v2, v4}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v3, v2

    .line 740
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .restart local v3       #bm:Landroid/graphics/Bitmap;
    goto :goto_4f
.end method

.method private getDataTypeFromView(Landroid/view/View;)I
    .registers 4
    .parameter "v"

    .prologue
    .line 883
    const/4 v0, 0x0

    .line 885
    .local v0, ret:I
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 887
    const/4 v0, 0x2

    .line 898
    :cond_6
    :goto_6
    return v0

    .line 889
    :cond_7
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    .line 891
    const/4 v0, 0x3

    goto :goto_6

    .line 893
    :cond_d
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_6

    .line 895
    const/4 v0, 0x4

    goto :goto_6
.end method

.method private getExifOrientation(Ljava/lang/String;)I
    .registers 10
    .parameter "filepath"

    .prologue
    const/4 v7, -0x1

    .line 747
    const/4 v0, 0x0

    .line 748
    .local v0, degree:I
    const/4 v2, 0x0

    .line 750
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_3
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_17

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 754
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :cond_9
    :goto_9
    if-eqz v2, :cond_16

    .line 755
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 757
    .local v4, orientation:I
    if-eq v4, v7, :cond_16

    .line 759
    packed-switch v4, :pswitch_data_2e

    .line 772
    .end local v4           #orientation:I
    :cond_16
    :goto_16
    :pswitch_16
    return v0

    .line 751
    :catch_17
    move-exception v1

    .line 752
    .local v1, ex:Ljava/io/IOException;
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string v5, "ClipboardServiceEx"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 761
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #orientation:I
    :pswitch_24
    const/16 v0, 0x5a

    .line 762
    goto :goto_16

    .line 764
    :pswitch_27
    const/16 v0, 0xb4

    .line 765
    goto :goto_16

    .line 767
    :pswitch_2a
    const/16 v0, 0x10e

    goto :goto_16

    .line 759
    nop

    :pswitch_data_2e
    .packed-switch 0x3
        :pswitch_27
        :pswitch_16
        :pswitch_16
        :pswitch_24
        :pswitch_16
        :pswitch_2a
    .end packed-switch
.end method

.method private setClippedDataIntoView(Landroid/view/View;ILandroid/view/View;)V
    .registers 15
    .parameter "v"
    .parameter "position"
    .parameter "ItemViewParent"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 796
    const/4 v2, 0x0

    .line 798
    .local v2, cbData:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_5
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$600(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_32

    move-result-object v2

    .line 803
    :goto_f
    instance-of v5, p1, Landroid/widget/TextView;

    if-eqz v5, :cond_37

    instance-of v5, v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    if-eqz v5, :cond_37

    move-object v5, p1

    .line 805
    check-cast v5, Landroid/widget/TextView;

    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v2           #cbData:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$700(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v5

    if-ne v5, v10, :cond_31

    .line 809
    invoke-virtual {p1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 811
    invoke-virtual {p3, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 879
    :cond_31
    :goto_31
    return-void

    .line 799
    .restart local v2       #cbData:Landroid/sec/clipboard/data/ClipboardData;
    :catch_32
    move-exception v3

    .line 800
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f

    .line 814
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_37
    instance-of v5, p1, Landroid/widget/ImageView;

    if-eqz v5, :cond_88

    instance-of v5, v2, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    if-eqz v5, :cond_88

    .line 819
    const/4 v1, 0x0

    .line 821
    .local v1, bm:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->getBitmap(Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 823
    if-eqz v1, :cond_70

    .line 824
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    if-ge v5, v6, :cond_7f

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    if-ge v5, v6, :cond_7f

    move-object v5, p1

    .line 825
    check-cast v5, Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_6a
    move-object v5, p1

    .line 830
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 834
    :cond_70
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$700(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v5

    if-ne v5, v9, :cond_31

    .line 835
    invoke-virtual {p1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 837
    invoke-virtual {p3, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_31

    :cond_7f
    move-object v5, p1

    .line 827
    check-cast v5, Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_6a

    .line 840
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_88
    instance-of v5, p1, Landroid/widget/TextView;

    if-eqz v5, :cond_fa

    instance-of v5, v2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    if-eqz v5, :cond_fa

    move-object v4, p1

    .line 844
    check-cast v4, Landroid/widget/TextView;

    .local v4, tv:Landroid/widget/TextView;
    move-object v5, v2

    .line 846
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local v2           #cbData:Landroid/sec/clipboard/data/ClipboardData;
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    invoke-virtual {v2, v5, v6}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getFirstImage(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 851
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_d3

    .line 853
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v0, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 854
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I
    invoke-static {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$800(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e3

    .line 855
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    invoke-virtual {v0, v7, v7, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 858
    invoke-virtual {v4, v0, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 869
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_d3
    :goto_d3
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$700(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v5

    if-ne v5, v10, :cond_31

    .line 870
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 871
    invoke-virtual {p3, v7}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_31

    .line 860
    .restart local v0       #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_e3
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I
    invoke-static {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$800(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v5

    if-ne v5, v9, :cond_d3

    .line 861
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    invoke-virtual {v0, v7, v7, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 864
    invoke-virtual {v4, v8, v0, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_d3

    .line 877
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v4           #tv:Landroid/widget/TextView;
    .restart local v2       #cbData:Landroid/sec/clipboard/data/ClipboardData;
    :cond_fa
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_31

    const-string v5, "ClipboardServiceEx"

    const-string v6, "Not Supported View type yet"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31
.end method

.method private setOnClickListenerToBodyView(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1011
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1040
    return-void
.end method

.method private setOnTouchListenerToWebView(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1045
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1080
    return-void
.end method

.method private updateViewVisibility(Landroid/view/View;IZ)Landroid/view/View;
    .registers 16
    .parameter "v"
    .parameter "position"
    .parameter "clearFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 903
    if-eqz p3, :cond_2d

    .line 904
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mChildViewIDs:[I

    array-length v3, v8

    .line 906
    .local v3, cnt:I
    :cond_5
    :goto_5
    if-lez v3, :cond_2d

    .line 907
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mChildViewIDs:[I

    add-int/lit8 v3, v3, -0x1

    aget v8, v8, v3

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 908
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1e

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 910
    :cond_1e
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_5

    .line 911
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 913
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_5

    .line 918
    .end local v2           #child:Landroid/view/View;
    .end local v3           #cnt:I
    :cond_2d
    const/4 v0, 0x0

    .line 920
    .local v0, BodyView:Landroid/view/View;
    const/4 v1, 0x0

    .line 922
    .local v1, cbData:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_2f
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v8}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$600(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v8

    invoke-interface {v8, p2}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_38} :catch_59

    move-result-object v1

    .line 928
    :goto_39
    if-nez v1, :cond_5e

    .line 929
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_57

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cbData does not exist...position : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_57
    const/4 v8, 0x0

    .line 1006
    :goto_58
    return-object v8

    .line 923
    :catch_59
    move-exception v4

    .line 924
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_39

    .line 933
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_5e
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v8

    packed-switch v8, :pswitch_data_f6

    .line 1002
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_70

    const-string v8, "ClipboardServiceEx"

    const-string v9, "current Item to be shown is invalid item type"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    :goto_70
    move-object v8, v0

    .line 1006
    goto :goto_58

    .line 936
    :pswitch_72
    const v8, 0x204006f

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 937
    .local v6, tv:Landroid/widget/TextView;
    move-object v0, v6

    .line 938
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_70

    .line 939
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 941
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I
    invoke-static {v8}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$800(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9e

    .line 942
    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 946
    :cond_95
    :goto_95
    invoke-direct {p0, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    .line 948
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v8, v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_70

    .line 943
    :cond_9e
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I
    invoke-static {v8}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$800(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_95

    .line 944
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_95

    .line 953
    .end local v6           #tv:Landroid/widget/TextView;
    :pswitch_ad
    const v8, 0x2040071

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 954
    .local v7, tvHTML:Landroid/widget/TextView;
    move-object v0, v7

    .line 955
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_cb

    .line 956
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 964
    invoke-direct {p0, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    .line 966
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v8, v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->registerForContextMenu(Landroid/view/View;)V

    .line 969
    :cond_cb
    if-eqz p3, :cond_70

    .line 970
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_70

    .line 989
    .end local v7           #tvHTML:Landroid/widget/TextView;
    :pswitch_d5
    const v8, 0x2040070

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 990
    .local v5, iv:Landroid/widget/ImageView;
    move-object v0, v5

    .line 992
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_70

    .line 994
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 995
    invoke-direct {p0, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    .line 997
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v8, v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_70

    .line 933
    nop

    :pswitch_data_f6
    .packed-switch 0x2
        :pswitch_72
        :pswitch_d5
        :pswitch_ad
    .end packed-switch
.end method


# virtual methods
.method public final getCount()I
    .registers 6

    .prologue
    .line 619
    const/4 v1, 0x0

    .line 622
    .local v1, size:I
    :try_start_1
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$600(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/data/IClipboardDataList;->size()I

    move-result v1

    .line 623
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_27

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCount() return value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_27} :catch_2e

    .line 629
    :cond_27
    :goto_27
    const/16 v2, 0x14

    if-le v1, v2, :cond_2d

    const/16 v1, 0x14

    .line 631
    :cond_2d
    return v1

    .line 624
    :catch_2e
    move-exception v0

    .line 626
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_27
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 5
    .parameter "position"

    .prologue
    .line 636
    const/4 v1, 0x0

    .line 639
    .local v1, obj:Ljava/lang/Object;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$600(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 645
    .end local v1           #obj:Ljava/lang/Object;
    :goto_b
    return-object v1

    .line 640
    .restart local v1       #obj:Ljava/lang/Object;
    :catch_c
    move-exception v0

    .line 642
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 649
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 524
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_1d

    const-string v5, "ClipboardServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getView()position :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_1d
    const/4 v3, 0x0

    .line 529
    .local v3, itemView:Landroid/view/View;
    const/4 v0, 0x0

    .line 531
    .local v0, bodyView:Landroid/view/View;
    if-nez p2, :cond_79

    .line 532
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v6, 0x2030018

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 535
    const/4 v5, 0x0

    :try_start_2c
    invoke-direct {p0, v3, p1, v5}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->updateViewVisibility(Landroid/view/View;IZ)Landroid/view/View;
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_74

    move-result-object v0

    .line 570
    :goto_30
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v7, v7, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    :goto_40
    if-eqz v0, :cond_85

    .line 594
    invoke-direct {p0, v0, p1, v3}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setClippedDataIntoView(Landroid/view/View;ILandroid/view/View;)V

    .line 600
    :cond_45
    :goto_45
    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    .line 601
    .local v4, lAnim:Landroid/view/animation/Animation;
    if-eqz v4, :cond_52

    instance-of v5, v4, Landroid/view/animation/AlphaAnimation;

    if-nez v5, :cond_52

    .line 602
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 606
    :cond_52
    if-eqz p1, :cond_59

    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z
    invoke-static {v5, v8}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$502(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    .line 608
    :cond_59
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z
    invoke-static {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$500(Lcom/android/server/sec/ClippedDataPickerDialog;)Z

    move-result v5

    if-eqz v5, :cond_73

    if-nez p1, :cond_73

    .line 609
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x2090003

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 610
    .local v2, fadeIn:Landroid/view/animation/Animation;
    invoke-virtual {v3, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 614
    .end local v2           #fadeIn:Landroid/view/animation/Animation;
    :cond_73
    return-object v3

    .line 536
    .end local v4           #lAnim:Landroid/view/animation/Animation;
    :catch_74
    move-exception v1

    .line 538
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_30

    .line 572
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_79
    move-object v3, p2

    .line 575
    const/4 v5, 0x1

    :try_start_7b
    invoke-direct {p0, v3, p1, v5}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->updateViewVisibility(Landroid/view/View;IZ)Landroid/view/View;
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_7e} :catch_80

    move-result-object v0

    goto :goto_40

    .line 576
    :catch_80
    move-exception v1

    .line 577
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_40

    .line 596
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_85
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_45

    const-string v5, "ClipboardServiceEx"

    const-string v6, " Item View is null !!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method public rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "bitmap"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 776
    if-eqz p2, :cond_31

    if-eqz p1, :cond_31

    .line 777
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 778
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 781
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1d
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 782
    .local v7, converted:Landroid/graphics/Bitmap;
    if-eq p1, v7, :cond_31

    .line 783
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_30
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_30} :catch_32

    .line 784
    move-object p1, v7

    .line 791
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #converted:Landroid/graphics/Bitmap;
    :cond_31
    :goto_31
    return-object p1

    .line 787
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_32
    move-exception v8

    .line 788
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_31

    const-string v0, "ClipboardServiceEx"

    const-string v1, "out of memory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method
