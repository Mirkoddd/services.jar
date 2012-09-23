.class public Lcom/android/server/enterprise/ApplicationUsageDb;
.super Ljava/lang/Object;
.source "ApplicationUsageDb.java"


# static fields
.field public static final APP_LAST_LAUNCH_TIME:Ljava/lang/String; = "lastlaunchtime"

.field public static final APP_LAST_PAUSE_TIME:Ljava/lang/String; = "lastpausetime"

.field public static final APP_LAST_SERVICE_START_TIME:Ljava/lang/String; = "applastservicestarttime"

.field public static final APP_LAST_SERVICE_STOP_TIME:Ljava/lang/String; = "applastservicestoptime"

.field public static final APP_TOTAL_USAGE_TIME:Ljava/lang/String; = "totalusagetime"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LAUNCH_COUNT:Ljava/lang/String; = "launchcount"

.field public static final PKG_NAME:Ljava/lang/String; = "pkgname"

.field public static final TABLE_NAME:Ljava/lang/String; = "ApplicationControl"

.field private static final TAG:Ljava/lang/String; = "ApplicationUsageDb"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationUsageDb;->mContext:Landroid/content/Context;

    .line 41
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationUsageDb;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private calculateLastUsageTime(JJJJ)J
    .registers 14
    .parameter "launchTime"
    .parameter "pauseTime"
    .parameter "serviceStartTime"
    .parameter "serviceStopTime"

    .prologue
    const-wide/16 v3, 0x0

    .line 279
    const-wide/16 v0, 0x0

    .line 280
    .local v0, lastUsageTIme:J
    cmp-long v2, p5, v3

    if-eqz v2, :cond_2b

    cmp-long v2, p7, v3

    if-eqz v2, :cond_2b

    .line 282
    cmp-long v2, p1, v3

    if-eqz v2, :cond_28

    .line 283
    cmp-long v2, p3, p7

    if-lez v2, :cond_1e

    .line 284
    cmp-long v2, p1, p5

    if-gez v2, :cond_1b

    .line 285
    sub-long v0, p3, p1

    .line 311
    :cond_1a
    :goto_1a
    return-wide v0

    .line 289
    :cond_1b
    sub-long v0, p3, p5

    goto :goto_1a

    .line 293
    :cond_1e
    cmp-long v2, p1, p5

    if-gez v2, :cond_25

    .line 295
    sub-long v0, p7, p1

    goto :goto_1a

    .line 299
    :cond_25
    sub-long v0, p7, p5

    goto :goto_1a

    .line 304
    :cond_28
    sub-long v0, p7, p5

    goto :goto_1a

    .line 306
    :cond_2b
    cmp-long v2, p3, v3

    if-eqz v2, :cond_1a

    .line 307
    sub-long v0, p3, p1

    goto :goto_1a
.end method

.method private static createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 359
    :try_start_0
    const-string v1, " (_id integer primary key autoincrement, pkgname text, lastpausetime long, applastservicestarttime long, applastservicestoptime long, totalusagetime long, launchcount integer, lastlaunchtime long );"

    .line 369
    .local v1, s:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table ApplicationControl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 370
    const-string v2, "ApplicationUsageDb"

    const-string v3, "::createDmAppMgrTable: Table is Created "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 376
    .end local v1           #s:Ljava/lang/String;
    :goto_1f
    return-void

    .line 371
    :catch_20
    move-exception v0

    .line 372
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ApplicationUsageDb"

    const-string v3, "::createDmAppMgrTable: Exception while table is creating "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method private static getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6
    .parameter "ctx"

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, dmappmgrDB:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "dmappmgr.db"

    .line 344
    .local v1, dmappmgrDBPath:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_17

    move-result-object v0

    .line 350
    :goto_9
    if-eqz v0, :cond_16

    const-string v3, "ApplicationControl"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/ApplicationUsageDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 352
    invoke-static {v0}, Lcom/android/server/enterprise/ApplicationUsageDb;->createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 354
    :cond_16
    return-object v0

    .line 346
    :catch_17
    move-exception v2

    .line 347
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "ApplicationUsageDb"

    const-string v4, "::getAppControlDB: Exception to create DB"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6
    .parameter "db"
    .parameter "table"

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, exists:Z
    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 382
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT 1 FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE 1=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_2d

    .line 383
    const/4 v1, 0x1

    .line 390
    :cond_2c
    :goto_2c
    return v1

    .line 384
    :catch_2d
    move-exception v0

    .line 385
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 386
    const-string v2, "ApplicationUsageDb"

    const-string v3, "::isTableExists:Table Does not exists "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c
.end method


# virtual methods
.method public deletePackageFromDb(Ljava/lang/String;)Z
    .registers 9
    .parameter "packageName"

    .prologue
    .line 154
    const/4 v3, 0x0

    .line 155
    .local v3, success:Z
    const/4 v1, 0x0

    .line 157
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 158
    const-string v4, "ApplicationControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkgname = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_31

    move-result v0

    .line 161
    .local v0, count:I
    if-lez v0, :cond_2b

    .line 162
    const/4 v3, 0x1

    .line 169
    .end local v0           #count:I
    :cond_2b
    :goto_2b
    if-eqz v1, :cond_30

    .line 170
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 173
    :cond_30
    return v3

    .line 163
    :catch_31
    move-exception v2

    .line 164
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b
.end method

.method public getAppUsageData()Ljava/util/HashMap;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/enterprise/AppInfoLastUsage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    const/4 v15, 0x0

    .line 218
    .local v15, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 219
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v20, 0x0

    .line 220
    .local v20, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "pkgname"

    aput-object v6, v5, v4

    const/4 v4, 0x1

    const-string v6, "lastlaunchtime"

    aput-object v6, v5, v4

    const/4 v4, 0x2

    const-string v6, "lastpausetime"

    aput-object v6, v5, v4

    const/4 v4, 0x3

    const-string v6, "applastservicestarttime"

    aput-object v6, v5, v4

    const/4 v4, 0x4

    const-string v6, "applastservicestoptime"

    aput-object v6, v5, v4

    .line 224
    .local v5, col:[Ljava/lang/String;
    :try_start_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_e7
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_e9

    move-result-object v3

    .line 225
    if-nez v3, :cond_36

    .line 226
    const/4 v4, 0x0

    .line 268
    if-eqz v15, :cond_30

    .line 269
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_30
    if-eqz v3, :cond_35

    .line 271
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 274
    :cond_35
    :goto_35
    return-object v4

    .line 227
    :cond_36
    :try_start_36
    const-string v4, "ApplicationControl"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 229
    if-eqz v15, :cond_94

    .line 231
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 232
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_e7
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4e} :catch_e9

    .line 235
    .end local v20           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    .local v21, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    :cond_4e
    :try_start_4e
    const-string v4, "pkgname"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 237
    .local v22, packageName:Ljava/lang/String;
    const-string v4, "lastlaunchtime"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 239
    .local v7, lastLaunchTime:J
    const-string v4, "lastpausetime"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 241
    .local v9, lastPauseTime:J
    const-string v4, "applastservicestarttime"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 243
    .local v11, lastServiceStartTime:J
    const-string v4, "applastservicestoptime"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .local v13, lastServiceStopTime:J
    move-object/from16 v6, p0

    .line 245
    invoke-direct/range {v6 .. v14}, Lcom/android/server/enterprise/ApplicationUsageDb;->calculateLastUsageTime(JJJJ)J

    move-result-wide v18

    .line 249
    .local v18, lastUsageTime:J
    const-wide/16 v23, 0x0

    cmp-long v4, v18, v23

    if-nez v4, :cond_a1

    .line 261
    :goto_8c
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8f
    .catchall {:try_start_4e .. :try_end_8f} :catchall_d9
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_8f} :catch_c6

    move-result v4

    if-nez v4, :cond_4e

    move-object/from16 v20, v21

    .line 268
    .end local v7           #lastLaunchTime:J
    .end local v9           #lastPauseTime:J
    .end local v11           #lastServiceStartTime:J
    .end local v13           #lastServiceStopTime:J
    .end local v18           #lastUsageTime:J
    .end local v21           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    .end local v22           #packageName:Ljava/lang/String;
    .restart local v20       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    :cond_94
    if-eqz v15, :cond_99

    .line 269
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_99
    if-eqz v3, :cond_9e

    .line 271
    :goto_9b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9e
    move-object/from16 v4, v20

    .line 274
    goto :goto_35

    .line 252
    .end local v20           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    .restart local v7       #lastLaunchTime:J
    .restart local v9       #lastPauseTime:J
    .restart local v11       #lastServiceStartTime:J
    .restart local v13       #lastServiceStopTime:J
    .restart local v18       #lastUsageTime:J
    .restart local v21       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    .restart local v22       #packageName:Ljava/lang/String;
    :cond_a1
    :try_start_a1
    new-instance v17, Landroid/app/enterprise/AppInfoLastUsage;

    invoke-direct/range {v17 .. v17}, Landroid/app/enterprise/AppInfoLastUsage;-><init>()V

    .line 253
    .local v17, lAppInfoLastUsage:Landroid/app/enterprise/AppInfoLastUsage;
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 254
    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/app/enterprise/AppInfoLastUsage;->mLastAppUsage:J

    .line 255
    const-wide/16 v23, 0x0

    cmp-long v4, v7, v23

    if-eqz v4, :cond_d4

    .line 256
    move-object/from16 v0, v17

    iput-wide v7, v0, Landroid/app/enterprise/AppInfoLastUsage;->mLastLaunchTime:J

    .line 259
    :goto_bc
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c5
    .catchall {:try_start_a1 .. :try_end_c5} :catchall_d9
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_c5} :catch_c6

    goto :goto_8c

    .line 264
    .end local v7           #lastLaunchTime:J
    .end local v9           #lastPauseTime:J
    .end local v11           #lastServiceStartTime:J
    .end local v13           #lastServiceStopTime:J
    .end local v17           #lAppInfoLastUsage:Landroid/app/enterprise/AppInfoLastUsage;
    .end local v18           #lastUsageTime:J
    .end local v22           #packageName:Ljava/lang/String;
    :catch_c6
    move-exception v16

    move-object/from16 v20, v21

    .line 265
    .end local v21           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    .local v16, e:Ljava/lang/Exception;
    .restart local v20       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    :goto_c9
    :try_start_c9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_e7

    .line 268
    if-eqz v15, :cond_d1

    .line 269
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_d1
    if-eqz v3, :cond_9e

    goto :goto_9b

    .line 258
    .end local v16           #e:Ljava/lang/Exception;
    .end local v20           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    .restart local v7       #lastLaunchTime:J
    .restart local v9       #lastPauseTime:J
    .restart local v11       #lastServiceStartTime:J
    .restart local v13       #lastServiceStopTime:J
    .restart local v17       #lAppInfoLastUsage:Landroid/app/enterprise/AppInfoLastUsage;
    .restart local v18       #lastUsageTime:J
    .restart local v21       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    .restart local v22       #packageName:Ljava/lang/String;
    :cond_d4
    :try_start_d4
    move-object/from16 v0, v17

    iput-wide v11, v0, Landroid/app/enterprise/AppInfoLastUsage;->mLastLaunchTime:J
    :try_end_d8
    .catchall {:try_start_d4 .. :try_end_d8} :catchall_d9
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d8} :catch_c6

    goto :goto_bc

    .line 268
    .end local v7           #lastLaunchTime:J
    .end local v9           #lastPauseTime:J
    .end local v11           #lastServiceStartTime:J
    .end local v13           #lastServiceStopTime:J
    .end local v17           #lAppInfoLastUsage:Landroid/app/enterprise/AppInfoLastUsage;
    .end local v18           #lastUsageTime:J
    .end local v22           #packageName:Ljava/lang/String;
    :catchall_d9
    move-exception v4

    move-object/from16 v20, v21

    .end local v21           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    .restart local v20       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    :goto_dc
    if-eqz v15, :cond_e1

    .line 269
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_e1
    if-eqz v3, :cond_e6

    .line 271
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 268
    :cond_e6
    throw v4

    :catchall_e7
    move-exception v4

    goto :goto_dc

    .line 264
    :catch_e9
    move-exception v16

    goto :goto_c9
.end method

.method public getLaunchCountOfAllApplication()Ljava/util/HashMap;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    const/4 v8, 0x0

    .line 178
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 179
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 182
    .local v11, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 183
    const-string v1, "ApplicationControl"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 186
    if-eqz v8, :cond_44

    .line 187
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_5b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_4f

    .line 189
    .end local v11           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v12, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_1c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 191
    :cond_22
    const-string v1, "pkgname"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 194
    .local v13, packageName:Ljava/lang/String;
    const-string v1, "launchcount"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 197
    .local v10, launchCount:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_40
    .catchall {:try_start_1c .. :try_end_40} :catchall_67
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_40} :catch_6a

    move-result v1

    if-nez v1, :cond_22

    .end local v10           #launchCount:I
    .end local v13           #packageName:Ljava/lang/String;
    :cond_43
    move-object v11, v12

    .line 205
    .end local v12           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_44
    if-eqz v8, :cond_49

    .line 206
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_49
    if-eqz v0, :cond_4e

    .line 208
    :goto_4b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 212
    :cond_4e
    return-object v11

    .line 201
    :catch_4f
    move-exception v9

    .line 202
    .local v9, e:Ljava/lang/Exception;
    :goto_50
    :try_start_50
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5b

    .line 205
    if-eqz v8, :cond_58

    .line 206
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_58
    if-eqz v0, :cond_4e

    goto :goto_4b

    .line 205
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_5b
    move-exception v1

    :goto_5c
    if-eqz v8, :cond_61

    .line 206
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_61
    if-eqz v0, :cond_66

    .line 208
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 205
    :cond_66
    throw v1

    .end local v11           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v12       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_67
    move-exception v1

    move-object v11, v12

    .end local v12           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_5c

    .line 201
    .end local v11           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v12       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_6a
    move-exception v9

    move-object v11, v12

    .end local v12           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_50
.end method

.method public updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z
    .registers 16
    .parameter "packageName"
    .parameter "lastServiceStartTime"
    .parameter "lastServiceStopTime"

    .prologue
    .line 102
    const/4 v5, 0x0

    .line 103
    .local v5, success:Z
    const/4 v2, 0x0

    .line 104
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 106
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_3
    iget-object v7, p0, Lcom/android/server/enterprise/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT * FROM ApplicationControl WHERE pkgname = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 114
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_72

    .line 116
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "applastservicestarttime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    const-string v7, "applastservicestoptime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    const-string v7, "ApplicationControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pkgname = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_a4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_63} :catch_9d

    move-result v0

    .line 124
    .local v0, count:I
    if-lez v0, :cond_67

    .line 125
    const/4 v5, 0x1

    .line 142
    .end local v0           #count:I
    :cond_67
    :goto_67
    if-eqz v2, :cond_6c

    .line 143
    .end local v6           #values:Landroid/content/ContentValues;
    :goto_69
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_6c
    if-eqz v3, :cond_71

    .line 146
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 149
    :cond_71
    return v5

    .line 127
    :cond_72
    :try_start_72
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .restart local v6       #values:Landroid/content/ContentValues;
    const-string v7, "pkgname"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v7, "applastservicestarttime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    const-string v7, "applastservicestoptime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    const-string v7, "ApplicationControl"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_94
    .catchall {:try_start_72 .. :try_end_94} :catchall_a4
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_94} :catch_9d

    move-result-wide v0

    .line 135
    .local v0, count:J
    const-wide/16 v7, 0x0

    cmp-long v7, v7, v0

    if-gez v7, :cond_67

    .line 136
    const/4 v5, 0x1

    goto :goto_67

    .line 139
    .end local v0           #count:J
    .end local v6           #values:Landroid/content/ContentValues;
    :catch_9d
    move-exception v4

    .line 140
    .local v4, e:Ljava/lang/Exception;
    :try_start_9e
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_a4

    .line 142
    if-eqz v2, :cond_6c

    goto :goto_69

    .end local v4           #e:Ljava/lang/Exception;
    :catchall_a4
    move-exception v7

    if-eqz v2, :cond_aa

    .line 143
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_aa
    throw v7
.end method

.method public updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z
    .registers 18
    .parameter "packageName"
    .parameter "lCount"
    .parameter "launchTime"
    .parameter "lastPauseTime"

    .prologue
    .line 46
    const/4 v6, 0x0

    .line 47
    .local v6, success:Z
    const/4 v2, 0x0

    .line 48
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 50
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_3
    iget-object v8, p0, Lcom/android/server/enterprise/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/enterprise/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 51
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT * FROM ApplicationControl WHERE pkgname = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 58
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_86

    .line 60
    const-string v8, "launchcount"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 62
    .local v5, launchCount:I
    add-int/2addr v5, p2

    .line 63
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 64
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "launchcount"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    const-string v8, "lastlaunchtime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 66
    const-string v8, "lastpausetime"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 68
    const-string v8, "ApplicationControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pkgname = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_c1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_77} :catch_ba

    move-result v0

    .line 71
    .local v0, count:I
    if-lez v0, :cond_7b

    .line 72
    const/4 v6, 0x1

    .line 89
    .end local v0           #count:I
    .end local v5           #launchCount:I
    :cond_7b
    :goto_7b
    if-eqz v2, :cond_80

    .line 90
    .end local v7           #values:Landroid/content/ContentValues;
    :goto_7d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_80
    if-eqz v3, :cond_85

    .line 93
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 96
    :cond_85
    return v6

    .line 74
    :cond_86
    :try_start_86
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 75
    .restart local v7       #values:Landroid/content/ContentValues;
    const-string v8, "launchcount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    const-string v8, "pkgname"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v8, "lastlaunchtime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    const-string v8, "lastpausetime"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    const-string v8, "ApplicationControl"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_b1
    .catchall {:try_start_86 .. :try_end_b1} :catchall_c1
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_b1} :catch_ba

    move-result-wide v0

    .line 82
    .local v0, count:J
    const-wide/16 v8, 0x0

    cmp-long v8, v8, v0

    if-gez v8, :cond_7b

    .line 83
    const/4 v6, 0x1

    goto :goto_7b

    .line 86
    .end local v0           #count:J
    .end local v7           #values:Landroid/content/ContentValues;
    :catch_ba
    move-exception v4

    .line 87
    .local v4, e:Ljava/lang/Exception;
    :try_start_bb
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_c1

    .line 89
    if-eqz v2, :cond_80

    goto :goto_7d

    .end local v4           #e:Ljava/lang/Exception;
    :catchall_c1
    move-exception v8

    if-eqz v2, :cond_c7

    .line 90
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_c7
    throw v8
.end method
