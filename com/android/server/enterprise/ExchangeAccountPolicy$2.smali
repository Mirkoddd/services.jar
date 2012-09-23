.class Lcom/android/server/enterprise/ExchangeAccountPolicy$2;
.super Landroid/os/Handler;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ExchangeAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ExchangeAccountPolicy;)V
    .registers 2
    .parameter

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/ExchangeAccountPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 1138
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_60

    .line 1157
    :goto_20
    return-void

    .line 1142
    :pswitch_21
    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/ExchangeAccountPolicy;

    #getter for: Lcom/android/server/enterprise/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z
    invoke-static {v3}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->access$100(Lcom/android/server/enterprise/ExchangeAccountPolicy;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1143
    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/ExchangeAccountPolicy;

    #getter for: Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->access$200(Lcom/android/server/enterprise/ExchangeAccountPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1144
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.exchange"

    const-string v4, "com.android.exchange.ExchangeService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    .local v2, syncMgrCn:Landroid/content/ComponentName;
    const-string v3, "Enabling EAS ExchangeService"

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 1147
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1149
    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/ExchangeAccountPolicy;

    #setter for: Lcom/android/server/enterprise/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z
    invoke-static {v3, v6}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->access$102(Lcom/android/server/enterprise/ExchangeAccountPolicy;Z)Z

    .line 1151
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.email.EXCHANGE_INTENT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1152
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/ExchangeAccountPolicy;

    #getter for: Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->access$200(Lcom/android/server/enterprise/ExchangeAccountPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1154
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #syncMgrCn:Landroid/content/ComponentName;
    :cond_5a
    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/ExchangeAccountPolicy;

    #setter for: Lcom/android/server/enterprise/ExchangeAccountPolicy;->mRestartExtendDelay:Z
    invoke-static {v3, v6}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->access$302(Lcom/android/server/enterprise/ExchangeAccountPolicy;Z)Z

    goto :goto_20

    .line 1139
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_21
    .end packed-switch
.end method
