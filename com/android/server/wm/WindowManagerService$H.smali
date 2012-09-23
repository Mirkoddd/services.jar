.class final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final ADD_STARTING:I = 0x5

.field public static final ANIMATE:I = 0x4

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final APP_TRANSITION_TIMEOUT:I = 0xd

.field public static final BOOT_TIMEOUT:I = 0x17

.field public static final DRAG_END_TIMEOUT:I = 0x15

.field public static final DRAG_START_TIMEOUT:I = 0x14

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FINISHED_STARTING:I = 0x7

.field public static final FORCE_GC:I = 0xf

.field public static final HOLD_SCREEN_CHANGED:I = 0xc

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final REMOVE_STARTING:I = 0x6

.field public static final REPORT_APPLICATION_TOKEN_DRAWN:I = 0x9

.field public static final REPORT_APPLICATION_TOKEN_WINDOWS:I = 0x8

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final SEND_NEW_CONFIGURATION:I = 0x12

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x18

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb


# instance fields
.field private mLastReportedHold:Lcom/android/server/wm/Session;

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 7050
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 7051
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 33
    .parameter "msg"

    .prologue
    .line 7055
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_544

    .line 7462
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 7060
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 7061
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v16, v0

    .line 7062
    .local v16, lastFocus:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v0

    .line 7063
    .local v18, newFocus:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2a

    .line 7065
    monitor-exit v3

    goto :goto_7

    .line 7076
    .end local v16           #lastFocus:Lcom/android/server/wm/WindowState;
    .end local v18           #newFocus:Lcom/android/server/wm/WindowState;
    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_27

    throw v2

    .line 7067
    .restart local v16       #lastFocus:Lcom/android/server/wm/WindowState;
    .restart local v18       #newFocus:Lcom/android/server/wm/WindowState;
    :cond_2a
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 7070
    if-eqz v18, :cond_49

    if-eqz v16, :cond_49

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v2

    if-nez v2, :cond_49

    .line 7073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7074
    const/16 v16, 0x0

    .line 7076
    :cond_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_27

    .line 7078
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 7081
    if-eqz v18, :cond_90

    .line 7084
    :try_start_52
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-interface {v2, v3, v4}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V

    .line 7086
    const-string v2, "gsm.default.esn"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TRUE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 7087
    new-instance v15, Landroid/content/Intent;

    const-string v2, "com.android.activity.displayed"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7088
    .local v15, intent:Landroid/content/Intent;
    const-string v2, "focusedapp"

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_89} :catch_541

    .line 7094
    .end local v15           #intent:Landroid/content/Intent;
    :cond_89
    :goto_89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$700(Lcom/android/server/wm/WindowManagerService;)V

    .line 7097
    :cond_90
    if-eqz v16, :cond_7

    .line 7100
    :try_start_92
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-interface {v2, v3, v4}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_a0} :catch_a2

    goto/16 :goto_7

    .line 7101
    :catch_a2
    move-exception v2

    goto/16 :goto_7

    .line 7111
    .end local v16           #lastFocus:Lcom/android/server/wm/WindowState;
    .end local v18           #newFocus:Lcom/android/server/wm/WindowState;
    :pswitch_a5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 7112
    :try_start_ac
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 7113
    .local v17, losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 7114
    monitor-exit v3
    :try_end_c0
    .catchall {:try_start_ac .. :try_end_c0} :catchall_de

    .line 7116
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 7117
    .local v11, N:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_c5
    if-ge v14, v11, :cond_7

    .line 7120
    :try_start_c7
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-interface {v2, v3, v4}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_c7 .. :try_end_db} :catch_53e

    .line 7117
    :goto_db
    add-int/lit8 v14, v14, 0x1

    goto :goto_c5

    .line 7114
    .end local v11           #N:I
    .end local v14           #i:I
    .end local v17           #losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catchall_de
    move-exception v2

    :try_start_df
    monitor-exit v3
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    throw v2

    .line 7128
    :pswitch_e1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 7129
    :try_start_e8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    .line 7130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    .line 7131
    monitor-exit v3

    goto/16 :goto_7

    :catchall_f9
    move-exception v2

    monitor-exit v3
    :try_end_fb
    .catchall {:try_start_e8 .. :try_end_fb} :catchall_f9

    throw v2

    .line 7135
    :pswitch_fc
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/server/wm/AppWindowToken;

    .line 7136
    .local v30, wtoken:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v24, v0

    .line 7138
    .local v24, sd:Lcom/android/server/wm/StartingData;
    if-eqz v24, :cond_7

    .line 7146
    const/16 v27, 0x0

    .line 7148
    .local v27, view:Landroid/view/View;
    :try_start_10e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/server/wm/StartingData;->theme:I

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v24

    iget v8, v0, Lcom/android/server/wm/StartingData;->labelRes:I

    move-object/from16 v0, v24

    iget v9, v0, Lcom/android/server/wm/StartingData;->icon:I

    move-object/from16 v0, v24

    iget v10, v0, Lcom/android/server/wm/StartingData;->windowFlags:I

    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy;->addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)Landroid/view/View;
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_137} :catch_17d

    move-result-object v27

    .line 7155
    :goto_138
    if-eqz v27, :cond_7

    .line 7156
    const/4 v12, 0x0

    .line 7158
    .local v12, abort:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 7159
    :try_start_142
    move-object/from16 v0, v30

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v2, :cond_14e

    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v2, :cond_186

    .line 7162
    :cond_14e
    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_15f

    .line 7167
    const/4 v2, 0x0

    move-object/from16 v0, v30

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 7168
    const/4 v2, 0x0

    move-object/from16 v0, v30

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 7169
    const/4 v12, 0x1

    .line 7179
    :cond_15f
    :goto_15f
    monitor-exit v3
    :try_end_160
    .catchall {:try_start_142 .. :try_end_160} :catchall_18d

    .line 7181
    if-eqz v12, :cond_7

    .line 7183
    :try_start_162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v27

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_171} :catch_173

    goto/16 :goto_7

    .line 7184
    :catch_173
    move-exception v13

    .line 7185
    .local v13, e:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    invoke-static {v2, v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 7151
    .end local v12           #abort:Z
    .end local v13           #e:Ljava/lang/Exception;
    :catch_17d
    move-exception v13

    .line 7152
    .restart local v13       #e:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when adding starting window"

    invoke-static {v2, v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_138

    .line 7172
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v12       #abort:Z
    :cond_186
    :try_start_186
    move-object/from16 v0, v27

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    goto :goto_15f

    .line 7179
    :catchall_18d
    move-exception v2

    monitor-exit v3
    :try_end_18f
    .catchall {:try_start_186 .. :try_end_18f} :catchall_18d

    throw v2

    .line 7192
    .end local v12           #abort:Z
    .end local v24           #sd:Lcom/android/server/wm/StartingData;
    .end local v27           #view:Landroid/view/View;
    .end local v30           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :pswitch_190
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/server/wm/AppWindowToken;

    .line 7193
    .restart local v30       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/16 v26, 0x0

    .line 7194
    .local v26, token:Landroid/os/IBinder;
    const/16 v27, 0x0

    .line 7195
    .restart local v27       #view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 7200
    :try_start_1a3
    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1c4

    .line 7201
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v27, v0

    .line 7202
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v26, v0

    .line 7203
    const/4 v2, 0x0

    move-object/from16 v0, v30

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 7204
    const/4 v2, 0x0

    move-object/from16 v0, v30

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 7205
    const/4 v2, 0x0

    move-object/from16 v0, v30

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 7207
    :cond_1c4
    monitor-exit v3
    :try_end_1c5
    .catchall {:try_start_1a3 .. :try_end_1c5} :catchall_1e0

    .line 7208
    if-eqz v27, :cond_7

    .line 7210
    :try_start_1c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_1d4
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1d4} :catch_1d6

    goto/16 :goto_7

    .line 7211
    :catch_1d6
    move-exception v13

    .line 7212
    .restart local v13       #e:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    invoke-static {v2, v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 7207
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_1e0
    move-exception v2

    :try_start_1e1
    monitor-exit v3
    :try_end_1e2
    .catchall {:try_start_1e1 .. :try_end_1e2} :catchall_1e0

    throw v2

    .line 7218
    .end local v26           #token:Landroid/os/IBinder;
    .end local v27           #view:Landroid/view/View;
    .end local v30           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :pswitch_1e3
    const/16 v26, 0x0

    .line 7219
    .restart local v26       #token:Landroid/os/IBinder;
    const/16 v27, 0x0

    .line 7221
    .restart local v27       #view:Landroid/view/View;
    :goto_1e7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 7222
    :try_start_1ee
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 7223
    .restart local v11       #N:I
    if-gtz v11, :cond_200

    .line 7224
    monitor-exit v3

    goto/16 :goto_7

    .line 7242
    .end local v11           #N:I
    :catchall_1fd
    move-exception v2

    monitor-exit v3
    :try_end_1ff
    .catchall {:try_start_1ee .. :try_end_1ff} :catchall_1fd

    throw v2

    .line 7226
    .restart local v11       #N:I
    :cond_200
    :try_start_200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/wm/AppWindowToken;

    .line 7233
    .restart local v30       #wtoken:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_216

    .line 7234
    monitor-exit v3

    goto :goto_1e7

    .line 7237
    :cond_216
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v27, v0

    .line 7238
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v26, v0

    .line 7239
    const/4 v2, 0x0

    move-object/from16 v0, v30

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 7240
    const/4 v2, 0x0

    move-object/from16 v0, v30

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 7241
    const/4 v2, 0x0

    move-object/from16 v0, v30

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 7242
    monitor-exit v3
    :try_end_232
    .catchall {:try_start_200 .. :try_end_232} :catchall_1fd

    .line 7245
    :try_start_232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_23f
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_23f} :catch_240

    goto :goto_1e7

    .line 7246
    :catch_240
    move-exception v13

    .line 7247
    .restart local v13       #e:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    invoke-static {v2, v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e7

    .line 7253
    .end local v11           #N:I
    .end local v13           #e:Ljava/lang/Exception;
    .end local v26           #token:Landroid/os/IBinder;
    .end local v27           #view:Landroid/view/View;
    .end local v30           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :pswitch_249
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/server/wm/AppWindowToken;

    .line 7258
    .restart local v30       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :try_start_251
    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsDrawn()V
    :try_end_258
    .catch Landroid/os/RemoteException; {:try_start_251 .. :try_end_258} :catch_25a

    goto/16 :goto_7

    .line 7259
    :catch_25a
    move-exception v2

    goto/16 :goto_7

    .line 7264
    .end local v30           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :pswitch_25d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/server/wm/AppWindowToken;

    .line 7266
    .restart local v30       #wtoken:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_283

    const/16 v21, 0x1

    .line 7267
    .local v21, nowVisible:Z
    :goto_26d
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_286

    const/16 v20, 0x1

    .line 7274
    .local v20, nowGone:Z
    :goto_275
    if-eqz v21, :cond_289

    .line 7275
    :try_start_277
    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsVisible()V

    goto/16 :goto_7

    .line 7279
    :catch_280
    move-exception v2

    goto/16 :goto_7

    .line 7266
    .end local v20           #nowGone:Z
    .end local v21           #nowVisible:Z
    :cond_283
    const/16 v21, 0x0

    goto :goto_26d

    .line 7267
    .restart local v21       #nowVisible:Z
    :cond_286
    const/16 v20, 0x0

    goto :goto_275

    .line 7277
    .restart local v20       #nowGone:Z
    :cond_289
    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsGone()V
    :try_end_290
    .catch Landroid/os/RemoteException; {:try_start_277 .. :try_end_290} :catch_280

    goto/16 :goto_7

    .line 7284
    .end local v20           #nowGone:Z
    .end local v21           #nowVisible:Z
    .end local v30           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :pswitch_292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 7285
    :try_start_299
    const-string v2, "WindowManager"

    const-string v4, "Window freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 7287
    .restart local v14       #i:I
    :cond_2aa
    :goto_2aa
    if-lez v14, :cond_2e3

    .line 7288
    add-int/lit8 v14, v14, -0x1

    .line 7289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/wm/WindowState;

    .line 7290
    .local v28, w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v2, :cond_2aa

    .line 7291
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 7292
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force clearing orientation change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2aa

    .line 7296
    .end local v14           #i:I
    .end local v28           #w:Lcom/android/server/wm/WindowState;
    :catchall_2e0
    move-exception v2

    monitor-exit v3
    :try_end_2e2
    .catchall {:try_start_299 .. :try_end_2e2} :catchall_2e0

    throw v2

    .line 7295
    .restart local v14       #i:I
    :cond_2e3
    :try_start_2e3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    .line 7296
    monitor-exit v3
    :try_end_2eb
    .catchall {:try_start_2e3 .. :try_end_2eb} :catchall_2e0

    goto/16 :goto_7

    .line 7303
    .end local v14           #i:I
    :pswitch_2ed
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 7304
    :try_start_2f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->mLastReportedHold:Lcom/android/server/wm/Session;

    move-object/from16 v22, v0

    .line 7305
    .local v22, oldHold:Lcom/android/server/wm/Session;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/wm/Session;

    .line 7306
    .local v19, newHold:Lcom/android/server/wm/Session;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->mLastReportedHold:Lcom/android/server/wm/Session;

    .line 7307
    monitor-exit v3
    :try_end_309
    .catchall {:try_start_2f4 .. :try_end_309} :catchall_33a

    .line 7309
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 7311
    if-eqz v22, :cond_322

    .line 7312
    :try_start_311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/server/wm/Session;->mUid:I

    const/4 v4, -0x1

    const-string v5, "window"

    const/4 v6, 0x2

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;I)V

    .line 7316
    :cond_322
    if-eqz v19, :cond_7

    .line 7317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/server/wm/Session;->mUid:I

    const/4 v4, -0x1

    const-string v5, "window"

    const/4 v6, 0x2

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;I)V
    :try_end_335
    .catch Landroid/os/RemoteException; {:try_start_311 .. :try_end_335} :catch_337

    goto/16 :goto_7

    .line 7321
    :catch_337
    move-exception v2

    goto/16 :goto_7

    .line 7307
    .end local v19           #newHold:Lcom/android/server/wm/Session;
    .end local v22           #oldHold:Lcom/android/server/wm/Session;
    :catchall_33a
    move-exception v2

    :try_start_33b
    monitor-exit v3
    :try_end_33c
    .catchall {:try_start_33b .. :try_end_33c} :catchall_33a

    throw v2

    .line 7328
    :pswitch_33d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 7329
    :try_start_344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_362

    .line 7332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 7333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    .line 7334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    .line 7336
    :cond_362
    monitor-exit v3

    goto/16 :goto_7

    :catchall_365
    move-exception v2

    monitor-exit v3
    :try_end_367
    .catchall {:try_start_344 .. :try_end_367} :catchall_365

    throw v2

    .line 7341
    :pswitch_368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "window_animation_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 7343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "transition_animation_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_7

    .line 7349
    :pswitch_394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 7350
    :try_start_39b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    if-eqz v2, :cond_3c0

    .line 7353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7355
    monitor-exit v3

    goto/16 :goto_7

    .line 7362
    :catchall_3bd
    move-exception v2

    monitor-exit v3
    :try_end_3bf
    .catchall {:try_start_39b .. :try_end_3bf} :catchall_3bd

    throw v2

    .line 7359
    :cond_3c0
    :try_start_3c0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_3cb

    .line 7360
    monitor-exit v3

    goto/16 :goto_7

    .line 7362
    :cond_3cb
    monitor-exit v3
    :try_end_3cc
    .catchall {:try_start_3c0 .. :try_end_3cc} :catchall_3bd

    .line 7363
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    goto/16 :goto_7

    .line 7368
    :pswitch_3d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_7

    .line 7373
    :pswitch_3de
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 7374
    :try_start_3e5
    const-string v2, "WindowManager"

    const-string v4, "App freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 7376
    .restart local v14       #i:I
    :cond_3f6
    :goto_3f6
    if-lez v14, :cond_435

    .line 7377
    add-int/lit8 v14, v14, -0x1

    .line 7378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/wm/AppWindowToken;

    .line 7379
    .local v25, tok:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v2, :cond_3f6

    .line 7380
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force clearing freeze: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    goto :goto_3f6

    .line 7384
    .end local v14           #i:I
    .end local v25           #tok:Lcom/android/server/wm/AppWindowToken;
    :catchall_432
    move-exception v2

    monitor-exit v3
    :try_end_434
    .catchall {:try_start_3e5 .. :try_end_434} :catchall_432

    throw v2

    .restart local v14       #i:I
    :cond_435
    :try_start_435
    monitor-exit v3
    :try_end_436
    .catchall {:try_start_435 .. :try_end_436} :catchall_432

    goto/16 :goto_7

    .line 7389
    .end local v14           #i:I
    :pswitch_438
    const/16 v2, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    goto/16 :goto_7

    .line 7395
    :pswitch_448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #getter for: Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 7396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 7397
    :try_start_459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$802(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 7398
    monitor-exit v3
    :try_end_462
    .catchall {:try_start_459 .. :try_end_462} :catchall_46b

    .line 7399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_7

    .line 7398
    :catchall_46b
    move-exception v2

    :try_start_46c
    monitor-exit v3
    :try_end_46d
    .catchall {:try_start_46c .. :try_end_46d} :catchall_46b

    throw v2

    .line 7405
    :pswitch_46e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/IBinder;

    .line 7409
    .local v29, win:Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 7411
    :try_start_47d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_4a8

    .line 7412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->unregister()V

    .line 7413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 7414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->reset()V

    .line 7415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 7417
    :cond_4a8
    monitor-exit v3

    goto/16 :goto_7

    :catchall_4ab
    move-exception v2

    monitor-exit v3
    :try_end_4ad
    .catchall {:try_start_47d .. :try_end_4ad} :catchall_4ab

    throw v2

    .line 7422
    .end local v29           #win:Landroid/os/IBinder;
    :pswitch_4ae
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/IBinder;

    .line 7426
    .restart local v29       #win:Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 7428
    :try_start_4bd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_4d7

    .line 7429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 7430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 7432
    :cond_4d7
    monitor-exit v3

    goto/16 :goto_7

    :catchall_4da
    move-exception v2

    monitor-exit v3
    :try_end_4dc
    .catchall {:try_start_4bd .. :try_end_4dc} :catchall_4da

    throw v2

    .line 7437
    .end local v29           #win:Landroid/os/IBinder;
    :pswitch_4dd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    goto/16 :goto_7

    .line 7442
    :pswitch_4e6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    goto/16 :goto_7

    .line 7448
    :pswitch_4ef
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 7449
    :try_start_4f6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/util/Pair;

    .line 7450
    .local v23, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for drawn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52e

    .line 7452
    monitor-exit v3

    goto/16 :goto_7

    .line 7454
    .end local v23           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :catchall_52b
    move-exception v2

    monitor-exit v3
    :try_end_52d
    .catchall {:try_start_4f6 .. :try_end_52d} :catchall_52b

    throw v2

    .restart local v23       #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :cond_52e
    :try_start_52e
    monitor-exit v3
    :try_end_52f
    .catchall {:try_start_52e .. :try_end_52f} :catchall_52b

    .line 7456
    :try_start_52f
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_539
    .catch Landroid/os/RemoteException; {:try_start_52f .. :try_end_539} :catch_53b

    goto/16 :goto_7

    .line 7457
    :catch_53b
    move-exception v2

    goto/16 :goto_7

    .line 7121
    .end local v23           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    .restart local v11       #N:I
    .restart local v14       #i:I
    .restart local v17       #losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catch_53e
    move-exception v2

    goto/16 :goto_db

    .line 7091
    .end local v11           #N:I
    .end local v14           #i:I
    .end local v17           #losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v16       #lastFocus:Lcom/android/server/wm/WindowState;
    .restart local v18       #newFocus:Lcom/android/server/wm/WindowState;
    :catch_541
    move-exception v2

    goto/16 :goto_89

    .line 7055
    :pswitch_data_544
    .packed-switch 0x2
        :pswitch_8
        :pswitch_a5
        :pswitch_e1
        :pswitch_fc
        :pswitch_190
        :pswitch_1e3
        :pswitch_25d
        :pswitch_249
        :pswitch_7
        :pswitch_292
        :pswitch_2ed
        :pswitch_33d
        :pswitch_368
        :pswitch_394
        :pswitch_3d5
        :pswitch_3de
        :pswitch_438
        :pswitch_448
        :pswitch_46e
        :pswitch_4ae
        :pswitch_4dd
        :pswitch_4e6
        :pswitch_4ef
    .end packed-switch
.end method
