.class public Lcom/android/server/enterprise/FirewallPolicy;
.super Landroid/app/enterprise/IFirewallPolicy$Stub;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;,
        Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;
    }
.end annotation


# static fields
.field private static final ACCEPT_ACTION:I = 0x1

.field private static final ADD:I = 0x1

.field private static final ALLOW:I = 0x1

.field private static final DELETE:I = 0x2

.field private static final DENY:I = 0x2

.field private static final DENY_ACTION:I = 0x2

.field private static final IN_DIRECTION:I = 0x2

.field private static final IPTABLES:Ljava/lang/String; = "/system/bin/iptables"

.field private static final LOCATION:I = 0x4

.field private static final OUT_DIRECTION:I = 0x1

.field private static final PROXY:I = 0x3

.field private static final PROXY_INDEX:I = 0x3

.field private static final REROUTE:I = 0x0

.field private static final REROUTE_DEST:I = 0x5

.field private static final REROUTE_DIRECTION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FirewallPolicy"

.field private static final TCP_NUMBER:I = 0x1

.field private static final UDP_NUMBER:I = 0x2

.field private static final iptablesChains:[Ljava/lang/String;

.field private static isIptChainsCreated:Z


# instance fields
.field private final BOOT_COMPLETED:Ljava/lang/String;

.field private mAllowQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectionReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mDenyQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mHostIndex:I

.field private mHostsList:[Ljava/lang/String;

.field private mIsOnline:Z

.field private mLooperThread:Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;

.field private mRerouteQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 43
    sput-boolean v2, Lcom/android/server/enterprise/FirewallPolicy;->isIptChainsCreated:Z

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "samsung_reroute"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "samsung_allow"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "samsung_deny"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "samsung_proxy"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    .line 82
    invoke-direct {p0}, Landroid/app/enterprise/IFirewallPolicy$Stub;-><init>()V

    .line 40
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 42
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->BOOT_COMPLETED:Ljava/lang/String;

    .line 44
    iput-boolean v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mIsOnline:Z

    .line 73
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "google.com"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "samsung.com"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "ebay.com"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "baidu.com"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "facebook.com"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "amazon.com"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "yahoo.com"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "android.com"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "ibm.com"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "cnn.com"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "time.com"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "nytimes.com"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mHostsList:[Ljava/lang/String;

    .line 78
    iput v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mHostIndex:I

    .line 83
    iput-object p1, p0, Lcom/android/server/enterprise/FirewallPolicy;->mContext:Landroid/content/Context;

    .line 85
    new-instance v2, Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;-><init>(Lcom/android/server/enterprise/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;

    .line 86
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;

    invoke-virtual {v2}, Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;->start()V

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    .line 91
    new-instance v2, Lcom/android/server/enterprise/FirewallPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/FirewallPolicy$1;-><init>(Lcom/android/server/enterprise/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, bootFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/FirewallPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    new-instance v2, Lcom/android/server/enterprise/FirewallPolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/FirewallPolicy$2;-><init>(Lcom/android/server/enterprise/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/FirewallPolicy;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    new-instance v2, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/FirewallPolicy;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->handleConnectivityAction()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/FirewallPolicy;Ljava/lang/Process;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/FirewallPolicy;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->checkIptablesCommandResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/FirewallPolicy;Ljava/lang/String;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/FirewallPolicy;->addPendingCommand(Ljava/lang/String;I)V

    return-void
.end method

.method private addPendingCommand(Ljava/lang/String;I)V
    .registers 5
    .parameter "command"
    .parameter "type"

    .prologue
    .line 1344
    packed-switch p2, :pswitch_data_40

    .line 1364
    :goto_3
    return-void

    .line 1346
    :pswitch_4
    const-string v0, "FirewallPolicy"

    const-string v1, "allow command enqueued"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-object v1, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    monitor-enter v1

    .line 1348
    :try_start_e
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1349
    monitor-exit v1

    goto :goto_3

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v0

    .line 1352
    :pswitch_18
    const-string v0, "FirewallPolicy"

    const-string v1, "deny command enqueued"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget-object v1, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    monitor-enter v1

    .line 1354
    :try_start_22
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1355
    monitor-exit v1

    goto :goto_3

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw v0

    .line 1358
    :pswitch_2c
    const-string v0, "FirewallPolicy"

    const-string v1, "reroute command enqueued"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    iget-object v1, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    monitor-enter v1

    .line 1360
    :try_start_36
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1361
    monitor-exit v1

    goto :goto_3

    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_3d

    throw v0

    .line 1344
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_4
        :pswitch_18
    .end packed-switch
.end method

.method private addRulesToDb(Ljava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z
    .registers 13
    .parameter
    .parameter "uid"
    .parameter "type"
    .parameter "enabled"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .local p5, duplicates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 1414
    const/4 v0, 0x0

    .line 1415
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1416
    .local v2, it:Ljava/util/Iterator;
    const/4 v1, -0x1

    .line 1417
    .local v1, index:I
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 1418
    add-int/lit8 v1, v1, 0x1

    .line 1419
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1420
    .local v3, rule:Ljava/lang/String;
    invoke-direct {p0, v3, p3}, Lcom/android/server/enterprise/FirewallPolicy;->checkDuplicateRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1421
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1424
    :cond_27
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #cv:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1425
    .restart local v0       #cv:Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    const-string v4, "rules"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    if-eqz p4, :cond_5d

    .line 1428
    const-string v4, "enabled"

    const-string v6, "true"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    :goto_43
    const-string v4, "type"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const-string v4, "timestamp"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1434
    iget-object v4, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "FirewallTable"

    invoke-virtual {v4, v6, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v5

    .line 1438
    .end local v3           #rule:Ljava/lang/String;
    :goto_5c
    return v4

    .line 1430
    .restart local v3       #rule:Ljava/lang/String;
    :cond_5d
    const-string v4, "enabled"

    const-string v6, "false"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 1438
    .end local v3           #rule:Ljava/lang/String;
    :cond_65
    const/4 v4, 0x1

    goto :goto_5c
.end method

.method private applyBasicRules(Ljava/util/List;II)Z
    .registers 19
    .parameter
    .parameter "action"
    .parameter "jumpAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 619
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v3

    .line 621
    .local v3, uid:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v2, jsonRulesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v6, duplicateIndexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 625
    .local v13, rule:Ljava/lang/String;
    :try_start_1e
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 626
    .local v11, jsonRule:Lorg/json/JSONObject;
    const-string v1, ";"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 627
    .local v12, parameters:[Ljava/lang/String;
    array-length v1, v12

    const/4 v14, 0x2

    if-eq v1, v14, :cond_2f

    .line 628
    const/4 v1, 0x0

    .line 683
    .end local v11           #jsonRule:Lorg/json/JSONObject;
    .end local v12           #parameters:[Ljava/lang/String;
    .end local v13           #rule:Ljava/lang/String;
    :goto_2e
    return v1

    .line 631
    .restart local v11       #jsonRule:Lorg/json/JSONObject;
    .restart local v12       #parameters:[Ljava/lang/String;
    .restart local v13       #rule:Ljava/lang/String;
    :cond_2f
    const/4 v1, 0x0

    aget-object v1, v12, v1

    const-string v14, ":"

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 632
    .local v7, args:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v7, v1

    if-nez v1, :cond_68

    .line 633
    const-string v1, "host"

    const-string v14, ""

    invoke-virtual {v11, v1, v14}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    :goto_44
    const/4 v1, 0x1

    aget-object v1, v7, v1

    if-nez v1, :cond_71

    .line 638
    const-string v1, "port"

    const-string v14, ""

    invoke-virtual {v11, v1, v14}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 642
    :goto_50
    const-string v1, "portLocation"

    const/4 v14, 0x1

    aget-object v14, v12, v14

    invoke-virtual {v11, v1, v14}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_5b} :catch_5c

    goto :goto_12

    .line 645
    .end local v7           #args:[Ljava/lang/String;
    .end local v11           #jsonRule:Lorg/json/JSONObject;
    .end local v12           #parameters:[Ljava/lang/String;
    :catch_5c
    move-exception v8

    .line 646
    .local v8, e:Lorg/json/JSONException;
    const-string v1, "FirewallPolicy"

    const-string v14, "JSONException..."

    invoke-static {v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_12

    .line 635
    .end local v8           #e:Lorg/json/JSONException;
    .restart local v7       #args:[Ljava/lang/String;
    .restart local v11       #jsonRule:Lorg/json/JSONObject;
    .restart local v12       #parameters:[Ljava/lang/String;
    :cond_68
    :try_start_68
    const-string v1, "host"

    const/4 v14, 0x0

    aget-object v14, v7, v14

    invoke-virtual {v11, v1, v14}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_44

    .line 640
    :cond_71
    const-string v1, "port"

    const/4 v14, 0x1

    aget-object v14, v7, v14

    invoke-virtual {v11, v1, v14}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_68 .. :try_end_79} :catch_5c

    goto :goto_50

    .line 650
    .end local v7           #args:[Ljava/lang/String;
    .end local v11           #jsonRule:Lorg/json/JSONObject;
    .end local v12           #parameters:[Ljava/lang/String;
    .end local v13           #rule:Ljava/lang/String;
    :cond_7a
    const-string v4, ""

    .line 651
    .local v4, jumpActionStr:Ljava/lang/String;
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_a2

    .line 652
    const-string v4, "allow"

    .line 658
    :goto_83
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v9

    .line 660
    .local v9, enabledUid:I
    if-ne v9, v3, :cond_ac

    .line 661
    const/4 v5, 0x1

    .line 665
    .local v5, enabled:Z
    :goto_8a
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_b1

    move-object v1, p0

    .line 666
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/FirewallPolicy;->addRulesToDb(Ljava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 667
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v6}, Lcom/android/server/enterprise/FirewallPolicy;->removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V

    .line 668
    if-eqz v5, :cond_ae

    .line 669
    invoke-direct/range {p0 .. p3}, Lcom/android/server/enterprise/FirewallPolicy;->applyBasicRulesToIptables(Ljava/util/List;II)Z

    move-result v1

    goto :goto_2e

    .line 653
    .end local v5           #enabled:Z
    .end local v9           #enabledUid:I
    :cond_a2
    const/4 v1, 0x2

    move/from16 v0, p3

    if-ne v0, v1, :cond_aa

    .line 654
    const-string v4, "deny"

    goto :goto_83

    .line 656
    :cond_aa
    const/4 v1, 0x0

    goto :goto_2e

    .line 663
    .restart local v9       #enabledUid:I
    :cond_ac
    const/4 v5, 0x0

    .restart local v5       #enabled:Z
    goto :goto_8a

    .line 671
    :cond_ae
    const/4 v1, 0x1

    goto/16 :goto_2e

    .line 674
    :cond_b1
    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_c7

    .line 675
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/enterprise/FirewallPolicy;->removeRulesFromDb(Ljava/util/ArrayList;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 676
    if-eqz v5, :cond_c4

    .line 677
    invoke-direct/range {p0 .. p3}, Lcom/android/server/enterprise/FirewallPolicy;->applyBasicRulesToIptables(Ljava/util/List;II)Z

    move-result v1

    goto/16 :goto_2e

    .line 679
    :cond_c4
    const/4 v1, 0x1

    goto/16 :goto_2e

    .line 683
    :cond_c7
    const/4 v1, 0x0

    goto/16 :goto_2e
.end method

.method private applyBasicRulesToIptables(Ljava/util/List;II)Z
    .registers 29
    .parameter
    .parameter "action"
    .parameter "jumpAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 811
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v21, "FirewallPolicy"

    const-string v22, "applyBasicRulesToIptables..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/16 v21, 0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    const/16 v21, 0x2

    move/from16 v0, p2

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    .line 813
    const/16 v21, 0x0

    .line 966
    :goto_19
    return v21

    .line 815
    :cond_1a
    sget-boolean v21, Lcom/android/server/enterprise/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v21, :cond_21

    .line 816
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/FirewallPolicy;->createIptablesChains()V

    .line 818
    :cond_21
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .local v6, commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .local v13, ipCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v7, hostCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 822
    .local v14, isHost:Z
    const/16 v20, -0x1

    .line 823
    .local v20, ruleType:I
    const/16 v21, 0x1

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_b2

    .line 824
    const/16 v20, 0x1

    .line 830
    :goto_3d
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    .local v15, outCommandBuilder:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 832
    .local v10, inCommandBuilder:Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4b
    :goto_4b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5f7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 833
    .local v19, rule:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 835
    const-string v21, ";"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 836
    .local v18, parameters:[Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v21, v18, v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 838
    .local v4, args:[Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v21, v4, v21

    const-string v22, "(.*[a-zA-Z]+.*)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c1

    .line 839
    const/4 v14, 0x1

    .line 843
    :goto_7b
    const/16 v21, 0x0

    aget-object v21, v4, v21

    const-string v22, "*"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_db

    const/16 v21, 0x1

    aget-object v21, v4, v21

    const-string v22, "*"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_db

    const/16 v21, 0x2

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_db

    .line 844
    const/16 v21, 0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_c3

    .line 845
    const-string v21, "/system/bin/iptables -P INPUT DROP"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    const-string v21, "/system/bin/iptables -P OUTPUT DROP"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 825
    .end local v4           #args:[Ljava/lang/String;
    .end local v10           #inCommandBuilder:Ljava/lang/StringBuilder;
    .end local v15           #outCommandBuilder:Ljava/lang/StringBuilder;
    .end local v18           #parameters:[Ljava/lang/String;
    .end local v19           #rule:Ljava/lang/String;
    :cond_b2
    const/16 v21, 0x2

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_bd

    .line 826
    const/16 v20, 0x2

    goto :goto_3d

    .line 828
    :cond_bd
    const/16 v21, 0x0

    goto/16 :goto_19

    .line 841
    .restart local v4       #args:[Ljava/lang/String;
    .restart local v10       #inCommandBuilder:Ljava/lang/StringBuilder;
    .restart local v15       #outCommandBuilder:Ljava/lang/StringBuilder;
    .restart local v18       #parameters:[Ljava/lang/String;
    .restart local v19       #rule:Ljava/lang/String;
    :cond_c1
    const/4 v14, 0x0

    goto :goto_7b

    .line 847
    :cond_c3
    const/16 v21, 0x2

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_4b

    .line 848
    const-string v21, "/system/bin/iptables -P INPUT ACCEPT"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    const-string v21, "/system/bin/iptables -P OUTPUT ACCEPT"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4b

    .line 854
    :cond_db
    const/16 v21, 0x0

    aget-object v21, v4, v21

    const-string v22, "*"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_ed

    .line 855
    const/16 v21, 0x0

    const-string v22, ""

    aput-object v22, v4, v21

    .line 857
    :cond_ed
    const/16 v21, 0x1

    aget-object v21, v4, v21

    const-string v22, "*"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_ff

    .line 858
    const/16 v21, 0x1

    const-string v22, ""

    aput-object v22, v4, v21

    .line 860
    :cond_ff
    const/16 v21, 0x1

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const-string v23, "-"

    const-string v24, ":"

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v4, v21

    .line 861
    const/16 v21, 0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_315

    .line 862
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15           #outCommandBuilder:Ljava/lang/StringBuilder;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/system/bin/iptables -A "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v22, v22, v20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-output"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 864
    .restart local v15       #outCommandBuilder:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #inCommandBuilder:Ljava/lang/StringBuilder;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/system/bin/iptables -A "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v22, v22, v20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-input"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 874
    .restart local v10       #inCommandBuilder:Ljava/lang/StringBuilder;
    :goto_15f
    const/16 v21, 0x0

    aget-object v21, v4, v21

    if-eqz v21, :cond_36b

    const/16 v21, 0x0

    aget-object v21, v4, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_36b

    .line 875
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v22, v4, v22

    const/16 v23, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->ipCommandPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v22, v4, v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->ipCommandPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    :goto_1bf
    const/16 v21, 0x1

    aget-object v21, v4, v21

    if-eqz v21, :cond_5b5

    const/16 v21, 0x1

    aget-object v21, v4, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_5b5

    .line 883
    const/16 v21, 0x1

    aget-object v21, v18, v21

    const-string v22, "*"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_37b

    .line 884
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x1

    const/16 v24, 0x1

    aget-object v24, v18, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 888
    .local v16, outCommandTcp:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x1

    const/16 v24, 0x1

    aget-object v24, v18, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 892
    .local v17, outCommandUdp:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x2

    const/16 v24, 0x1

    aget-object v24, v18, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 896
    .local v11, inCommandTcp:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x2

    const/16 v24, 0x1

    aget-object v24, v18, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 900
    .local v12, inCommandUdp:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    .end local v11           #inCommandTcp:Ljava/lang/String;
    .end local v12           #inCommandUdp:Ljava/lang/String;
    .end local v16           #outCommandTcp:Ljava/lang/String;
    .end local v17           #outCommandUdp:Ljava/lang/String;
    :goto_2ff
    if-eqz v14, :cond_5e3

    .line 950
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_305
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 951
    .local v5, command:Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_305

    .line 866
    .end local v5           #command:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_315
    const/16 v21, 0x2

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_367

    .line 867
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15           #outCommandBuilder:Ljava/lang/StringBuilder;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/system/bin/iptables -D "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v22, v22, v20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-output"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 869
    .restart local v15       #outCommandBuilder:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #inCommandBuilder:Ljava/lang/StringBuilder;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/system/bin/iptables -D "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v22, v22, v20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-input"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v10       #inCommandBuilder:Ljava/lang/StringBuilder;
    goto/16 :goto_15f

    .line 872
    :cond_367
    const/16 v21, 0x0

    goto/16 :goto_19

    .line 878
    :cond_36b
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1bf

    .line 905
    :cond_37b
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x1

    const-string v24, "remote"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 909
    .restart local v16       #outCommandTcp:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x1

    const-string v24, "remote"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 913
    .restart local v17       #outCommandUdp:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x2

    const-string v24, "remote"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 917
    .restart local v11       #inCommandTcp:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x2

    const-string v24, "remote"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 921
    .restart local v12       #inCommandUdp:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x1

    const-string v24, "local"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 929
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x1

    const-string v24, "local"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 932
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x2

    const-string v24, "local"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 935
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v4, v22

    const/16 v23, 0x2

    const-string v24, "local"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 938
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ff

    .line 944
    .end local v11           #inCommandTcp:Ljava/lang/String;
    .end local v12           #inCommandUdp:Ljava/lang/String;
    .end local v16           #outCommandTcp:Ljava/lang/String;
    .end local v17           #outCommandUdp:Ljava/lang/String;
    :cond_5b5
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->jumpCommandPart(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2ff

    .line 954
    :cond_5e3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_5e7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 955
    .restart local v5       #command:Ljava/lang/String;
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e7

    .line 960
    .end local v4           #args:[Ljava/lang/String;
    .end local v5           #command:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v18           #parameters:[Ljava/lang/String;
    .end local v19           #rule:Ljava/lang/String;
    :cond_5f7
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_602

    .line 961
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/FirewallPolicy;->runIptablesCommands(Ljava/util/List;)Ljava/util/List;

    .line 963
    :cond_602
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_613

    .line 964
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->runIptablesCommands(Ljava/util/List;ZI)Ljava/util/List;

    .line 966
    :cond_613
    const/16 v21, 0x1

    goto/16 :goto_19
.end method

.method private applyProxyRules(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 15
    .parameter "hostname"
    .parameter "port"
    .parameter "action"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 762
    const-string v0, "FirewallPolicy"

    const-string v3, "applyProxyRules..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v2

    .line 764
    .local v2, uid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v7

    .line 765
    .local v7, enabledUid:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 766
    .local v1, jsonRulesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v5, duplicateIndexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-ne v7, v2, :cond_30

    .line 769
    const/4 v4, 0x1

    .line 773
    .local v4, enabled:Z
    :goto_1e
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz p2, :cond_2e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_32

    :cond_2e
    move v0, v10

    .line 806
    :goto_2f
    return v0

    .line 771
    .end local v4           #enabled:Z
    :cond_30
    const/4 v4, 0x0

    .restart local v4       #enabled:Z
    goto :goto_1e

    .line 777
    :cond_32
    :try_start_32
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 778
    .local v8, jsonRule:Lorg/json/JSONObject;
    const-string v0, "host"

    invoke-virtual {v8, v0, p1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 779
    const-string v0, "port"

    invoke-virtual {v8, v0, p2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 780
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_44} :catch_56

    .line 785
    .end local v8           #jsonRule:Lorg/json/JSONObject;
    :goto_44
    if-ne p3, v9, :cond_66

    .line 786
    const-string v3, "proxy"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/FirewallPolicy;->addRulesToDb(Ljava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 787
    if-eqz v4, :cond_62

    .line 788
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/FirewallPolicy;->applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_2f

    .line 781
    :catch_56
    move-exception v6

    .line 782
    .local v6, e:Lorg/json/JSONException;
    const-string v0, "FirewallPolicy"

    const-string v3, "JSONException..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_44

    .end local v6           #e:Lorg/json/JSONException;
    :cond_62
    move v0, v9

    .line 790
    goto :goto_2f

    :cond_64
    move v0, v10

    .line 793
    goto :goto_2f

    .line 795
    :cond_66
    const/4 v0, 0x2

    if-ne p3, v0, :cond_7c

    .line 796
    const-string v0, "proxy"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/enterprise/FirewallPolicy;->removeRulesFromDb(Ljava/util/ArrayList;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 797
    if-eqz v4, :cond_78

    .line 798
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/FirewallPolicy;->applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_2f

    :cond_78
    move v0, v9

    .line 800
    goto :goto_2f

    :cond_7a
    move v0, v10

    .line 803
    goto :goto_2f

    :cond_7c
    move v0, v10

    .line 806
    goto :goto_2f
.end method

.method private applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .parameter "host"
    .parameter "port"
    .parameter "action"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1061
    const-string v4, "FirewallPolicy"

    const-string v5, "applyProxyRulesToIptables..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    sget-boolean v4, Lcom/android/server/enterprise/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v4, :cond_10

    .line 1063
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->createIptablesChains()V

    .line 1065
    :cond_10
    const-string v1, ""

    .line 1066
    .local v1, strAction:Ljava/lang/String;
    if-ne p3, v3, :cond_27

    .line 1067
    const-string v1, "-A"

    .line 1074
    :goto_16
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_26

    if-eqz p2, :cond_26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2d

    .line 1082
    :cond_26
    :goto_26
    return v2

    .line 1068
    :cond_27
    const/4 v4, 0x2

    if-ne p3, v4, :cond_26

    .line 1069
    const-string v1, "-D"

    goto :goto_16

    .line 1077
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/bin/iptables -t nat "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "OUTPUT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "--dport 80 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-j DNAT --to-destination "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1081
    .local v0, command:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move v2, v3

    .line 1082
    goto :goto_26
.end method

.method private applyRerouteRules(Ljava/util/List;I)Z
    .registers 18
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 687
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v3

    .line 688
    .local v3, uid:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .local v2, jsonRulesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v6, duplicateIndexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 691
    .local v14, rule:Ljava/lang/String;
    const-string v1, ";"

    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 692
    .local v7, args:[Ljava/lang/String;
    array-length v1, v7

    const/4 v4, 0x2

    if-ge v1, v4, :cond_2a

    .line 693
    const/4 v1, 0x0

    .line 757
    .end local v7           #args:[Ljava/lang/String;
    .end local v14           #rule:Ljava/lang/String;
    :goto_29
    return v1

    .line 695
    .restart local v7       #args:[Ljava/lang/String;
    .restart local v14       #rule:Ljava/lang/String;
    :cond_2a
    const/4 v1, 0x0

    aget-object v1, v7, v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 696
    .local v13, originArgs:[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v7, v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 698
    .local v8, destArgs:[Ljava/lang/String;
    :try_start_3c
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 699
    .local v12, jsonRule:Lorg/json/JSONObject;
    const/4 v1, 0x0

    aget-object v1, v13, v1

    if-nez v1, :cond_81

    .line 700
    const-string v1, "originHost"

    const-string v4, ""

    invoke-virtual {v12, v1, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 704
    :goto_4d
    const/4 v1, 0x1

    aget-object v1, v13, v1

    if-nez v1, :cond_8a

    .line 705
    const-string v1, "originPort"

    const-string v4, ""

    invoke-virtual {v12, v1, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 709
    :goto_59
    const/4 v1, 0x0

    aget-object v1, v8, v1

    if-nez v1, :cond_93

    .line 710
    const-string v1, "destHost"

    const-string v4, ""

    invoke-virtual {v12, v1, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 714
    :goto_65
    const/4 v1, 0x1

    aget-object v1, v8, v1

    if-nez v1, :cond_9c

    .line 715
    const-string v1, "destPort"

    const-string v4, ""

    invoke-virtual {v12, v1, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 719
    :goto_71
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_74} :catch_75

    goto :goto_12

    .line 720
    .end local v12           #jsonRule:Lorg/json/JSONObject;
    :catch_75
    move-exception v9

    .line 721
    .local v9, e:Lorg/json/JSONException;
    const-string v1, "FirewallPolicy"

    const-string v4, "JSONException..."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_12

    .line 702
    .end local v9           #e:Lorg/json/JSONException;
    .restart local v12       #jsonRule:Lorg/json/JSONObject;
    :cond_81
    :try_start_81
    const-string v1, "originHost"

    const/4 v4, 0x0

    aget-object v4, v13, v4

    invoke-virtual {v12, v1, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4d

    .line 707
    :cond_8a
    const-string v1, "originPort"

    const/4 v4, 0x1

    aget-object v4, v13, v4

    invoke-virtual {v12, v1, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_59

    .line 712
    :cond_93
    const-string v1, "destHost"

    const/4 v4, 0x0

    aget-object v4, v8, v4

    invoke-virtual {v12, v1, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_65

    .line 717
    :cond_9c
    const-string v1, "destPort"

    const/4 v4, 0x1

    aget-object v4, v8, v4

    invoke-virtual {v12, v1, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a4
    .catch Lorg/json/JSONException; {:try_start_81 .. :try_end_a4} :catch_75

    goto :goto_71

    .line 725
    .end local v7           #args:[Ljava/lang/String;
    .end local v8           #destArgs:[Ljava/lang/String;
    .end local v12           #jsonRule:Lorg/json/JSONObject;
    .end local v13           #originArgs:[Ljava/lang/String;
    .end local v14           #rule:Ljava/lang/String;
    :cond_a5
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v10

    .line 727
    .local v10, enabledUid:I
    if-ne v10, v3, :cond_c7

    .line 728
    const/4 v5, 0x1

    .line 732
    .local v5, enabled:Z
    :goto_ac
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_cf

    .line 733
    const-string v4, "reroute"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/FirewallPolicy;->addRulesToDb(Ljava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 734
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v6}, Lcom/android/server/enterprise/FirewallPolicy;->removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V

    .line 735
    if-eqz v5, :cond_c9

    .line 736
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/FirewallPolicy;->applyRerouteRulesToIptables(Ljava/util/List;I)Z

    move-result v1

    goto/16 :goto_29

    .line 730
    .end local v5           #enabled:Z
    :cond_c7
    const/4 v5, 0x0

    .restart local v5       #enabled:Z
    goto :goto_ac

    .line 738
    :cond_c9
    const/4 v1, 0x1

    goto/16 :goto_29

    .line 741
    :cond_cc
    const/4 v1, 0x0

    goto/16 :goto_29

    .line 743
    :cond_cf
    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_ea

    .line 744
    const-string v1, "reroute"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/enterprise/FirewallPolicy;->removeRulesFromDb(Ljava/util/ArrayList;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 745
    if-eqz v5, :cond_e4

    .line 746
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/FirewallPolicy;->applyRerouteRulesToIptables(Ljava/util/List;I)Z

    move-result v1

    goto/16 :goto_29

    .line 749
    :cond_e4
    const/4 v1, 0x1

    goto/16 :goto_29

    .line 753
    :cond_e7
    const/4 v1, 0x0

    goto/16 :goto_29

    .line 757
    :cond_ea
    const/4 v1, 0x0

    goto/16 :goto_29
.end method

.method private applyRerouteRulesToIptables(Ljava/util/List;I)Z
    .registers 25
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 970
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v18, "FirewallPolicy"

    const-string v19, "applyRerouteRulesToIptables..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const/4 v13, 0x0

    .line 973
    .local v13, isHost:Z
    sget-boolean v18, Lcom/android/server/enterprise/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v18, :cond_f

    .line 974
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/FirewallPolicy;->createIptablesChains()V

    .line 976
    :cond_f
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .local v7, commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 978
    .local v12, ipCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 979
    .local v9, hostCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v17, ""

    .line 980
    .local v17, strAction:Ljava/lang/String;
    const-string v15, ""

    .line 982
    .local v15, position:Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c4

    .line 983
    const-string v17, "-I"

    .line 984
    const-string v15, "1 "

    .line 991
    :goto_2e
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_32
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2d4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 992
    .local v16, rule:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 993
    const-string v18, ";"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 994
    .local v3, args:[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v3, v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 995
    .local v14, originArgs:[Ljava/lang/String;
    const/16 v18, 0x1

    aget-object v18, v3, v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 997
    .local v8, destArgs:[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v14, v18

    const-string v19, "(.*[a-zA-Z]+.*)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1d5

    .line 998
    const/4 v13, 0x1

    .line 1002
    :goto_6c
    const/16 v18, 0x0

    aget-object v18, v14, v18

    const-string v19, "*"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7e

    .line 1003
    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v14, v18

    .line 1006
    :cond_7e
    const/16 v18, 0x1

    aget-object v18, v14, v18

    const-string v19, "*"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d8

    .line 1007
    const/16 v18, 0x1

    const-string v19, ""

    aput-object v19, v14, v18

    .line 1011
    :goto_90
    const/16 v18, 0x1

    aget-object v18, v8, v18

    const-string v19, "*"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a2

    .line 1012
    const/16 v18, 0x1

    const-string v19, ""

    aput-object v19, v8, v18

    .line 1015
    :cond_a2
    const/16 v18, 0x1

    aget-object v18, v14, v18

    if-eqz v18, :cond_1ea

    const/16 v18, 0x1

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_1ea

    .line 1016
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/system/bin/iptables -t nat "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "OUTPUT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v14, v19

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->ipCommandPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v8, v19

    const/16 v20, 0x1

    aget-object v20, v8, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->rerouteJumpCommandPart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1021
    .local v5, commandTcp:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/system/bin/iptables -t nat "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "OUTPUT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v14, v19

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->ipCommandPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v8, v19

    const/16 v20, 0x1

    aget-object v20, v8, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->rerouteJumpCommandPart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1026
    .local v6, commandUdp:Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    :goto_1ae
    if-eqz v13, :cond_2c0

    .line 1041
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_1b4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_32

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1042
    .local v4, command:Ljava/lang/String;
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b4

    .line 985
    .end local v3           #args:[Ljava/lang/String;
    .end local v4           #command:Ljava/lang/String;
    .end local v5           #commandTcp:Ljava/lang/String;
    .end local v6           #commandUdp:Ljava/lang/String;
    .end local v8           #destArgs:[Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v14           #originArgs:[Ljava/lang/String;
    .end local v16           #rule:Ljava/lang/String;
    :cond_1c4
    const/16 v18, 0x2

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d2

    .line 986
    const-string v17, "-D"

    .line 987
    const-string v15, ""

    goto/16 :goto_2e

    .line 989
    :cond_1d2
    const/16 v18, 0x0

    .line 1057
    :goto_1d4
    return v18

    .line 1000
    .restart local v3       #args:[Ljava/lang/String;
    .restart local v8       #destArgs:[Ljava/lang/String;
    .restart local v14       #originArgs:[Ljava/lang/String;
    .restart local v16       #rule:Ljava/lang/String;
    :cond_1d5
    const/4 v13, 0x0

    goto/16 :goto_6c

    .line 1009
    :cond_1d8
    const/16 v18, 0x1

    const/16 v19, 0x1

    aget-object v19, v14, v19

    const-string v20, "-"

    const-string v21, ":"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v14, v18

    goto/16 :goto_90

    .line 1029
    :cond_1ea
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/system/bin/iptables -t nat "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "OUTPUT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v14, v19

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->ipCommandPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v8, v19

    const/16 v20, 0x1

    aget-object v20, v8, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->rerouteJumpCommandPart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1033
    .restart local v5       #commandTcp:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/system/bin/iptables -t nat "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "OUTPUT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->protocolCommandPart(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v14, v19

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->ipCommandPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v8, v19

    const/16 v20, 0x1

    aget-object v20, v8, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->rerouteJumpCommandPart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1037
    .restart local v6       #commandUdp:Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1ae

    .line 1045
    :cond_2c0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_2c4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_32

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1046
    .restart local v4       #command:Ljava/lang/String;
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c4

    .line 1051
    .end local v3           #args:[Ljava/lang/String;
    .end local v4           #command:Ljava/lang/String;
    .end local v5           #commandTcp:Ljava/lang/String;
    .end local v6           #commandUdp:Ljava/lang/String;
    .end local v8           #destArgs:[Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v14           #originArgs:[Ljava/lang/String;
    .end local v16           #rule:Ljava/lang/String;
    :cond_2d4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_2df

    .line 1052
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/FirewallPolicy;->runIptablesCommands(Ljava/util/List;)Ljava/util/List;

    .line 1054
    :cond_2df
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_2f2

    .line 1055
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->runIptablesCommands(Ljava/util/List;ZI)Ljava/util/List;

    .line 1057
    :cond_2f2
    const/16 v18, 0x1

    goto/16 :goto_1d4
.end method

.method private checkDuplicateRule(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "rule"
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1664
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1665
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-array v2, v3, [Ljava/lang/String;

    const-string v5, "rules"

    aput-object v5, v2, v4

    .line 1668
    .local v2, returnColumns:[Ljava/lang/String;
    const-string v5, "rules =? "

    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    const-string v5, "type =? "

    invoke-virtual {v1, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    iget-object v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "FirewallTable"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v1, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1672
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_2a

    .line 1673
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1677
    :goto_29
    return v3

    .line 1676
    :cond_2a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v3, v4

    .line 1677
    goto :goto_29
.end method

.method private checkEmptyList(Ljava/util/List;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 1829
    if-nez p1, :cond_4

    .line 1835
    :cond_3
    :goto_3
    return v0

    .line 1832
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1835
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private checkEntries(ILjava/lang/String;)Z
    .registers 23
    .parameter "type"
    .parameter "rule"

    .prologue
    .line 1839
    const-string v13, "([A-Za-z0-9][a-zA-Z0-9\\-\\.\\_\\~\\:\\/\\?\\#\\@\\!\\$\\&\\\'\\(\\)\\*\\+\\,\\;\\=\\[\\]]+)|(^\\*$)"

    .line 1840
    .local v13, regexDomain:Ljava/lang/String;
    const-string v14, "\\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"

    .line 1841
    .local v14, regexIp:Ljava/lang/String;
    const-string v15, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))|\\*"

    .line 1842
    .local v15, regexPort:Ljava/lang/String;
    const-string v16, "^(remote|local|\\*)$"

    .line 1844
    .local v16, regexPortLocation:Ljava/lang/String;
    packed-switch p1, :pswitch_data_f2

    .line 1859
    :goto_b
    :pswitch_b
    const/4 v10, 0x1

    .line 1862
    .local v10, parcialResult:Z
    const/4 v6, 0x0

    .local v6, hosts:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1863
    .local v12, ports:[Ljava/lang/String;
    const/16 v17, 0x3a

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 1865
    .local v8, index:I
    if-lez v8, :cond_96

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_96

    .line 1866
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1867
    .local v2, allHosts:Ljava/lang/String;
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_65

    .line 1868
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1869
    array-length v0, v6

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_65

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_65

    .line 1870
    const/4 v10, 0x0

    .line 1904
    .end local v2           #allHosts:Ljava/lang/String;
    .end local v6           #hosts:[Ljava/lang/String;
    .end local v8           #index:I
    .end local v10           #parcialResult:Z
    .end local v12           #ports:[Ljava/lang/String;
    :goto_52
    return v10

    .line 1846
    :pswitch_53
    move-object v13, v14

    .line 1847
    const-string v15, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))"

    .line 1848
    goto :goto_b

    .line 1850
    :pswitch_57
    const-string v13, "(.*[a-zA-Z]+.*)"

    .line 1851
    goto :goto_b

    .line 1853
    :pswitch_5a
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    goto :goto_52

    .line 1855
    :pswitch_63
    move-object v13, v14

    goto :goto_b

    .line 1873
    .restart local v2       #allHosts:Ljava/lang/String;
    .restart local v6       #hosts:[Ljava/lang/String;
    .restart local v8       #index:I
    .restart local v10       #parcialResult:Z
    .restart local v12       #ports:[Ljava/lang/String;
    :cond_65
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1874
    .local v3, allPorts:Ljava/lang/String;
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_98

    .line 1875
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1876
    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_98

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_98

    .line 1877
    const/4 v10, 0x0

    goto :goto_52

    .line 1881
    .end local v2           #allHosts:Ljava/lang/String;
    .end local v3           #allPorts:Ljava/lang/String;
    :cond_96
    const/4 v10, 0x0

    goto :goto_52

    .line 1884
    .restart local v2       #allHosts:Ljava/lang/String;
    .restart local v3       #allPorts:Ljava/lang/String;
    :cond_98
    if-eqz v6, :cond_ae

    .line 1885
    move-object v4, v6

    .local v4, arr$:[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_9d
    if-ge v7, v9, :cond_af

    aget-object v5, v4, v7

    .line 1886
    .local v5, host:Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    .line 1887
    if-nez v10, :cond_ab

    .line 1888
    invoke-virtual {v5, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    .line 1885
    :cond_ab
    add-int/lit8 v7, v7, 0x1

    goto :goto_9d

    .line 1892
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #host:Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    :cond_ae
    const/4 v10, 0x0

    .line 1894
    :cond_af
    if-eqz v12, :cond_c3

    .line 1895
    move-object v4, v12

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v9, v4

    .restart local v9       #len$:I
    const/4 v7, 0x0

    .restart local v7       #i$:I
    :goto_b4
    if-ge v7, v9, :cond_c4

    aget-object v11, v4, v7

    .line 1896
    .local v11, port:Ljava/lang/String;
    if-ltz v8, :cond_c0

    if-eqz v10, :cond_c0

    .line 1897
    invoke-virtual {v11, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    .line 1895
    :cond_c0
    add-int/lit8 v7, v7, 0x1

    goto :goto_b4

    .line 1901
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v11           #port:Ljava/lang/String;
    :cond_c3
    const/4 v10, 0x0

    .line 1903
    :cond_c4
    const-string v17, "TAG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " > "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_52

    .line 1844
    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_57
        :pswitch_b
        :pswitch_b
        :pswitch_53
        :pswitch_5a
        :pswitch_63
    .end packed-switch
.end method

.method private checkIptablesCommandResult(Ljava/lang/String;)Z
    .registers 4
    .parameter "result"

    .prologue
    const/4 v0, 0x1

    .line 1334
    if-nez p1, :cond_4

    .line 1340
    :cond_3
    :goto_3
    return v0

    .line 1337
    :cond_4
    const-string v1, "host/network"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "not found"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1338
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private checkOnline()V
    .registers 5

    .prologue
    .line 1682
    const-string v2, "FirewallPolicy"

    const-string v3, "checkOnline()..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1686
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1687
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1688
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mIsOnline:Z

    .line 1689
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->executePendingCommands()V

    .line 1694
    :goto_23
    return-void

    .line 1691
    :cond_24
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mIsOnline:Z

    goto :goto_23
.end method

.method private cleanChain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "chain"
    .parameter "table"

    .prologue
    .line 1247
    const-string v0, "FirewallPolicy"

    const-string v1, "cleanChain..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    if-nez p1, :cond_a

    .line 1256
    :goto_9
    return-void

    .line 1251
    :cond_a
    if-nez p2, :cond_23

    .line 1252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_9

    .line 1254
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_9
.end method

.method private cleanInDb(ILjava/lang/String;)Z
    .registers 6
    .parameter "uid"
    .parameter "type"

    .prologue
    .line 1505
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1506
    .local v0, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    iget-object v1, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "FirewallTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    .line 1510
    const/4 v1, 0x1

    return v1
.end method

.method private clearPendingCommands()V
    .registers 3

    .prologue
    .line 1398
    const-string v0, "FirewallPolicy"

    const-string v1, "constructor Before mPendingCommandsLock 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const-string v0, "FirewallPolicy"

    const-string v1, "constructor Before mPendingCommandsLock 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v1, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    monitor-enter v1

    .line 1401
    :try_start_11
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1402
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_2a

    .line 1403
    iget-object v1, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    monitor-enter v1

    .line 1404
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1405
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_2d

    .line 1406
    iget-object v1, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    monitor-enter v1

    .line 1407
    :try_start_23
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1408
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_30

    .line 1409
    return-void

    .line 1402
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0

    .line 1405
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0

    .line 1408
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private createIptablesChains()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1259
    const-string v1, "FirewallPolicy"

    const-string v2, "createIptablesChains..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/FirewallPolicy;->createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/FirewallPolicy;->createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/FirewallPolicy;->createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/FirewallPolicy;->createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    .local v0, commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A INPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A INPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->runIptablesCommands(Ljava/util/List;)Ljava/util/List;

    .line 1270
    sput-boolean v3, Lcom/android/server/enterprise/FirewallPolicy;->isIptChainsCreated:Z

    .line 1271
    return-void
.end method

.method private createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "chain"
    .parameter "table"

    .prologue
    .line 1274
    if-nez p2, :cond_30

    .line 1275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1279
    :goto_2f
    return-object v0

    .line 1278
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method

.method private disableProxyOnIptables(I)Z
    .registers 10
    .parameter "enabledUid"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1101
    const-string v4, "FirewallPolicy"

    const-string v5, "disableProxyOnIptables"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v3

    .line 1103
    .local v3, uid:I
    if-ne p1, v3, :cond_37

    .line 1104
    const-string v4, "proxy"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1105
    .local v2, proxyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_37

    .line 1106
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1107
    .local v0, arg:Ljava/lang/String;
    if-eqz v0, :cond_37

    .line 1108
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_37

    .line 1109
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1110
    .local v1, args:[Ljava/lang/String;
    aget-object v4, v1, v6

    aget-object v5, v1, v7

    const/4 v6, 0x2

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/enterprise/FirewallPolicy;->applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1116
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #args:[Ljava/lang/String;
    .end local v2           #proxyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_37
    return v7
.end method

.method private disableRulesOnIptables(I)Z
    .registers 8
    .parameter "enabledUid"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1086
    const-string v1, "FirewallPolicy"

    const-string v2, "disableRulesOnIptables"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    .line 1088
    .local v0, uid:I
    if-ne p1, v0, :cond_89

    .line 1089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-string v1, "OUTPUT"

    const-string v2, "nat"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    const-string v1, "/system/bin/iptables -P INPUT ACCEPT"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1095
    const-string v1, "/system/bin/iptables -P OUTPUT ACCEPT"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1097
    :cond_89
    return v4
.end method

.method private enforceFirewallPermission()I
    .registers 3

    .prologue
    .line 1743
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 1744
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private declared-synchronized executePendingCommands()V
    .registers 9

    .prologue
    .line 1367
    monitor-enter p0

    :try_start_1
    const-string v5, "FirewallPolicy"

    const-string v6, "execute pending commands"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1371
    .local v1, failedCommands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    monitor-enter v6
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_34

    .line 1372
    :try_start_10
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1373
    .local v3, tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1374
    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_37

    .line 1375
    :try_start_1d
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1376
    .local v0, command:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {p0, v0, v5, v6, v7}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_34

    goto :goto_21

    .line 1367
    .end local v0           #command:Ljava/lang/String;
    .end local v1           #failedCommands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_34
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1374
    .restart local v1       #failedCommands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_37
    move-exception v5

    :try_start_38
    monitor-exit v6
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw v5

    .line 1379
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3a
    iget-object v6, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    monitor-enter v6
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_34

    .line 1380
    :try_start_3d
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_61

    .line 1381
    .end local v3           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v4, tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_44
    iget-object v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1382
    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_93

    .line 1384
    :try_start_4a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1385
    .restart local v0       #command:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-direct {p0, v0, v5, v6, v7}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_60
    .catchall {:try_start_4a .. :try_end_60} :catchall_34

    goto :goto_4e

    .line 1382
    .end local v0           #command:Ljava/lang/String;
    .end local v4           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_61
    move-exception v5

    :goto_62
    :try_start_62
    monitor-exit v6
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    :try_start_63
    throw v5

    .line 1388
    .end local v3           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_64
    iget-object v6, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    monitor-enter v6
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_34

    .line 1389
    :try_start_67
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_8b

    .line 1390
    .end local v4           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_6e
    iget-object v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1391
    monitor-exit v6
    :try_end_74
    .catchall {:try_start_6e .. :try_end_74} :catchall_91

    .line 1392
    :try_start_74
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1393
    .restart local v0       #command:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, v0, v5, v6, v7}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_8a
    .catchall {:try_start_74 .. :try_end_8a} :catchall_34

    goto :goto_78

    .line 1391
    .end local v0           #command:Ljava/lang/String;
    .end local v3           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_8b
    move-exception v5

    move-object v3, v4

    .end local v4           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_8d
    :try_start_8d
    monitor-exit v6
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_91

    :try_start_8e
    throw v5
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_34

    .line 1395
    :cond_8f
    monitor-exit p0

    return-void

    .line 1391
    :catchall_91
    move-exception v5

    goto :goto_8d

    .line 1382
    .end local v3           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_93
    move-exception v5

    move-object v3, v4

    .end local v4           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_62
.end method

.method private getAllRules(I)Ljava/util/List;
    .registers 7
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1614
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1615
    .local v3, rules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1616
    .local v1, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "allow"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1617
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1618
    .local v2, rule:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1620
    .end local v2           #rule:Ljava/lang/String;
    :cond_24
    const-string v4, "deny"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1621
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1622
    .restart local v2       #rule:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1624
    .end local v2           #rule:Ljava/lang/String;
    :cond_3e
    const-string v4, "reroute"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1625
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1626
    .restart local v2       #rule:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 1628
    .end local v2           #rule:Ljava/lang/String;
    :cond_58
    return-object v1
.end method

.method private getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    .registers 13
    .parameter "processResult"

    .prologue
    .line 1697
    const/16 v8, 0x400

    new-array v5, v8, [B

    .line 1698
    .local v5, resultBuffer:[B
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1699
    .local v7, resultString:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1700
    .local v4, readLength:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1701
    .local v6, resultBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1703
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_12
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_44
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_69

    .line 1705
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :goto_20
    :try_start_20
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_3d

    .line 1706
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_66
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_29} :catch_2a

    goto :goto_20

    .line 1708
    .end local v3           #line:Ljava/lang/String;
    :catch_2a
    move-exception v0

    move-object v1, v2

    .line 1709
    .end local v2           #in:Ljava/io/BufferedReader;
    .local v0, e:Ljava/io/IOException;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_2c
    :try_start_2c
    const-string v8, "FirewallPolicy"

    const-string v9, "getCommandResult : "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_44

    .line 1712
    if-eqz v1, :cond_38

    .line 1713
    :try_start_35
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_54

    .line 1719
    .end local v0           #e:Ljava/io/IOException;
    :cond_38
    :goto_38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 1712
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_3d
    if-eqz v2, :cond_42

    .line 1713
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_5d

    :cond_42
    :goto_42
    move-object v1, v2

    .line 1718
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_38

    .line 1711
    .end local v3           #line:Ljava/lang/String;
    :catchall_44
    move-exception v8

    .line 1712
    :goto_45
    if-eqz v1, :cond_4a

    .line 1713
    :try_start_47
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 1711
    :cond_4a
    :goto_4a
    throw v8

    .line 1715
    :catch_4b
    move-exception v0

    .line 1716
    .restart local v0       #e:Ljava/io/IOException;
    const-string v9, "FirewallPolicy"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 1715
    :catch_54
    move-exception v0

    .line 1716
    const-string v8, "FirewallPolicy"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 1715
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :catch_5d
    move-exception v0

    .line 1716
    .restart local v0       #e:Ljava/io/IOException;
    const-string v8, "FirewallPolicy"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 1711
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #line:Ljava/lang/String;
    :catchall_66
    move-exception v8

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_45

    .line 1708
    :catch_69
    move-exception v0

    goto :goto_2c
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 1732
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1735
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEnabled(ILjava/lang/String;)Ljava/util/List;
    .registers 12
    .parameter "uid"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1632
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1633
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1634
    .local v3, listRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "rules"

    aput-object v7, v5, v6

    .line 1637
    .local v5, returnColumns:[Ljava/lang/String;
    const-string v6, "adminUid =? "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    const-string v6, "enabled =? "

    const-string v7, "true"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    const-string v6, "proxy"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 1640
    const-string v6, "type =? "

    invoke-virtual {v4, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    :goto_2f
    iget-object v6, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "FirewallTable"

    const-string v8, "ruleId"

    invoke-virtual {v6, v7, v5, v4, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1646
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1647
    .local v2, index:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 1648
    :goto_40
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_6e

    .line 1649
    const-string v6, "rules"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1651
    :try_start_4c
    new-instance v6, Lorg/json/JSONObject;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_58} :catch_62

    .line 1656
    :goto_58
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_40

    .line 1642
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #index:I
    :cond_5c
    const-string v6, "type !=? "

    invoke-virtual {v4, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 1652
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v2       #index:I
    :catch_62
    move-exception v1

    .line 1653
    .local v1, e:Lorg/json/JSONException;
    const-string v6, "FirewallPolicy"

    const-string v7, "JSONException..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_58

    .line 1659
    .end local v1           #e:Lorg/json/JSONException;
    :cond_6e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1660
    return-object v3
.end method

.method private getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .parameter "uid"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1464
    const-string v8, "FirewallPolicy"

    const-string v9, "getRulesFromDb.."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1466
    .local v2, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    .line 1467
    .local v7, returnColumns:[Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "rules"

    aput-object v9, v7, v8

    .line 1468
    const-string v8, "type =? "

    invoke-virtual {v2, v8, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    const-string v8, "adminUid =? "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    iget-object v8, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "FirewallTable"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v7, v2, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1472
    .local v0, cursor:Landroid/database/Cursor;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1473
    .local v6, resultset:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_118

    .line 1474
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1475
    :goto_35
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_115

    .line 1476
    const-string v8, "rules"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1478
    .local v5, jsonString:Ljava/lang/String;
    const-string v3, ""

    .line 1480
    .local v3, hostPort:Ljava/lang/String;
    :try_start_47
    const-string v8, "reroute"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 1481
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1482
    .local v4, json:Lorg/json/JSONObject;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "originHost"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "originPort"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "destHost"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "destPort"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_96
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_96} :catch_110

    move-result-object v3

    .line 1496
    .end local v4           #json:Lorg/json/JSONObject;
    :goto_97
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1497
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_35

    .line 1485
    :cond_9e
    :try_start_9e
    const-string v8, "allow"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ae

    const-string v8, "deny"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e7

    .line 1486
    :cond_ae
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1487
    .restart local v4       #json:Lorg/json/JSONObject;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "host"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "port"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "portLocation"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1489
    goto :goto_97

    .line 1490
    .end local v4           #json:Lorg/json/JSONObject;
    :cond_e7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1491
    .restart local v4       #json:Lorg/json/JSONObject;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "host"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "port"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_10e
    .catch Lorg/json/JSONException; {:try_start_9e .. :try_end_10e} :catch_110

    move-result-object v3

    goto :goto_97

    .line 1493
    .end local v4           #json:Lorg/json/JSONObject;
    :catch_110
    move-exception v1

    .line 1494
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_97

    .line 1499
    .end local v1           #e:Lorg/json/JSONException;
    .end local v3           #hostPort:Ljava/lang/String;
    .end local v5           #jsonString:Ljava/lang/String;
    :cond_115
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1501
    :cond_118
    return-object v6
.end method

.method private handleConnectivityAction()V
    .registers 3

    .prologue
    .line 1726
    const-string v0, "FirewallPolicy"

    const-string v1, "Entering handleConnectivityAction..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->checkOnline()V

    .line 1728
    return-void
.end method

.method private ipCommandPart(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .parameter "ipRange"
    .parameter "direction"

    .prologue
    .line 1120
    const/4 v1, 0x0

    .line 1121
    .local v1, isIpRange:Z
    const/4 v0, 0x0

    .line 1122
    .local v0, command:Ljava/lang/String;
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    .line 1123
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    .line 1125
    const/4 v1, 0x1

    .line 1132
    :goto_14
    packed-switch p2, :pswitch_data_c2

    :goto_17
    move-object v2, v0

    .line 1155
    :goto_18
    return-object v2

    .line 1127
    :cond_19
    const/4 v1, 0x0

    goto :goto_14

    .line 1130
    :cond_1b
    const-string v2, ""

    goto :goto_18

    .line 1134
    :pswitch_1e
    if-nez v1, :cond_3a

    .line 1135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-d "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 1137
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-m iprange --dst-range "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1139
    goto :goto_17

    .line 1141
    :pswitch_54
    if-nez v1, :cond_70

    .line 1142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 1144
    :cond_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-m iprange --src-range "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1146
    goto :goto_17

    .line 1148
    :pswitch_8a
    if-nez v1, :cond_a7

    .line 1149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-d "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 1151
    :cond_a7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-m iprange --dst-range "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 1132
    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_54
        :pswitch_8a
    .end packed-switch
.end method

.method private jumpCommandPart(I)Ljava/lang/String;
    .registers 3
    .parameter "action"

    .prologue
    .line 1221
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1222
    const-string v0, "-j ACCEPT"

    .line 1226
    :goto_5
    return-object v0

    .line 1223
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 1224
    const-string v0, "-j DROP"

    goto :goto_5

    .line 1226
    :cond_c
    const-string v0, ""

    goto :goto_5
.end method

.method private portCommandPart(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "portRange"
    .parameter "direction"

    .prologue
    .line 1159
    const-string v0, "remote"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/FirewallPolicy;->portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private portCommandPart(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "portRange"
    .parameter "direction"
    .parameter "portLocation"

    .prologue
    .line 1166
    const/4 v0, 0x0

    .line 1167
    .local v0, command:Ljava/lang/String;
    if-eqz p1, :cond_a1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a1

    .line 1168
    packed-switch p2, :pswitch_data_a6

    :goto_c
    move-object v1, v0

    .line 1195
    :goto_d
    return-object v1

    .line 1170
    :pswitch_e
    const-string v1, "local"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1171
    const-string v0, "--sport "

    .line 1172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1174
    :cond_30
    const-string v0, "--dport "

    .line 1175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1177
    goto :goto_c

    .line 1179
    :pswitch_4a
    const-string v1, "local"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 1180
    const-string v0, "--dport "

    .line 1181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1183
    :cond_6c
    const-string v0, "--sport "

    .line 1184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1186
    goto :goto_c

    .line 1188
    :pswitch_86
    const-string v0, "--dport "

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1193
    :cond_a1
    const-string v1, " "

    goto/16 :goto_d

    .line 1168
    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_e
        :pswitch_4a
        :pswitch_86
    .end packed-switch
.end method

.method private protocolCommandPart(I)Ljava/lang/String;
    .registers 6
    .parameter "protocol"

    .prologue
    const/4 v1, 0x0

    .line 1202
    const-string v0, "-p "

    .line 1203
    .local v0, command:Ljava/lang/String;
    if-lez p1, :cond_f

    .line 1204
    packed-switch p1, :pswitch_data_3a

    .line 1212
    const-string v2, "FirewallPolicy"

    const-string v3, "Invalid protocol"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_f
    :goto_f
    return-object v1

    .line 1206
    :pswitch_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tcp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1207
    goto :goto_f

    .line 1209
    :pswitch_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "udp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1210
    goto :goto_f

    .line 1204
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_25
    .end packed-switch
.end method

.method private reApplyRerouteRules()V
    .registers 4

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 392
    .local v0, olfRerouteUid:I
    const-string v2, "reroute"

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 393
    .local v1, rerouteRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->applyRerouteRulesToIptables(Ljava/util/List;I)Z

    .line 394
    return-void
.end method

.method private reapplyProxyRules()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 375
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v2

    .line 376
    .local v2, oldProxyUid:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_30

    .line 377
    const-string v4, "proxy"

    invoke-direct {p0, v2, v4}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 378
    .local v3, proxyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_30

    .line 379
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    .local v0, arg:Ljava/lang/String;
    if-eqz v0, :cond_30

    .line 381
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_30

    .line 382
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, args:[Ljava/lang/String;
    aget-object v4, v1, v5

    aget-object v5, v1, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/enterprise/FirewallPolicy;->applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 388
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #args:[Ljava/lang/String;
    .end local v3           #proxyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_30
    return-void
.end method

.method private removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1442
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, duplicates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1443
    .local v0, delta:I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1444
    .local v2, index:I
    sub-int v3, v2, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1445
    sub-int v3, v2, v0

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1446
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1449
    .end local v2           #index:I
    :cond_25
    return-void
.end method

.method private removeRulesFromDb(Ljava/util/ArrayList;ILjava/lang/String;)Z
    .registers 9
    .parameter
    .parameter "uid"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1452
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1453
    .local v0, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1454
    .local v2, rule:Lorg/json/JSONObject;
    const-string v3, "adminUid"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    const-string v3, "rules"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    const-string v3, "type"

    invoke-virtual {v0, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    iget-object v3, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "FirewallTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    .line 1458
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_9

    .line 1460
    .end local v2           #rule:Lorg/json/JSONObject;
    :cond_37
    const/4 v3, 0x1

    return v3
.end method

.method private rerouteJumpCommandPart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "host"
    .parameter "port"

    .prologue
    .line 1231
    if-eqz p1, :cond_42

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_42

    .line 1232
    if-eqz p2, :cond_2e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2e

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-j DNAT --to-destination "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1243
    :goto_2d
    return-object v0

    .line 1235
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-j DNAT --to-destination "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 1238
    :cond_42
    if-eqz p2, :cond_66

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_66

    .line 1239
    const-string v0, "-"

    const-string v1, ":"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-j REDIRECT --to-port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 1243
    :cond_66
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private rollbackEnabled()V
    .registers 3

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 605
    .local v0, oldUid:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 606
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/FirewallPolicy;->enableRules(ZI)Z

    .line 608
    :cond_b
    return-void
.end method

.method private rollbackProxyEnabled()V
    .registers 3

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v0

    .line 612
    .local v0, oldUid:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 613
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/FirewallPolicy;->enableProxy(ZI)Z

    .line 615
    :cond_b
    return-void
.end method

.method private runIptablesCommands(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1288
    .local p1, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->runIptablesCommands(Ljava/util/List;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private runIptablesCommands(Ljava/util/List;ZI)Ljava/util/List;
    .registers 8
    .parameter
    .parameter "isHostName"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1292
    .local p1, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    .local v2, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1294
    .local v0, command:Ljava/lang/String;
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1296
    .end local v0           #command:Ljava/lang/String;
    :cond_1d
    return-object v2
.end method

.method private runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "command"

    .prologue
    .line 1300
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runSingleIptablesCommand(Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 5
    .parameter "command"
    .parameter "isHostName"
    .parameter "type"

    .prologue
    .line 1304
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;
    .registers 15
    .parameter "command"
    .parameter "isHostName"
    .parameter "type"
    .parameter "pending"

    .prologue
    .line 1310
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1311
    .local v4, commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1312
    .local v3, commandArray:[Ljava/lang/String;
    const-string v8, ""

    .line 1313
    .local v8, result:Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_10
    if-ge v5, v6, :cond_1a

    aget-object v2, v0, v5

    .line 1314
    .local v2, commandArg:Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1313
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 1318
    .end local v2           #commandArg:Ljava/lang/String;
    :cond_1a
    if-eqz p2, :cond_20

    iget-boolean v9, p0, Lcom/android/server/enterprise/FirewallPolicy;->mIsOnline:Z

    if-eqz v9, :cond_3f

    .line 1319
    :cond_20
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 1320
    .local v7, msg:Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1321
    .local v1, bundle:Landroid/os/Bundle;
    const-string v9, "command"

    invoke-virtual {v1, v9, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    const-string v9, "type"

    invoke-virtual {v1, v9, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1323
    invoke-virtual {v7, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1324
    iget-object v9, p0, Lcom/android/server/enterprise/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;

    iget-object v9, v9, Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;

    invoke-virtual {v9, v7}, Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1330
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v7           #msg:Landroid/os/Message;
    :cond_3e
    :goto_3e
    return-object v8

    .line 1326
    :cond_3f
    if-nez p4, :cond_3e

    .line 1327
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/FirewallPolicy;->addPendingCommand(Ljava/lang/String;I)V

    goto :goto_3e
.end method

.method private setEnableOnDb(ZLjava/lang/String;I)Z
    .registers 24
    .parameter "status"
    .parameter "type"
    .parameter "uid"

    .prologue
    .line 1514
    const-string v17, "FirewallPolicy"

    const-string v18, "setEnableOnDb..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1516
    .local v5, cv:Landroid/content/ContentValues;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1517
    .local v10, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "adminUid =? "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    const-string v17, "proxy"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1519
    .local v9, isProxy:Z
    if-eqz v9, :cond_b6

    .line 1520
    const-string v17, "type =? "

    const-string v18, "proxy"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    :goto_35
    if-eqz p1, :cond_d2

    .line 1526
    const-string v17, "enabled"

    const-string v18, "true"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 1528
    .local v14, timestamp:J
    const-string v17, "timestamp"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "FirewallTable"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v16

    .line 1530
    .local v16, updated:I
    if-lez v16, :cond_cf

    .line 1532
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1533
    .local v6, helpCv:Landroid/content/ContentValues;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1534
    .local v7, helpMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "enabled"

    const-string v18, "false"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    const-string v17, "adminUid !=? "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    const-string v17, "enabled =? "

    const-string v18, "true"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    if-eqz v9, :cond_c3

    .line 1538
    const-string v17, "type =? "

    const-string v18, "proxy"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    :goto_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "FirewallTable"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    .line 1570
    .end local v6           #helpCv:Landroid/content/ContentValues;
    .end local v7           #helpMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14           #timestamp:J
    .end local v16           #updated:I
    :goto_b3
    const/16 v17, 0x1

    :goto_b5
    return v17

    .line 1522
    :cond_b6
    const-string v17, "type !=? "

    const-string v18, "proxy"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_35

    .line 1540
    .restart local v6       #helpCv:Landroid/content/ContentValues;
    .restart local v7       #helpMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14       #timestamp:J
    .restart local v16       #updated:I
    :cond_c3
    const-string v17, "type !=? "

    const-string v18, "proxy"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    .line 1544
    .end local v6           #helpCv:Landroid/content/ContentValues;
    .end local v7           #helpMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_cf
    const/16 v17, 0x0

    goto :goto_b5

    .line 1548
    .end local v14           #timestamp:J
    .end local v16           #updated:I
    :cond_d2
    const-string v17, "enabled"

    const-string v18, "false"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    const-string v17, "timestamp"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "FirewallTable"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v17

    if-lez v17, :cond_165

    .line 1552
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "adminUid"

    aput-object v18, v13, v17

    const/16 v17, 0x1

    const-string v18, "timestamp"

    aput-object v18, v13, v17

    .line 1555
    .local v13, returnColumns:[Ljava/lang/String;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1556
    .local v11, myMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "adminUid !=? "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "FirewallTable"

    const-string v19, "timestamp"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v13, v11, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1560
    .local v4, cursor:Landroid/database/Cursor;
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_160

    .line 1561
    const-string v17, "adminUid"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1562
    .local v8, index:I
    new-instance v12, Ljava/lang/Integer;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 1563
    .local v12, myUid:Ljava/lang/Integer;
    const/16 v17, 0x1

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->setEnableOnDb(ZLjava/lang/String;I)Z

    .line 1565
    .end local v8           #index:I
    .end local v12           #myUid:Ljava/lang/Integer;
    :cond_160
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b3

    .line 1567
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v11           #myMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13           #returnColumns:[Ljava/lang/String;
    :cond_165
    const/16 v17, 0x0

    goto/16 :goto_b5
.end method

.method private validateParameters(ILjava/util/List;)Z
    .registers 10
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1788
    const/4 v0, 0x1

    .line 1790
    .local v0, finalResult:Z
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1825
    :cond_8
    :goto_8
    return v4

    .line 1794
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1795
    .local v3, rule:Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 1798
    packed-switch p1, :pswitch_data_70

    goto :goto_8

    .line 1800
    :pswitch_1f
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1801
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1802
    .local v2, index:I
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/FirewallPolicy;->checkEntries(ILjava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 1803
    const/4 v5, 0x5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/FirewallPolicy;->checkEntries(ILjava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 1804
    goto :goto_d

    .line 1810
    .end local v2           #index:I
    :pswitch_43
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1811
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1812
    .restart local v2       #index:I
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/FirewallPolicy;->checkEntries(ILjava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 1813
    const/4 v5, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/FirewallPolicy;->checkEntries(ILjava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 1814
    goto :goto_d

    .line 1819
    .end local v2           #index:I
    :pswitch_67
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/FirewallPolicy;->checkEntries(ILjava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 1820
    goto :goto_d

    .end local v3           #rule:Ljava/lang/String;
    :cond_6d
    move v4, v0

    .line 1825
    goto :goto_8

    .line 1798
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_43
        :pswitch_43
        :pswitch_67
    .end packed-switch
.end method


# virtual methods
.method public addAllowRules(Ljava/util/List;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 143
    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/FirewallPolicy;->validateParameters(ILjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_8
    return v0

    :cond_9
    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/enterprise/FirewallPolicy;->applyBasicRules(Ljava/util/List;II)Z

    move-result v0

    goto :goto_8
.end method

.method public addDenyRules(Ljava/util/List;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x2

    .line 258
    const-string v0, "FirewallPolicy"

    const-string v1, "addDenyRules..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/FirewallPolicy;->validateParameters(ILjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 260
    const/4 v0, 0x0

    .line 262
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/enterprise/FirewallPolicy;->applyBasicRules(Ljava/util/List;II)Z

    move-result v0

    goto :goto_f
.end method

.method public addRerouteRules(Ljava/util/List;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 319
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->validateParameters(ILjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 322
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/FirewallPolicy;->applyRerouteRules(Ljava/util/List;I)Z

    move-result v0

    goto :goto_7
.end method

.method public cleanAllRules()Z
    .registers 2

    .prologue
    .line 397
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->cleanAllRules(I)Z

    move-result v0

    return v0
.end method

.method public cleanAllRules(I)Z
    .registers 5
    .parameter "uid"

    .prologue
    .line 401
    const-string v1, "FirewallPolicy"

    const-string v2, "cleanAllRules()... "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v0, 0x1

    .line 403
    .local v0, ret:Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->cleanAllowRules(I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->cleanDenyRules(I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 405
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->cleanRerouteRules(I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 406
    return v0
.end method

.method public cleanAllowRules()Z
    .registers 2

    .prologue
    .line 150
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->cleanAllowRules(I)Z

    move-result v0

    return v0
.end method

.method public cleanAllowRules(I)Z
    .registers 8
    .parameter "uid"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 154
    const-string v2, "FirewallPolicy"

    const-string v3, "cleanAllowRules..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    .line 156
    const/4 v2, -0x1

    if-ne p1, v2, :cond_13

    .line 157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 159
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 161
    .local v0, enabledUid:I
    const-string v2, "allow"

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->cleanInDb(ILjava/lang/String;)Z

    .line 162
    if-ne v0, p1, :cond_68

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-input"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->getAllRules(I)Ljava/util/List;

    move-result-object v1

    .line 167
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    monitor-enter v3

    .line 168
    :try_start_59
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 169
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_69

    .line 170
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_68

    .line 172
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->rollbackEnabled()V

    .line 175
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_68
    return v4

    .line 169
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v2
.end method

.method public cleanDenyRules()Z
    .registers 2

    .prologue
    .line 266
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->cleanDenyRules(I)Z

    move-result v0

    return v0
.end method

.method public cleanDenyRules(I)Z
    .registers 8
    .parameter "uid"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 270
    const-string v2, "FirewallPolicy"

    const-string v3, "cleanDenyRules..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    .line 272
    const/4 v2, -0x1

    if-ne p1, v2, :cond_13

    .line 273
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 275
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 276
    .local v0, enabledUid:I
    const-string v2, "deny"

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->cleanInDb(ILjava/lang/String;)Z

    .line 277
    if-ne v0, p1, :cond_72

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-input"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v2, "/system/bin/iptables -P INPUT ACCEPT"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    const-string v2, "/system/bin/iptables -P OUTPUT ACCEPT"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    iget-object v3, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    monitor-enter v3

    .line 284
    :try_start_5f
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 285
    monitor-exit v3
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_74

    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->getAllRules(I)Ljava/util/List;

    move-result-object v1

    .line 287
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_72

    .line 289
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->rollbackEnabled()V

    .line 292
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_72
    const/4 v2, 0x1

    return v2

    .line 285
    :catchall_74
    move-exception v2

    :try_start_75
    monitor-exit v3
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v2
.end method

.method public cleanProxyRules()Z
    .registers 2

    .prologue
    .line 453
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->cleanProxyRules(I)Z

    move-result v0

    return v0
.end method

.method public cleanProxyRules(I)Z
    .registers 12
    .parameter "uid"

    .prologue
    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 457
    const-string v5, "FirewallPolicy"

    const-string v6, "cleanProxyRules..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    .line 459
    if-ne p1, v9, :cond_13

    .line 460
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 462
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v4

    .line 463
    .local v4, proxyUid:I
    const-string v5, "proxy"

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 464
    .local v3, proxyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "proxy"

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/FirewallPolicy;->cleanInDb(ILjava/lang/String;)Z

    .line 465
    if-ne v4, p1, :cond_46

    .line 466
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_46

    .line 467
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 468
    .local v0, arg:Ljava/lang/String;
    if-eqz v0, :cond_46

    .line 469
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_46

    .line 470
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, args:[Ljava/lang/String;
    aget-object v5, v1, v7

    aget-object v6, v1, v8

    const/4 v7, 0x2

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/enterprise/FirewallPolicy;->applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 476
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #args:[Ljava/lang/String;
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v2

    .line 477
    .local v2, oldUid:I
    if-eq v2, v9, :cond_4f

    .line 478
    invoke-virtual {p0, v8, p1}, Lcom/android/server/enterprise/FirewallPolicy;->enableProxyWithUid(ZI)Z

    .line 480
    :cond_4f
    return v8
.end method

.method public cleanRerouteRules()Z
    .registers 2

    .prologue
    .line 341
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/FirewallPolicy;->cleanRerouteRules(I)Z

    move-result v0

    return v0
.end method

.method public cleanRerouteRules(I)Z
    .registers 6
    .parameter "uid"

    .prologue
    .line 345
    const-string v2, "FirewallPolicy"

    const-string v3, "cleanRerouteRules..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    .line 347
    const/4 v2, -0x1

    if-ne p1, v2, :cond_11

    .line 348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 351
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 352
    .local v0, enabledUid:I
    const-string v2, "reroute"

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/FirewallPolicy;->cleanInDb(ILjava/lang/String;)Z

    .line 353
    if-ne v0, p1, :cond_3c

    .line 354
    const-string v2, "OUTPUT"

    const-string v3, "nat"

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v3, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    monitor-enter v3

    .line 358
    :try_start_26
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 359
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_3e

    .line 360
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->getAllRules(I)Ljava/util/List;

    move-result-object v1

    .line 361
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_39

    .line 363
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->rollbackEnabled()V

    .line 368
    :cond_39
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->reapplyProxyRules()V

    .line 371
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3c
    const/4 v2, 0x1

    return v2

    .line 359
    :catchall_3e
    move-exception v2

    :try_start_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v2
.end method

.method public enableProxy(Z)Z
    .registers 3
    .parameter "status"

    .prologue
    .line 549
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/FirewallPolicy;->enableProxy(ZI)Z

    move-result v0

    return v0
.end method

.method public enableProxy(ZI)Z
    .registers 4
    .parameter "status"
    .parameter "uid"

    .prologue
    .line 557
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/FirewallPolicy;->enableProxy(ZIZ)Z

    move-result v0

    return v0
.end method

.method public enableProxy(ZIZ)Z
    .registers 13
    .parameter "status"
    .parameter "uid"
    .parameter "boot"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 561
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v2

    .line 562
    .local v2, callingUid:I
    const/4 v7, -0x1

    if-ne p2, v7, :cond_a

    .line 563
    move p2, v2

    .line 566
    :cond_a
    if-eqz p1, :cond_46

    .line 568
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v7

    if-ne p2, v7, :cond_14

    if-eqz p3, :cond_43

    .line 569
    :cond_14
    const-string v7, "proxy"

    invoke-direct {p0, v5, v7, p2}, Lcom/android/server/enterprise/FirewallPolicy;->setEnableOnDb(ZLjava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 570
    const-string v7, "proxy"

    invoke-direct {p0, p2, v7}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 571
    .local v4, proxyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_43

    .line 572
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 573
    .local v0, arg:Ljava/lang/String;
    if-eqz v0, :cond_43

    .line 574
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_43

    .line 575
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, args:[Ljava/lang/String;
    aget-object v6, v1, v6

    aget-object v7, v1, v5

    invoke-direct {p0, v6, v7, v5}, Lcom/android/server/enterprise/FirewallPolicy;->applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 600
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #args:[Ljava/lang/String;
    .end local v4           #proxyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_43
    :goto_43
    return v5

    :cond_44
    move v5, v6

    .line 581
    goto :goto_43

    .line 588
    :cond_46
    const-string v7, "FirewallPolicy"

    const-string v8, "enableProxy disable..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v3

    .line 590
    .local v3, enabledUid:I
    const-string v7, "proxy"

    invoke-direct {p0, v6, v7, p2}, Lcom/android/server/enterprise/FirewallPolicy;->setEnableOnDb(ZLjava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 591
    if-ne v3, p2, :cond_43

    .line 592
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/FirewallPolicy;->disableProxyOnIptables(I)Z

    .line 594
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->rollbackProxyEnabled()V

    goto :goto_43

    :cond_62
    move v5, v6

    .line 597
    goto :goto_43
.end method

.method public enableProxyWithUid(ZI)Z
    .registers 4
    .parameter "status"
    .parameter "uid"

    .prologue
    .line 553
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/FirewallPolicy;->enableProxy(ZIZ)Z

    move-result v0

    return v0
.end method

.method public enableRules(Z)Z
    .registers 4
    .parameter "status"

    .prologue
    .line 489
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->enableRules(ZIZ)Z

    move-result v0

    return v0
.end method

.method public enableRules(ZI)Z
    .registers 4
    .parameter "status"
    .parameter "uid"

    .prologue
    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/FirewallPolicy;->enableRules(ZIZ)Z

    move-result v0

    return v0
.end method

.method public enableRules(ZIZ)Z
    .registers 14
    .parameter "status"
    .parameter "uid"
    .parameter "boot"

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 501
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 502
    .local v1, callingUid:I
    const/4 v7, -0x1

    if-ne p2, v7, :cond_c

    .line 503
    move p2, v1

    .line 506
    :cond_c
    if-eqz p1, :cond_b1

    .line 508
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v7

    if-ne p2, v7, :cond_16

    if-eqz p3, :cond_ae

    .line 509
    :cond_16
    const-string v7, "noProxy"

    invoke-direct {p0, v5, v7, p2}, Lcom/android/server/enterprise/FirewallPolicy;->setEnableOnDb(ZLjava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_af

    .line 510
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->clearPendingCommands()V

    .line 511
    const-string v6, "allow"

    invoke-direct {p0, p2, v6}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 512
    .local v0, allowRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-input"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-output"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-direct {p0, v0, v5, v5}, Lcom/android/server/enterprise/FirewallPolicy;->applyBasicRulesToIptables(Ljava/util/List;II)Z

    .line 515
    const-string v6, "deny"

    invoke-direct {p0, p2, v6}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 516
    .local v2, denyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-input"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/enterprise/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-output"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-direct {p0, v2, v5, v9}, Lcom/android/server/enterprise/FirewallPolicy;->applyBasicRulesToIptables(Ljava/util/List;II)Z

    .line 519
    const-string v6, "OUTPUT"

    const-string v7, "nat"

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v6, "reroute"

    invoke-direct {p0, p2, v6}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 521
    .local v4, rerouteRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/FirewallPolicy;->applyRerouteRulesToIptables(Ljava/util/List;I)Z

    .line 522
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->reapplyProxyRules()V

    .line 545
    .end local v0           #allowRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #denyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #rerouteRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_ae
    :goto_ae
    return v5

    :cond_af
    move v5, v6

    .line 524
    goto :goto_ae

    .line 530
    :cond_b1
    const-string v7, "FirewallPolicy"

    const-string v8, "enableRules disable..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v3

    .line 533
    .local v3, enabledUid:I
    const-string v7, "noProxy"

    invoke-direct {p0, v6, v7, p2}, Lcom/android/server/enterprise/FirewallPolicy;->setEnableOnDb(ZLjava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_d3

    .line 534
    if-ne v3, p2, :cond_ae

    .line 535
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/FirewallPolicy;->disableRulesOnIptables(I)Z

    .line 536
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->clearPendingCommands()V

    .line 537
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->reapplyProxyRules()V

    .line 539
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->rollbackEnabled()V

    goto :goto_ae

    :cond_d3
    move v5, v6

    .line 542
    goto :goto_ae
.end method

.method public enableRulesWithUid(ZI)Z
    .registers 4
    .parameter "status"
    .parameter "uid"

    .prologue
    .line 493
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/FirewallPolicy;->enableRules(ZIZ)Z

    move-result v0

    return v0
.end method

.method public getAllRulesForUid()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v4

    .line 232
    .local v4, uid:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v3, rules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v1, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "allow"

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 235
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 236
    .local v2, rule:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";allow"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 238
    .end local v2           #rule:Ljava/lang/String;
    :cond_3b
    const-string v5, "deny"

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 239
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 240
    .restart local v2       #rule:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";deny"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 242
    .end local v2           #rule:Ljava/lang/String;
    :cond_68
    const-string v5, "reroute"

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 243
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 244
    .restart local v2       #rule:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";reroute"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_72

    .line 246
    .end local v2           #rule:Ljava/lang/String;
    :cond_95
    return-object v1
.end method

.method public getAllowRules()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    .line 199
    .local v0, uid:I
    const-string v1, "allow"

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getDenyRules()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    .line 315
    .local v0, uid:I
    const-string v1, "deny"

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getLastUidForProxy()I
    .registers 9

    .prologue
    .line 1594
    const-string v5, "FirewallPolicy"

    const-string v6, "getLastUidForProxy"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1596
    .local v1, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    .line 1597
    .local v3, returnColumns:[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "adminUid"

    aput-object v6, v3, v5

    .line 1598
    const-string v5, "type =? "

    const-string v6, "proxy"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    const-string v5, "enabled =? "

    const-string v6, "true"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    iget-object v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "FirewallTable"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v1, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1603
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 1604
    const-string v5, "adminUid"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1605
    .local v2, index:I
    new-instance v4, Ljava/lang/Integer;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 1609
    .end local v2           #index:I
    .local v4, uid:Ljava/lang/Integer;
    :goto_40
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1610
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5

    .line 1607
    .end local v4           #uid:Ljava/lang/Integer;
    :cond_48
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .restart local v4       #uid:Ljava/lang/Integer;
    goto :goto_40
.end method

.method public getLastUidForRules()I
    .registers 9

    .prologue
    .line 1574
    const-string v5, "FirewallPolicy"

    const-string v6, "getLastUidForRules"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1576
    .local v1, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    .line 1577
    .local v3, returnColumns:[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "adminUid"

    aput-object v6, v3, v5

    .line 1578
    const-string v5, "type !=? "

    const-string v6, "proxy"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    const-string v5, "enabled =? "

    const-string v6, "true"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    iget-object v5, p0, Lcom/android/server/enterprise/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "FirewallTable"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v1, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1583
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 1584
    const-string v5, "adminUid"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1585
    .local v2, index:I
    new-instance v4, Ljava/lang/Integer;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 1589
    .end local v2           #index:I
    .local v4, uid:Ljava/lang/Integer;
    :goto_40
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1590
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5

    .line 1587
    .end local v4           #uid:Ljava/lang/Integer;
    :cond_48
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .restart local v4       #uid:Ljava/lang/Integer;
    goto :goto_40
.end method

.method public getProxyRules()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    .line 485
    .local v0, uid:I
    const-string v1, "proxy"

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getRerouteRules()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    .line 429
    .local v0, uid:I
    const-string v1, "reroute"

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public isEnabledProxy()Z
    .registers 4

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 221
    .local v1, uid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v0

    .line 224
    .local v0, enabledUid:I
    if-ne v1, v0, :cond_c

    .line 225
    const/4 v2, 0x1

    .line 227
    :goto_b
    return v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public isEnabledRules()Z
    .registers 4

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 207
    .local v1, uid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 210
    .local v0, enabledUid:I
    if-ne v1, v0, :cond_c

    .line 211
    const/4 v2, 0x1

    .line 213
    :goto_b
    return v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public removeAdmin(I)Z
    .registers 5
    .parameter "uid"

    .prologue
    .line 333
    const-string v1, "FirewallPolicy"

    const-string v2, "removeAdmin..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v0, 0x1

    .line 335
    .local v0, ret:Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->cleanAllRules(I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->cleanProxyRules(I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 337
    return v0
.end method

.method public removeAllowRules(Ljava/util/List;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 136
    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/FirewallPolicy;->validateParameters(ILjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/FirewallPolicy;->applyBasicRules(Ljava/util/List;II)Z

    move-result v0

    goto :goto_8
.end method

.method public removeDenyRules(Ljava/util/List;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x2

    .line 250
    const-string v0, "FirewallPolicy"

    const-string v1, "removeDenyRules..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/FirewallPolicy;->validateParameters(ILjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 252
    const/4 v0, 0x0

    .line 254
    :goto_f
    return v0

    :cond_10
    invoke-direct {p0, p1, v2, v2}, Lcom/android/server/enterprise/FirewallPolicy;->applyBasicRules(Ljava/util/List;II)Z

    move-result v0

    goto :goto_f
.end method

.method public removeRerouteRules(Ljava/util/List;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 326
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->validateParameters(ILjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 329
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/FirewallPolicy;->applyRerouteRules(Ljava/util/List;I)Z

    move-result v0

    goto :goto_7
.end method

.method public setAllowRules(Ljava/util/List;)Z
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 179
    const-string v4, "FirewallPolicy"

    const-string v5, "setAllowRules..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0, v3, p1}, Lcom/android/server/enterprise/FirewallPolicy;->validateParameters(ILjava/util/List;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 193
    :cond_f
    :goto_f
    return v2

    .line 183
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 184
    .local v0, enabledUid:I
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 185
    .local v1, uid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->cleanAllowRules()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->addAllowRules(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 187
    if-ne v0, v1, :cond_29

    .line 188
    invoke-virtual {p0, v3, v1}, Lcom/android/server/enterprise/FirewallPolicy;->enableRules(ZI)Z

    :cond_29
    move v2, v3

    .line 190
    goto :goto_f
.end method

.method public setDenyRules(Ljava/util/List;)Z
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    const-string v4, "FirewallPolicy"

    const-string v5, "setDenyRules..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v4, 0x2

    invoke-direct {p0, v4, p1}, Lcom/android/server/enterprise/FirewallPolicy;->validateParameters(ILjava/util/List;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 310
    :cond_10
    :goto_10
    return v2

    .line 300
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 301
    .local v0, enabledUid:I
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 302
    .local v1, uid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->cleanDenyRules()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->addDenyRules(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 304
    if-ne v0, v1, :cond_2a

    .line 305
    invoke-virtual {p0, v3, v1}, Lcom/android/server/enterprise/FirewallPolicy;->enableRules(ZI)Z

    :cond_2a
    move v2, v3

    .line 307
    goto :goto_10
.end method

.method public setFirewallRules(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1284
    .local p1, iptTablesCmd:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->runIptablesCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setProxyRules(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "hostname"
    .parameter "port"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 433
    const-string v5, "FirewallPolicy"

    const-string v6, "setProxyRules..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    const/4 v5, 0x3

    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/FirewallPolicy;->validateParameters(ILjava/util/List;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 449
    :cond_2f
    :goto_2f
    return v3

    .line 439
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v0

    .line 440
    .local v0, enabledUid:I
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v2

    .line 441
    .local v2, uid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->cleanProxyRules()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 442
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/enterprise/FirewallPolicy;->applyProxyRules(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 443
    if-ne v0, v2, :cond_49

    .line 444
    invoke-virtual {p0, v4, v2}, Lcom/android/server/enterprise/FirewallPolicy;->enableProxy(ZI)Z

    :cond_49
    move v3, v4

    .line 446
    goto :goto_2f
.end method

.method public setRerouteRules(Ljava/util/List;)Z
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 410
    const-string v4, "FirewallPolicy"

    const-string v5, "setRerouteRules..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/FirewallPolicy;->validateParameters(ILjava/util/List;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 424
    :cond_f
    :goto_f
    return v2

    .line 414
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 415
    .local v0, enabledUid:I
    invoke-direct {p0}, Lcom/android/server/enterprise/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 416
    .local v1, uid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/FirewallPolicy;->cleanRerouteRules()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 417
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/FirewallPolicy;->addRerouteRules(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 418
    if-ne v0, v1, :cond_29

    .line 419
    invoke-virtual {p0, v3, v1}, Lcom/android/server/enterprise/FirewallPolicy;->enableRules(ZI)Z

    :cond_29
    move v2, v3

    .line 421
    goto :goto_f
.end method
