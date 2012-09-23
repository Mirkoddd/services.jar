.class Lcom/android/server/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "WallpaperService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_DIR:Ljava/io/File;

.field static final WALLPAPER_FILE:Ljava/io/File;


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mHeight:I

.field final mIWindowManager:Landroid/view/IWindowManager;

.field mImageWallpaperComponent:Landroid/content/ComponentName;

.field mImageWallpaperPending:Z

.field mLastDiedTime:J

.field final mLock:Ljava/lang/Object;

.field final mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

.field mName:Ljava/lang/String;

.field private mNeedSetDesiredSize:Z

.field mNextWallpaperComponent:Landroid/content/ComponentName;

.field mWallpaperComponent:Landroid/content/ComponentName;

.field mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

.field private final mWallpaperObserver:Landroid/os/FileObserver;

.field mWallpaperUpdating:Z

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 86
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.settings/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    .line 89
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    const-string v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 321
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 78
    new-array v0, v4, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 104
    new-instance v0, Lcom/android/server/WallpaperManagerService$1;

    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x608

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/WallpaperManagerService$1;-><init>(Lcom/android/server/WallpaperManagerService;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperObserver:Landroid/os/FileObserver;

    .line 139
    iput v3, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 140
    iput v3, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 166
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.ImageWallpaper"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    .line 389
    iput-boolean v4, p0, Lcom/android/server/WallpaperManagerService;->mNeedSetDesiredSize:Z

    .line 323
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 324
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 326
    new-instance v0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    .line 327
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 328
    sget-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 329
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked()V

    .line 330
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 331
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WallpaperManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WallpaperManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .parameter "permission"

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 701
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_2f
    return-void
.end method

.method private loadSettingsLocked()V
    .registers 18

    .prologue
    .line 749
    invoke-static {}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v6

    .line 750
    .local v6, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v8, 0x0

    .line 751
    .local v8, stream:Ljava/io/FileInputStream;
    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v5

    .line 752
    .local v5, file:Ljava/io/File;
    const/4 v10, 0x0

    .line 754
    .local v10, success:Z
    :try_start_a
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_f} :catch_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_f} :catch_ed
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_f} :catch_112
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_137
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_f} :catch_15c

    .line 755
    .end local v8           #stream:Ljava/io/FileInputStream;
    .local v9, stream:Ljava/io/FileInputStream;
    :try_start_f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 756
    .local v7, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v14, 0x0

    invoke-interface {v7, v9, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 760
    :cond_17
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .line 761
    .local v12, type:I
    const/4 v14, 0x2

    if-ne v12, v14, :cond_82

    .line 762
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 763
    .local v11, tag:Ljava/lang/String;
    const-string v14, "wp"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_82

    .line 764
    const/4 v14, 0x0

    const-string v15, "width"

    invoke-interface {v7, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 765
    const/4 v14, 0x0

    const-string v15, "height"

    invoke-interface {v7, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 766
    const/4 v14, 0x0

    const-string v15, "name"

    invoke-interface {v7, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 767
    const/4 v14, 0x0

    const-string v15, "component"

    invoke-interface {v7, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 768
    .local v2, comp:Ljava/lang/String;
    if-eqz v2, :cond_c7

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v14

    :goto_60
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    .line 771
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v14, :cond_7a

    const-string v14, "android"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_82

    .line 773
    :cond_7a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_82
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_82} :catch_191
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_82} :catch_18d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_82} :catch_18a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_82} :catch_187
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_82} :catch_184

    .line 784
    .end local v2           #comp:Ljava/lang/String;
    .end local v11           #tag:Ljava/lang/String;
    :cond_82
    const/4 v14, 0x1

    if-ne v12, v14, :cond_17

    .line 785
    const/4 v10, 0x1

    move-object v8, v9

    .line 798
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v9           #stream:Ljava/io/FileInputStream;
    .end local v12           #type:I
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :goto_87
    if-eqz v8, :cond_8c

    .line 799
    :try_start_89
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_181

    .line 805
    :cond_8c
    :goto_8c
    if-nez v10, :cond_9e

    .line 806
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 807
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 808
    const-string v14, ""

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 812
    :cond_9e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v15, "window"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 813
    .local v13, wm:Landroid/view/WindowManager;
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 814
    .local v3, d:Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v1

    .line 815
    .local v1, baseSize:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    if-ge v14, v1, :cond_bc

    .line 816
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 818
    :cond_bc
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    if-ge v14, v1, :cond_c6

    .line 819
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 821
    :cond_c6
    return-void

    .line 768
    .end local v1           #baseSize:I
    .end local v3           #d:Landroid/view/Display;
    .end local v8           #stream:Ljava/io/FileInputStream;
    .end local v13           #wm:Landroid/view/WindowManager;
    .restart local v2       #comp:Ljava/lang/String;
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    .restart local v11       #tag:Ljava/lang/String;
    .restart local v12       #type:I
    :cond_c7
    const/4 v14, 0x0

    goto :goto_60

    .line 786
    .end local v2           #comp:Ljava/lang/String;
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v9           #stream:Ljava/io/FileInputStream;
    .end local v11           #tag:Ljava/lang/String;
    .end local v12           #type:I
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :catch_c9
    move-exception v4

    .line 787
    .local v4, e:Ljava/lang/NullPointerException;
    :goto_ca
    const-string v14, "WallpaperService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 788
    .end local v4           #e:Ljava/lang/NullPointerException;
    :catch_ed
    move-exception v4

    .line 789
    .local v4, e:Ljava/lang/NumberFormatException;
    :goto_ee
    const-string v14, "WallpaperService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_87

    .line 790
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :catch_112
    move-exception v4

    .line 791
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_113
    const-string v14, "WallpaperService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_87

    .line 792
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_137
    move-exception v4

    .line 793
    .local v4, e:Ljava/io/IOException;
    :goto_138
    const-string v14, "WallpaperService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_87

    .line 794
    .end local v4           #e:Ljava/io/IOException;
    :catch_15c
    move-exception v4

    .line 795
    .local v4, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_15d
    const-string v14, "WallpaperService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_87

    .line 801
    .end local v4           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_181
    move-exception v14

    goto/16 :goto_8c

    .line 794
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    :catch_184
    move-exception v4

    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileInputStream;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    goto :goto_15d

    .line 792
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    :catch_187
    move-exception v4

    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileInputStream;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    goto :goto_138

    .line 790
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    :catch_18a
    move-exception v4

    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileInputStream;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    goto :goto_113

    .line 788
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    :catch_18d
    move-exception v4

    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileInputStream;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_ee

    .line 786
    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v9       #stream:Ljava/io/FileInputStream;
    :catch_191
    move-exception v4

    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileInputStream;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_ca
.end method

.method private static makeJournaledFile()Lcom/android/internal/util/JournaledFile;
    .registers 5

    .prologue
    .line 707
    const-string v0, "/data/system/wallpaper_info.xml"

    .line 708
    .local v0, base:Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/wallpaper_info.xml.tmp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private notifyCallbacksLocked()V
    .registers 5

    .prologue
    .line 684
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 685
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v2, :cond_17

    .line 687
    :try_start_9
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_29

    .line 685
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 694
    :cond_17
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 695
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 696
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 697
    return-void

    .line 688
    .end local v1           #intent:Landroid/content/Intent;
    :catch_29
    move-exception v3

    goto :goto_14
.end method

.method private saveSettingsLocked()V
    .registers 9

    .prologue
    .line 712
    invoke-static {}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v1

    .line 713
    .local v1, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v3, 0x0

    .line 715
    .local v3, stream:Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_73

    .line 716
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .local v4, stream:Ljava/io/FileOutputStream;
    :try_start_f
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 717
    .local v2, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 718
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 720
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 721
    const/4 v5, 0x0

    const-string v6, "width"

    iget v7, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 722
    const/4 v5, 0x0

    const-string v6, "height"

    iget v7, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 723
    const/4 v5, 0x0

    const-string v6, "name"

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 724
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_62

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    .line 726
    const/4 v5, 0x0

    const-string v6, "component"

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 729
    :cond_62
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 731
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 732
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 733
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_71} :catch_7f

    move-object v3, v4

    .line 744
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v4           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :goto_72
    return-void

    .line 734
    :catch_73
    move-exception v0

    .line 736
    .local v0, e:Ljava/io/IOException;
    :goto_74
    if-eqz v3, :cond_79

    .line 737
    :try_start_76
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7d

    .line 742
    :cond_79
    :goto_79
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_72

    .line 739
    :catch_7d
    move-exception v5

    goto :goto_79

    .line 734
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v4       #stream:Ljava/io/FileOutputStream;
    :catch_7f
    move-exception v0

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    goto :goto_74
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/WallpaperManagerService$WallpaperConnection;)V
    .registers 11
    .parameter "conn"

    .prologue
    const/4 v8, 0x0

    .line 672
    :try_start_1
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    iget v6, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_11

    .line 681
    :cond_10
    :goto_10
    return-void

    .line 675
    :catch_11
    move-exception v7

    .line 676
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "WallpaperService"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 677
    iget-boolean v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperUpdating:Z

    if-nez v0, :cond_10

    .line 678
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v8, v8}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    goto :goto_10
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z
    .registers 22
    .parameter "componentName"
    .parameter "force"
    .parameter "fromUser"

    .prologue
    .line 518
    if-nez p2, :cond_20

    .line 519
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v12, :cond_20

    .line 520
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-nez v12, :cond_12

    .line 521
    if-nez p1, :cond_20

    .line 524
    const/4 v12, 0x1

    .line 645
    :goto_11
    return v12

    .line 526
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 529
    const/4 v12, 0x1

    goto :goto_11

    .line 535
    :cond_20
    if-nez p1, :cond_3b

    .line 536
    :try_start_22
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v13, 0x1040032

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, defaultComponent:Ljava/lang/String;
    if-eqz v2, :cond_33

    .line 540
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 543
    :cond_33
    if-nez p1, :cond_3b

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 p1, v0

    .line 551
    .end local v2           #defaultComponent:Ljava/lang/String;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/16 v13, 0x1080

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v10

    .line 553
    .local v10, si:Landroid/content/pm/ServiceInfo;
    const-string v12, "android.permission.BIND_WALLPAPER"

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_98

    .line 554
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 557
    .local v6, msg:Ljava/lang/String;
    if-eqz p3, :cond_90

    .line 558
    new-instance v12, Ljava/lang/SecurityException;

    invoke-direct {v12, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_72
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_72} :catch_72

    .line 637
    .end local v6           #msg:Ljava/lang/String;
    .end local v10           #si:Landroid/content/pm/ServiceInfo;
    :catch_72
    move-exception v3

    .line 638
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown component "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 639
    .restart local v6       #msg:Ljava/lang/String;
    if-eqz p3, :cond_1c9

    .line 640
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 560
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10       #si:Landroid/content/pm/ServiceInfo;
    :cond_90
    :try_start_90
    const-string v12, "WallpaperService"

    invoke-static {v12, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v12, 0x0

    goto/16 :goto_11

    .line 564
    .end local v6           #msg:Ljava/lang/String;
    :cond_98
    const/4 v11, 0x0

    .line 566
    .local v11, wi:Landroid/app/WallpaperInfo;
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.service.wallpaper.WallpaperService"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v5, intent:Landroid/content/Intent;
    if-eqz p1, :cond_13a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13a

    .line 569
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/16 v13, 0x80

    invoke-virtual {v12, v5, v13}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 571
    .local v8, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_bd
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_ee

    .line 572
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v9, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 573
    .local v9, rsi:Landroid/content/pm/ServiceInfo;
    iget-object v12, v9, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iget-object v13, v10, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12f

    iget-object v12, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v13, v10, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_dc
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_90 .. :try_end_dc} :catch_72

    move-result v12

    if-eqz v12, :cond_12f

    .line 576
    :try_start_df
    new-instance v11, Landroid/app/WallpaperInfo;

    .end local v11           #wi:Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    invoke-direct {v11, v13, v12}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_ee
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_df .. :try_end_ee} :catch_10d
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_ee} :catch_11e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_df .. :try_end_ee} :catch_72

    .line 593
    .end local v9           #rsi:Landroid/content/pm/ServiceInfo;
    .restart local v11       #wi:Landroid/app/WallpaperInfo;
    :cond_ee
    if-nez v11, :cond_13a

    .line 594
    :try_start_f0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Selected service is not a wallpaper: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 596
    .restart local v6       #msg:Ljava/lang/String;
    if-eqz p3, :cond_132

    .line 597
    new-instance v12, Ljava/lang/SecurityException;

    invoke-direct {v12, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 577
    .end local v6           #msg:Ljava/lang/String;
    .end local v11           #wi:Landroid/app/WallpaperInfo;
    .restart local v9       #rsi:Landroid/content/pm/ServiceInfo;
    :catch_10d
    move-exception v3

    .line 578
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz p3, :cond_116

    .line 579
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 581
    :cond_116
    const-string v12, "WallpaperService"

    invoke-static {v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    const/4 v12, 0x0

    goto/16 :goto_11

    .line 583
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_11e
    move-exception v3

    .line 584
    .local v3, e:Ljava/io/IOException;
    if-eqz p3, :cond_127

    .line 585
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 587
    :cond_127
    const-string v12, "WallpaperService"

    invoke-static {v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 588
    const/4 v12, 0x0

    goto/16 :goto_11

    .line 571
    .end local v3           #e:Ljava/io/IOException;
    .restart local v11       #wi:Landroid/app/WallpaperInfo;
    :cond_12f
    add-int/lit8 v4, v4, 0x1

    goto :goto_bd

    .line 599
    .end local v9           #rsi:Landroid/content/pm/ServiceInfo;
    .restart local v6       #msg:Ljava/lang/String;
    :cond_132
    const-string v12, "WallpaperService"

    invoke-static {v12, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v12, 0x0

    goto/16 :goto_11

    .line 606
    .end local v4           #i:I
    .end local v6           #msg:Ljava/lang/String;
    .end local v8           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_13a
    new-instance v7, Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v11}, Lcom/android/server/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/WallpaperManagerService;Landroid/app/WallpaperInfo;)V

    .line 607
    .local v7, newConn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 608
    const-string v12, "android.intent.extra.client_label"

    const v13, 0x1040536

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 610
    const-string v12, "android.intent.extra.client_intent"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.SET_WALLPAPER"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x1040537

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 615
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-virtual {v12, v5, v7, v13}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v12

    if-nez v12, :cond_1a6

    .line 617
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to bind service: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 619
    .restart local v6       #msg:Ljava/lang/String;
    if-eqz p3, :cond_19e

    .line 620
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 622
    :cond_19e
    const-string v12, "WallpaperService"

    invoke-static {v12, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v12, 0x0

    goto/16 :goto_11

    .line 626
    .end local v6           #msg:Ljava/lang/String;
    :cond_1a6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked()V

    .line 627
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    .line 628
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 629
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/WallpaperManagerService;->mLastDiedTime:J
    :try_end_1bb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f0 .. :try_end_1bb} :catch_72

    .line 632
    :try_start_1bb
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v13, v7, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v14, 0x7dd

    invoke-interface {v12, v13, v14}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_1c6
    .catch Landroid/os/RemoteException; {:try_start_1bb .. :try_end_1c6} :catch_1d1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1bb .. :try_end_1c6} :catch_72

    .line 645
    :goto_1c6
    const/4 v12, 0x1

    goto/16 :goto_11

    .line 642
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #newConn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    .end local v10           #si:Landroid/content/pm/ServiceInfo;
    .end local v11           #wi:Landroid/app/WallpaperInfo;
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #msg:Ljava/lang/String;
    :cond_1c9
    const-string v12, "WallpaperService"

    invoke-static {v12, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v12, 0x0

    goto/16 :goto_11

    .line 634
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #msg:Ljava/lang/String;
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v7       #newConn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    .restart local v10       #si:Landroid/content/pm/ServiceInfo;
    .restart local v11       #wi:Landroid/app/WallpaperInfo;
    :catch_1d1
    move-exception v12

    goto :goto_1c6
.end method

.method public clearWallpaper()V
    .registers 3

    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(Z)V

    .line 359
    monitor-exit v1

    .line 360
    return-void

    .line 359
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v0
.end method

.method clearWallpaperComponentLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 649
    iput-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    .line 650
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_2e

    .line 651
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_14

    .line 653
    :try_start_d
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_31

    .line 657
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 661
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_2f

    .line 664
    :goto_24
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 665
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 666
    iput-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 668
    :cond_2e
    return-void

    .line 662
    :catch_2f
    move-exception v0

    goto :goto_24

    .line 654
    :catch_31
    move-exception v0

    goto :goto_14
.end method

.method public clearWallpaperLocked(Z)V
    .registers 10
    .parameter "defaultFailed"

    .prologue
    .line 363
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    .line 364
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 365
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 367
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 368
    .local v3, ident:J
    const/4 v0, 0x0

    .line 370
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v5, 0x0

    :try_start_11
    iput-boolean v5, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperPending:Z

    .line 371
    if-eqz p1, :cond_23

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    :goto_17
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_1c} :catch_25

    move-result v5

    if-eqz v5, :cond_27

    .line 378
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 387
    :goto_22
    return-void

    .line 371
    :cond_23
    const/4 v5, 0x0

    goto :goto_17

    .line 375
    :catch_25
    move-exception v1

    .line 376
    .local v1, e1:Ljava/lang/IllegalArgumentException;
    move-object v0, v1

    .line 378
    .end local v1           #e1:Ljava/lang/IllegalArgumentException;
    :cond_27
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 385
    const-string v5, "WallpaperService"

    const-string v6, "Default wallpaper component not found!"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    invoke-virtual {p0}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked()V

    goto :goto_22

    .line 378
    :catchall_35
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 943
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_33

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump wallpaper service from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 970
    :goto_32
    return-void

    .line 952
    :cond_33
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 953
    :try_start_36
    const-string v1, "Current Wallpaper Service state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    const-string v1, "  mWidth="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 955
    const-string v1, " mHeight="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 956
    const-string v1, "  mName="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 957
    const-string v1, "  mWallpaperComponent="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 958
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_b1

    .line 959
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 960
    .local v0, conn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    const-string v1, "  Wallpaper connection "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 961
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 962
    const-string v1, "    mInfo.component="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 963
    const-string v1, "    mToken="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 964
    const-string v1, "    mService="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 965
    const-string v1, "    mEngine="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 966
    const-string v1, "    mLastDiedTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 967
    iget-wide v3, p0, Lcom/android/server/WallpaperManagerService;->mLastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {p2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 969
    .end local v0           #conn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    :cond_b1
    monitor-exit v2

    goto :goto_32

    :catchall_b3
    move-exception v1

    monitor-exit v2
    :try_end_b5
    .catchall {:try_start_36 .. :try_end_b5} :catchall_b3

    throw v1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 335
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    .line 336
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 337
    return-void
.end method

.method public getHeightHint()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 427
    :try_start_3
    iget v0, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    monitor-exit v1

    return v0

    .line 428
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .parameter "cb"
    .parameter "outParams"

    .prologue
    const/4 v2, 0x0

    .line 433
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 435
    if-eqz p2, :cond_14

    .line 436
    :try_start_6
    const-string v4, "width"

    iget v5, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    const-string v4, "height"

    iget v5, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 439
    :cond_14
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 440
    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    .line 441
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_1e} :catch_2e

    move-result v4

    if-nez v4, :cond_23

    .line 442
    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_2b

    .line 449
    .end local v1           #f:Ljava/io/File;
    :goto_22
    return-object v2

    .line 444
    .restart local v1       #f:Ljava/io/File;
    :cond_23
    const/high16 v4, 0x1000

    :try_start_25
    invoke-static {v1, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_28} :catch_2e

    move-result-object v2

    :try_start_29
    monitor-exit v3

    goto :goto_22

    .line 450
    .end local v1           #f:Ljava/io/File;
    :catchall_2b
    move-exception v2

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2b

    throw v2

    .line 445
    :catch_2e
    move-exception v0

    .line 447
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2f
    const-string v4, "WallpaperService"

    const-string v5, "Error getting wallpaper"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2b

    goto :goto_22
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 3

    .prologue
    .line 454
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 455
    :try_start_3
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_d

    .line 456
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v1

    .line 458
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_c

    .line 459
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getWidthHint()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 420
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 421
    :try_start_3
    iget v0, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    monitor-exit v1

    return v0

    .line 422
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method restoreNamedResourceLocked()Z
    .registers 22

    .prologue
    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_13b

    const-string v17, "res:"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x4

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13b

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 871
    .local v14, resName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 872
    .local v10, pkg:Ljava/lang/String;
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 873
    .local v5, colon:I
    if-lez v5, :cond_47

    .line 874
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 877
    :cond_47
    const/4 v9, 0x0

    .line 878
    .local v9, ident:Ljava/lang/String;
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 879
    .local v15, slash:I
    if-lez v15, :cond_5a

    .line 880
    add-int/lit8 v17, v15, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 883
    :cond_5a
    const/16 v16, 0x0

    .line 884
    .local v16, type:Ljava/lang/String;
    if-lez v5, :cond_72

    if-lez v15, :cond_72

    sub-int v17, v15, v5

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_72

    .line 885
    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 888
    :cond_72
    if-eqz v10, :cond_13b

    if-eqz v9, :cond_13b

    if-eqz v16, :cond_13b

    .line 889
    const/4 v13, -0x1

    .line 890
    .local v13, resId:I
    const/4 v12, 0x0

    .line 891
    .local v12, res:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 893
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 894
    .local v4, c:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 895
    .local v11, r:Landroid/content/res/Resources;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v14, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 896
    if-nez v13, :cond_dd

    .line 897
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ident="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catchall {:try_start_7b .. :try_end_d1} :catchall_1b1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7b .. :try_end_d1} :catch_1d9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7b .. :try_end_d1} :catch_16c
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_d1} :catch_197

    .line 899
    const/16 v17, 0x0

    .line 924
    if-eqz v12, :cond_d6

    .line 926
    :try_start_d5
    throw v12
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d6} :catch_1cb

    .line 929
    :cond_d6
    :goto_d6
    if-eqz v7, :cond_dc

    .line 930
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 932
    :try_start_db
    throw v7
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_dc} :catch_169

    .line 938
    .end local v4           #c:Landroid/content/Context;
    .end local v5           #colon:I
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v9           #ident:Ljava/lang/String;
    .end local v10           #pkg:Ljava/lang/String;
    .end local v11           #r:Landroid/content/res/Resources;
    .end local v12           #res:Ljava/io/InputStream;
    .end local v13           #resId:I
    .end local v14           #resName:Ljava/lang/String;
    .end local v15           #slash:I
    .end local v16           #type:Ljava/lang/String;
    :cond_dc
    :goto_dc
    return v17

    .line 902
    .restart local v4       #c:Landroid/content/Context;
    .restart local v5       #colon:I
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #ident:Ljava/lang/String;
    .restart local v10       #pkg:Ljava/lang/String;
    .restart local v11       #r:Landroid/content/res/Resources;
    .restart local v12       #res:Ljava/io/InputStream;
    .restart local v13       #resId:I
    .restart local v14       #resName:Ljava/lang/String;
    .restart local v15       #slash:I
    .restart local v16       #type:Ljava/lang/String;
    :cond_dd
    :try_start_dd
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v12

    .line 903
    sget-object v17, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_ee

    .line 904
    sget-object v17, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 906
    :cond_ee
    new-instance v8, Ljava/io/FileOutputStream;

    sget-object v17, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f7
    .catchall {:try_start_dd .. :try_end_f7} :catchall_1b1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_dd .. :try_end_f7} :catch_1d9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_dd .. :try_end_f7} :catch_16c
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_f7} :catch_197

    .line 908
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .local v8, fos:Ljava/io/FileOutputStream;
    const v17, 0x8000

    :try_start_fa
    move/from16 v0, v17

    new-array v3, v0, [B

    .line 910
    .local v3, buffer:[B
    :goto_fe
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, amt:I
    if-lez v2, :cond_13e

    .line 911
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v3, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_10b
    .catchall {:try_start_fa .. :try_end_10b} :catchall_1d0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_fa .. :try_end_10b} :catch_10c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_fa .. :try_end_10b} :catch_1d6
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_10b} :catch_1d3

    goto :goto_fe

    .line 917
    .end local v2           #amt:I
    .end local v3           #buffer:[B
    :catch_10c
    move-exception v6

    move-object v7, v8

    .line 918
    .end local v4           #c:Landroid/content/Context;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v11           #r:Landroid/content/res/Resources;
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :goto_10e
    :try_start_10e
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package name "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12e
    .catchall {:try_start_10e .. :try_end_12e} :catchall_1b1

    .line 924
    if-eqz v12, :cond_133

    .line 926
    :try_start_130
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_133} :catch_1c4

    .line 929
    :cond_133
    :goto_133
    if-eqz v7, :cond_13b

    .line 930
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 932
    :try_start_138
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_13b} :catch_195

    .line 938
    .end local v5           #colon:I
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v9           #ident:Ljava/lang/String;
    .end local v10           #pkg:Ljava/lang/String;
    .end local v12           #res:Ljava/io/InputStream;
    .end local v13           #resId:I
    .end local v14           #resName:Ljava/lang/String;
    .end local v15           #slash:I
    .end local v16           #type:Ljava/lang/String;
    :cond_13b
    :goto_13b
    const/16 v17, 0x0

    goto :goto_dc

    .line 915
    .restart local v2       #amt:I
    .restart local v3       #buffer:[B
    .restart local v4       #c:Landroid/content/Context;
    .restart local v5       #colon:I
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #ident:Ljava/lang/String;
    .restart local v10       #pkg:Ljava/lang/String;
    .restart local v11       #r:Landroid/content/res/Resources;
    .restart local v12       #res:Ljava/io/InputStream;
    .restart local v13       #resId:I
    .restart local v14       #resName:Ljava/lang/String;
    .restart local v15       #slash:I
    .restart local v16       #type:Ljava/lang/String;
    :cond_13e
    :try_start_13e
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Restored wallpaper: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_158
    .catchall {:try_start_13e .. :try_end_158} :catchall_1d0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13e .. :try_end_158} :catch_10c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13e .. :try_end_158} :catch_1d6
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_158} :catch_1d3

    .line 916
    const/16 v17, 0x1

    .line 924
    if-eqz v12, :cond_15f

    .line 926
    :try_start_15c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_15f} :catch_1ce

    .line 929
    :cond_15f
    :goto_15f
    if-eqz v8, :cond_dc

    .line 930
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 932
    :try_start_164
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_167} :catch_169

    goto/16 :goto_dc

    .line 933
    .end local v2           #amt:I
    .end local v3           #buffer:[B
    .end local v8           #fos:Ljava/io/FileOutputStream;
    :catch_169
    move-exception v18

    goto/16 :goto_dc

    .line 919
    .end local v4           #c:Landroid/content/Context;
    .end local v11           #r:Landroid/content/res/Resources;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catch_16c
    move-exception v6

    .line 920
    .local v6, e:Landroid/content/res/Resources$NotFoundException;
    :goto_16d
    :try_start_16d
    const-string v17, "WallpaperService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Resource not found: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_187
    .catchall {:try_start_16d .. :try_end_187} :catchall_1b1

    .line 924
    if-eqz v12, :cond_18c

    .line 926
    :try_start_189
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_18c} :catch_1c7

    .line 929
    :cond_18c
    :goto_18c
    if-eqz v7, :cond_13b

    .line 930
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 932
    :try_start_191
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_194
    .catch Ljava/io/IOException; {:try_start_191 .. :try_end_194} :catch_195

    goto :goto_13b

    .line 933
    .end local v6           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_195
    move-exception v17

    goto :goto_13b

    .line 921
    :catch_197
    move-exception v6

    .line 922
    .local v6, e:Ljava/io/IOException;
    :goto_198
    :try_start_198
    const-string v17, "WallpaperService"

    const-string v18, "IOException while restoring wallpaper "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a3
    .catchall {:try_start_198 .. :try_end_1a3} :catchall_1b1

    .line 924
    if-eqz v12, :cond_1a8

    .line 926
    :try_start_1a5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1a8
    .catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_1a8} :catch_1c9

    .line 929
    :cond_1a8
    :goto_1a8
    if-eqz v7, :cond_13b

    .line 930
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 932
    :try_start_1ad
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b0
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_1b0} :catch_195

    goto :goto_13b

    .line 924
    .end local v6           #e:Ljava/io/IOException;
    :catchall_1b1
    move-exception v17

    :goto_1b2
    if-eqz v12, :cond_1b7

    .line 926
    :try_start_1b4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1b7
    .catch Ljava/io/IOException; {:try_start_1b4 .. :try_end_1b7} :catch_1c0

    .line 929
    :cond_1b7
    :goto_1b7
    if-eqz v7, :cond_1bf

    .line 930
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 932
    :try_start_1bc
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1bf
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1bf} :catch_1c2

    .line 924
    :cond_1bf
    :goto_1bf
    throw v17

    .line 927
    :catch_1c0
    move-exception v18

    goto :goto_1b7

    .line 933
    :catch_1c2
    move-exception v18

    goto :goto_1bf

    .line 927
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1c4
    move-exception v17

    goto/16 :goto_133

    .local v6, e:Landroid/content/res/Resources$NotFoundException;
    :catch_1c7
    move-exception v17

    goto :goto_18c

    .local v6, e:Ljava/io/IOException;
    :catch_1c9
    move-exception v17

    goto :goto_1a8

    .end local v6           #e:Ljava/io/IOException;
    .restart local v4       #c:Landroid/content/Context;
    .restart local v11       #r:Landroid/content/res/Resources;
    :catch_1cb
    move-exception v18

    goto/16 :goto_d6

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #amt:I
    .restart local v3       #buffer:[B
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :catch_1ce
    move-exception v18

    goto :goto_15f

    .line 924
    .end local v2           #amt:I
    .end local v3           #buffer:[B
    :catchall_1d0
    move-exception v17

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    goto :goto_1b2

    .line 921
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :catch_1d3
    move-exception v6

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    goto :goto_198

    .line 919
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :catch_1d6
    move-exception v6

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    goto :goto_16d

    .line 917
    .end local v4           #c:Landroid/content/Context;
    .end local v11           #r:Landroid/content/res/Resources;
    :catch_1d9
    move-exception v6

    goto/16 :goto_10e
.end method

.method public setDimensionHints(II)V
    .registers 5
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 392
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 394
    if-lez p1, :cond_9

    if-gtz p2, :cond_11

    .line 395
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_11
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_14
    iget v0, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    if-ne p1, v0, :cond_20

    iget v0, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    if-ne p2, v0, :cond_20

    iget-boolean v0, p0, Lcom/android/server/WallpaperManagerService;->mNeedSetDesiredSize:Z

    if-eqz v0, :cond_41

    .line 400
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WallpaperManagerService;->mNeedSetDesiredSize:Z

    .line 401
    iput p1, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 402
    iput p2, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 403
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V

    .line 404
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_41

    .line 405
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_43

    if-eqz v0, :cond_41

    .line 407
    :try_start_34
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_43
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3b} :catch_46

    .line 411
    :goto_3b
    :try_start_3b
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked()V

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WallpaperManagerService;->mNeedSetDesiredSize:Z

    .line 416
    :cond_41
    monitor-exit v1

    .line 417
    return-void

    .line 416
    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_43

    throw v0

    .line 409
    :catch_46
    move-exception v0

    goto :goto_3b
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .parameter "name"

    .prologue
    .line 465
    const-string v3, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v3}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 466
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 467
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_1f

    move-result-wide v0

    .line 469
    .local v0, ident:J
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 470
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_15

    .line 471
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperPending:Z
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_1a

    .line 475
    :cond_15
    :try_start_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 473
    monitor-exit v4

    return-object v2

    .line 475
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    :catchall_1a
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 477
    .end local v0           #ident:J
    :catchall_1f
    move-exception v3

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 7
    .parameter "name"

    .prologue
    .line 502
    const-string v2, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v2}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 503
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 504
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_1e

    move-result-wide v0

    .line 506
    .local v0, ident:J
    const/4 v2, 0x0

    :try_start_d
    iput-boolean v2, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperPending:Z

    .line 507
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v2, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_19

    .line 509
    :try_start_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 511
    monitor-exit v3

    .line 512
    return-void

    .line 509
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 511
    .end local v0           #ident:J
    :catchall_1e
    move-exception v2

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method settingsRestored()V
    .registers 6

    .prologue
    .line 827
    const/4 v0, 0x0

    .line 828
    .local v0, success:Z
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 829
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked()V

    .line 830
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 832
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    move-result v1

    if-nez v1, :cond_25

    .line 836
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    .line 838
    :cond_25
    const/4 v0, 0x1

    .line 854
    :cond_26
    :goto_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_6f

    .line 856
    if-nez v0, :cond_52

    .line 857
    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restore wallpaper: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 859
    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 862
    :cond_52
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 863
    :try_start_55
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V

    .line 864
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_77

    .line 865
    return-void

    .line 842
    :cond_5a
    :try_start_5a
    const-string v1, ""

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 844
    const/4 v0, 0x1

    .line 850
    :goto_65
    if-eqz v0, :cond_26

    .line 851
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z

    goto :goto_26

    .line 854
    :catchall_6f
    move-exception v1

    monitor-exit v2
    :try_end_71
    .catchall {:try_start_5a .. :try_end_71} :catchall_6f

    throw v1

    .line 847
    :cond_72
    :try_start_72
    invoke-virtual {p0}, Lcom/android/server/WallpaperManagerService;->restoreNamedResourceLocked()Z
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_6f

    move-result v0

    goto :goto_65

    .line 864
    :catchall_77
    move-exception v1

    :try_start_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v1
.end method

.method public systemReady()V
    .registers 7

    .prologue
    .line 341
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 342
    const/4 v0, 0x0

    .line 344
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZ)Z
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_1f
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-eqz v2, :cond_12

    .line 345
    :try_start_e
    monitor-exit v3

    .line 353
    :goto_f
    return-void

    .line 347
    :catch_10
    move-exception v1

    .line 348
    .local v1, e1:Ljava/lang/RuntimeException;
    move-object v0, v1

    .line 350
    .end local v1           #e1:Ljava/lang/RuntimeException;
    :cond_12
    const-string v2, "WallpaperService"

    const-string v4, "Failure starting previous wallpaper"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 351
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(Z)V

    .line 352
    monitor-exit v3

    goto :goto_f

    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_1f

    throw v2
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .parameter "name"

    .prologue
    .line 481
    if-nez p1, :cond_4

    const-string p1, ""

    .line 483
    :cond_4
    :try_start_4
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 484
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 485
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 490
    :cond_1e
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    const/high16 v3, 0x3800

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 492
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_28} :catch_29

    .line 497
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :goto_28
    return-object v1

    .line 494
    :catch_29
    move-exception v0

    .line 495
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "WallpaperService"

    const-string v3, "Error setting wallpaper"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    const/4 v1, 0x0

    goto :goto_28
.end method
