.class Lcom/android/server/InputMethodManagerService$PackageAddedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageAddedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$PackageAddedReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 450
    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 453
    .local v4, salesCode:Ljava/lang/String;
    const-string v5, "TEL"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    const-string v5, "VAU"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    const-string v5, "HUT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    const-string v5, "CEL"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    const-string v5, "ILO"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    const-string v5, "MIR"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    const-string v5, "PCL"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    const-string v5, "PTR"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 461
    :cond_46
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, dataString:Ljava/lang/String;
    if-nez v1, :cond_4d

    .line 487
    .end local v1           #dataString:Ljava/lang/String;
    :cond_4c
    return-void

    .line 466
    .restart local v1       #dataString:Ljava/lang/String;
    :cond_4d
    const-string v5, "swype"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 467
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$PackageAddedReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 469
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5e
    if-ge v2, v0, :cond_4c

    .line 470
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$PackageAddedReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 473
    .local v3, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "swype"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 474
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$PackageAddedReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    .line 477
    const-string v5, "TEL"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9a

    const-string v5, "VAU"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9a

    const-string v5, "HUT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 480
    :cond_9a
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$PackageAddedReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 469
    :cond_a5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e
.end method
