.class Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V
    .registers 2
    .parameter

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private cleanupUpstream()V
    .registers 4

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 1223
    :try_start_6
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$3100(Lcom/android/server/connectivity/Tethering;)Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_2c

    .line 1228
    :goto_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_24} :catch_2a

    .line 1232
    :goto_24
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    .line 1234
    :cond_29
    return-void

    .line 1229
    :catch_2a
    move-exception v0

    goto :goto_24

    .line 1224
    :catch_2c
    move-exception v0

    goto :goto_11
.end method


# virtual methods
.method public enter()V
    .registers 5

    .prologue
    .line 1201
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_3f

    .line 1209
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tethered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v2, 0x0

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setAvailable(Z)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1300(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 1211
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v2, 0x1

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setTethered(Z)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1400(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 1212
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)V

    .line 1213
    :goto_3e
    return-void

    .line 1202
    :catch_3f
    move-exception v0

    .line 1203
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Tethering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v2, 0x6

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1600(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 1206
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$2200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$3000(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto :goto_3e
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 13
    .parameter "message"

    .prologue
    const/16 v10, 0x14

    const/16 v9, 0xa

    const/4 v8, 0x7

    const/4 v7, 0x0

    .line 1239
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TetheredState.processMessage what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const/4 v3, 0x1

    .line 1241
    .local v3, retValue:Z
    const/4 v1, 0x0

    .line 1242
    .local v1, error:Z
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_19a

    .line 1350
    :pswitch_27
    const/4 v3, 0x0

    :cond_28
    :goto_28
    move v4, v3

    .line 1353
    :goto_29
    return v4

    .line 1262
    :pswitch_2a
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->cleanupUpstream()V

    .line 1264
    :try_start_2d
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3c} :catch_9b

    .line 1270
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1272
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_53

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v10, :cond_a2

    .line 1276
    :cond_53
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-boolean v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v4, :cond_68

    .line 1277
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z
    invoke-static {v4, v7}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;Z)Z

    move-result v4

    if-nez v4, :cond_68

    .line 1278
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v4, v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1600(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 1283
    :cond_68
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v10, :cond_73

    .line 1284
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->showDialogOnInternetSharingBlockedByActiveSync()V
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;)V

    .line 1287
    :cond_73
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$2200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$3200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    .line 1291
    :cond_7e
    :goto_7e
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Untethered "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1265
    :catch_9b
    move-exception v0

    .line 1266
    .local v0, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v4, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto :goto_28

    .line 1288
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a2
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7e

    .line 1289
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUnavailableState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1900(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$3300(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto :goto_7e

    .line 1294
    :pswitch_b3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    .line 1295
    .local v2, newUpstreamIfaceName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-nez v4, :cond_c2

    if-eqz v2, :cond_28

    :cond_c2
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-eqz v4, :cond_d2

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 1301
    :cond_d2
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->cleanupUpstream()V

    .line 1302
    if-eqz v2, :cond_e6

    .line 1304
    :try_start_d7
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Landroid/os/INetworkManagementService;->enableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_e6} :catch_ec

    .line 1316
    :cond_e6
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iput-object v2, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    goto/16 :goto_28

    .line 1305
    :catch_ec
    move-exception v0

    .line 1306
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception enabling Nat: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :try_start_109
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_118} :catch_197

    .line 1311
    :goto_118
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/16 v5, 0x8

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1600(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 1312
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$2200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$3400(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    .line 1313
    const/4 v4, 0x1

    goto/16 :goto_29

    .line 1324
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #newUpstreamIfaceName:Ljava/lang/String;
    :pswitch_12d
    const/4 v1, 0x1

    .line 1327
    :pswitch_12e
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->cleanupUpstream()V

    .line 1329
    :try_start_131
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_140} :catch_14a

    .line 1335
    if-eqz v1, :cond_152

    .line 1336
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto/16 :goto_28

    .line 1330
    :catch_14a
    move-exception v0

    .line 1331
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v4, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto/16 :goto_28

    .line 1340
    .end local v0           #e:Ljava/lang/Exception;
    :cond_152
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tether lost upstream connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)V

    .line 1342
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-boolean v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v4, :cond_18a

    .line 1343
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z
    invoke-static {v4, v7}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;Z)Z

    move-result v4

    if-nez v4, :cond_18a

    .line 1344
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v4, v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1600(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 1347
    :cond_18a
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$2200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$3500(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_28

    .line 1309
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v2       #newUpstreamIfaceName:Ljava/lang/String;
    :catch_197
    move-exception v4

    goto :goto_118

    .line 1242
    nop

    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_12e
        :pswitch_27
        :pswitch_2a
        :pswitch_2a
        :pswitch_27
        :pswitch_12d
        :pswitch_12d
        :pswitch_12d
        :pswitch_12d
        :pswitch_12d
        :pswitch_12d
        :pswitch_b3
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method
