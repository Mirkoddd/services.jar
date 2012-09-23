.class public Lcom/android/server/enterprise/MiscPolicy;
.super Landroid/app/enterprise/IMiscPolicy$Stub;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/MiscPolicy$1;,
        Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;,
        Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiscPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mSIMInfo:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

.field private mSystemFontChanger:Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 89
    iput-object p1, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    .line 90
    new-instance v0, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 91
    new-instance v0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    iget-object v1, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;-><init>(Lcom/android/server/enterprise/MiscPolicy;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mSIMInfo:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    .line 92
    return-void
.end method

.method private GetSystemFontChanger()Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;
    .registers 3

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;

    if-nez v0, :cond_c

    .line 886
    new-instance v0, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/MiscPolicy;Lcom/android/server/enterprise/MiscPolicy$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;

    .line 888
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/MiscPolicy;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addBookmark(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 20
    .parameter "url"
    .parameter "name"
    .parameter "thumbnail"

    .prologue
    .line 628
    const/4 v11, 0x0

    .line 630
    .local v11, ret:Z
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 631
    .local v3, creationTime:J
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 632
    .local v9, map:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 633
    .local v5, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 634
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 636
    .local v7, folder:I
    :try_start_19
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/server/enterprise/MiscPolicy;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_11e
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1e} :catch_f2

    move-result-object v5

    .line 637
    if-nez v5, :cond_28

    .line 638
    const/4 v13, 0x0

    .line 699
    if-eqz v5, :cond_27

    .line 700
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 702
    :cond_27
    :goto_27
    return v13

    .line 639
    :cond_28
    :try_start_28
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_87

    const/4 v13, 0x4

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-nez v13, :cond_87

    .line 643
    const-string v13, "created"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 644
    const-string v13, "title"

    move-object/from16 v0, p2

    invoke-virtual {v9, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v13, "bookmark"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    const-string v13, "thumbnail"

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/MiscPolicy;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 647
    const-string v13, "touch_icon"

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/MiscPolicy;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 648
    sget-object v13, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v2, v13, v9, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_28 .. :try_end_7f} :catchall_11e
    .catch Ljava/lang/IllegalStateException; {:try_start_28 .. :try_end_7f} :catch_f2

    .line 694
    :cond_7f
    :goto_7f
    const/4 v11, 0x1

    .line 699
    if-eqz v5, :cond_85

    .line 700
    :goto_82
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_85
    move v13, v11

    .line 702
    goto :goto_27

    .line 650
    :cond_87
    :try_start_87
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 651
    .local v1, count:I
    const/4 v10, 0x0

    .line 652
    .local v10, matchedTitle:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_8d
    if-ge v8, v1, :cond_9f

    .line 655
    invoke-interface {v5, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 656
    const/4 v13, 0x5

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10f

    .line 662
    :cond_9f
    if-nez v10, :cond_7f

    .line 666
    const-string v13, "title"

    move-object/from16 v0, p2

    invoke-virtual {v9, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v13, "url"

    move-object/from16 v0, p1

    invoke-virtual {v9, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v13, "created"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 669
    const-string v13, "bookmark"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 670
    const-string v13, "date"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 671
    const-string v13, "thumbnail"

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/MiscPolicy;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 673
    const/4 v12, 0x0

    .line 674
    .local v12, visits:I
    if-lez v1, :cond_dd

    .line 680
    const/4 v13, 0x2

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 686
    :cond_dd
    if-nez v1, :cond_113

    if-nez v7, :cond_113

    .line 687
    const-string v13, "visits"

    add-int/lit8 v14, v12, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 691
    :goto_ec
    sget-object v13, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v13, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_f1
    .catchall {:try_start_87 .. :try_end_f1} :catchall_11e
    .catch Ljava/lang/IllegalStateException; {:try_start_87 .. :try_end_f1} :catch_f2

    goto :goto_7f

    .line 695
    .end local v1           #count:I
    .end local v8           #i:I
    .end local v10           #matchedTitle:Z
    .end local v12           #visits:I
    :catch_f2
    move-exception v6

    .line 696
    .local v6, e:Ljava/lang/IllegalStateException;
    :try_start_f3
    const-string v13, "MiscPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addBookmark"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10b
    .catchall {:try_start_f3 .. :try_end_10b} :catchall_11e

    .line 699
    if-eqz v5, :cond_85

    goto/16 :goto_82

    .line 652
    .end local v6           #e:Ljava/lang/IllegalStateException;
    .restart local v1       #count:I
    .restart local v8       #i:I
    .restart local v10       #matchedTitle:Z
    :cond_10f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8d

    .line 689
    .restart local v12       #visits:I
    :cond_113
    :try_start_113
    const-string v13, "visits"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_11d
    .catchall {:try_start_113 .. :try_end_11d} :catchall_11e
    .catch Ljava/lang/IllegalStateException; {:try_start_113 .. :try_end_11d} :catch_f2

    goto :goto_ec

    .line 699
    .end local v1           #count:I
    .end local v8           #i:I
    .end local v10           #matchedTitle:Z
    .end local v12           #visits:I
    :catchall_11e
    move-exception v13

    if-eqz v5, :cond_124

    .line 700
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 699
    :cond_124
    throw v13
.end method

.method private static final addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .registers 2
    .parameter "sb"

    .prologue
    .line 578
    const-string v0, " OR url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    return-void
.end method

.method private static bitmapToBytes(Landroid/graphics/Bitmap;)[B
    .registers 4
    .parameter "bm"

    .prologue
    .line 710
    if-nez p0, :cond_4

    .line 711
    const/4 v1, 0x0

    .line 716
    :goto_3
    return-object v1

    .line 714
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 715
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 716
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_3
.end method

.method private enforceSecurityPermission()I
    .registers 3

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 98
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 101
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "cr"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 591
    const/4 v7, 0x0

    .line 592
    .local v7, secure:Z
    move-object v6, p1

    .line 593
    .local v6, compareString:Ljava/lang/String;
    const-string v0, "http://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 594
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 599
    :cond_10
    :goto_10
    const-string v0, "www."

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 600
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 602
    :cond_1d
    const/4 v8, 0x0

    .line 603
    .local v8, whereClause:Ljava/lang/StringBuilder;
    if-eqz v7, :cond_75

    .line 604
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    const-string v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 605
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 606
    invoke-static {v8}, Lcom/android/server/enterprise/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 619
    :goto_56
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 595
    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    :cond_65
    const-string v0, "https://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 596
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 597
    const/4 v7, 0x1

    goto :goto_10

    .line 609
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    :cond_75
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    const-string v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    invoke-static {v8, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 611
    invoke-static {v8}, Lcom/android/server/enterprise/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 613
    .local v9, wwwString:Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 614
    invoke-static {v8}, Lcom/android/server/enterprise/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 616
    invoke-static {v8}, Lcom/android/server/enterprise/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_56
.end method

.method private isAdminLockScreenStringSet()Z
    .registers 5

    .prologue
    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "lockscreenstring"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 808
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_13

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 809
    const/4 v0, 0x1

    .line 811
    :cond_13
    return v0
.end method

.method private isRingToneEntryExist(Ljava/lang/String;Landroid/net/Uri;)J
    .registers 13
    .parameter "aRingToneAbsolutePath"
    .parameter "aUri"

    .prologue
    .line 216
    const-wide/16 v8, -0x1

    .line 218
    .local v8, lRingToneEntryId:J
    const/4 v7, 0x0

    .line 221
    .local v7, lCursor:Landroid/database/Cursor;
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, lWhereClause:Ljava/lang/String;
    const-string v0, "MiscPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRingToneEntryExist : whereClause :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 228
    if-eqz v7, :cond_59

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_59

    .line 229
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 230
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_58} :catch_78

    move-result-wide v8

    .line 236
    :cond_59
    if-eqz v7, :cond_5f

    .line 237
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 238
    .end local v3           #lWhereClause:Ljava/lang/String;
    :goto_5e
    const/4 v7, 0x0

    .line 242
    :cond_5f
    const-string v0, "MiscPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRingToneEntryExist : return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-wide v8

    .line 233
    :catch_78
    move-exception v6

    .line 234
    .local v6, e:Ljava/lang/Exception;
    :try_start_79
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_82

    .line 236
    if-eqz v7, :cond_5f

    .line 237
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_5e

    .line 236
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_82
    move-exception v0

    if-eqz v7, :cond_89

    .line 237
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 238
    const/4 v7, 0x0

    .line 236
    :cond_89
    throw v0
.end method

.method private readFile(Ljava/lang/String;)[B
    .registers 15
    .parameter "fileName"

    .prologue
    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 249
    .local v4, is:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 251
    .local v0, bytes:[B
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_a0

    .line 252
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_8
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_9d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_a2

    .line 254
    .end local v4           #is:Ljava/io/FileInputStream;
    .local v5, is:Ljava/io/FileInputStream;
    if-eqz v5, :cond_83

    .line 256
    :try_start_f
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 257
    .local v6, length:J
    const-wide/32 v10, 0x7fffffff

    cmp-long v10, v6, v10

    if-lez v10, :cond_47

    .line 258
    new-instance v10, Ljava/io/IOException;

    const-string v11, "The file is too big"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_22} :catch_22

    .line 276
    .end local v6           #length:J
    :catch_22
    move-exception v1

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    move-object v2, v3

    .line 277
    .end local v3           #file:Ljava/io/File;
    .local v1, e:Ljava/lang/Exception;
    .restart local v2       #file:Ljava/io/File;
    :goto_25
    :try_start_25
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_9b

    .line 282
    if-eqz v4, :cond_2e

    .line 283
    :try_start_2a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_90

    .line 284
    const/4 v4, 0x0

    .line 290
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2e
    :goto_2e
    const-string v10, "MiscPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "readFile returns "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-object v0

    .line 262
    .end local v2           #file:Ljava/io/File;
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v6       #length:J
    :cond_47
    long-to-int v10, v6

    :try_start_48
    new-array v0, v10, [B

    .line 264
    const/4 v9, 0x0

    .line 265
    .local v9, offset:I
    const/4 v8, 0x0

    .line 267
    .local v8, numRead:I
    :goto_4c
    array-length v10, v0

    if-ge v9, v10, :cond_59

    array-length v10, v0

    sub-int/2addr v10, v9

    invoke-virtual {v5, v0, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_59

    .line 268
    add-int/2addr v9, v8

    goto :goto_4c

    .line 271
    :cond_59
    array-length v10, v0

    if-ge v9, v10, :cond_83

    .line 272
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The file was not completely read: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_79
    .catchall {:try_start_48 .. :try_end_79} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_79} :catch_22

    .line 281
    .end local v6           #length:J
    .end local v8           #numRead:I
    .end local v9           #offset:I
    :catchall_79
    move-exception v10

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    move-object v2, v3

    .line 282
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :goto_7c
    if-eqz v4, :cond_82

    .line 283
    :try_start_7e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_8b

    .line 284
    const/4 v4, 0x0

    .line 281
    :cond_82
    :goto_82
    throw v10

    .line 282
    .end local v2           #file:Ljava/io/File;
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :cond_83
    if-eqz v5, :cond_99

    .line 283
    :try_start_85
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_95

    .line 284
    const/4 v4, 0x0

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    :goto_89
    move-object v2, v3

    .line 289
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_2e

    .line 286
    :catch_8b
    move-exception v1

    .line 287
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_82

    .line 286
    :catch_90
    move-exception v1

    .line 287
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e

    .line 286
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_95
    move-exception v1

    .line 287
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_99
    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_89

    .line 281
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :catchall_9b
    move-exception v10

    goto :goto_7c

    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catchall_9d
    move-exception v10

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_7c

    .line 276
    :catch_a0
    move-exception v1

    goto :goto_25

    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_a2
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_25
.end method

.method private removeFromBookmarks(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .parameter "url"
    .parameter "title"

    .prologue
    .line 724
    const/4 v6, 0x0

    .line 725
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 726
    .local v10, ret:Z
    iget-object v1, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 728
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_8
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "url = ? AND title = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_1b} :catch_70

    move-result-object v6

    .line 732
    if-nez v6, :cond_25

    .line 733
    const/4 v1, 0x0

    .line 761
    if-eqz v6, :cond_24

    .line 762
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 764
    :cond_24
    :goto_24
    return v1

    .line 734
    :cond_25
    :try_start_25
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_28} :catch_70

    move-result v8

    .line 736
    .local v8, first:Z
    if-nez v8, :cond_32

    .line 761
    if-eqz v6, :cond_30

    .line 762
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_30
    move v1, v10

    .line 737
    goto :goto_24

    .line 740
    :cond_32
    :try_start_32
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 742
    .local v11, uri:Landroid/net/Uri;
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 743
    .local v9, numVisits:I
    if-nez v9, :cond_52

    .line 744
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_32 .. :try_end_4a} :catch_70

    .line 756
    :goto_4a
    const/4 v10, 0x1

    .line 761
    if-eqz v6, :cond_50

    .line 762
    .end local v8           #first:Z
    .end local v9           #numVisits:I
    .end local v11           #uri:Landroid/net/Uri;
    :goto_4d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_50
    move v1, v10

    .line 764
    goto :goto_24

    .line 748
    .restart local v8       #first:Z
    .restart local v9       #numVisits:I
    .restart local v11       #uri:Landroid/net/Uri;
    :cond_52
    :try_start_52
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 749
    .local v12, values:Landroid/content/ContentValues;
    const-string v1, "bookmark"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_61
    .catchall {:try_start_52 .. :try_end_61} :catchall_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_52 .. :try_end_61} :catch_70

    .line 751
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_63
    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_4a

    .line 752
    :catch_67
    move-exception v7

    .line 753
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_68
    const-string v1, "removeFromBookmarks"

    const-string v2, "no database!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_68 .. :try_end_6f} :catch_70

    goto :goto_4a

    .line 757
    .end local v7           #e:Ljava/lang/IllegalStateException;
    .end local v8           #first:Z
    .end local v9           #numVisits:I
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    :catch_70
    move-exception v7

    .line 758
    .restart local v7       #e:Ljava/lang/IllegalStateException;
    :try_start_71
    const-string v1, "MiscPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeFromBookmarks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_71 .. :try_end_89} :catchall_8c

    .line 761
    if-eqz v6, :cond_50

    goto :goto_4d

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_8c
    move-exception v1

    if-eqz v6, :cond_92

    .line 762
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 761
    :cond_92
    throw v1
.end method

.method private updateDatabase(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "ringtonefilePath"
    .parameter "mimeType"

    .prologue
    const/4 v10, 0x1

    .line 174
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v4, ringtoneFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 178
    .local v5, uri:Landroid/net/Uri;
    :try_start_e
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/android/server/enterprise/MiscPolicy;->isRingToneEntryExist(Ljava/lang/String;Landroid/net/Uri;)J

    move-result-wide v2

    .line 179
    .local v2, lRingToneId:J
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ringtone id :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-wide/16 v6, -0x1

    cmp-long v6, v6, v2

    if-eqz v6, :cond_5b

    .line 182
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ringtone entry exist deleting it :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v6, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 186
    :cond_5b
    const-string v6, "MiscPolicy"

    const-string v7, "Ringtone creating new one"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 189
    .local v0, content:Landroid/content/ContentValues;
    const-string v6, "_data"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v6, "title"

    const-string v7, "IT Admin tone"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v6, "_size"

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    const-string v6, "mime_type"

    const-string v7, "audio/*"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v6, "artist"

    const-string v7, "artist"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v6, "is_ringtone"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 195
    const-string v6, "is_notification"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 196
    const-string v6, "is_alarm"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 197
    const-string v6, "is_music"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 200
    iget-object v6, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_c3} :catch_cc

    move-result-object v5

    .line 206
    .end local v0           #content:Landroid/content/ContentValues;
    .end local v2           #lRingToneId:J
    :goto_c4
    if-eqz v5, :cond_cb

    .line 207
    iget-object v6, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 211
    :cond_cb
    return-void

    .line 202
    :catch_cc
    move-exception v1

    .line 203
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c4
.end method


# virtual methods
.method public addWebBookmarkBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 5
    .parameter "uri"
    .parameter "title"
    .parameter "iconBm"

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 568
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/MiscPolicy;->addBookmark(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public addWebBookmarkByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)Z
    .registers 7
    .parameter "uri"
    .parameter "title"
    .parameter "iconBuffer"

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 555
    const/4 v0, 0x0

    .line 556
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_f

    array-length v1, p3

    if-lez v1, :cond_f

    .line 557
    const/4 v1, 0x0

    array-length v2, p3

    invoke-static {p3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 559
    :cond_f
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/enterprise/MiscPolicy;->addBookmark(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v1

    return v1
.end method

.method public changeLockScreenString(Ljava/lang/String;)Z
    .registers 12
    .parameter "statement"

    .prologue
    const/16 v7, 0x100

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 822
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 823
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 824
    .local v4, token:J
    const/4 v2, 0x0

    .line 825
    .local v2, ret:Z
    const/4 v3, 0x0

    .line 826
    .local v3, revoked:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->isAdminLockScreenStringSet()Z

    move-result v1

    .line 828
    .local v1, restricted:Z
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gez v6, :cond_1c

    .line 829
    :cond_19
    const/4 v3, 0x1

    .line 830
    const-string p1, ""

    .line 834
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_40

    .line 835
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 836
    const-string v6, "MiscPolicy"

    const-string v7, "changeLockScreenString():lock screen text is truncated "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_40
    if-nez v3, :cond_a2

    .line 841
    iget-object v6, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_owner_info_enabled"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 843
    .local v0, enabled:I
    if-nez v1, :cond_5c

    .line 844
    iget-object v6, p0, Lcom/android/server/enterprise/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "lockscreenstring"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 847
    :cond_5c
    if-nez v0, :cond_70

    .line 848
    const-string v6, "MiscPolicy"

    const-string v7, "changeLockScreenString(): enabling owner info"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v6, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_owner_info_enabled"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 853
    :cond_70
    iget-object v6, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_owner_info"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 876
    .end local v0           #enabled:I
    :cond_7c
    :goto_7c
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeLockScreenString():ret:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 880
    return v2

    .line 857
    :cond_a2
    if-ne v1, v9, :cond_7c

    .line 859
    const-string v6, "MiscPolicy"

    const-string v7, "changeLockScreenString(): revoke restriction"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v6, p0, Lcom/android/server/enterprise/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "lockscreenstring"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 866
    iget-object v6, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_owner_info"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_7c
.end method

.method public deleteWebBookmark(Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 4
    .parameter "uri"
    .parameter "title"

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 574
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/MiscPolicy;->removeFromBookmarks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getCurrentLockScreenString()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 774
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 776
    .local v3, token:J
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_owner_info_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 778
    .local v0, enabled:I
    const/4 v1, 0x0

    .line 779
    .local v1, lScreenTxt:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->isAdminLockScreenStringSet()Z

    move-result v2

    .line 780
    .local v2, restricted:Z
    if-ne v2, v7, :cond_29

    if-ne v0, v7, :cond_29

    .line 787
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_owner_info"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 792
    :cond_29
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 794
    return-object v1
.end method

.method public getLastSimChangeInfo()Landroid/app/enterprise/SimChangeInfo;
    .registers 8

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 303
    :try_start_3
    new-instance v1, Landroid/app/enterprise/SimChangeInfo;

    invoke-direct {v1}, Landroid/app/enterprise/SimChangeInfo;-><init>()V

    .line 304
    .local v1, sci:Landroid/app/enterprise/SimChangeInfo;
    const-string v4, "SimChangeTime"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, tmp:Ljava/lang/String;
    if-nez v3, :cond_14

    .line 307
    const-string v3, "-1"

    .line 308
    :cond_14
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/enterprise/SimChangeInfo;->changeTime:J

    .line 309
    new-instance v4, Landroid/app/enterprise/SimInfo;

    invoke-direct {v4}, Landroid/app/enterprise/SimInfo;-><init>()V

    iput-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    .line 310
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v5, "PreviousSimCountryIso"

    const-string v6, "/data/system/SimCard.dat"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->countryIso:Ljava/lang/String;

    .line 313
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v5, "PreviousSimOperatorName"

    const-string v6, "/data/system/SimCard.dat"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->operatorName:Ljava/lang/String;

    .line 316
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v5, "PreviousSimOperator"

    const-string v6, "/data/system/SimCard.dat"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->operator:Ljava/lang/String;

    .line 318
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v5, "PreviousSimPhoneNumber"

    const-string v6, "/data/system/SimCard.dat"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->phoneNumber:Ljava/lang/String;

    .line 321
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v5, "PreviousSimSerialNumber"

    const-string v6, "/data/system/SimCard.dat"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->serialNumber:Ljava/lang/String;

    .line 325
    const-string v4, "SimChangeOperation"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 327
    if-nez v3, :cond_69

    .line 328
    const-string v3, "-1"

    .line 329
    :cond_69
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Landroid/app/enterprise/SimChangeInfo;->changeOperation:I

    .line 331
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 333
    .local v2, tm:Landroid/telephony/TelephonyManager;
    new-instance v4, Landroid/app/enterprise/SimInfo;

    invoke-direct {v4}, Landroid/app/enterprise/SimInfo;-><init>()V

    iput-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    .line 334
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->countryIso:Ljava/lang/String;

    .line 335
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->operatorName:Ljava/lang/String;

    .line 336
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->operator:Ljava/lang/String;

    .line 337
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->phoneNumber:Ljava/lang/String;

    .line 338
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->serialNumber:Ljava/lang/String;
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a8} :catch_a9

    .line 344
    .end local v1           #sci:Landroid/app/enterprise/SimChangeInfo;
    .end local v2           #tm:Landroid/telephony/TelephonyManager;
    .end local v3           #tmp:Ljava/lang/String;
    :goto_a8
    return-object v1

    .line 341
    :catch_a9
    move-exception v0

    .line 342
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 344
    new-instance v1, Landroid/app/enterprise/SimChangeInfo;

    invoke-direct {v1}, Landroid/app/enterprise/SimChangeInfo;-><init>()V

    goto :goto_a8
.end method

.method public getSystemActiveFont()Ljava/lang/String;
    .registers 2

    .prologue
    .line 910
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->getSystemActiveFont()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemFonts()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 920
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->getSystemFonts()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setRingerBytes([BLjava/lang/String;)V
    .registers 12
    .parameter "buffer"
    .parameter "mimeType"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    const-string v6, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 139
    const/4 v2, 0x0

    .line 141
    .local v2, outStream:Ljava/io/OutputStream;
    if-eqz p1, :cond_11

    :try_start_c
    array-length v5, p1

    if-lez v5, :cond_11

    if-nez p2, :cond_1c

    .line 142
    :cond_11
    const-string v5, "MiscPolicy"

    const-string v6, "setRingerBytes: Invalid parameter(s)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_50

    .line 163
    if-eqz v2, :cond_1b

    .line 164
    :try_start_1a
    throw v2
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1b} :catch_95

    .line 171
    :cond_1b
    :goto_1b
    return-void

    .line 146
    :cond_1c
    :try_start_1c
    const-string v4, "/data/system/custom.ogg"

    .line 148
    .local v4, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 153
    :cond_2c
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_31} :catch_50

    .line 154
    .end local v2           #outStream:Ljava/io/OutputStream;
    .local v3, outStream:Ljava/io/OutputStream;
    :try_start_31
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 155
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1ff

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/android/server/enterprise/MiscPolicy;->updateDatabase(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_31 .. :try_end_49} :catchall_c6
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_49} :catch_c9

    .line 163
    if-eqz v3, :cond_4e

    .line 164
    :try_start_4b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_ac

    :cond_4e
    :goto_4e
    move-object v2, v3

    .line 170
    .end local v3           #outStream:Ljava/io/OutputStream;
    .restart local v2       #outStream:Ljava/io/OutputStream;
    goto :goto_1b

    .line 159
    .end local v1           #file:Ljava/io/File;
    .end local v4           #path:Ljava/lang/String;
    :catch_50
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/Exception;
    :goto_51
    :try_start_51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_74

    .line 163
    if-eqz v2, :cond_1b

    .line 164
    :try_start_56
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_1b

    .line 166
    :catch_5a
    move-exception v0

    .line 167
    .local v0, e:Ljava/io/IOException;
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRingerBytes EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_70
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 162
    .end local v0           #e:Ljava/io/IOException;
    :catchall_74
    move-exception v5

    .line 163
    :goto_75
    if-eqz v2, :cond_7a

    .line 164
    :try_start_77
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    .line 162
    :cond_7a
    :goto_7a
    throw v5

    .line 166
    :catch_7b
    move-exception v0

    .line 167
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setRingerBytes EX: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 166
    .end local v0           #e:Ljava/io/IOException;
    :catch_95
    move-exception v0

    .line 167
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRingerBytes EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_70

    .line 166
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #outStream:Ljava/io/OutputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #outStream:Ljava/io/OutputStream;
    .restart local v4       #path:Ljava/lang/String;
    :catch_ac
    move-exception v0

    .line 167
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRingerBytes EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 162
    .end local v0           #e:Ljava/io/IOException;
    :catchall_c6
    move-exception v5

    move-object v2, v3

    .end local v3           #outStream:Ljava/io/OutputStream;
    .restart local v2       #outStream:Ljava/io/OutputStream;
    goto :goto_75

    .line 159
    .end local v2           #outStream:Ljava/io/OutputStream;
    .restart local v3       #outStream:Ljava/io/OutputStream;
    :catch_c9
    move-exception v0

    move-object v2, v3

    .end local v3           #outStream:Ljava/io/OutputStream;
    .restart local v2       #outStream:Ljava/io/OutputStream;
    goto :goto_51
.end method

.method public setRingerFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "aRingtonefilePath"
    .parameter "aMmimeType"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 116
    if-eqz p1, :cond_d

    if-nez p2, :cond_15

    .line 117
    :cond_d
    const-string v1, "MiscPolicy"

    const-string v2, "setRingerFilePath param null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_14
    return-void

    .line 121
    :cond_15
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/MiscPolicy;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 123
    .local v0, lRingToneData:[B
    if-eqz v0, :cond_2d

    .line 124
    const-string v1, "MiscPolicy"

    const-string v2, "setRingerFilePath file read successfully: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/MiscPolicy;->setRingerBytes([BLjava/lang/String;)V

    .line 130
    :goto_25
    const-string v1, "MiscPolicy"

    const-string v2, "setRingerFilePath : ringtone return "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 127
    :cond_2d
    const-string v1, "MiscPolicy"

    const-string v2, "setRingerFilePath file reading failed "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "fontName"
    .parameter "apkPath"

    .prologue
    .line 899
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 900
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
