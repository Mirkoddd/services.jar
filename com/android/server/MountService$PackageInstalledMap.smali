.class Lcom/android/server/MountService$PackageInstalledMap;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstalledMap"
.end annotation


# instance fields
.field public final InstalledPath:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "InstalledPath"
    .parameter "id"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/server/MountService$PackageInstalledMap;->this$0:Lcom/android/server/MountService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p2, p0, Lcom/android/server/MountService$PackageInstalledMap;->InstalledPath:Ljava/lang/String;

    .line 222
    iput-object p3, p0, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    .line 223
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 230
    instance-of v2, p1, Lcom/android/server/MountService$PackageInstalledMap;

    if-eqz v2, :cond_1d

    move-object v0, p1

    .line 232
    check-cast v0, Lcom/android/server/MountService$PackageInstalledMap;

    .line 234
    .local v0, tmp:Lcom/android/server/MountService$PackageInstalledMap;
    iget-object v2, p0, Lcom/android/server/MountService$PackageInstalledMap;->InstalledPath:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/MountService$PackageInstalledMap;->InstalledPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    .line 237
    .end local v0           #tmp:Lcom/android/server/MountService$PackageInstalledMap;
    :cond_1d
    return v1
.end method

.method public getInstalledPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/MountService$PackageInstalledMap;->InstalledPath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/MountService$PackageInstalledMap;->InstalledPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
