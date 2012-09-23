.class Lcom/android/server/am/AppPermissionAlertDialog$1;
.super Ljava/lang/Object;
.source "AppPermissionAlertDialog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPermissionAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPermissionAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPermissionAlertDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/am/AppPermissionAlertDialog$1;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .parameter "className"
    .parameter "binder"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/server/am/AppPermissionAlertDialog$1;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    invoke-static {p2}, Landroid/app/ICMDialogMessageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ICMDialogMessageManager;

    move-result-object v2

    #setter for: Lcom/android/server/am/AppPermissionAlertDialog;->mService:Landroid/app/ICMDialogMessageManager;
    invoke-static {v1, v2}, Lcom/android/server/am/AppPermissionAlertDialog;->access$002(Lcom/android/server/am/AppPermissionAlertDialog;Landroid/app/ICMDialogMessageManager;)Landroid/app/ICMDialogMessageManager;

    .line 61
    iget-object v1, p0, Lcom/android/server/am/AppPermissionAlertDialog$1;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    #getter for: Lcom/android/server/am/AppPermissionAlertDialog;->mService:Landroid/app/ICMDialogMessageManager;
    invoke-static {v1}, Lcom/android/server/am/AppPermissionAlertDialog;->access$000(Lcom/android/server/am/AppPermissionAlertDialog;)Landroid/app/ICMDialogMessageManager;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 63
    :try_start_11
    iget-object v1, p0, Lcom/android/server/am/AppPermissionAlertDialog$1;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    iget-object v2, p0, Lcom/android/server/am/AppPermissionAlertDialog$1;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    #getter for: Lcom/android/server/am/AppPermissionAlertDialog;->mService:Landroid/app/ICMDialogMessageManager;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionAlertDialog;->access$000(Lcom/android/server/am/AppPermissionAlertDialog;)Landroid/app/ICMDialogMessageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/ICMDialogMessageManager;->getPermissionAlertDialogTitle()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/server/am/AppPermissionAlertDialog;->mTitleByApp:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/AppPermissionAlertDialog;->access$102(Lcom/android/server/am/AppPermissionAlertDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/android/server/am/AppPermissionAlertDialog$1;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    iget-object v2, p0, Lcom/android/server/am/AppPermissionAlertDialog$1;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    #getter for: Lcom/android/server/am/AppPermissionAlertDialog;->mService:Landroid/app/ICMDialogMessageManager;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionAlertDialog;->access$000(Lcom/android/server/am/AppPermissionAlertDialog;)Landroid/app/ICMDialogMessageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppPermissionAlertDialog$1;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    #getter for: Lcom/android/server/am/AppPermissionAlertDialog;->mAppName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/AppPermissionAlertDialog;->access$300(Lcom/android/server/am/AppPermissionAlertDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/AppPermissionAlertDialog$1;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    #getter for: Lcom/android/server/am/AppPermissionAlertDialog;->mPermissions:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/am/AppPermissionAlertDialog;->access$400(Lcom/android/server/am/AppPermissionAlertDialog;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/app/ICMDialogMessageManager;->getPermissionAlertDialogMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/server/am/AppPermissionAlertDialog;->mMessageByApp:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/AppPermissionAlertDialog;->access$202(Lcom/android/server/am/AppPermissionAlertDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/android/server/am/AppPermissionAlertDialog$1;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    #getter for: Lcom/android/server/am/AppPermissionAlertDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/am/AppPermissionAlertDialog;->access$500(Lcom/android/server/am/AppPermissionAlertDialog;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppPermissionAlertDialog$1;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    #getter for: Lcom/android/server/am/AppPermissionAlertDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionAlertDialog;->access$500(Lcom/android/server/am/AppPermissionAlertDialog;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_4f} :catch_50

    .line 70
    :cond_4f
    :goto_4f
    return-void

    .line 66
    :catch_50
    move-exception v0

    .line 67
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4f
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog$1;->this$0:Lcom/android/server/am/AppPermissionAlertDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/am/AppPermissionAlertDialog;->mService:Landroid/app/ICMDialogMessageManager;
    invoke-static {v0, v1}, Lcom/android/server/am/AppPermissionAlertDialog;->access$002(Lcom/android/server/am/AppPermissionAlertDialog;Landroid/app/ICMDialogMessageManager;)Landroid/app/ICMDialogMessageManager;

    .line 75
    return-void
.end method
