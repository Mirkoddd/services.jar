.class Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;
.super Ljava/lang/Thread;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandsLooperThread"
.end annotation


# instance fields
.field public mHandler:Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;

.field final synthetic this$0:Lcom/android/server/enterprise/FirewallPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/FirewallPolicy;)V
    .registers 2
    .parameter

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1751
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1752
    new-instance v0, Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;-><init>(Lcom/android/server/enterprise/FirewallPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;

    .line 1753
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1754
    return-void
.end method
