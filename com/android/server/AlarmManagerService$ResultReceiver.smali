.class Lcom/android/server/AlarmManagerService$ResultReceiver;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 907
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 17
    .parameter "pi"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "resultExtras"

    .prologue
    .line 910
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 911
    :try_start_7
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #calls: Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-static {v3, p1}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    .line 912
    .local v0, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-eqz v0, :cond_48

    .line 913
    iget v3, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 914
    iget v3, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-gtz v3, :cond_48

    .line 915
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 916
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    sub-long/2addr v7, v9

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    .line 918
    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 919
    .local v1, fc:Landroid/content/Intent$FilterComparison;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 920
    .local v2, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    if-nez v2, :cond_42

    .line 921
    new-instance v2, Lcom/android/server/AlarmManagerService$FilterStats;

    .end local v2           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/AlarmManagerService$FilterStats;-><init>(Lcom/android/server/AlarmManagerService$1;)V

    .line 922
    .restart local v2       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    :cond_42
    iget v3, v2, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 927
    .end local v1           #fc:Landroid/content/Intent$FilterComparison;
    .end local v2           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_48
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$1410(Lcom/android/server/AlarmManagerService;)I

    .line 928
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)I

    move-result v3

    if-nez v3, :cond_5e

    .line 929
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 931
    :cond_5e
    monitor-exit v4

    .line 932
    return-void

    .line 931
    .end local v0           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catchall_60
    move-exception v3

    monitor-exit v4
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_60

    throw v3
.end method
