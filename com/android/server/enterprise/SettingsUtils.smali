.class Lcom/android/server/enterprise/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# static fields
.field private static final ACCOUNTCB_CONTENT_URI:Landroid/net/Uri; = null

.field private static final ACCOUNT_CONTENT_URI:Landroid/net/Uri; = null

.field private static final HOST_AUTH_CONTENT_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "SettingsUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    .line 39
    const-string v0, "content://com.android.email.provider/hostauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    .line 42
    const-string v0, "content://com.android.email.provider/accountcb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized addorUpdateAccount(Lcom/android/server/enterprise/AccountMetaData;ZLandroid/content/Context;)J
    .registers 20
    .parameter "accInfo"
    .parameter "isInsertOP"
    .parameter "context"

    .prologue
    .line 149
    const-class v16, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v16

    const-wide/16 v11, -0x1

    .line 152
    .local v11, accountId:J
    const-wide/16 v13, -0x1

    .line 153
    .local v13, accountsRowId:J
    const-wide/16 v4, -0x1

    .line 154
    .local v4, inComingRowId:J
    const-wide/16 v6, -0x1

    .line 156
    .local v6, outGoingRowId:J
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-eqz v3, :cond_23

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v8, "com.android.exchange"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v3, v8, v9, v0, v1}, Lcom/android/server/enterprise/SettingsUtils;->insertAccountsTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v13

    .line 160
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-eqz v3, :cond_2f

    const-wide/16 v8, -0x1

    cmp-long v3, v8, v13

    if-nez v3, :cond_35

    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-nez v3, :cond_67

    .line 162
    :cond_35
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v3, v2}, Lcom/android/server/enterprise/SettingsUtils;->insertHostAuthTableRow(Lcom/android/server/enterprise/AccountMetaData;ZZLandroid/content/Context;)J

    move-result-wide v4

    .line 164
    const-wide/16 v8, -0x1

    cmp-long v3, v8, v4

    if-eqz v3, :cond_51

    .line 165
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v3, v2}, Lcom/android/server/enterprise/SettingsUtils;->insertHostAuthTableRow(Lcom/android/server/enterprise/AccountMetaData;ZZLandroid/content/Context;)J

    move-result-wide v6

    .line 168
    :cond_51
    const-wide/16 v8, -0x1

    cmp-long v3, v8, v4

    if-eqz v3, :cond_67

    const-wide/16 v8, -0x1

    cmp-long v3, v8, v6

    if-eqz v3, :cond_67

    move-object/from16 v3, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    .line 169
    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/SettingsUtils;->insertAccountTableRow(Lcom/android/server/enterprise/AccountMetaData;JJZLandroid/content/Context;)J

    move-result-wide v11

    .line 172
    :cond_67
    const-wide/16 v8, -0x1

    cmp-long v3, v8, v11

    if-nez v3, :cond_99

    .line 176
    if-eqz p1, :cond_97

    .line 177
    const-string v3, "SettingsUtils"

    const-string v8, "addorUpdateAccount : Starting redundant data cleanup... if any...!!!"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-wide/16 v8, -0x1

    cmp-long v3, v8, v13

    if-eqz v3, :cond_81

    .line 179
    move-object/from16 v0, p2

    invoke-static {v13, v14, v0}, Lcom/android/server/enterprise/SettingsUtils;->deleteAccountsTableRow(JLandroid/content/Context;)Z

    .line 182
    :cond_81
    const-wide/16 v8, -0x1

    cmp-long v3, v8, v4

    if-eqz v3, :cond_8c

    .line 183
    move-object/from16 v0, p2

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/SettingsUtils;->deleteHostAuthTableRow(JLandroid/content/Context;)Z

    .line 186
    :cond_8c
    const-wide/16 v8, -0x1

    cmp-long v3, v8, v6

    if-eqz v3, :cond_97

    .line 187
    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/SettingsUtils;->deleteHostAuthTableRow(JLandroid/content/Context;)Z
    :try_end_97
    .catchall {:try_start_b .. :try_end_97} :catchall_ca

    .line 208
    :cond_97
    :goto_97
    monitor-exit v16

    return-wide v11

    .line 191
    :cond_99
    if-eqz p1, :cond_97

    .line 192
    :try_start_9b
    new-instance v15, Landroid/content/Intent;

    const-string v3, "com.android.email.ENABLE_MESSAGECOMPOSE"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v15, intent:Landroid/content/Intent;
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-eqz v3, :cond_be

    .line 196
    new-instance v10, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v8, "com.android.exchange"

    invoke-direct {v10, v3, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v10, account:Landroid/accounts/Account;
    const-string v3, "com.android.email.provider"

    const/4 v8, 0x1

    invoke-static {v10, v3, v8}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 201
    .end local v10           #account:Landroid/accounts/Account;
    :cond_be
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:Z

    if-eqz v3, :cond_97

    .line 202
    move-object/from16 v0, p2

    invoke-static {v11, v12, v0}, Lcom/android/server/enterprise/SettingsUtils;->setAsDefaultAccount(JLandroid/content/Context;)Z
    :try_end_c9
    .catchall {:try_start_9b .. :try_end_c9} :catchall_ca

    goto :goto_97

    .line 149
    .end local v15           #intent:Landroid/content/Intent;
    :catchall_ca
    move-exception v3

    monitor-exit v16

    throw v3
.end method

.method static declared-synchronized deleteAccount(JLandroid/content/Context;)Z
    .registers 16
    .parameter "accountId"
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 556
    const-class v12, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v12

    const/4 v9, 0x0

    .line 557
    .local v9, rowCount:I
    const-wide/16 v0, 0x1

    cmp-long v0, v0, p0

    if-lez v0, :cond_15

    .line 558
    :try_start_c
    const-string v0, "SettingsUtils"

    const-string v1, "deleteAccount : accountId is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_68

    .line 604
    :goto_13
    monitor-exit v12

    return v11

    .line 561
    :cond_15
    const/4 v6, 0x0

    .line 562
    .local v6, ac:Lcom/android/server/enterprise/AccountMetaData;
    const/4 v8, 0x0

    .line 564
    .local v8, found:Z
    :try_start_17
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/SettingsUtils;->getAccount(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_68
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_63

    move-result-object v6

    .line 565
    if-eqz v6, :cond_59

    .line 570
    :cond_1d
    :try_start_1d
    iget-boolean v0, v6, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-eqz v0, :cond_2c

    .line 571
    iget-object v0, v6, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v1, "com.android.exchange"

    invoke-static {v0, v1, p2}, Lcom/android/server/enterprise/SettingsUtils;->getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/android/server/enterprise/SettingsUtils;->deleteAccountsTableRow(JLandroid/content/Context;)Z

    .line 574
    :cond_2c
    iget-wide v0, v6, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeyRecv:J

    invoke-static {v0, v1, p2}, Lcom/android/server/enterprise/SettingsUtils;->deleteHostAuthTableRow(JLandroid/content/Context;)Z

    .line 576
    iget-wide v0, v6, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeySend:J

    invoke-static {v0, v1, p2}, Lcom/android/server/enterprise/SettingsUtils;->deleteHostAuthTableRow(JLandroid/content/Context;)Z

    .line 579
    iget v0, v6, Lcom/android/server/enterprise/AccountMetaData;->mId:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2}, Lcom/android/server/enterprise/SettingsUtils;->deleteAccountTableRow(JLandroid/content/Context;)Z
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_68
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3c} :catch_5e

    move-result v8

    .line 584
    :goto_3d
    add-int/lit8 v9, v9, 0x1

    .line 586
    if-eqz v8, :cond_7f

    .line 587
    :try_start_41
    iget-boolean v0, v6, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-eqz v0, :cond_6b

    .line 588
    iget-object v0, v6, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    iget-object v1, v6, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iget-object v3, v6, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/SettingsUtils;->getAccountIdInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide p0

    .line 592
    :goto_53
    const-wide/16 v0, -0x1

    cmp-long v0, v0, p0

    if-nez v0, :cond_79

    .line 604
    :cond_59
    :goto_59
    if-lez v9, :cond_82

    move v0, v10

    :goto_5c
    move v11, v0

    goto :goto_13

    .line 581
    :catch_5e
    move-exception v7

    .line 582
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_41 .. :try_end_62} :catchall_68
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_62} :catch_63

    goto :goto_3d

    .line 601
    .end local v7           #e:Ljava/lang/Exception;
    :catch_63
    move-exception v7

    .line 602
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_64
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_59

    .line 556
    .end local v6           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #found:Z
    :catchall_68
    move-exception v0

    monitor-exit v12

    throw v0

    .line 590
    .restart local v6       #ac:Lcom/android/server/enterprise/AccountMetaData;
    .restart local v8       #found:Z
    :cond_6b
    const/4 v0, 0x0

    :try_start_6c
    iget-object v1, v6, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iget-object v3, v6, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/SettingsUtils;->getAccountIdInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide p0

    goto :goto_53

    .line 594
    :cond_79
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/SettingsUtils;->getAccount(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;
    :try_end_7c
    .catchall {:try_start_6c .. :try_end_7c} :catchall_68
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7c} :catch_63

    move-result-object v6

    .line 595
    if-eqz v6, :cond_59

    .line 599
    :cond_7f
    if-nez v8, :cond_1d

    goto :goto_59

    :cond_82
    move v0, v11

    .line 604
    goto :goto_5c
.end method

.method static deleteAccountTableRow(JLandroid/content/Context;)Z
    .registers 10
    .parameter "rowId"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 636
    const/4 v1, -0x1

    .line 637
    .local v1, rowCount:I
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p0

    if-lez v4, :cond_10

    .line 638
    const-string v4, "SettingsUtils"

    const-string v5, "deleteAccountTableRow : rowId is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_f
    :goto_f
    return v3

    .line 642
    :cond_10
    :try_start_10
    sget-object v4, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 643
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 644
    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAccountTableRow : deleted rowCount from Account : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_38} :catch_3c

    .line 648
    .end local v2           #uri:Landroid/net/Uri;
    :goto_38
    if-lez v1, :cond_f

    const/4 v3, 0x1

    goto :goto_f

    .line 645
    :catch_3c
    move-exception v0

    .line 646
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38
.end method

.method private static deleteAccountsTableRow(JLandroid/content/Context;)Z
    .registers 15
    .parameter "rowId"
    .parameter "context"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v9, 0x1

    cmp-long v6, v9, p0

    if-lez v6, :cond_13

    .line 298
    const-string v6, "SettingsUtils"

    const-string v7, "deleteAccountsTableRow : rowId is invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_12
    :goto_12
    return v5

    .line 302
    :cond_13
    :try_start_13
    const-string v1, "/data/system/accounts.db"

    .line 303
    .local v1, accountsDBPath:Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 305
    const-string v6, "accounts"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v6, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 306
    .local v4, rowCount:I
    if-lez v4, :cond_67

    .line 307
    :goto_37
    const-string v6, "SettingsUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteAccountsTableRow - deleted row Id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_13 .. :try_end_4f} :catchall_7f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4f} :catch_69

    .line 313
    if-eqz v0, :cond_54

    .line 314
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 316
    :cond_54
    cmp-long v6, p0, v7

    if-eqz v6, :cond_61

    .line 318
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v2

    .line 319
    .local v2, ams:Landroid/accounts/AccountManagerService;
    if-eqz v2, :cond_61

    .line 320
    .end local v1           #accountsDBPath:Ljava/lang/String;
    .end local v4           #rowCount:I
    :goto_5e
    invoke-virtual {v2, v11, v5}, Landroid/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;Z)V

    .line 323
    .end local v2           #ams:Landroid/accounts/AccountManagerService;
    :cond_61
    cmp-long v6, v7, p0

    if-eqz v6, :cond_12

    const/4 v5, 0x1

    goto :goto_12

    .restart local v1       #accountsDBPath:Ljava/lang/String;
    .restart local v4       #rowCount:I
    :cond_67
    move-wide p0, v7

    .line 306
    goto :goto_37

    .line 309
    .end local v1           #accountsDBPath:Ljava/lang/String;
    .end local v4           #rowCount:I
    :catch_69
    move-exception v3

    .line 310
    .local v3, e:Ljava/lang/Exception;
    const-wide/16 p0, -0x1

    .line 311
    :try_start_6c
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_7f

    .line 313
    if-eqz v0, :cond_74

    .line 314
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 316
    :cond_74
    cmp-long v6, p0, v7

    if-eqz v6, :cond_61

    .line 318
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v2

    .line 319
    .restart local v2       #ams:Landroid/accounts/AccountManagerService;
    if-eqz v2, :cond_61

    goto :goto_5e

    .line 313
    .end local v2           #ams:Landroid/accounts/AccountManagerService;
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_7f
    move-exception v6

    if-eqz v0, :cond_85

    .line 314
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 316
    :cond_85
    cmp-long v7, p0, v7

    if-eqz v7, :cond_92

    .line 318
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v2

    .line 319
    .restart local v2       #ams:Landroid/accounts/AccountManagerService;
    if-eqz v2, :cond_92

    .line 320
    invoke-virtual {v2, v11, v5}, Landroid/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;Z)V

    .line 313
    .end local v2           #ams:Landroid/accounts/AccountManagerService;
    :cond_92
    throw v6
.end method

.method private static deleteHostAuthTableRow(JLandroid/content/Context;)Z
    .registers 10
    .parameter "rowId"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 614
    const/4 v1, -0x1

    .line 615
    .local v1, rowCount:I
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p0

    if-lez v4, :cond_10

    .line 616
    const-string v4, "SettingsUtils"

    const-string v5, "deleteHostAuthTableRow : rowId is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_f
    :goto_f
    return v3

    .line 620
    :cond_10
    :try_start_10
    sget-object v4, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 621
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 622
    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteHostAuthTableRow : deleted rowCount from HostAuth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_38} :catch_3c

    .line 626
    .end local v2           #uri:Landroid/net/Uri;
    :goto_38
    if-lez v1, :cond_f

    const/4 v3, 0x1

    goto :goto_f

    .line 623
    :catch_3c
    move-exception v0

    .line 624
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38
.end method

.method private static getAccount(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;
    .registers 16
    .parameter "accountId"
    .parameter "context"

    .prologue
    .line 735
    const/4 v6, 0x0

    .line 736
    .local v6, ac:Lcom/android/server/enterprise/AccountMetaData;
    const/4 v8, 0x0

    .line 738
    .local v8, c:Landroid/database/Cursor;
    const/16 v0, 0x14

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "displayName"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "emailAddress"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "syncLookback"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "syncInterval"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "peakDays"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "peakStartMinute"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "peakEndMinute"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "peakSchedule"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "offPeakSchedule"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "roamingSchedule"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "hostAuthKeyRecv"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "hostAuthKeySend"

    aput-object v1, v2, v0

    const/16 v0, 0xd

    const-string v1, "flags"

    aput-object v1, v2, v0

    const/16 v0, 0xe

    const-string v1, "isDefault"

    aput-object v1, v2, v0

    const/16 v0, 0xf

    const-string v1, "compatibilityUuid"

    aput-object v1, v2, v0

    const/16 v0, 0x10

    const-string v1, "senderName"

    aput-object v1, v2, v0

    const/16 v0, 0x11

    const-string v1, "ringtoneUri"

    aput-object v1, v2, v0

    const/16 v0, 0x12

    const-string v1, "protocolVersion"

    aput-object v1, v2, v0

    const/16 v0, 0x13

    const-string v1, "signature"

    aput-object v1, v2, v0

    .line 747
    .local v2, ID_PROJECTION:[Ljava/lang/String;
    :try_start_76
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 748
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccount row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_212

    .line 750
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 751
    new-instance v7, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v7}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V
    :try_end_bf
    .catchall {:try_start_76 .. :try_end_bf} :catchall_220
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_bf} :catch_219

    .line 752
    .end local v6           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .local v7, ac:Lcom/android/server/enterprise/AccountMetaData;
    :try_start_bf
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mId:I

    .line 753
    const-string v0, "displayName"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 754
    const-string v0, "emailAddress"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 755
    const-string v0, "syncLookback"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    .line 756
    const-string v0, "syncInterval"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    .line 757
    const-string v0, "peakDays"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mPeakDays:I

    .line 758
    const-string v0, "peakStartMinute"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mPeakStartMinute:I

    .line 759
    const-string v0, "peakEndMinute"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mPeakEndMinute:I

    .line 760
    const-string v0, "peakSchedule"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mPeakSyncSchedule:I

    .line 761
    const-string v0, "offPeakSchedule"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 762
    const-string v0, "roamingSchedule"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mRoamingSyncSchedule:I

    .line 763
    const-string v0, "hostAuthKeyRecv"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeyRecv:J

    .line 764
    const-string v0, "hostAuthKeySend"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeySend:J

    .line 765
    const-string v0, "flags"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    .line 766
    const/4 v0, 0x2

    iget v1, v7, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_1e2

    const/4 v0, 0x1

    :goto_16f
    iput-boolean v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 767
    const/16 v0, 0x40

    iget v1, v7, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    and-int/lit8 v1, v1, 0x40

    if-ne v0, v1, :cond_1e4

    const/4 v0, 0x1

    :goto_17a
    iput-boolean v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 768
    const-string v0, "isDefault"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e6

    const/4 v0, 0x1

    :goto_18a
    iput-boolean v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:Z

    .line 769
    const-string v0, "compatibilityUuid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 770
    const-string v0, "senderName"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 771
    const-string v0, "ringtoneUri"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 772
    const-string v0, "protocolVersion"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 773
    const-string v0, "signature"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 776
    iget-wide v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeyRecv:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v7, v3, p2}, Lcom/android/server/enterprise/SettingsUtils;->loadHostAuth(JLcom/android/server/enterprise/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v11

    .line 777
    .local v11, ret1:Z
    iget-wide v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeySend:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v7, v3, p2}, Lcom/android/server/enterprise/SettingsUtils;->loadHostAuth(JLcom/android/server/enterprise/AccountMetaData;ZLandroid/content/Context;)Z
    :try_end_1d5
    .catchall {:try_start_bf .. :try_end_1d5} :catchall_227
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_1d5} :catch_22a

    move-result v12

    .line 779
    .local v12, ret2:Z
    if-eqz v11, :cond_1da

    if-nez v12, :cond_1e8

    .line 780
    :cond_1da
    const/4 v6, 0x0

    .line 797
    .end local v7           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .restart local v6       #ac:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v8, :cond_1e0

    .line 798
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1e0
    move-object v7, v6

    .line 800
    .end local v6           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .end local v11           #ret1:Z
    .end local v12           #ret2:Z
    .restart local v7       #ac:Lcom/android/server/enterprise/AccountMetaData;
    :goto_1e1
    return-object v7

    .line 766
    :cond_1e2
    const/4 v0, 0x0

    goto :goto_16f

    .line 767
    :cond_1e4
    const/4 v0, 0x0

    goto :goto_17a

    .line 768
    :cond_1e6
    const/4 v0, 0x0

    goto :goto_18a

    .line 784
    .restart local v11       #ret1:Z
    .restart local v12       #ret2:Z
    :cond_1e8
    const/4 v0, 0x0

    :try_start_1e9
    iput-boolean v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    .line 785
    iget-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const-string v1, "eas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_211

    .line 786
    iget-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/SettingsUtils;->getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 787
    .local v10, ret:[Ljava/lang/String;
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    .line 788
    const/4 v0, 0x0

    aget-object v0, v10, v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 789
    const/4 v0, 0x1

    aget-object v0, v10, v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 790
    const/4 v0, 0x1

    aget-object v0, v10, v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 791
    iget v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mOffPeakSyncSchedule:I

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I
    :try_end_211
    .catchall {:try_start_1e9 .. :try_end_211} :catchall_227
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_211} :catch_22a

    .end local v10           #ret:[Ljava/lang/String;
    :cond_211
    move-object v6, v7

    .line 797
    .end local v7           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .end local v11           #ret1:Z
    .end local v12           #ret2:Z
    .restart local v6       #ac:Lcom/android/server/enterprise/AccountMetaData;
    :cond_212
    if-eqz v8, :cond_217

    .line 798
    :goto_214
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_217
    move-object v7, v6

    .line 800
    .end local v6           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .restart local v7       #ac:Lcom/android/server/enterprise/AccountMetaData;
    goto :goto_1e1

    .line 794
    .end local v7           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .restart local v6       #ac:Lcom/android/server/enterprise/AccountMetaData;
    :catch_219
    move-exception v9

    .line 795
    .local v9, e:Ljava/lang/Exception;
    :goto_21a
    :try_start_21a
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_21d
    .catchall {:try_start_21a .. :try_end_21d} :catchall_220

    .line 797
    if-eqz v8, :cond_217

    goto :goto_214

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_220
    move-exception v0

    :goto_221
    if-eqz v8, :cond_226

    .line 798
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 797
    :cond_226
    throw v0

    .end local v6           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .restart local v7       #ac:Lcom/android/server/enterprise/AccountMetaData;
    :catchall_227
    move-exception v0

    move-object v6, v7

    .end local v7           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .restart local v6       #ac:Lcom/android/server/enterprise/AccountMetaData;
    goto :goto_221

    .line 794
    .end local v6           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .restart local v7       #ac:Lcom/android/server/enterprise/AccountMetaData;
    :catch_22a
    move-exception v9

    move-object v6, v7

    .end local v7           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .restart local v6       #ac:Lcom/android/server/enterprise/AccountMetaData;
    goto :goto_21a
.end method

.method static declared-synchronized getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;
    .registers 5
    .parameter "accountId"
    .parameter "context"

    .prologue
    .line 731
    const-class v0, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v0

    :try_start_3
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/SettingsUtils;->getAccount(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .registers 9
    .parameter "easDomain"
    .parameter "user"
    .parameter "serverAddress"
    .parameter "protocol"
    .parameter "isEas"
    .parameter "context"

    .prologue
    .line 660
    const-class v0, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v0

    :try_start_3
    invoke-static/range {p0 .. p5}, Lcom/android/server/enterprise/SettingsUtils;->getAccountIdInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getAccountIdInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .registers 20
    .parameter "easDomain"
    .parameter "user"
    .parameter "serverAddress"
    .parameter "protocol"
    .parameter "isEas"
    .parameter "context"

    .prologue
    .line 664
    const-wide/16 v6, -0x1

    .line 665
    .local v6, accountId:J
    const/4 v10, 0x0

    .line 667
    .local v10, c:Landroid/database/Cursor;
    invoke-static {p0}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 668
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 669
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 670
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 672
    if-eqz p1, :cond_19

    if-eqz p2, :cond_19

    if-nez p3, :cond_22

    .line 673
    :cond_19
    const-string v0, "SettingsUtils"

    const-string v1, "getAccountId : Error :: Invalid input parameters."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v8, v6

    .line 721
    .end local v6           #accountId:J
    .local v8, accountId:J
    :goto_21
    return-wide v8

    .line 676
    .end local v8           #accountId:J
    .restart local v6       #accountId:J
    :cond_22
    if-eqz p4, :cond_3d

    if-eqz p0, :cond_3d

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 679
    :cond_3d
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 683
    .local v2, ID_PROJECTION:[Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v0, 0x2

    aput-object p1, v4, v0

    .line 686
    .local v4, selectionArgs:[Ljava/lang/String;
    const-wide/16 v12, -0x1

    .line 688
    .local v12, hostAuthId:J
    :try_start_53
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "protocol=? AND address=? AND login=? "

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 689
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountId for HOST_AUTH row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 691
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_8b
    .catchall {:try_start_53 .. :try_end_8b} :catchall_fb
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_8b} :catch_f4

    move-result v0

    int-to-long v12, v0

    .line 696
    :cond_8d
    if-eqz v10, :cond_92

    .line 697
    :goto_8f
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 699
    :cond_92
    const/4 v10, 0x0

    .line 701
    const-wide/16 v0, -0x1

    cmp-long v0, v0, v12

    if-eqz v0, :cond_f1

    .line 702
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .end local v2           #ID_PROJECTION:[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 705
    .restart local v2       #ID_PROJECTION:[Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 709
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :try_start_b2
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "hostAuthKeyRecv=? OR hostAuthKeySend=? "

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 710
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountId for ACCOUNT row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 712
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_ea
    .catchall {:try_start_b2 .. :try_end_ea} :catchall_109
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_ea} :catch_102

    move-result v0

    int-to-long v6, v0

    .line 717
    :cond_ec
    if-eqz v10, :cond_f1

    .line 718
    :goto_ee
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_f1
    move-wide v8, v6

    .line 721
    .end local v6           #accountId:J
    .restart local v8       #accountId:J
    goto/16 :goto_21

    .line 693
    .end local v8           #accountId:J
    .restart local v6       #accountId:J
    :catch_f4
    move-exception v11

    .line 694
    .local v11, e:Ljava/lang/Exception;
    :try_start_f5
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_fb

    .line 696
    if-eqz v10, :cond_92

    goto :goto_8f

    .end local v11           #e:Ljava/lang/Exception;
    :catchall_fb
    move-exception v0

    if-eqz v10, :cond_101

    .line 697
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 696
    :cond_101
    throw v0

    .line 714
    :catch_102
    move-exception v11

    .line 715
    .restart local v11       #e:Ljava/lang/Exception;
    :try_start_103
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_109

    .line 717
    if-eqz v10, :cond_f1

    goto :goto_ee

    .end local v11           #e:Ljava/lang/Exception;
    :catchall_109
    move-exception v0

    if-eqz v10, :cond_10f

    .line 718
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 717
    :cond_10f
    throw v0
.end method

.method static declared-synchronized getAccountIds(Landroid/content/Context;)[J
    .registers 14
    .parameter "context"

    .prologue
    .line 804
    const-class v12, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v12

    const/4 v11, 0x0

    .line 805
    .local v11, ret:[J
    const/4 v6, 0x0

    .line 806
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_6
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_65

    .line 811
    .local v2, ID_PROJECTION:[Ljava/lang/String;
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 812
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 813
    .local v7, count:I
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accounts row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    if-lez v7, :cond_68

    .line 815
    const/4 v9, 0x0

    .line 816
    .local v9, i:I
    new-array v11, v7, [J

    move v10, v9

    .line 817
    .end local v9           #i:I
    .local v10, i:I
    :goto_3c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 818
    add-int/lit8 v9, v10, 0x1

    .end local v10           #i:I
    .restart local v9       #i:I
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    aput-wide v0, v11, v10
    :try_end_51
    .catchall {:try_start_d .. :try_end_51} :catchall_5e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_51} :catch_53

    move v10, v9

    .end local v9           #i:I
    .restart local v10       #i:I
    goto :goto_3c

    .line 821
    .end local v7           #count:I
    .end local v10           #i:I
    :catch_53
    move-exception v8

    .line 822
    .local v8, e:Ljava/lang/Exception;
    :try_start_54
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_5e

    .line 824
    if-eqz v6, :cond_5c

    .line 825
    :try_start_59
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_65

    .line 828
    .end local v8           #e:Ljava/lang/Exception;
    :cond_5c
    :goto_5c
    monitor-exit v12

    return-object v11

    .line 824
    :catchall_5e
    move-exception v0

    if-eqz v6, :cond_64

    .line 825
    :try_start_61
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 824
    :cond_64
    throw v0
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_65

    .line 804
    .end local v2           #ID_PROJECTION:[Ljava/lang/String;
    :catchall_65
    move-exception v0

    monitor-exit v12

    throw v0

    .line 824
    .restart local v2       #ID_PROJECTION:[Ljava/lang/String;
    .restart local v7       #count:I
    :cond_68
    if-eqz v6, :cond_5c

    .line 825
    :try_start_6a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_65

    goto :goto_5c
.end method

.method private static getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J
    .registers 14
    .parameter "emailId"
    .parameter "accountType"
    .parameter "context"

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 329
    .local v4, cr:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 330
    .local v6, rowId:J
    invoke-static {p0}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 331
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 333
    if-eqz p0, :cond_aa

    .line 335
    :try_start_e
    const-string v1, "/data/system/accounts.db"

    .line 336
    .local v1, accountsDBPath:Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 337
    const-wide/16 v2, -0x1

    .line 339
    .local v2, accountsDBRowId:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT rowid FROM accounts WHERE name = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_8d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\' AND type = \'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3c
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 341
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_63

    .line 342
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 343
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 344
    if-eqz v4, :cond_62

    .line 345
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 346
    :cond_62
    const/4 v4, 0x0

    .line 348
    :cond_63
    const-wide/16 v8, -0x1

    cmp-long v8, v8, v2

    if-eqz v8, :cond_82

    .line 349
    move-wide v6, v2

    .line 350
    const-string v8, "SettingsUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAccountsDBRowId - Found row Id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_e .. :try_end_82} :catchall_9e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_82} :catch_90

    .line 358
    :cond_82
    if-eqz v4, :cond_87

    .line 359
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_87
    if-eqz v0, :cond_8c

    .line 361
    .end local v1           #accountsDBPath:Ljava/lang/String;
    .end local v2           #accountsDBRowId:J
    :goto_89
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 367
    :cond_8c
    :goto_8c
    return-wide v6

    .line 339
    .restart local v1       #accountsDBPath:Ljava/lang/String;
    .restart local v2       #accountsDBRowId:J
    :cond_8d
    :try_start_8d
    const-string v8, ""
    :try_end_8f
    .catchall {:try_start_8d .. :try_end_8f} :catchall_9e
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_8f} :catch_90

    goto :goto_3c

    .line 354
    .end local v1           #accountsDBPath:Ljava/lang/String;
    .end local v2           #accountsDBRowId:J
    :catch_90
    move-exception v5

    .line 355
    .local v5, e:Ljava/lang/Exception;
    const-wide/16 v6, -0x1

    .line 356
    :try_start_93
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_9e

    .line 358
    if-eqz v4, :cond_9b

    .line 359
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_9b
    if-eqz v0, :cond_8c

    goto :goto_89

    .line 358
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_9e
    move-exception v8

    if-eqz v4, :cond_a4

    .line 359
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_a4
    if-eqz v0, :cond_a9

    .line 361
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 358
    :cond_a9
    throw v8

    .line 365
    :cond_aa
    const-string v8, "SettingsUtils"

    const-string v9, "getAccountsDBRowId : Error :: Invalid input parameters."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c
.end method

.method static declared-synchronized getCBAAlias(JLandroid/content/Context;)Ljava/lang/String;
    .registers 13
    .parameter "accountId"
    .parameter "context"

    .prologue
    .line 907
    const-class v9, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v9

    const/4 v6, 0x0

    .line 908
    .local v6, alias:Ljava/lang/String;
    const/4 v7, 0x0

    .line 910
    .local v7, c:Landroid/database/Cursor;
    const/4 v0, 0x2

    :try_start_6
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "cbaCertificateAlias"

    aput-object v1, v2, v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_71

    .line 914
    .local v2, ID_PROJECTION:[Ljava/lang/String;
    :try_start_12
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 915
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccount row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_60

    .line 917
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 918
    const-string v0, "cbaCertificateAlias"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5f
    .catchall {:try_start_12 .. :try_end_5f} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_5f} :catch_67

    move-result-object v6

    .line 923
    :cond_60
    if-eqz v7, :cond_65

    .line 924
    :try_start_62
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_71

    .line 926
    :cond_65
    :goto_65
    monitor-exit v9

    return-object v6

    .line 920
    :catch_67
    move-exception v8

    .line 921
    .local v8, e:Ljava/lang/Exception;
    :try_start_68
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_74

    .line 923
    if-eqz v7, :cond_65

    .line 924
    :try_start_6d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_65

    .line 907
    .end local v2           #ID_PROJECTION:[Ljava/lang/String;
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_71
    move-exception v0

    monitor-exit v9

    throw v0

    .line 923
    .restart local v2       #ID_PROJECTION:[Ljava/lang/String;
    :catchall_74
    move-exception v0

    if-eqz v7, :cond_7a

    .line 924
    :try_start_77
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 923
    :cond_7a
    throw v0
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_71
.end method

.method private static getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .parameter "login"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 882
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v4

    aput-object v2, v0, v3

    .line 885
    .local v0, easDomainAndUser:[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 886
    if-eqz p0, :cond_3a

    .line 887
    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 888
    const-string v2, "\\"

    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 889
    .local v1, sp:[Ljava/lang/String;
    if-eqz v1, :cond_3a

    array-length v2, v1

    if-lez v2, :cond_3a

    .line 890
    array-length v2, v1

    if-ne v5, v2, :cond_3b

    .line 891
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 892
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 902
    .end local v1           #sp:[Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-object v0

    .line 893
    .restart local v1       #sp:[Ljava/lang/String;
    :cond_3b
    array-length v2, v1

    if-ne v3, v2, :cond_3a

    .line 894
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_3a

    .line 899
    .end local v1           #sp:[Ljava/lang/String;
    :cond_47
    aput-object p0, v0, v3

    goto :goto_3a
.end method

.method private static getHostAuthFlags(IZZZLandroid/content/Context;)I
    .registers 9
    .parameter "existingFlag"
    .parameter "useSSL"
    .parameter "useTLS"
    .parameter "acceptAllCertificates"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 230
    move v0, p0

    .line 233
    .local v0, flag:I
    if-ne v3, p1, :cond_f

    .line 234
    or-int/lit8 v0, v0, 0x1

    .line 239
    :cond_6
    :goto_6
    if-ne v3, p2, :cond_16

    .line 240
    or-int/lit8 v0, v0, 0x2

    .line 245
    :cond_a
    :goto_a
    if-ne v3, p3, :cond_1e

    .line 246
    or-int/lit8 v0, v0, 0x8

    .line 250
    :cond_e
    :goto_e
    return v0

    .line 235
    :cond_f
    and-int/lit8 v1, v0, 0x1

    if-ne v3, v1, :cond_6

    .line 236
    xor-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 241
    :cond_16
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_a

    .line 242
    xor-int/lit8 v0, v0, 0x2

    goto :goto_a

    .line 247
    :cond_1e
    const/16 v1, 0x8

    and-int/lit8 v2, v0, 0x8

    if-ne v1, v2, :cond_e

    .line 248
    xor-int/lit8 v0, v0, 0x8

    goto :goto_e
.end method

.method static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 113
    if-nez p0, :cond_4

    .line 117
    :cond_3
    :goto_3
    return-object v1

    .line 113
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    .line 114
    :catch_10
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private static insertAccountTableRow(Lcom/android/server/enterprise/AccountMetaData;JJZLandroid/content/Context;)J
    .registers 23
    .parameter "accInfo"
    .parameter "hostAuthKeyRecv"
    .parameter "hostAuthKeySend"
    .parameter "isInsertOP"
    .parameter "context"

    .prologue
    .line 373
    const-wide/16 v7, -0x1

    .line 375
    .local v7, rowId:J
    const/4 v2, 0x0

    .line 376
    .local v2, compatibilityUuid:Ljava/lang/String;
    if-eqz p5, :cond_1b5

    const/4 v9, 0x0

    .line 377
    .local v9, settingsFlags:I
    :goto_6
    const/4 v5, 0x0

    .line 379
    .local v5, ringtoneUri:Ljava/lang/String;
    if-eqz p5, :cond_1bb

    .line 381
    const-string v5, "content://settings/system/notification_sound"

    .line 382
    const/4 v9, 0x1

    .line 383
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 390
    :goto_14
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    if-ne v12, v13, :cond_1c9

    .line 391
    or-int/lit8 v9, v9, 0x2

    .line 395
    :cond_1d
    :goto_1d
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    if-ne v12, v13, :cond_1d2

    .line 396
    or-int/lit8 v9, v9, 0x40

    .line 401
    :cond_26
    :goto_26
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 403
    .local v10, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    if-eqz v12, :cond_1dc

    .line 404
    const-string v12, "displayName"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :goto_3a
    const-string v12, "emailAddress"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v12, "syncLookback"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    const-string v12, "syncInterval"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v12, "peakDays"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mPeakDays:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    const-string v12, "peakStartMinute"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mPeakStartMinute:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    const-string v12, "peakEndMinute"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mPeakEndMinute:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 418
    const-string v12, "peakSchedule"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mPeakSyncSchedule:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    const-string v12, "offPeakSchedule"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mOffPeakSyncSchedule:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    const-string v12, "roamingSchedule"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mRoamingSyncSchedule:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const-string v12, "hostAuthKeyRecv"

    move-wide/from16 v0, p1

    long-to-int v13, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    const-string v12, "hostAuthKeySend"

    move-wide/from16 v0, p3

    long-to-int v13, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    const-string v12, "flags"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 425
    const-string v13, "isDefault"

    if-eqz p5, :cond_1e5

    const/4 v12, 0x0

    :goto_d1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 426
    const-string v12, "compatibilityUuid"

    invoke-virtual {v10, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    if-eqz v12, :cond_1f1

    .line 428
    const-string v12, "senderName"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :goto_ec
    const-string v12, "ringtoneUri"

    invoke-virtual {v10, v12, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    if-eqz v12, :cond_100

    .line 435
    const-string v12, "protocolVersion"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_100
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    if-eqz v12, :cond_1fa

    .line 438
    const-string v12, "signature"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :goto_10f
    if-eqz p5, :cond_20f

    .line 446
    :try_start_111
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 448
    .local v4, newRowUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_11e} :catch_208

    move-result-wide v7

    .line 451
    :try_start_11f
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_124} :catch_203

    .line 452
    .end local v10           #values:Landroid/content/ContentValues;
    .local v11, values:Landroid/content/ContentValues;
    :try_start_124
    const-string v12, "accountKey"

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v12, "sevenAccountKey"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    const-string v12, "timeLimit"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 455
    const-string v12, "sizeLimit"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    const-string v12, "typeMsg"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    const-string v12, "peakTime"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    const-string v12, "offPeakTime"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    const-string v12, "days"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v12, "peakStartTime"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v12, "peakEndTime"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v12, "whileRoaming"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 463
    const-string v12, "attachmentEnabled"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 464
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_19b} :catch_23c

    move-object v10, v11

    .line 472
    .end local v4           #newRowUri:Landroid/net/Uri;
    .end local v11           #values:Landroid/content/ContentValues;
    .restart local v10       #values:Landroid/content/ContentValues;
    :goto_19c
    :try_start_19c
    const-string v12, "SettingsUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insertAccountTableRow row Id : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1b4} :catch_208

    .line 478
    :goto_1b4
    return-wide v7

    .line 376
    .end local v5           #ringtoneUri:Ljava/lang/String;
    .end local v9           #settingsFlags:I
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_1b5
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    goto/16 :goto_6

    .line 386
    .restart local v5       #ringtoneUri:Ljava/lang/String;
    .restart local v9       #settingsFlags:I
    :cond_1bb
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 387
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    goto/16 :goto_14

    .line 392
    :cond_1c9
    const/4 v12, 0x2

    and-int/lit8 v13, v9, 0x2

    if-ne v12, v13, :cond_1d

    .line 393
    xor-int/lit8 v9, v9, 0x2

    goto/16 :goto_1d

    .line 397
    :cond_1d2
    const/16 v12, 0x40

    and-int/lit8 v13, v9, 0x40

    if-ne v12, v13, :cond_26

    .line 398
    xor-int/lit8 v9, v9, 0x40

    goto/16 :goto_26

    .line 407
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_1dc
    const-string v12, "displayName"

    const-string v13, " "

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 425
    :cond_1e5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:Z

    if-eqz v12, :cond_1ee

    const/4 v12, 0x1

    goto/16 :goto_d1

    :cond_1ee
    const/4 v12, 0x0

    goto/16 :goto_d1

    .line 431
    :cond_1f1
    const-string v12, "senderName"

    const-string v13, " "

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ec

    .line 441
    :cond_1fa
    const-string v12, "signature"

    const-string v13, " "

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10f

    .line 465
    .restart local v4       #newRowUri:Landroid/net/Uri;
    :catch_203
    move-exception v3

    .line 466
    .local v3, e:Ljava/lang/Exception;
    :goto_204
    :try_start_204
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_204 .. :try_end_207} :catch_208

    goto :goto_19c

    .line 473
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #newRowUri:Landroid/net/Uri;
    :catch_208
    move-exception v3

    .line 474
    .restart local v3       #e:Ljava/lang/Exception;
    const-wide/16 v7, -0x1

    .line 475
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b4

    .line 469
    .end local v3           #e:Ljava/lang/Exception;
    :cond_20f
    :try_start_20f
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/enterprise/AccountMetaData;->mId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v10, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 470
    .local v6, rowCount:I
    if-lez v6, :cond_23a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/enterprise/AccountMetaData;->mId:I
    :try_end_237
    .catch Ljava/lang/Exception; {:try_start_20f .. :try_end_237} :catch_208

    :goto_237
    int-to-long v7, v12

    goto/16 :goto_19c

    :cond_23a
    const/4 v12, -0x1

    goto :goto_237

    .line 465
    .end local v6           #rowCount:I
    .end local v10           #values:Landroid/content/ContentValues;
    .restart local v4       #newRowUri:Landroid/net/Uri;
    .restart local v11       #values:Landroid/content/ContentValues;
    :catch_23c
    move-exception v3

    move-object v10, v11

    .end local v11           #values:Landroid/content/ContentValues;
    .restart local v10       #values:Landroid/content/ContentValues;
    goto :goto_204
.end method

.method private static insertAccountsTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .registers 19
    .parameter "name"
    .parameter "type"
    .parameter "password"
    .parameter "isInsertOP"
    .parameter "context"

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v8, -0x1

    .line 258
    .local v8, rowId:J
    :try_start_3
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 259
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "name"

    invoke-virtual {v10, v11, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v11, "type"

    invoke-virtual {v10, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    if-eqz p2, :cond_1b

    .line 262
    const-string v11, "password"

    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_1b
    const-string v2, "/data/system/accounts.db"

    .line 266
    .local v2, accountsDBPath:Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v2, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 267
    if-eqz p3, :cond_5c

    .line 268
    const-string v11, "accounts"

    const-string v12, "doesn\'t exist at all"

    invoke-virtual {v1, v11, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 276
    :cond_2d
    :goto_2d
    const-string v11, "SettingsUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertAccountsTableRow row Id : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_a1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_45} :catch_89

    .line 281
    if-eqz v1, :cond_4a

    .line 282
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 284
    :cond_4a
    const-wide/16 v11, -0x1

    cmp-long v11, v8, v11

    if-eqz v11, :cond_5b

    .line 286
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v5

    .line 287
    .local v5, ams:Landroid/accounts/AccountManagerService;
    if-eqz v5, :cond_5b

    .line 288
    .end local v2           #accountsDBPath:Ljava/lang/String;
    .end local v10           #values:Landroid/content/ContentValues;
    :goto_56
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;Z)V

    .line 292
    .end local v5           #ams:Landroid/accounts/AccountManagerService;
    :cond_5b
    return-wide v8

    .line 270
    .restart local v2       #accountsDBPath:Ljava/lang/String;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_5c
    :try_start_5c
    move-object/from16 v0, p4

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v3

    .line 271
    .local v3, accountsDBRowId:J
    const-wide/16 v11, -0x1

    cmp-long v11, v11, v3

    if-eqz v11, :cond_2d

    .line 272
    const-string v11, "accounts"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v10, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_5c .. :try_end_81} :catchall_a1
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_81} :catch_89

    move-result v7

    .line 273
    .local v7, rowCount:I
    if-lez v7, :cond_86

    move-wide v8, v3

    :goto_85
    goto :goto_2d

    :cond_86
    const-wide/16 v8, -0x1

    goto :goto_85

    .line 277
    .end local v2           #accountsDBPath:Ljava/lang/String;
    .end local v3           #accountsDBRowId:J
    .end local v7           #rowCount:I
    .end local v10           #values:Landroid/content/ContentValues;
    :catch_89
    move-exception v6

    .line 278
    .local v6, e:Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    .line 279
    :try_start_8c
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_a1

    .line 281
    if-eqz v1, :cond_94

    .line 282
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 284
    :cond_94
    const-wide/16 v11, -0x1

    cmp-long v11, v8, v11

    if-eqz v11, :cond_5b

    .line 286
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v5

    .line 287
    .restart local v5       #ams:Landroid/accounts/AccountManagerService;
    if-eqz v5, :cond_5b

    goto :goto_56

    .line 281
    .end local v5           #ams:Landroid/accounts/AccountManagerService;
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_a1
    move-exception v11

    if-eqz v1, :cond_a7

    .line 282
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 284
    :cond_a7
    const-wide/16 v12, -0x1

    cmp-long v12, v8, v12

    if-eqz v12, :cond_b8

    .line 286
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v5

    .line 287
    .restart local v5       #ams:Landroid/accounts/AccountManagerService;
    if-eqz v5, :cond_b8

    .line 288
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;Z)V

    .line 281
    .end local v5           #ams:Landroid/accounts/AccountManagerService;
    :cond_b8
    throw v11
.end method

.method private static insertHostAuthTableRow(Lcom/android/server/enterprise/AccountMetaData;ZZLandroid/content/Context;)J
    .registers 19
    .parameter "accInfo"
    .parameter "isInsertOP"
    .parameter "isHostAuthRecv"
    .parameter "context"

    .prologue
    .line 482
    const-wide/16 v8, -0x1

    .line 483
    .local v8, rowId:J
    const/4 v4, 0x0

    .line 484
    .local v4, flags:I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 487
    .local v10, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_cb

    .line 488
    if-eqz p1, :cond_c7

    const/4 v11, 0x4

    :goto_d
    iget-boolean v12, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:Z

    iget-boolean v13, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:Z

    iget-boolean v14, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    move-object/from16 v0, p3

    invoke-static {v11, v12, v13, v14, v0}, Lcom/android/server/enterprise/SettingsUtils;->getHostAuthFlags(IZZZLandroid/content/Context;)I

    move-result v4

    .line 496
    :goto_19
    const-string v12, "protocol"

    if-eqz p2, :cond_df

    iget-object v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    :goto_1f
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v12, "address"

    if-eqz p2, :cond_e3

    iget-object v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    :goto_28
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v12, "port"

    iget-boolean v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-eqz v11, :cond_e7

    const/4 v11, 0x0

    :goto_32
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    const-string v11, "flags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    iget-boolean v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-eqz v11, :cond_f5

    .line 502
    iget-object v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v11, :cond_f1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\\"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 507
    .local v5, login:Ljava/lang/String;
    :goto_65
    const-string v11, "login"

    invoke-virtual {v10, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    if-eqz p2, :cond_77

    iget-object v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    if-eqz v11, :cond_77

    .line 509
    const-string v11, "password"

    iget-object v12, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_77
    if-nez p2, :cond_84

    iget-object v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    if-eqz v11, :cond_84

    .line 512
    const-string v11, "password"

    iget-object v12, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_84
    if-eqz p2, :cond_91

    .line 515
    iget-object v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    if-eqz v11, :cond_fe

    .line 516
    const-string v11, "domain"

    iget-object v12, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_91
    :goto_91
    if-nez p2, :cond_9e

    .line 523
    iget-object v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    if-eqz v11, :cond_106

    .line 524
    const-string v11, "domain"

    iget-object v12, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_9e
    :goto_9e
    if-eqz p1, :cond_10e

    .line 533
    :try_start_a0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 534
    .local v6, newRowUri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 540
    .end local v6           #newRowUri:Landroid/net/Uri;
    :goto_ae
    const-string v11, "SettingsUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertHostAuthTableRow row Id : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_c6} :catch_13b

    .line 546
    :goto_c6
    return-wide v8

    .line 488
    .end local v5           #login:Ljava/lang/String;
    :cond_c7
    iget v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerFlags:I

    goto/16 :goto_d

    .line 492
    :cond_cb
    if-eqz p1, :cond_dc

    const/4 v11, 0x4

    :goto_ce
    iget-boolean v12, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:Z

    iget-boolean v13, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:Z

    iget-boolean v14, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    move-object/from16 v0, p3

    invoke-static {v11, v12, v13, v14, v0}, Lcom/android/server/enterprise/SettingsUtils;->getHostAuthFlags(IZZZLandroid/content/Context;)I

    move-result v4

    goto/16 :goto_19

    :cond_dc
    iget v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerFlags:I

    goto :goto_ce

    .line 496
    :cond_df
    iget-object v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    goto/16 :goto_1f

    .line 497
    :cond_e3
    iget-object v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    goto/16 :goto_28

    .line 498
    :cond_e7
    if-eqz p2, :cond_ed

    iget v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    goto/16 :goto_32

    :cond_ed
    iget v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    goto/16 :goto_32

    .line 502
    :cond_f1
    iget-object v5, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto/16 :goto_65

    .line 505
    :cond_f5
    if-eqz p2, :cond_fb

    iget-object v5, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .restart local v5       #login:Ljava/lang/String;
    :goto_f9
    goto/16 :goto_65

    .end local v5           #login:Ljava/lang/String;
    :cond_fb
    iget-object v5, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    goto :goto_f9

    .line 519
    .restart local v5       #login:Ljava/lang/String;
    :cond_fe
    const-string v11, "domain"

    const-string v12, " "

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_91

    .line 527
    :cond_106
    const-string v11, "domain"

    const-string v12, " "

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9e

    .line 536
    :cond_10e
    if-eqz p2, :cond_135

    :try_start_110
    iget-wide v2, p0, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeyRecv:J

    .line 537
    .local v2, existingHostAuthRowId:J
    :goto_112
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v10, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 538
    .local v7, rowCount:I
    if-lez v7, :cond_138

    move-wide v8, v2

    :goto_133
    goto/16 :goto_ae

    .line 536
    .end local v2           #existingHostAuthRowId:J
    .end local v7           #rowCount:I
    :cond_135
    iget-wide v2, p0, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeySend:J
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_137} :catch_13b

    goto :goto_112

    .line 538
    .restart local v2       #existingHostAuthRowId:J
    .restart local v7       #rowCount:I
    :cond_138
    const-wide/16 v8, -0x1

    goto :goto_133

    .line 541
    .end local v2           #existingHostAuthRowId:J
    .end local v7           #rowCount:I
    :catch_13b
    move-exception v1

    .line 542
    .local v1, e:Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    .line 543
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c6
.end method

.method private static isExistingAccount(JLandroid/content/Context;)Z
    .registers 13
    .parameter "accountId"
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 45
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 49
    .local v2, ID_PROJECTION:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 51
    .local v6, c:Landroid/database/Cursor;
    :try_start_9
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 52
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccount row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_47
    .catchall {:try_start_9 .. :try_end_47} :catchall_5c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_47} :catch_51

    move-result v0

    if-lez v0, :cond_63

    .line 59
    if-eqz v6, :cond_4f

    .line 60
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4f
    move v0, v8

    .line 62
    :goto_50
    return v0

    .line 56
    :catch_51
    move-exception v7

    .line 57
    .local v7, e:Ljava/lang/Exception;
    :try_start_52
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5c

    .line 59
    if-eqz v6, :cond_5a

    .line 60
    .end local v7           #e:Ljava/lang/Exception;
    :goto_57
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5a
    move v0, v9

    .line 62
    goto :goto_50

    .line 59
    :catchall_5c
    move-exception v0

    if-eqz v6, :cond_62

    .line 60
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_62
    throw v0

    :cond_63
    if-eqz v6, :cond_5a

    goto :goto_57
.end method

.method static isValidEmailAddress(Ljava/lang/String;)Z
    .registers 10
    .parameter "emailAddress"

    .prologue
    .line 212
    const/4 v3, 0x0

    .line 213
    .local v3, isValid:Z
    invoke-static {p0}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 214
    if-eqz p0, :cond_34

    .line 216
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 217
    .local v6, len:I
    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 218
    .local v1, firstAt:I
    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 219
    .local v4, lastAt:I
    const/16 v7, 0x2e

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 220
    .local v2, firstDot:I
    const/16 v7, 0x2e

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_37

    move-result v5

    .line 221
    .local v5, lastDot:I
    if-lez v1, :cond_35

    if-ne v1, v4, :cond_35

    add-int/lit8 v7, v4, 0x1

    if-ge v7, v2, :cond_35

    if-gt v2, v5, :cond_35

    add-int/lit8 v7, v6, -0x1

    if-ge v5, v7, :cond_35

    const/4 v3, 0x1

    .line 226
    .end local v1           #firstAt:I
    .end local v2           #firstDot:I
    .end local v4           #lastAt:I
    .end local v5           #lastDot:I
    .end local v6           #len:I
    :cond_34
    :goto_34
    return v3

    .line 221
    .restart local v1       #firstAt:I
    .restart local v2       #firstDot:I
    .restart local v4       #lastAt:I
    .restart local v5       #lastDot:I
    .restart local v6       #len:I
    :cond_35
    const/4 v3, 0x0

    goto :goto_34

    .line 222
    .end local v1           #firstAt:I
    .end local v2           #firstDot:I
    .end local v4           #lastAt:I
    .end local v5           #lastDot:I
    .end local v6           #len:I
    :catch_37
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method private static loadHostAuth(JLcom/android/server/enterprise/AccountMetaData;ZLandroid/content/Context;)Z
    .registers 14
    .parameter "id"
    .parameter "acc"
    .parameter "isReceive"
    .parameter "context"

    .prologue
    .line 832
    const/4 v8, 0x0

    .line 833
    .local v8, ret:Z
    const/4 v6, 0x0

    .line 835
    .local v6, c:Landroid/database/Cursor;
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "port"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "flags"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "login"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "password"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "domain"

    aput-object v1, v2, v0

    .line 840
    .local v2, ID_PROJECTION:[Ljava/lang/String;
    :try_start_2e
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 841
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadHostAuth row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_e8

    .line 843
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 844
    if-eqz p3, :cond_f4

    .line 845
    const-string v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 846
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 847
    const-string v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    .line 848
    const-string v0, "flags"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerFlags:I

    .line 849
    const/4 v0, 0x1

    iget v1, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_ee

    const/4 v0, 0x1

    :goto_ac
    iput-boolean v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:Z

    .line 850
    const/4 v0, 0x2

    iget v1, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_f0

    const/4 v0, 0x1

    :goto_b6
    iput-boolean v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:Z

    .line 851
    const/16 v0, 0x8

    iget v1, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_f2

    const/4 v0, 0x1

    :goto_c1
    iput-boolean v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 852
    const-string v0, "login"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 853
    const-string v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 854
    const-string v0, "domain"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;
    :try_end_e7
    .catchall {:try_start_2e .. :try_end_e7} :catchall_176
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_e7} :catch_168

    .line 868
    :goto_e7
    const/4 v8, 0x1

    .line 875
    :cond_e8
    if-eqz v6, :cond_ed

    .line 876
    :goto_ea
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 878
    :cond_ed
    return v8

    .line 849
    :cond_ee
    const/4 v0, 0x0

    goto :goto_ac

    .line 850
    :cond_f0
    const/4 v0, 0x0

    goto :goto_b6

    .line 851
    :cond_f2
    const/4 v0, 0x0

    goto :goto_c1

    .line 857
    :cond_f4
    :try_start_f4
    const-string v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 858
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 859
    const-string v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    .line 860
    const-string v0, "flags"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerFlags:I

    .line 861
    const/4 v0, 0x1

    iget v1, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_170

    const/4 v0, 0x1

    :goto_12c
    iput-boolean v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 862
    const/4 v0, 0x2

    iget v1, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_172

    const/4 v0, 0x1

    :goto_136
    iput-boolean v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 863
    const/16 v0, 0x8

    iget v1, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_174

    const/4 v0, 0x1

    :goto_141
    iput-boolean v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 864
    const-string v0, "login"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 865
    const-string v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 866
    const-string v0, "domain"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;
    :try_end_167
    .catchall {:try_start_f4 .. :try_end_167} :catchall_176
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_167} :catch_168

    goto :goto_e7

    .line 871
    :catch_168
    move-exception v7

    .line 872
    .local v7, e:Ljava/lang/Exception;
    :try_start_169
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16c
    .catchall {:try_start_169 .. :try_end_16c} :catchall_176

    .line 875
    if-eqz v6, :cond_ed

    goto/16 :goto_ea

    .line 861
    .end local v7           #e:Ljava/lang/Exception;
    :cond_170
    const/4 v0, 0x0

    goto :goto_12c

    .line 862
    :cond_172
    const/4 v0, 0x0

    goto :goto_136

    .line 863
    :cond_174
    const/4 v0, 0x0

    goto :goto_141

    .line 875
    :catchall_176
    move-exception v0

    if-eqz v6, :cond_17c

    .line 876
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 875
    :cond_17c
    throw v0
.end method

.method static declared-synchronized sendAccountsChangedBroadcast(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    .line 97
    const-class v5, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v5

    :try_start_3
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 98
    .local v2, LOGIN_ACCOUNTS_CHANGED_ACTION:Ljava/lang/String;
    const/high16 v1, 0x1000

    .line 99
    .local v1, FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT:I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_36
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_28} :catch_31

    .line 108
    .end local v0           #ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;
    .end local v1           #FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT:I
    .end local v2           #LOGIN_ACCOUNTS_CHANGED_ACTION:Ljava/lang/String;
    :goto_28
    :try_start_28
    const-string v4, "SettingsUtils"

    const-string v6, "sendAccountsChangedBroadcast()"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_36

    .line 109
    monitor-exit v5

    return-void

    .line 105
    :catch_31
    move-exception v3

    .line 106
    .local v3, e:Ljava/lang/Exception;
    :try_start_32
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_28

    .line 97
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_36
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static declared-synchronized setAsDefaultAccount(JLandroid/content/Context;)Z
    .registers 16
    .parameter "accountId"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 66
    const-class v8, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v8

    const/4 v2, 0x0

    .line 67
    .local v2, success:Z
    const-wide/16 v9, 0x1

    cmp-long v9, v9, p0

    if-lez v9, :cond_16

    .line 68
    :try_start_c
    const-string v6, "SettingsUtils"

    const-string v7, "setAsDefaultAccount : accountId is invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_ac

    move v3, v2

    .line 92
    .end local v2           #success:Z
    .local v3, success:I
    :goto_14
    monitor-exit v8

    return v3

    .line 72
    .end local v3           #success:I
    .restart local v2       #success:Z
    :cond_16
    :try_start_16
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/SettingsUtils;->isExistingAccount(JLandroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_25

    .line 73
    const-string v6, "SettingsUtils"

    const-string v7, "setAsDefaultAccount : No Such Account"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 74
    .restart local v3       #success:I
    goto :goto_14

    .line 77
    .end local v3           #success:I
    :cond_25
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 78
    .local v4, values:Landroid/content/ContentValues;
    const-string v9, "isDefault"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_ac

    .line 81
    :try_start_34
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v4, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, count:I
    const-string v9, "SettingsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setAsDefaultAccount : row count for resetting the default column : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V
    :try_end_5d
    .catchall {:try_start_34 .. :try_end_5d} :catchall_ac
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_5d} :catch_a6

    .line 84
    .end local v4           #values:Landroid/content/ContentValues;
    .local v5, values:Landroid/content/ContentValues;
    :try_start_5d
    const-string v9, "isDefault"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v5, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 86
    const-string v9, "SettingsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setAsDefaultAccount : row count for setting the default column : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_5d .. :try_end_9d} :catchall_ac
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_9d} :catch_af

    .line 87
    if-lez v0, :cond_a4

    move v2, v6

    :goto_a0
    move-object v4, v5

    .end local v0           #count:I
    .end local v5           #values:Landroid/content/ContentValues;
    .restart local v4       #values:Landroid/content/ContentValues;
    :goto_a1
    move v3, v2

    .line 92
    .restart local v3       #success:I
    goto/16 :goto_14

    .end local v3           #success:I
    .end local v4           #values:Landroid/content/ContentValues;
    .restart local v0       #count:I
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_a4
    move v2, v7

    .line 87
    goto :goto_a0

    .line 88
    .end local v0           #count:I
    .end local v5           #values:Landroid/content/ContentValues;
    .restart local v4       #values:Landroid/content/ContentValues;
    :catch_a6
    move-exception v1

    .line 89
    .local v1, e:Ljava/lang/Exception;
    :goto_a7
    const/4 v2, 0x0

    .line 90
    :try_start_a8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_ac

    goto :goto_a1

    .line 66
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #values:Landroid/content/ContentValues;
    :catchall_ac
    move-exception v6

    monitor-exit v8

    throw v6

    .line 88
    .restart local v0       #count:I
    .restart local v5       #values:Landroid/content/ContentValues;
    :catch_af
    move-exception v1

    move-object v4, v5

    .end local v5           #values:Landroid/content/ContentValues;
    .restart local v4       #values:Landroid/content/ContentValues;
    goto :goto_a7
.end method
