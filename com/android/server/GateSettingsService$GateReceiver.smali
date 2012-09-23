.class Lcom/android/server/GateSettingsService$GateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GateSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GateSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GateSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/GateSettingsService;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/server/GateSettingsService$GateReceiver;->this$0:Lcom/android/server/GateSettingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GateSettingsService;Lcom/android/server/GateSettingsService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/GateSettingsService$GateReceiver;-><init>(Lcom/android/server/GateSettingsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.sec.android.gate.GATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 68
    const-string v2, "service.gate.enabled"

    const-string v1, "ENABLED"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "1"

    :goto_19
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1c
    :goto_1c
    return-void

    .line 68
    :cond_1d
    const-string v1, "0"

    goto :goto_19

    .line 69
    :cond_20
    const-string v1, "com.sec.android.gate.LCDTEXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 70
    const-string v2, "service.gate.lcdtexton"

    const-string v1, "ENABLED"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "1"

    :goto_34
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_38
    const-string v1, "0"

    goto :goto_34
.end method
