.class Lcom/android/server/PowerManagerService$PokeLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PokeLock"
.end annotation


# instance fields
.field awakeOnSet:Z

.field binder:Landroid/os/IBinder;

.field pokey:I

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter "p"
    .parameter "b"
    .parameter "t"

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/android/server/PowerManagerService$PokeLock;->this$0:Lcom/android/server/PowerManagerService;

    .line 1126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    iput p2, p0, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    .line 1128
    iput-object p3, p0, Lcom/android/server/PowerManagerService$PokeLock;->binder:Landroid/os/IBinder;

    .line 1129
    iput-object p4, p0, Lcom/android/server/PowerManagerService$PokeLock;->tag:Ljava/lang/String;

    .line 1131
    const/4 v1, 0x0

    :try_start_c
    invoke-interface {p3, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1135
    :goto_f
    return-void

    .line 1132
    :catch_10
    move-exception v0

    .line 1133
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$PokeLock;->binderDied()V

    goto :goto_f
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PokeLock;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/PowerManagerService$PokeLock;->binder:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/PowerManagerService$PokeLock;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PowerManagerService;->setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 1138
    return-void
.end method
