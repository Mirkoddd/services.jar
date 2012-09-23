.class Lcom/android/server/wm/WindowManagerService$4;
.super Lcom/android/internal/view/BaseInputHandler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 883
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .registers 20
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 887
    const/4 v3, 0x1

    .line 888
    .local v3, handled:Z
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 890
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    .line 891
    .local v11, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    .line 892
    .local v12, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 894
    .local v2, action:I
    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    if-nez v13, :cond_1d

    .line 972
    :cond_1c
    :goto_1c
    return-void

    .line 898
    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v13, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v14

    .line 899
    :try_start_24
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->findTargetWindow(FF)Lcom/android/server/wm/WindowState;
    invoke-static {v13, v11, v12}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;FF)Lcom/android/server/wm/WindowState;

    move-result-object v7

    .line 906
    .local v7, targetWin:Lcom/android/server/wm/WindowState;
    iget-object v13, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v15, 0x834

    if-ne v13, v15, :cond_c2

    .line 908
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v15, 0x0

    iput-boolean v15, v13, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 909
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 912
    .local v4, i:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v13, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 913
    .local v10, windows:Ljava/util/ArrayList;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 914
    .local v1, N:I
    const/4 v8, 0x0

    .line 915
    .local v8, topWidgetWin:Lcom/android/server/wm/WindowState;
    const/4 v9, 0x0

    .line 916
    .local v9, win:Lcom/android/server/wm/WindowState;
    add-int/lit8 v6, v1, -0x1

    .local v6, j:I
    :goto_53
    if-ltz v6, :cond_9b

    .line 918
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #win:Lcom/android/server/wm/WindowState;
    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 920
    .restart local v9       #win:Lcom/android/server/wm/WindowState;
    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v15, 0x834

    if-eq v13, v15, :cond_66

    .line 916
    add-int/lit8 v6, v6, -0x1

    goto :goto_53

    .line 927
    :cond_66
    move-object v8, v9

    .line 928
    if-eq v8, v7, :cond_a4

    .line 929
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 930
    .local v5, id:I
    if-gez v5, :cond_a0

    .line 931
    const-string v13, "WindowManager"

    const-string v15, "    no targetWin in mWindows!!"

    invoke-static {v13, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const/4 v8, 0x0

    .line 938
    :goto_77
    if-eqz v8, :cond_9b

    .line 940
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v13, v8, v7}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 941
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object v7, v13, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    .line 944
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v15, 0x1

    iput-boolean v15, v13, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 945
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v15, 0x1

    iput-boolean v15, v13, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 946
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v13}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    .line 971
    .end local v1           #N:I
    .end local v4           #i:I
    .end local v5           #id:I
    .end local v6           #j:I
    .end local v8           #topWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v9           #win:Lcom/android/server/wm/WindowState;
    .end local v10           #windows:Ljava/util/ArrayList;
    :cond_9b
    :goto_9b
    monitor-exit v14

    goto :goto_1c

    .end local v7           #targetWin:Lcom/android/server/wm/WindowState;
    :catchall_9d
    move-exception v13

    monitor-exit v14
    :try_end_9f
    .catchall {:try_start_24 .. :try_end_9f} :catchall_9d

    throw v13

    .line 935
    .restart local v1       #N:I
    .restart local v4       #i:I
    .restart local v5       #id:I
    .restart local v6       #j:I
    .restart local v7       #targetWin:Lcom/android/server/wm/WindowState;
    .restart local v8       #topWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v9       #win:Lcom/android/server/wm/WindowState;
    .restart local v10       #windows:Ljava/util/ArrayList;
    :cond_a0
    :try_start_a0
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_77

    .line 950
    .end local v5           #id:I
    :cond_a4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v13, v7, :cond_9b

    .line 952
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v15, 0x1

    iput-boolean v15, v13, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 953
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v15, 0x1

    iput-boolean v15, v13, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 954
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v13}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    goto :goto_9b

    .line 962
    .end local v1           #N:I
    .end local v4           #i:I
    .end local v6           #j:I
    .end local v8           #topWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v9           #win:Lcom/android/server/wm/WindowState;
    .end local v10           #windows:Ljava/util/ArrayList;
    :cond_c2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    if-ge v13, v15, :cond_9b

    .line 965
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v15, 0x1

    iput-boolean v15, v13, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 966
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v15, 0x1

    iput-boolean v15, v13, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 967
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v15, 0x1

    iput-boolean v15, v13, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 968
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v13}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_100
    .catchall {:try_start_a0 .. :try_end_100} :catchall_9d

    goto :goto_9b
.end method
