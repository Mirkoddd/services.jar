.class Lcom/android/server/BackupManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 1280
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1281
    .local v0, action:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1282
    .local v5, replacing:Z
    const/4 v1, 0x0

    .line 1283
    .local v1, added:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1284
    .local v2, extras:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 1285
    .local v3, pkgList:[Ljava/lang/String;
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    const-string v7, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 1288
    :cond_24
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 1289
    .local v6, uri:Landroid/net/Uri;
    if-nez v6, :cond_2b

    .line 1332
    .end local v1           #added:Z
    .end local v6           #uri:Landroid/net/Uri;
    :cond_2a
    :goto_2a
    return-void

    .line 1292
    .restart local v1       #added:Z
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_2b
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 1293
    .local v4, pkgName:Ljava/lang/String;
    if-eqz v4, :cond_36

    .line 1294
    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/String;

    .end local v3           #pkgList:[Ljava/lang/String;
    aput-object v4, v3, v8

    .line 1296
    .restart local v3       #pkgList:[Ljava/lang/String;
    :cond_36
    const-string v7, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 1299
    const/4 v5, 0x1

    move v1, v5

    .line 1312
    .end local v1           #added:Z
    .end local v4           #pkgName:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_40
    :goto_40
    if-eqz v3, :cond_2a

    array-length v7, v3

    if-eqz v7, :cond_2a

    .line 1315
    if-eqz v1, :cond_8b

    .line 1316
    iget-object v7, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v7, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1317
    if-eqz v5, :cond_85

    .line 1318
    :try_start_4e
    iget-object v7, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v7, v3}, Lcom/android/server/BackupManagerService;->updatePackageParticipantsLocked([Ljava/lang/String;)V

    .line 1322
    :goto_53
    monitor-exit v8

    goto :goto_2a

    :catchall_55
    move-exception v7

    monitor-exit v8
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_55

    throw v7

    .line 1301
    .restart local v1       #added:Z
    .restart local v4       #pkgName:Ljava/lang/String;
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_58
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1302
    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_40

    .line 1304
    .end local v4           #pkgName:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_65
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 1305
    const/4 v1, 0x1

    .line 1306
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_40

    .line 1307
    :cond_75
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 1308
    const/4 v1, 0x0

    .line 1309
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_40

    .line 1320
    .end local v1           #added:Z
    :cond_85
    :try_start_85
    iget-object v7, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v7, v3}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_55

    goto :goto_53

    .line 1324
    :cond_8b
    if-nez v5, :cond_2a

    .line 1327
    iget-object v7, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v7, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1328
    :try_start_92
    iget-object v7, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v7, v3}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;)V

    .line 1329
    monitor-exit v8

    goto :goto_2a

    :catchall_99
    move-exception v7

    monitor-exit v8
    :try_end_9b
    .catchall {:try_start_92 .. :try_end_9b} :catchall_99

    throw v7
.end method
