.class Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PkgSizeObserver"
.end annotation


# instance fields
.field finished:Z

.field mPkgStats:Landroid/content/pm/PackageStats;

.field result:Z

.field final synthetic this$0:Lcom/android/server/enterprise/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ApplicationPolicy;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2507
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    .line 2508
    iput-boolean v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->finished:Z

    .line 2510
    iput-boolean v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->result:Z

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .registers 4
    .parameter "pStats"
    .parameter "succeeded"

    .prologue
    .line 2513
    monitor-enter p0

    .line 2514
    :try_start_1
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    .line 2515
    iput-boolean p2, p0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->result:Z

    .line 2516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->finished:Z

    .line 2517
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2518
    monitor-exit p0

    .line 2519
    return-void

    .line 2518
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method
