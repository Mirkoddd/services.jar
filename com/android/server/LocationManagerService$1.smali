.class Lcom/android/server/LocationManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1997
    iput-object p1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 28
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2000
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2001
    .local v3, action:Ljava/lang/String;
    const-string v21, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 2002
    .local v14, queryRestart:Z
    if-nez v14, :cond_2c

    const-string v21, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2c

    const-string v21, "android.intent.action.PACKAGE_RESTARTED"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2c

    const-string v21, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_195

    .line 2006
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {v21 .. v21}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22

    .line 2007
    const/16 v18, 0x0

    .line 2008
    .local v18, uidList:[I
    :try_start_39
    const-string v21, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_58

    .line 2009
    const-string v21, "android.intent.extra.changed_uid_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v18

    .line 2013
    :goto_4d
    if-eqz v18, :cond_56

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    if-nez v21, :cond_75

    .line 2014
    :cond_56
    monitor-exit v22

    .line 2085
    .end local v18           #uidList:[I
    :cond_57
    :goto_57
    return-void

    .line 2011
    .restart local v18       #uidList:[I
    :cond_58
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v21, 0x0

    const-string v23, "android.intent.extra.UID"

    const/16 v24, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    aput v23, v19, v21

    .end local v18           #uidList:[I
    .local v19, uidList:[I
    move-object/from16 v18, v19

    .end local v19           #uidList:[I
    .restart local v18       #uidList:[I
    goto :goto_4d

    .line 2016
    :cond_75
    move-object/from16 v4, v18

    .local v4, arr$:[I
    array-length v11, v4

    .local v11, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v7           #i$:I
    .local v8, i$:I
    :goto_7a
    if-ge v8, v11, :cond_192

    aget v17, v4, v8

    .line 2017
    .local v17, uid:I
    if-ltz v17, :cond_18d

    .line 2018
    const/16 v16, 0x0

    .line 2019
    .local v16, removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/server/LocationManagerService;->access$1400(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v8           #i$:I
    .local v7, i$:Ljava/util/Iterator;
    :cond_94
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_fd

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 2020
    .local v6, i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v10, v21, -0x1

    .local v10, j:I
    :goto_a6
    if-ltz v10, :cond_94

    .line 2021
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2022
    .local v20, ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/LocationManagerService$Receiver;->isPendingIntent()Z

    move-result v21

    if-eqz v21, :cond_fa

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mUid:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v17

    if-ne v0, v1, :cond_fa

    .line 2023
    if-eqz v14, :cond_d6

    .line 2024
    const/16 v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$1;->setResultCode(I)V

    .line 2025
    monitor-exit v22

    goto :goto_57

    .line 2063
    .end local v4           #arr$:[I
    .end local v6           #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #j:I
    .end local v11           #len$:I
    .end local v16           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v17           #uid:I
    .end local v20           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_d3
    move-exception v21

    monitor-exit v22
    :try_end_d5
    .catchall {:try_start_39 .. :try_end_d5} :catchall_d3

    throw v21

    .line 2027
    .restart local v4       #arr$:[I
    .restart local v6       #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v10       #j:I
    .restart local v11       #len$:I
    .restart local v16       #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v17       #uid:I
    .restart local v20       #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_d6
    if-nez v16, :cond_dd

    .line 2028
    :try_start_d8
    new-instance v16, Ljava/util/ArrayList;

    .end local v16           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2030
    .restart local v16       #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_dd
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_fa

    .line 2031
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2020
    :cond_fa
    add-int/lit8 v10, v10, -0x1

    goto :goto_a6

    .line 2036
    .end local v6           #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v10           #j:I
    .end local v20           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_fd
    const/4 v15, 0x0

    .line 2037
    .local v15, removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_110
    :goto_110
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_145

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 2038
    .local v5, i:Lcom/android/server/LocationManagerService$ProximityAlert;
    iget v0, v5, Lcom/android/server/LocationManagerService$ProximityAlert;->mUid:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v17

    if-ne v0, v1, :cond_110

    .line 2039
    if-eqz v14, :cond_134

    .line 2040
    const/16 v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$1;->setResultCode(I)V

    .line 2041
    monitor-exit v22

    goto/16 :goto_57

    .line 2043
    :cond_134
    if-nez v15, :cond_13b

    .line 2044
    new-instance v15, Ljava/util/ArrayList;

    .end local v15           #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2046
    .restart local v15       #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    :cond_13b
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_110

    .line 2047
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_110

    .line 2051
    .end local v5           #i:Lcom/android/server/LocationManagerService$ProximityAlert;
    :cond_145
    if-eqz v16, :cond_167

    .line 2052
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v5, v21, -0x1

    .local v5, i:I
    :goto_14d
    if-ltz v5, :cond_167

    .line 2053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    #calls: Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2052
    add-int/lit8 v5, v5, -0x1

    goto :goto_14d

    .line 2056
    .end local v5           #i:I
    :cond_167
    if-eqz v15, :cond_18d

    .line 2057
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v5, v21, -0x1

    .restart local v5       #i:I
    :goto_16f
    if-ltz v5, :cond_18d

    .line 2058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v23, v0

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/LocationManagerService$ProximityAlert;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityAlert;->mIntent:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    #calls: Lcom/android/server/LocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;)V

    .line 2057
    add-int/lit8 v5, v5, -0x1

    goto :goto_16f

    .line 2016
    .end local v5           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v15           #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    .end local v16           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_18d
    add-int/lit8 v7, v8, 0x1

    .local v7, i$:I
    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto/16 :goto_7a

    .line 2063
    .end local v17           #uid:I
    :cond_192
    monitor-exit v22
    :try_end_193
    .catchall {:try_start_d8 .. :try_end_193} :catchall_d3

    goto/16 :goto_57

    .line 2064
    .end local v4           #arr$:[I
    .end local v8           #i$:I
    .end local v11           #len$:I
    .end local v18           #uidList:[I
    :cond_195
    const-string v21, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_57

    .line 2065
    const-string v21, "noConnectivity"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 2067
    .local v12, noConnectivity:Z
    if-nez v12, :cond_20d

    .line 2068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    #setter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v21 .. v22}, Lcom/android/server/LocationManagerService;->access$2402(Lcom/android/server/LocationManagerService;I)I

    .line 2072
    :goto_1ba
    const-string v21, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkInfo;

    .line 2076
    .local v9, info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {v21 .. v21}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22

    .line 2077
    :try_start_1d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v5, v21, -0x1

    .restart local v5       #i:I
    :goto_1e1
    if-ltz v5, :cond_219

    .line 2078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/LocationProviderInterface;

    .line 2079
    .local v13, provider:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v13}, Lcom/android/server/location/LocationProviderInterface;->requiresNetwork()Z

    move-result v21

    if-eqz v21, :cond_20a

    .line 2080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v13, v0, v9}, Lcom/android/server/location/LocationProviderInterface;->updateNetworkState(ILandroid/net/NetworkInfo;)V
    :try_end_20a
    .catchall {:try_start_1d1 .. :try_end_20a} :catchall_21c

    .line 2077
    :cond_20a
    add-int/lit8 v5, v5, -0x1

    goto :goto_1e1

    .line 2070
    .end local v5           #i:I
    .end local v9           #info:Landroid/net/NetworkInfo;
    .end local v13           #provider:Lcom/android/server/location/LocationProviderInterface;
    :cond_20d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v21 .. v22}, Lcom/android/server/LocationManagerService;->access$2402(Lcom/android/server/LocationManagerService;I)I

    goto :goto_1ba

    .line 2083
    .restart local v5       #i:I
    .restart local v9       #info:Landroid/net/NetworkInfo;
    :cond_219
    :try_start_219
    monitor-exit v22

    goto/16 :goto_57

    .end local v5           #i:I
    :catchall_21c
    move-exception v21

    monitor-exit v22
    :try_end_21e
    .catchall {:try_start_219 .. :try_end_21e} :catchall_21c

    throw v21
.end method
