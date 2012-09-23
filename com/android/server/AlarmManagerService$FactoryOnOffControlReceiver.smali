.class Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FactoryOnOffControlReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 4
    .parameter

    .prologue
    .line 876
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 877
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 878
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.START_FACTORY_TEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 879
    const-string v1, "android.intent.action.STOP_FACTORY_TEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 880
    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 881
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 884
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 885
    :try_start_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, action:Ljava/lang/String;
    const-string v1, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FactoryOnOffControlReceiver action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const-string v1, "android.intent.action.START_FACTORY_TEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 888
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$2002(I)I

    .line 892
    :cond_2f
    :goto_2f
    const-string v1, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FactoryOnOffControlReceiver FACTORY_ON = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2000()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    monitor-exit v2

    .line 894
    return-void

    .line 889
    :cond_4d
    const-string v1, "android.intent.action.STOP_FACTORY_TEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 890
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$2002(I)I

    goto :goto_2f

    .line 893
    .end local v0           #action:Ljava/lang/String;
    :catchall_5a
    move-exception v1

    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_7 .. :try_end_5c} :catchall_5a

    throw v1
.end method
