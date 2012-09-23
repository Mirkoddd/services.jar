.class public Lcom/android/server/DrmEventService;
.super Landroid/app/Service;
.source "DrmEventService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DrmEventService$OpenDatabaseHelper;,
        Lcom/android/server/DrmEventService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final CONTENT_MIME_TYPE_B_DRM_ROAP_TRIGGER_WBXML:Ljava/lang/String; = "application/vnd.oma.drm.roap-trigger+wbxml"

.field private static final DRM_MIMETYPE_RIGHTS_WBXML:I = 0x4

.field public static final DRM_MIMETYPE_RIGHTS_WBXML_STRING:Ljava/lang/String; = "application/vnd.oma.drm.rights+wbxml"

.field private static final DRM_MIMETYPE_RIGHTS_XML:I = 0x3

.field public static final DRM_MIMETYPE_RIGHTS_XML_STRING:Ljava/lang/String; = "application/vnd.oma.drm.rights+xml"

.field private static final DRM_TIME_PATH:Ljava/lang/String; = "/data/data/.drm/.playready/beforeTime.ini"

.field private static final HANDLE_DRM_INIT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "DrmEventService"

.field private static final TIME_CLOCK_UPDATE:I = 0x6

.field private static final WAP_PUSH_UPDATE:I = 0x5

.field private static final drmDbPath:Ljava/lang/String; = "/data/system/databases/drmdatabase.db"

.field private static final drmDbPath_movieNand:Ljava/lang/String; = "/data/system/databases/drmdatabase.db"

.field private static final drmDbPath_oneNand:Ljava/lang/String; = "/dbdata/databases/com.sec.android.providers.drm/drmdatabase.db"

.field private static final drmLegacyDbPath:Ljava/lang/String; = "/data/data/com.sec.android.providers.drm/databases/drmdatabase.db"

.field private static final drmPath:Ljava/lang/String; = "/data/data/com.sec.android.providers.drm/databases"

.field private static final drmPath_movieNand:Ljava/lang/String; = "/data/data/com.sec.android.providers.drm/databases"

.field private static final drmPath_oneNand:Ljava/lang/String; = "/dbdata/databases/com.sec.android.providers.drm"

.field private static final drmcertiPath:Ljava/lang/String; = "/data/data/com.sec.android.providers.drm/.cert"

.field private static final drmcertiPath_movieNand:Ljava/lang/String; = "/data/data/com.sec.android.providers.drm/.cert"

.field private static final drmcertiPath_oneNand:Ljava/lang/String; = "/dbdata/databases/com.sec.android.providers.drm/.cert"

.field static isLogEnabled:Z


# instance fields
.field private bNitzReceived:Z

.field private bTimeChangeReceived:Z

.field private bTimeReceivedFromGPS:Z

.field contentId:Ljava/lang/String;

.field drmEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

.field errorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field gpstimeforDRMReceiver:Landroid/content/BroadcastReceiver;

.field private isRegisteredBootTime:Z

.field mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field mTvOutReceiver:Landroid/content/BroadcastReceiver;

.field nitZReceiver:Landroid/content/BroadcastReceiver;

.field nitzFilter:Landroid/content/IntentFilter;

.field private timeFormat:Ljava/lang/String;

.field userUpdatedTimeReceiver:Landroid/content/BroadcastReceiver;

.field wapPushReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 91
    iput-object v1, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 92
    iput-object v1, p0, Lcom/android/server/DrmEventService;->nitzFilter:Landroid/content/IntentFilter;

    .line 93
    iput-boolean v0, p0, Lcom/android/server/DrmEventService;->bTimeChangeReceived:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/server/DrmEventService;->bNitzReceived:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/server/DrmEventService;->bTimeReceivedFromGPS:Z

    .line 98
    iput-object v1, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    .line 100
    iput-boolean v0, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    .line 376
    new-instance v0, Lcom/android/server/DrmEventService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$1;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, Lcom/android/server/DrmEventService;->gpstimeforDRMReceiver:Landroid/content/BroadcastReceiver;

    .line 387
    new-instance v0, Lcom/android/server/DrmEventService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$2;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, Lcom/android/server/DrmEventService;->mTvOutReceiver:Landroid/content/BroadcastReceiver;

    .line 1181
    new-instance v0, Lcom/android/server/DrmEventService$3;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$3;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, Lcom/android/server/DrmEventService;->nitZReceiver:Landroid/content/BroadcastReceiver;

    .line 1191
    new-instance v0, Lcom/android/server/DrmEventService$4;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$4;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, Lcom/android/server/DrmEventService;->userUpdatedTimeReceiver:Landroid/content/BroadcastReceiver;

    .line 1200
    new-instance v0, Lcom/android/server/DrmEventService$5;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$5;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, Lcom/android/server/DrmEventService;->wapPushReceiver:Landroid/content/BroadcastReceiver;

    .line 1307
    new-instance v0, Lcom/android/server/DrmEventService$6;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$6;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, Lcom/android/server/DrmEventService;->drmEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 1446
    new-instance v0, Lcom/android/server/DrmEventService$7;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$7;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, Lcom/android/server/DrmEventService;->errorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 1481
    return-void
.end method

.method public static GetCIDFromRoapTrigger(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "roapTrigger"

    .prologue
    .line 1472
    if-eqz p0, :cond_15

    .line 1474
    const-string v2, "<contentID>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0xb

    .line 1475
    .local v1, startPosition:I
    const-string v2, "</contentID>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1476
    .local v0, endPostion:I
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1478
    .end local v0           #endPostion:I
    .end local v1           #startPosition:I
    :goto_14
    return-object v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method static synthetic access$000(Lcom/android/server/DrmEventService;ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/DrmEventService;->handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/DrmEventService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/DrmEventService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->registerReceiever()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DrmEventService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/DrmEventService;->userUpdateHandler(Landroid/content/Intent;)V

    return-void
.end method

.method private static checkForFileorDirectoryExists(Ljava/lang/String;)I
    .registers 7
    .parameter "path"

    .prologue
    .line 1522
    const/4 v2, 0x1

    .line 1523
    .local v2, result:I
    if-eqz p0, :cond_51

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 1524
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 1525
    .local v0, len:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_37

    .line 1526
    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length is NOT ZERO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    const/4 v2, 0x3

    .line 1535
    .end local v0           #len:J
    :goto_36
    return v2

    .line 1529
    .restart local v0       #len:J
    :cond_37
    const/4 v2, 0x2

    .line 1530
    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length is ZERO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 1533
    .end local v0           #len:J
    :cond_51
    const/4 v2, 0x1

    goto :goto_36
.end method

.method private createIndexData(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 621
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 624
    :try_start_3
    const-string v0, "CREATE UNIQUE INDEX asset_idx_cid ON drm2asset (c_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 626
    const-string v0, "CREATE INDEX\tmetering_idx_riid ON drm2meteringReport (ri_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 629
    const-string v0, "CREATE INDEX  rights_idx_time ON drm2rights (time_t);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 631
    const-string v0, "CREATE INDEX\trights_idx_play ON drm2rights (play_eval);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 633
    const-string v0, "CREATE INDEX\trights_idx_display ON drm2rights (display_eval);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 635
    const-string v0, "CREATE INDEX\trights_idx_execute ON drm2rights (execute_eval);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 637
    const-string v0, "CREATE INDEX\trights_idx_print ON drm2rights (print_eval);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 639
    const-string v0, "CREATE INDEX\trights_idx_export ON drm2rights (export_eval);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 641
    const-string v0, "CREATE INDEX\tcertInfo_idx_dev_id ON drm2certInfo (dev_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 643
    const-string v0, "CREATE INDEX\tcertChainInfo_idx_no ON drm2certChainInfo (no);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 645
    const-string v0, "CREATE INDEX\tcertChainInfo_idx_id ON drm2certChainInfo (id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 647
    const-string v0, "CREATE INDEX\tcertChainInfo_idx_subject ON drm2certChainInfo (subject);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 649
    const-string v0, "CREATE INDEX\tdoContext_idx_do_id ON drm2doContext (do_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 651
    const-string v0, "CREATE INDEX\tdoContext_idx_rictx_id ON drm2doContext (rictx_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 653
    const-string v0, "CREATE INDEX\tdoKeyList_idx_doctx_id ON drm2doKeyList (doctx_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 655
    const-string v0, "CREATE INDEX\tvalidData_idx_rictx_id ON drm2validData (rictx_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 657
    const-string v0, "CREATE INDEX\tUCWhiteList_idx_fqdn ON drm2UCWhiteList (ri_fqdn);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 659
    const-string v0, "CREATE INDEX\tUCWhiteList_idx_riid ON drm2UCWhiteList (ri_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 661
    const-string v0, "CREATE INDEX\tdoWhiteList_idx_url ON drm2doWhiteList (url);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 663
    const-string v0, "CREATE INDEX\tdrm2contentInfo_idx_fn ON drm2contentInfo (filepath);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 665
    const-string v0, "CREATE INDEX\tdrm2contentdir_idx_d_id ON drm2contentdir (d_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 667
    const-string v0, "CREATE INDEX\tdrm2contentInfo_mmc_idx_fn ON drm2contentInfo_mmc (filepath);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 669
    const-string v0, "CREATE INDEX\tdrm2contentdir_mmc_idx_d_id ON drm2contentdir_mmc (d_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 672
    const-string v0, "INSERT INTO drm2RegistryInt (Deltasec) VALUES (0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 675
    const-string v0, "INSERT INTO drm2RegistryString ( Cts ) VALUES (\'NONE\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_83
    .catchall {:try_start_3 .. :try_end_83} :catchall_87

    .line 681
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 683
    return-void

    .line 681
    :catchall_87
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 686
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 689
    :try_start_3
    const-string v0, "CREATE TABLE drm2asset (a_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,c_id VARCHAR(256) DEFAULT NULL,digest_method INT DEFAULT 0,digest_value VARCHAR(30) DEFAULT NULL,key_size INT DEFAULT 0,key_value VARCHAR(128) DEFAULT NULL,key_value_hash VARCHAR(30),ro_dnld INT DEFAULT 0,ref INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 698
    const-string v0, "CREATE TABLE drm2meteringReport (m_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,ri_id VARCHAR(30) NOT NULL,c_id VARCHAR(256) NOT NULL,guid VARCHAR(256) DEFAULT NULL,play_curr_duration INT DEFAULT 0,display_curr_duration INT DEFAULT 0,execute_curr_duration INT DEFAULT 0,print_curr_duration INT DEFAULT 0,export_curr_duration INT DEFAULT 0,play_count INT DEFAULT 0,play_duration INT DEFAULT 0,display_count INT DEFAULT 0,display_duration INT DEFAULT 0,execute_count INT DEFAULT 0,execute_duration INT DEFAULT 0,print_count INT DEFAULT 0,print_duration INT DEFAULT 0,export_count INT DEFAULT 0,export_duration INT DEFAULT 0,ref_count INT DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 719
    const-string v0, "CREATE TABLE drm2TrackedInfo (ri_id VARCHAR(30) NOT NULL PRIMARY KEY,flag_remind CHAR(1) DEFAULT \'1\' );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 722
    const-string v0, "CREATE TABLE drm2rights (r_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,name VARCHAR(256) DEFAULT NULL,ro_alias VARCHAR(100) DEFAULT NULL,guid VARCHAR(256),time_t DATETIME,play_size INT DEFAULT 0,play_concurr_cnt INT DEFAULT 0,play_rights VARCHAR(512) DEFAULT NULL,play_hash VARCHAR(30) DEFAULT NULL,play_eval INT DEFAULT 0,display_size INT DEFAULT 0,display_concurr_cnt INT DEFAULT 0,display_rights VARCHAR(512) DEFAULT NULL,display_hash VARCHAR(30) DEFAULT NULL,display_eval INT DEFAULT 0,execute_size INT DEFAULT 0,execute_concurr_cnt INT DEFAULT 0,execute_rights VARCHAR(512) DEFAULT NULL,execute_hash VARCHAR(30) DEFAULT NULL,execute_eval INT DEFAULT 0,print_size INT DEFAULT 0,print_concurr_cnt INT DEFAULT 0,print_rights VARCHAR(512) DEFAULT NULL,print_hash VARCHAR(30) DEFAULT NULL,print_eval INT DEFAULT 0,export_size INT DEFAULT 0,export_concurr_cnt INT DEFAULT 0,export_rights VARCHAR(512) DEFAULT NULL,export_hash VARCHAR(30) DEFAULT NULL,export_eval INT DEFAULT 0,export_mode INT DEFAULT 0,p_id INT DEFAULT 0,ri_context INT DEFAULT 0,do_context INT DEFAULT 0, disable_ind CHAR(1) DEFAULT \'0\' );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 755
    const-string v0, "CREATE TABLE drm2lookup (a_id INT DEFAULT 0,r_id INT DEFAULT 0,dmn_id INT DEFAULT 0,usages CHAR(6));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 758
    const-string v0, "CREATE TABLE drm2certInfo (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,path VARCHAR(128) DEFAULT NULL,dev_id VARCHAR(30) DEFAULT NULL,dev_offset INT DEFAULT 0,dev_length INT DEFAULT 0,pri_offset INT DEFAULT 0,pri_length INT DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 765
    const-string v0, "CREATE TABLE drm2certChainInfo (info_id INT,no INT DEFAULT 0,id VARCHAR(30) DEFAULT NULL,subject VARCHAR(256) DEFAULT NULL,offset INT DEFAULT 0,length INT DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 770
    const-string v0, "CREATE TABLE drm2riContext (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,dev_id VARCHAR(30) DEFAULT NULL,ver INT,ri_id VARCHAR(30) ,ri_pkey VARCHAR(512),ri_pkey_modsize INT,ri_pkey_keysize INT,ri_alias VARCHAR(100),ri_url VARCHAR(1024),expiry_time DATETIME,caching_ind CHAR(1),OCSP_id VARCHAR(30),OCSP_pkey VARCHAR(512),OCSP_pkey_modsize INT,OCSP_pkey_keysize INT,OCSP_next_update DATETIME,expiry_time_hash VARCHAR(30),hash VARCHAR(30),selected_algos VARCHAR(20));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 783
    const-string v0, "CREATE TABLE drm2validData (rictx_id INT NOT NULL,no INT,certid VARCHAR(174),certid_size INT,hash VARCHAR(30));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 787
    const-string v0, "CREATE TABLE drm2doContext (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,do_id VARCHAR(18),do_no INT,do_alias VARCHAR(100),expiry_time DATETIME,noConsumeAfter DATETIME,hchain_ind char(1),rictx_id INT,hash VARCHAR(30));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 793
    const-string v0, "CREATE TABLE drm2doKeyList (doctx_id INT,do_no INT,do_key VARCHAR(50),do_key_hash VARCHAR(30));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 796
    const-string v0, "CREATE TABLE drm2UCWhiteList (ri_fqdn VARCHAR(100) NOT NULL,ri_id VARCHAR(30) NOT NULL,flag_roap CHAR(1) DEFAULT \'0\',flag_meter CHAR(1) DEFAULT \'0\', PRIMARY KEY(ri_fqdn, ri_id) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 803
    const-string v0, "CREATE TABLE drm2doWhiteList (url VARCHAR(100),rictx_id INT,hash VARCHAR(30));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 806
    const-string v0, "CREATE TABLE drm2replaycache (t_stamp DATETIME,guid VARCHAR(256),hash VARCHAR(30));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 809
    const-string v0, "CREATE TABLE drm2replaycacheguid (rep_id INT NOT NULL PRIMARY KEY,guid VARCHAR(256),hash VARCHAR(30));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 812
    const-string v0, "CREATE TABLE drm2contentInfo (mo_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT , filepath VARCHAR(256), location INT, drm_type INT, tr_id CHAR(17), hash VARCHAR(30),no INT, a_id INT, g_id INT, enc_method INT, content_type VARCHAR(32) , DCFIntegrityCheck INT DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 820
    const-string v0, "CREATE TABLE drm2contentdir (d_id INTEGER PRIMARY KEY AUTOINCREMENT, d_path VARCHAR(256) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 823
    const-string v0, "CREATE TABLE drm2contentInfo_mmc (mo_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT  , filepath VARCHAR(256), location INT, drm_type INT, tr_id CHAR(17), hash VARCHAR(30), no INT, a_id INT, g_id INT, enc_method INT, content_type VARCHAR(32) , DCFIntegrityCheck INT DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 831
    const-string v0, "CREATE TABLE drm2contentdir_mmc (d_id INTEGER PRIMARY KEY AUTOINCREMENT, d_path VARCHAR(256) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 834
    const-string v0, "CREATE TABLE drm2_ro_store(rights_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,domainname VARCHAR(20) DEFAULT \' \',ri_id VARCHAR(50),ro_id VARCHAR(256),ro_type INT,rights_size INT,rights VARCHAR(8000),install_status INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 841
    const-string v0, "CREATE TABLE drm2OnExpiredURLInfo (asset_uid VARCHAR(256) NOT NULL PRIMARY KEY,onexpired_url VARCHAR(1024) NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 844
    const-string v0, "CREATE TABLE Drm2ExpiryTimeTable( idx int primary key,\tcontainerNo int default 0, szFilePath\t\t\tvarchar(256) not null, expirytime\t\t\tbigint\tnot null, expirytype\t\t\tint default -1, settingCategory \tint default 0, count\t\t\t\tint default 0, context \t\t\tint default 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 852
    const-string v0, "CREATE TABLE drm2RegistryInt( \tregint_id INTEGER PRIMARY KEY AUTOINCREMENT, \tDeltasec\t\t\t\tINT \tDEFAULT  0, \tTracking\t\t\t\tINT \tDEFAULT  0, \tNextUID \t\t\t\tINT \tDEFAULT  0, \tVersion \t\t\t\tINT \tDEFAULT  1, \tIMSILen \t\t\t\tINT \tDEFAULT  0, \tIMEILen \t\t\t\tINT \tDEFAULT  0, \tExpiryReminderAlarmID\tINT \tDEFAULT  0, \tExpRemSettingCategory\tINT \tDEFAULT -1, \tExpRemExpiryType\t\tINT \tDEFAULT -1, \tExpiryReminderTime\t\tFLOAT\tDEFAULT  0.00);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 864
    const-string v0, "CREATE TABLE drm2RegistryString( regstring_id INTEGER PRIMARY KEY AUTOINCREMENT, Cts \t\t\tVARCHAR(256) DEFAULT NONE, IMSI\t\t\tVARCHAR(256) DEFAULT FFFFFFFFFFFFFFF, IMEI\t\t\tVARCHAR(256) DEFAULT FFFFFFFFFFFFFFFFFF, ExpRemFilePath\tVARCHAR(256) DEFAULT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 870
    const-string v0, "CREATE TABLE Drm2RunAlarmTable(\tRoID\t\t\t\t\tint , ExpiryDateTime\t\t\tbigint\tnot null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_83
    .catchall {:try_start_3 .. :try_end_83} :catchall_87

    .line 875
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 878
    return-void

    .line 875
    :catchall_87
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private deleteDRMDBFile(Ljava/lang/String;)Z
    .registers 3
    .parameter "path"

    .prologue
    .line 895
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method private static deleteLegacydb(Ljava/lang/String;)V
    .registers 3
    .parameter "path"

    .prologue
    .line 1544
    if-eqz p0, :cond_37

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1545
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_18

    .line 1546
    const-string v0, "DrmEventService"

    const-string v1, "deleteLegacydb DB exists .. so trying to delete "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_18
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1549
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_2f

    .line 1551
    const-string v0, "DrmEventService"

    const-string v1, "deleted old db "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_2e
    :goto_2e
    return-void

    .line 1555
    :cond_2f
    const-string v0, "DrmEventService"

    const-string v1, "failed to delete old db"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 1560
    :cond_37
    const-string v0, "DrmEventService"

    const-string v1, "deleteLegacydb DB does not exists"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method private getBeforeTime()J
    .registers 11

    .prologue
    .line 898
    const-wide/16 v0, 0x0

    .line 899
    .local v0, beforeTime:J
    const/4 v2, 0x0

    .line 901
    .local v2, br:Ljava/io/BufferedReader;
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/data/data/.drm/.playready/beforeTime.ini"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_97
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_f} :catch_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f} :catch_81
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_8d

    .line 902
    .end local v2           #br:Ljava/io/BufferedReader;
    .local v3, br:Ljava/io/BufferedReader;
    :try_start_f
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_1a

    .line 903
    const-string v7, "DrmEventService"

    const-string v8, "FileReading Start"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_1a
    const-string v5, ""

    .line 905
    .local v5, nextLine:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 906
    .local v6, sb:Ljava/lang/StringBuffer;
    :goto_21
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 907
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_2a} :catch_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_2a} :catch_a8
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2a} :catch_a5

    goto :goto_21

    .line 918
    .end local v5           #nextLine:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :catch_2b
    move-exception v4

    move-object v2, v3

    .line 920
    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .local v4, e:Ljava/lang/NumberFormatException;
    :goto_2d
    :try_start_2d
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_97

    .line 929
    if-eqz v2, :cond_35

    .line 931
    :try_start_32
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_8b

    .line 936
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_35
    :goto_35
    return-wide v0

    .line 909
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v5       #nextLine:Ljava/lang/String;
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    :cond_36
    :try_start_36
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_56

    .line 910
    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "beforeTIme is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_56
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 914
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_7a

    .line 915
    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "beforeTIme in Long is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_36 .. :try_end_7a} :catchall_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_7a} :catch_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_7a} :catch_a8
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_7a} :catch_a5

    .line 929
    :cond_7a
    if-eqz v3, :cond_7f

    .line 931
    :try_start_7c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_a0

    :cond_7f
    :goto_7f
    move-object v2, v3

    .line 934
    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_35

    .line 921
    .end local v5           #nextLine:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :catch_81
    move-exception v4

    .line 923
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_82
    :try_start_82
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_97

    .line 929
    if-eqz v2, :cond_35

    .line 931
    :try_start_87
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_35

    .line 932
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_8b
    move-exception v7

    goto :goto_35

    .line 924
    :catch_8d
    move-exception v4

    .line 926
    .local v4, e:Ljava/io/IOException;
    :goto_8e
    :try_start_8e
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_97

    .line 929
    if-eqz v2, :cond_35

    .line 931
    :try_start_93
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_8b

    goto :goto_35

    .line 929
    .end local v4           #e:Ljava/io/IOException;
    :catchall_97
    move-exception v7

    :goto_98
    if-eqz v2, :cond_9d

    .line 931
    :try_start_9a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    .line 929
    :cond_9d
    :goto_9d
    throw v7

    .line 932
    :catch_9e
    move-exception v8

    goto :goto_9d

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v5       #nextLine:Ljava/lang/String;
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    :catch_a0
    move-exception v7

    goto :goto_7f

    .line 929
    .end local v5           #nextLine:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :catchall_a2
    move-exception v7

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_98

    .line 924
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :catch_a5
    move-exception v4

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_8e

    .line 921
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :catch_a8
    move-exception v4

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_82

    .line 918
    :catch_ab
    move-exception v4

    goto :goto_2d
.end method

.method private declared-synchronized handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I
    .registers 11
    .parameter "operation"
    .parameter "drmInfo"
    .parameter "drmInfoRequest"
    .parameter "intent"

    .prologue
    .line 1567
    monitor-enter p0

    :try_start_1
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_1d

    .line 1568
    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDbOperation case "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_1d
    const/4 v1, -0x1

    .line 1571
    .local v1, ret:I
    packed-switch p1, :pswitch_data_d6

    .line 1625
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_2c

    .line 1626
    const-string v3, "DrmEventService"

    const-string v4, "Not a valid operation requested in handleDbOperation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_60

    .line 1630
    :cond_2c
    :goto_2c
    monitor-exit p0

    return v1

    .line 1575
    :pswitch_2e
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v3, :cond_63

    .line 1577
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_3d

    .line 1578
    const-string v3, "DrmEventService"

    const-string v4, "handleDbOperation processDrmInfo "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :cond_3d
    iget-object v3, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, p2}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v1

    .line 1581
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_2c

    .line 1582
    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processDrmInfo ret is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_2e .. :try_end_5f} :catchall_60

    goto :goto_2c

    .line 1567
    .end local v1           #ret:I
    :catchall_60
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1585
    .restart local v1       #ret:I
    :cond_63
    :try_start_63
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_2c

    .line 1586
    const-string v3, "DrmEventService"

    const-string v4, "Failed to Install the rights received. No DRM manager instance"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1591
    :pswitch_6f
    const/4 v2, 0x0

    .line 1592
    .local v2, status:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1594
    .local v0, result_info:Landroid/drm/DrmInfo;
    iget-object v3, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v3, :cond_c2

    .line 1596
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_80

    .line 1597
    const-string v3, "DrmEventService"

    const-string v4, "handleDbOperation processDrmRequest "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_80
    iget-object v3, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, p3}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 1599
    if-eqz v0, :cond_b9

    .line 1600
    const-string v3, "status"

    invoke-virtual {v0, v3}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1601
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_ae

    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processDrmRequest status is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_ae
    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1604
    const/4 v1, 0x0

    goto/16 :goto_2c

    .line 1607
    :cond_b9
    const-string v3, "DrmEventService"

    const-string v4, " no response from SecureClock "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 1612
    :cond_c2
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_2c

    .line 1613
    const-string v3, "DrmEventService"

    const-string v4, "Failed to Install the rights received. No DRM manager instance"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 1619
    .end local v0           #result_info:Landroid/drm/DrmInfo;
    .end local v2           #status:Ljava/lang/String;
    :pswitch_cf
    invoke-direct {p0, p4}, Lcom/android/server/DrmEventService;->handleDrmInit(Landroid/content/Intent;)V
    :try_end_d2
    .catchall {:try_start_63 .. :try_end_d2} :catchall_60

    .line 1620
    const/4 v1, 0x0

    .line 1622
    goto/16 :goto_2c

    .line 1571
    nop

    :pswitch_data_d6
    .packed-switch 0x5
        :pswitch_2e
        :pswitch_6f
        :pswitch_cf
    .end packed-switch
.end method

.method private handleDrmInit(Landroid/content/Intent;)V
    .registers 11
    .parameter "intent"

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->setPermissions()V

    .line 514
    const-string v6, "/data/data/com.sec.android.providers.drm/databases/drmdatabase.db"

    invoke-static {v6}, Lcom/android/server/DrmEventService;->deleteLegacydb(Ljava/lang/String;)V

    .line 515
    const-string v6, "/data/system/databases/drmdatabase.db"

    invoke-static {v6}, Lcom/android/server/DrmEventService;->checkForFileorDirectoryExists(Ljava/lang/String;)I

    move-result v5

    .line 516
    .local v5, temp:I
    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_2a

    .line 517
    const-string v6, "DrmEventService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "temp Value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_2a
    const/4 v6, 0x1

    if-ne v5, v6, :cond_57

    .line 519
    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_38

    .line 520
    const-string v6, "DrmEventService"

    const-string v7, "DRM Initialization is Not Yet Done /data/system/databases/drmdatabase.db"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_38
    :try_start_38
    new-instance v3, Lcom/android/server/DrmEventService$OpenDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/DrmEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/android/server/DrmEventService$OpenDatabaseHelper;-><init>(Lcom/android/server/DrmEventService;Landroid/content/Context;)V

    .line 524
    .local v3, mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 526
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1}, Lcom/android/server/DrmEventService;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 528
    invoke-direct {p0, v1}, Lcom/android/server/DrmEventService;->createIndexData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 530
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 532
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->setPermissions()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_51} :catch_52

    .line 618
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    :cond_51
    :goto_51
    return-void

    .line 540
    :catch_52
    move-exception v2

    .line 541
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51

    .line 543
    .end local v2           #e:Ljava/lang/Exception;
    :cond_57
    const/4 v6, 0x2

    if-ne v5, v6, :cond_98

    .line 546
    :try_start_5a
    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_65

    .line 547
    const-string v6, "DrmEventService"

    const-string v7, "DRM Initialization is not done:calling initOmaDRM/data/system/databases/drmdatabase.db"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_65
    const-string v6, "/data/system/databases/drmdatabase.db"

    invoke-direct {p0, v6}, Lcom/android/server/DrmEventService;->deleteDRMDBFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 549
    new-instance v3, Lcom/android/server/DrmEventService$OpenDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/DrmEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/android/server/DrmEventService$OpenDatabaseHelper;-><init>(Lcom/android/server/DrmEventService;Landroid/content/Context;)V

    .line 551
    .restart local v3       #mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 553
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1}, Lcom/android/server/DrmEventService;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 555
    invoke-direct {p0, v1}, Lcom/android/server/DrmEventService;->createIndexData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 557
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 559
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->setPermissions()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_86} :catch_87

    goto :goto_51

    .line 571
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    :catch_87
    move-exception v2

    .line 572
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51

    .line 568
    .end local v2           #e:Ljava/lang/Exception;
    :cond_8c
    :try_start_8c
    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_51

    .line 569
    const-string v6, "DrmEventService"

    const-string v7, "File could not able to delete "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_97} :catch_87

    goto :goto_51

    .line 574
    :cond_98
    const/4 v6, 0x3

    if-ne v5, v6, :cond_51

    .line 575
    sget-boolean v6, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v6, :cond_a6

    .line 576
    const-string v6, "DrmEventService"

    const-string v7, "Verify all tables are created properly or not ?"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_a6
    new-instance v3, Lcom/android/server/DrmEventService$OpenDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/DrmEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/android/server/DrmEventService$OpenDatabaseHelper;-><init>(Lcom/android/server/DrmEventService;Landroid/content/Context;)V

    .line 579
    .restart local v3       #mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 580
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "SELECT * FROM sqlite_master WHERE type=\'table\'"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 581
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 582
    .local v4, tablesCount:I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 583
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 584
    const/16 v6, 0x1b

    if-ge v4, v6, :cond_10c

    .line 586
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 587
    const-string v6, "/data/system/databases/drmdatabase.db"

    invoke-direct {p0, v6}, Lcom/android/server/DrmEventService;->deleteDRMDBFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_103

    .line 588
    new-instance v3, Lcom/android/server/DrmEventService$OpenDatabaseHelper;

    .end local v3           #mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-virtual {p0}, Lcom/android/server/DrmEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/android/server/DrmEventService$OpenDatabaseHelper;-><init>(Lcom/android/server/DrmEventService;Landroid/content/Context;)V

    .line 590
    .restart local v3       #mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 592
    invoke-direct {p0, v1}, Lcom/android/server/DrmEventService;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 594
    invoke-direct {p0, v1}, Lcom/android/server/DrmEventService;->createIndexData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 596
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 598
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->setPermissions()V

    goto/16 :goto_51

    .line 607
    :cond_103
    const-string v6, "DrmEventService"

    const-string v7, "File could not able to delete "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_51

    .line 611
    :cond_10c
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 613
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->setPermissions()V

    goto/16 :goto_51
.end method

.method private declared-synchronized registerReceiever()V
    .registers 7

    .prologue
    .line 323
    monitor-enter p0

    :try_start_1
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_c

    .line 324
    const-string v3, "DrmEventService"

    const-string v4, "Registering for both NITZ and Timeset"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_c
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 327
    .local v2, userTimeFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/server/DrmEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DrmEventService;->userUpdatedTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 339
    .local v0, nitzFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/server/DrmEventService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "time_12_24"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    .line 342
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_53

    .line 343
    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time Format is: :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/DrmEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DrmEventService;->nitZReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 348
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 354
    .local v1, tvOutFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/server/DrmEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DrmEventService;->mTvOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 370
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    .line 371
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_90

    .line 372
    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerReceiever, All registration over, isRegisteredBootTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_1 .. :try_end_90} :catchall_92

    .line 374
    :cond_90
    monitor-exit p0

    return-void

    .line 323
    .end local v0           #nitzFilter:Landroid/content/IntentFilter;
    .end local v1           #tvOutFilter:Landroid/content/IntentFilter;
    .end local v2           #userTimeFilter:Landroid/content/IntentFilter;
    :catchall_92
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private setPermissions()V
    .registers 1

    .prologue
    .line 892
    return-void
.end method

.method private userUpdateHandler(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/server/DrmEventService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_12_24"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, nowTimeFormat:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/DrmEventService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 430
    .local v0, autoEnable:I
    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_63

    .line 432
    const-string v4, "DrmEventService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v4, "DrmEventService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeFormat before setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v4, "DrmEventService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nowTimeFormat before setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 439
    .local v1, now:Ljava/util/Date;
    iget-object v4, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    if-nez v4, :cond_73

    .line 441
    const-string v4, "24"

    iput-object v4, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    .line 444
    :cond_73
    if-nez v2, :cond_77

    .line 446
    const-string v2, "24"

    .line 448
    :cond_77
    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_ad

    .line 450
    const-string v4, "DrmEventService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeFormat after setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v4, "DrmEventService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nowTimeFormat after setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_ad
    iget-object v4, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 456
    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_c0

    .line 457
    const-string v4, "DrmEventService"

    const-string v5, "userUpdatedTimeReceiver time format is not changed check if it is NITZ Update"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_c0
    if-nez v0, :cond_d1

    .line 460
    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_cd

    .line 461
    const-string v4, "DrmEventService"

    const-string v5, "This is a not NITZ update.Time format is also not changed.Update delta"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_cd
    invoke-virtual {p0, p1}, Lcom/android/server/DrmEventService;->handleUserUpdatedTimeUpdation(Landroid/content/Intent;)V

    .line 507
    :cond_d0
    :goto_d0
    return-void

    .line 474
    :cond_d1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 477
    .local v3, telephonymanager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_eb

    .line 479
    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_e7

    .line 480
    const-string v4, "DrmEventService"

    const-string v5, "Auto time update is on but sim is not in ready state hence no NITZ update will follow"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_e7
    invoke-virtual {p0, p1}, Lcom/android/server/DrmEventService;->handleUserUpdatedTimeUpdation(Landroid/content/Intent;)V

    goto :goto_d0

    .line 493
    :cond_eb
    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_d0

    .line 494
    const-string v4, "DrmEventService"

    const-string v5, "This is a NITZ update.So no need to update delta"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    .line 499
    .end local v3           #telephonymanager:Landroid/telephony/TelephonyManager;
    :cond_f7
    sget-boolean v4, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v4, :cond_102

    .line 500
    const-string v4, "DrmEventService"

    const-string v5, "userUpdatedTimeReceiver format is changed no need to udpate Delta"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_102
    iput-object v2, p0, Lcom/android/server/DrmEventService;->timeFormat:Ljava/lang/String;

    goto :goto_d0
.end method


# virtual methods
.method InitializeOmaIntent(ILjava/lang/String;)V
    .registers 8
    .parameter "rightStatus"
    .parameter "filePath"

    .prologue
    .line 1262
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_1c

    .line 1263
    const-string v2, "DrmEventService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InitializeOmaIntent called"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1265
    .local v0, contentIntent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1266
    const-string v2, "application/oma.drm.popup"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1267
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1268
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1269
    const-string v2, "result"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1270
    const-string v2, "filePath"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1273
    :try_start_41
    invoke-virtual {p0}, Lcom/android/server/DrmEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_48
    .catch Landroid/content/ActivityNotFoundException; {:try_start_41 .. :try_end_48} :catch_49

    .line 1281
    :cond_48
    :goto_48
    return-void

    .line 1275
    :catch_49
    move-exception v1

    .line 1277
    .local v1, e:Landroid/content/ActivityNotFoundException;
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_48

    .line 1278
    const-string v2, "DrmEventService"

    const-string v3, "unable to startActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48
.end method

.method InitializeOmaIntent(Ljava/lang/String;)V
    .registers 7
    .parameter "Status"

    .prologue
    .line 1286
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_1c

    .line 1287
    const-string v2, "DrmEventService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InitializeOmaIntent called Status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1290
    .local v0, contentIntent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1291
    const-string v2, "application/oma.drm.popup"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1292
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1293
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1294
    const-string v2, "status"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1297
    :try_start_3c
    invoke-virtual {p0}, Lcom/android/server/DrmEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_43
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3c .. :try_end_43} :catch_44

    .line 1304
    :cond_43
    :goto_43
    return-void

    .line 1299
    :catch_44
    move-exception v1

    .line 1301
    .local v1, e:Landroid/content/ActivityNotFoundException;
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_43

    .line 1302
    const-string v2, "DrmEventService"

    const-string v3, "unable to startActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method public handleGpstimeUpdation(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 964
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_b

    .line 965
    const-string v0, "DrmEventService"

    const-string v1, "[GPS Time for DRM] handleGpstimeUpdation Time :"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_b
    return-void
.end method

.method public handleNitztimeUpdation(Landroid/content/Intent;)V
    .registers 12
    .parameter "intent"

    .prologue
    .line 1045
    const-wide/16 v4, 0x0

    .line 1046
    .local v4, nitzTime:J
    if-eqz p1, :cond_207

    .line 1047
    const-string v7, "DrmEventService"

    const-string v8, "handleNitztimeUpdation"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1051
    .local v0, c:Ljava/util/Calendar;
    const-string v7, "GMT"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1054
    :try_start_18
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_b9

    .line 1056
    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "date is :: year"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "month"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "day"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "hour"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xb

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "minute"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xc

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "second"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xd

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_b9
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/4 v7, 0x5

    const-string v8, "application/vnd.oma.drm.content"

    invoke-direct {v2, v7, v8}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1064
    .local v2, mDrmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v7, "year"

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1065
    const-string v7, "month"

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1066
    const-string v7, "day"

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1067
    const-string v7, "hour"

    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1068
    const-string v7, "minute"

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1069
    const-string v7, "second"

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1082
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_13d

    .line 1083
    const-string v7, "DrmEventService"

    const-string v8, "calling handleDbOperation : TIME_CLOCK_UPDATE "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_13d
    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/server/DrmEventService;->handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v6

    .line 1087
    .local v6, ret:I
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_160

    .line 1088
    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleDbOperation : TIME_CLOCK_UPDATE  secure clock  ret is  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_160
    new-instance v3, Landroid/drm/DrmInfoRequest;

    const/4 v7, 0x5

    const-string v8, "video/vnd.ms-playready.media.pyv"

    invoke-direct {v3, v7, v8}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1092
    .local v3, mPRDrmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v7, "year"

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1093
    const-string v7, "month"

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1094
    const-string v7, "day"

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1095
    const-string v7, "hour"

    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1096
    const-string v7, "minute"

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1097
    const-string v7, "second"

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1107
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_1e4

    .line 1108
    const-string v7, "DrmEventService"

    const-string v8, "calling handleDbOperation : TIME_CLOCK_UPDATE "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_1e4
    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v3, v9}, Lcom/android/server/DrmEventService;->handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v6

    .line 1111
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_207

    .line 1112
    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleDbOperation : TIME_CLOCK_UPDATE  secure clock for PR  ret is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_207} :catch_208

    .line 1119
    .end local v0           #c:Ljava/util/Calendar;
    .end local v2           #mDrmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v3           #mPRDrmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v6           #ret:I
    :cond_207
    :goto_207
    return-void

    .line 1114
    .restart local v0       #c:Ljava/util/Calendar;
    :catch_208
    move-exception v1

    .line 1115
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_207
.end method

.method public handleUserUpdatedTimeUpdation(Landroid/content/Intent;)V
    .registers 16
    .parameter "intent"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x6

    .line 1124
    const-wide/16 v2, 0x0

    .line 1125
    .local v2, beforeTime:J
    const-wide/16 v0, 0x0

    .line 1126
    .local v0, afterTime:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1127
    .local v6, now:Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 1128
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->getBeforeTime()J

    move-result-wide v2

    .line 1130
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_40

    .line 1131
    const-string v8, "DrmEventService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateTimeAndDateDisplay beforeTime :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "and afterTime :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_40
    new-instance v4, Landroid/drm/DrmInfoRequest;

    const-string v8, "application/vnd.oma.drm.content"

    invoke-direct {v4, v12, v8}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1134
    .local v4, mDrmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v8, "before"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1135
    const-string v8, "after"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1152
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_6c

    .line 1153
    const-string v8, "DrmEventService"

    const-string v9, "calling handleDbOperation : TIME_CLOCK_UPDATE "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_6c
    invoke-direct {p0, v12, v13, v4, v13}, Lcom/android/server/DrmEventService;->handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v7

    .line 1157
    .local v7, ret:I
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_8c

    .line 1158
    const-string v8, "DrmEventService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleDbOperation : TIME_CLOCK_UPDATE Updating of secure clock ret  is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_8c
    new-instance v5, Landroid/drm/DrmInfoRequest;

    const-string v8, "video/vnd.ms-playready.media.pyv"

    invoke-direct {v5, v12, v8}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1162
    .local v5, mPRDrmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v8, "before"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1163
    const-string v8, "after"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1172
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_b8

    .line 1173
    const-string v8, "DrmEventService"

    const-string v9, "calling handleDbOperation : TIME_CLOCK_UPDATE "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_b8
    invoke-direct {p0, v12, v13, v5, v13}, Lcom/android/server/DrmEventService;->handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v7

    .line 1177
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_d8

    .line 1178
    const-string v8, "DrmEventService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleDbOperation : TIME_CLOCK_UPDATE Updating of secure clock ret  for PR is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_d8
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 243
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_b

    .line 244
    const-string v0, "DrmEventService"

    const-string v1, "DrmEventService : onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 249
    sget-boolean v1, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v1, :cond_b

    .line 250
    const-string v1, "DrmEventService"

    const-string v2, "DrmEventService : onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_b
    iget-object v1, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v1, :cond_16

    .line 256
    new-instance v1, Landroid/drm/DrmManagerClient;

    invoke-direct {v1, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 258
    :cond_16
    iget-object v1, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v1, :cond_28

    .line 259
    iget-object v1, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    iget-object v2, p0, Lcom/android/server/DrmEventService;->drmEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    invoke-virtual {v1, v2}, Landroid/drm/DrmManagerClient;->setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V

    .line 260
    iget-object v1, p0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    iget-object v2, p0, Lcom/android/server/DrmEventService;->errorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/drm/DrmManagerClient;->setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V

    .line 262
    :cond_28
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmEventService"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 265
    .local v0, thread:Landroid/os/HandlerThread;
    sget-boolean v1, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v1, :cond_3b

    .line 266
    const-string v1, "DrmEventService"

    const-string v2, "DrmEventService : onCreate before thread.start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_3b
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 270
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DrmEventService;->mServiceLooper:Landroid/os/Looper;

    .line 271
    new-instance v1, Lcom/android/server/DrmEventService$ServiceHandler;

    iget-object v2, p0, Lcom/android/server/DrmEventService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DrmEventService$ServiceHandler;-><init>(Lcom/android/server/DrmEventService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/DrmEventService;->mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

    .line 272
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 237
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_b

    .line 238
    const-string v0, "DrmEventService"

    const-string v1, "DrmEventService : onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_b
    iget-object v0, p0, Lcom/android/server/DrmEventService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 240
    return-void
.end method

.method public onLowMemory()V
    .registers 3

    .prologue
    .line 231
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_b

    .line 232
    const-string v0, "DrmEventService"

    const-string v1, "DrmEventService : OnLowMemory....Save the Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_b
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 234
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 9
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v5, 0x3

    .line 103
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_2d

    .line 104
    const-string v2, "DrmEventService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStart intent.getAction() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isRegisteredBootTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_2d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 109
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_44

    .line 110
    const-string v2, "DrmEventService"

    const-string v3, "DrmEventService : onStart :: WAP_PUSH_RECEIVED.Check if registration is required"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_44
    iget-boolean v2, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    if-nez v2, :cond_95

    .line 113
    const-string v2, "/data/system/databases/drmdatabase.db"

    invoke-static {v2}, Lcom/android/server/DrmEventService;->checkForFileorDirectoryExists(Ljava/lang/String;)I

    move-result v1

    .line 114
    .local v1, temp:I
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_6a

    .line 115
    const-string v2, "DrmEventService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp Value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_6a
    if-ne v1, v5, :cond_89

    .line 117
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_77

    .line 118
    const-string v2, "DrmEventService"

    const-string v3, "DrmEventService : onStart :: WAP_PUSH_RECEIVED. register receiver called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_77
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->registerReceiever()V

    .line 130
    .end local v1           #temp:I
    :cond_7a
    :goto_7a
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_85

    .line 131
    const-string v2, "DrmEventService"

    const-string v3, "DrmEventService : onStart: WAP PUSH for SD rights"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_85
    invoke-virtual {p0, p0, p1}, Lcom/android/server/DrmEventService;->processWapPush(Landroid/content/Context;Landroid/content/Intent;)V

    .line 164
    :cond_88
    :goto_88
    return-void

    .line 121
    .restart local v1       #temp:I
    :cond_89
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_7a

    .line 122
    const-string v2, "DrmEventService"

    const-string v3, "DrmEventService : onStart :: WAP_PUSH_RECEIVED.db is not proper "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 125
    .end local v1           #temp:I
    :cond_95
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_7a

    .line 126
    const-string v2, "DrmEventService"

    const-string v3, "DrmEventService : onStart :: WAP_PUSH_RECEIVED..already registered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 136
    :cond_a1
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_ac

    .line 137
    const-string v2, "DrmEventService"

    const-string v3, "DrmEventService : onStart"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_ac
    iget-object v2, p0, Lcom/android/server/DrmEventService;->mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

    invoke-virtual {v2}, Lcom/android/server/DrmEventService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 139
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 140
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    iget-object v2, p0, Lcom/android/server/DrmEventService;->mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/DrmEventService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_c6

    .line 144
    const-string v2, "DrmEventService"

    const-string v3, "DrmEventService : Service is started.Check if registration is required"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_c6
    iget-boolean v2, p0, Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z

    if-nez v2, :cond_109

    .line 147
    const-string v2, "/data/system/databases/drmdatabase.db"

    invoke-static {v2}, Lcom/android/server/DrmEventService;->checkForFileorDirectoryExists(Ljava/lang/String;)I

    move-result v1

    .line 148
    .restart local v1       #temp:I
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_ec

    .line 149
    const-string v2, "DrmEventService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp Value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_ec
    if-ne v1, v5, :cond_fd

    .line 151
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_f9

    .line 152
    const-string v2, "DrmEventService"

    const-string v3, "DrmEventService : This is not BootTime.So register now."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_f9
    invoke-direct {p0}, Lcom/android/server/DrmEventService;->registerReceiever()V

    goto :goto_88

    .line 155
    :cond_fd
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_88

    .line 156
    const-string v2, "DrmEventService"

    const-string v3, "DrmEventService : This is  first time after the Flash , so do not do registration"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 159
    .end local v1           #temp:I
    :cond_109
    sget-boolean v2, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v2, :cond_88

    .line 160
    const-string v2, "DrmEventService"

    const-string v3, "DrmEventService : Registration is already done in BootComplete.Leave it"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_88
.end method

.method public processWapPush(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 167
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_21

    .line 168
    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processWapPush: WapPush Receiver intent is recieved"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, rightMimeType:Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_41

    .line 172
    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processWapPush : MimeType - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_41
    const-string v7, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_59

    const-string v7, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_59

    const-string v7, "application/vnd.oma.drm.roap-trigger+wbxml"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10a

    .line 181
    :cond_59
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_75

    .line 182
    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processWapPush : rightMimeType - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_75
    const-string v7, "data"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v3, v7

    check-cast v3, [B

    .line 184
    .local v3, rightData:[B
    if-eqz v3, :cond_86

    array-length v7, v3

    const/4 v8, 0x7

    if-ge v7, v8, :cond_92

    .line 185
    :cond_86
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_91

    .line 186
    const-string v7, "DrmEventService"

    const-string v8, "processWapPush: The rights data is invalid."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v3           #rightData:[B
    :cond_91
    :goto_91
    return-void

    .line 189
    .restart local v3       #rightData:[B
    :cond_92
    array-length v7, v3

    add-int/lit8 v7, v7, -0x6

    new-array v0, v7, [B

    .line 190
    .local v0, actualWbxmlData:[B
    const/4 v7, 0x6

    const/4 v8, 0x0

    array-length v9, v3

    add-int/lit8 v9, v9, -0x6

    invoke-static {v3, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 192
    .local v4, rightDataStream:Ljava/io/ByteArrayInputStream;
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_c4

    .line 193
    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rightDataStream : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_c4
    const-string v7, "application/vnd.oma.drm.roap-trigger+wbxml"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_dc

    .line 197
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.WAP_ROAP_TRIGGER_RCVD"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v6, wap_intent:Landroid/content/Intent;
    const-string v7, "roap_trigger"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 199
    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_91

    .line 201
    .end local v6           #wap_intent:Landroid/content/Intent;
    :cond_dc
    const/4 v1, 0x0

    .line 217
    .local v1, contentId:Ljava/lang/String;
    const-string v7, "DrmEventService"

    const-string v8, "calling handleDbOperation : WAP_PUSH_UPDATE "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v7, 0x5

    new-instance v8, Landroid/drm/DrmInfo;

    const/4 v9, 0x1

    const-string v10, "application/vnd.oma.drm.content"

    invoke-direct {v8, v9, v3, v10}, Landroid/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    invoke-direct {p0, v7, v8, v11, v11}, Lcom/android/server/DrmEventService;->handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v2

    .line 219
    .local v2, ret:I
    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleDbOperation : WAP_PUSH_UPDATE ret  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 223
    .end local v0           #actualWbxmlData:[B
    .end local v1           #contentId:Ljava/lang/String;
    .end local v2           #ret:I
    .end local v3           #rightData:[B
    .end local v4           #rightDataStream:Ljava/io/ByteArrayInputStream;
    :cond_10a
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_91

    .line 224
    const-string v7, "DrmEventService"

    const-string v8, "DRM PUSH RECEIVER : mimeType is not valid for WAp Push Received"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_91
.end method
