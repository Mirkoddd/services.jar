.class Lcom/android/server/MountService$5;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .registers 2
    .parameter

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 1290
    :try_start_0
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disabling UMS after cable disconnect : enabling ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->getUmsProcessing()Z
    invoke-static {v11}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    iget-object v9, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->getUmsProcessing()Z
    invoke-static {v9}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 1293
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2d
    const/16 v9, 0xa

    if-ge v3, v9, :cond_39

    .line 1294
    iget-object v9, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->getUmsProcessing()Z
    invoke-static {v9}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)Z

    move-result v9

    if-nez v9, :cond_7d

    .line 1299
    .end local v3           #i:I
    :cond_39
    iget-object v9, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x0

    #calls: Lcom/android/server/MountService;->setUmsProcessing(Z)V
    invoke-static {v9, v10}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;Z)V

    .line 1301
    const/4 v6, 0x0

    .line 1302
    .local v6, paths:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1304
    .local v1, count:I
    iget-object v9, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Ljava/util/LinkedHashMap;

    move-result-object v10

    monitor-enter v10
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_a6

    .line 1305
    :try_start_48
    iget-object v9, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/LinkedHashMap;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Ljava/util/LinkedHashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1306
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v1

    .line 1307
    new-array v9, v1, [Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 1308
    monitor-exit v10
    :try_end_61
    .catchall {:try_start_48 .. :try_end_61} :catchall_a3

    .line 1310
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_62
    if-ge v3, v1, :cond_ae

    .line 1311
    :try_start_64
    aget-object v5, v6, v3

    .line 1312
    .local v5, path:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeMap:Ljava/util/LinkedHashMap;
    invoke-static {v9}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Ljava/util/LinkedHashMap;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageVolume;

    .line 1314
    .local v8, storage:Landroid/os/storage/StorageVolume;
    if-eqz v8, :cond_7a

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v9

    if-nez v9, :cond_af

    .line 1310
    :cond_7a
    :goto_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 1295
    .end local v1           #count:I
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #paths:[Ljava/lang/String;
    .end local v8           #storage:Landroid/os/storage/StorageVolume;
    :cond_7d
    const-wide/16 v9, 0x3e8

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 1296
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyShareAvailabilityChange -> waiting to finish ums connection..("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_a0} :catch_a6

    .line 1293
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 1308
    .end local v3           #i:I
    .restart local v1       #count:I
    .restart local v6       #paths:[Ljava/lang/String;
    :catchall_a3
    move-exception v9

    :try_start_a4
    monitor-exit v10
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    :try_start_a5
    throw v9
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a6} :catch_a6

    .line 1324
    .end local v1           #count:I
    .end local v6           #paths:[Ljava/lang/String;
    :catch_a6
    move-exception v2

    .line 1325
    .local v2, ex:Ljava/lang/Exception;
    const-string v9, "MountService"

    const-string v10, "Failed to mount media on UMS enabled-disconnect"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1327
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_ae
    return-void

    .line 1315
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5       #path:Ljava/lang/String;
    .restart local v6       #paths:[Ljava/lang/String;
    .restart local v8       #storage:Landroid/os/storage/StorageVolume;
    :cond_af
    :try_start_af
    iget-object v9, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v9, v5}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "shared"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7a

    .line 1317
    iget-object v9, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const-string v10, "ums"

    const/4 v11, 0x0

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v9, v5, v10, v11}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1318
    iget-object v9, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v9, v5}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v7

    .local v7, rc:I
    if-eqz v7, :cond_7a

    .line 1319
    const-string v9, "MountService"

    const-string v10, "Failed to remount {%s} on UMS enabled-disconnect (%d)"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v12, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_e5} :catch_a6

    goto :goto_7a
.end method
