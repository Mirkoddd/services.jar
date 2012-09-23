.class Lcom/android/server/MountService$2;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
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
    .line 778
    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 785
    :try_start_0
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v10}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v10

    const-string v11, "volume list"

    const/16 v12, 0x6e

    invoke-virtual {v10, v11, v12}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 787
    .local v8, vols:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_11
    if-ge v2, v3, :cond_75

    aget-object v9, v0, v2

    .line 788
    .local v9, volstr:Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 790
    .local v7, tok:[Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v4, v7, v10

    .line 791
    .local v4, path:Ljava/lang/String;
    const-string v6, "removed"

    .line 793
    .local v6, state:Ljava/lang/String;
    const/4 v10, 0x2

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 794
    .local v5, st:I
    if-nez v5, :cond_4d

    .line 795
    const-string v6, "removed"

    .line 808
    :goto_2b
    if-eqz v6, :cond_4a

    .line 809
    const-string v10, "MountService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updating valid state "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v4, v6}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 796
    :cond_4d
    const/4 v10, 0x1

    if-ne v5, v10, :cond_53

    .line 797
    const-string v6, "unmounted"

    goto :goto_2b

    .line 798
    :cond_53
    const/4 v10, 0x4

    if-ne v5, v10, :cond_7c

    .line 799
    const-string v6, "mounted"

    .line 800
    const-string v10, "MountService"

    const-string v11, "Media already mounted on daemon connection"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_60

    goto :goto_2b

    .line 813
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #st:I
    .end local v6           #state:Ljava/lang/String;
    .end local v7           #tok:[Ljava/lang/String;
    .end local v8           #vols:[Ljava/lang/String;
    .end local v9           #volstr:Ljava/lang/String;
    :catch_60
    move-exception v1

    .line 814
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "MountService"

    const-string v11, "Error processing initial volume state"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    iget-object v11, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "removed"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    .end local v1           #e:Ljava/lang/Exception;
    :cond_75
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v11, 0x1

    #setter for: Lcom/android/server/MountService;->mReady:Z
    invoke-static {v10, v11}, Lcom/android/server/MountService;->access$2102(Lcom/android/server/MountService;Z)Z

    .line 823
    return-void

    .line 801
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #st:I
    .restart local v6       #state:Ljava/lang/String;
    .restart local v7       #tok:[Ljava/lang/String;
    .restart local v8       #vols:[Ljava/lang/String;
    .restart local v9       #volstr:Ljava/lang/String;
    :cond_7c
    const/4 v10, 0x7

    if-ne v5, v10, :cond_89

    .line 802
    :try_start_7f
    const-string v6, "shared"

    .line 803
    const-string v10, "MountService"

    const-string v11, "Media shared on daemon connection"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 805
    :cond_89
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Unexpected state %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_9f} :catch_60
.end method
