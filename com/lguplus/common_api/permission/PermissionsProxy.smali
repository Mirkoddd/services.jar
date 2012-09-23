.class public Lcom/lguplus/common_api/permission/PermissionsProxy;
.super Ljava/lang/Object;
.source "PermissionsProxy.java"


# direct methods
.method public constructor <init>(Landroid/content/pm/IPackageManager$Stub;)V
    .registers 2
    .parameter "pkgMgr"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method private getPerms()V
    .registers 1

    .prologue
    .line 14
    return-void
.end method


# virtual methods
.method public afterAddPkg(Landroid/content/pm/PackageParser$Package;)V
    .registers 2
    .parameter "pkg"

    .prologue
    .line 36
    return-void
.end method

.method public beforeAddPkg(Landroid/content/pm/PackageParser$Package;)V
    .registers 2
    .parameter "pkg"

    .prologue
    .line 33
    return-void
.end method

.method public checkByPkgName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "pkgName"
    .parameter "permName"

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public checkByUid(ILjava/lang/String;)Z
    .registers 4
    .parameter "uid"
    .parameter "permName"

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public getGids(Ljava/lang/String;)[I
    .registers 3
    .parameter "pkgName"

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSystemUid(Ljava/lang/String;)Z
    .registers 3
    .parameter "pkgName"

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public onDelPkg(Landroid/content/pm/PackageParser$Package;)V
    .registers 2
    .parameter "pkg"

    .prologue
    .line 39
    return-void
.end method

.method public reorderApkFiles([Ljava/lang/String;)V
    .registers 2
    .parameter "files"

    .prologue
    .line 42
    return-void
.end method
