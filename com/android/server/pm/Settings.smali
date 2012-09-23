.class final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field private static final DEBUG_STOPPED:Z = false

.field private static final TAG:Ljava/lang/String; = "PackageSettings"

.field static final mIsEngBuild:Z


# instance fields
.field private final mBackupSettingsFilename:Ljava/io/File;

.field private final mBackupStoppedPackagesFilename:Ljava/io/File;

.field final mDisabledSysPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field mExternalSdkPlatform:I

.field mInternalSdkPlatform:I

.field private final mMoreBackupSettingsFilename:Ljava/io/File;

.field private final mOtherUserIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListFilename:Ljava/io/File;

.field final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagesToBeCleaned:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PendingPackage;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionTrees:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPreferredActivities:Lcom/android/server/IntentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IntentResolver",
            "<",
            "Lcom/android/server/pm/PreferredActivity;",
            "Lcom/android/server/pm/PreferredActivity;",
            ">;"
        }
    .end annotation
.end field

.field final mReadMessages:Ljava/lang/StringBuilder;

.field final mRenamedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsFilename:Ljava/io/File;

.field final mSharedUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoppedPackagesFilename:Ljava/io/File;

.field private final mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 142
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/Settings;->mIsEngBuild:Z

    return-void
.end method

.method constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    .line 86
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    .line 100
    new-instance v2, Lcom/android/server/pm/Settings$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    .line 115
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 123
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    .line 127
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    .line 138
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    .line 154
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 155
    .local v0, dataDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    .local v1, systemDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 157
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1fd

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 161
    new-instance v2, Ljava/io/File;

    const-string v3, "packages.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 162
    new-instance v2, Ljava/io/File;

    const-string v3, "packages-backup.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 163
    new-instance v2, Ljava/io/File;

    const-string v3, "packages-more-backup.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    .line 164
    new-instance v2, Ljava/io/File;

    const-string v3, "packages.list"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 165
    new-instance v2, Ljava/io/File;

    const-string v3, "packages-stopped.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 166
    new-instance v2, Ljava/io/File;

    const-string v3, "packages-stopped-backup.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 167
    return-void
.end method

.method private addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V
    .registers 7
    .parameter "p"
    .parameter "name"
    .parameter "sharedUser"

    .prologue
    const/4 v2, 0x6

    .line 552
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    if-eqz p3, :cond_56

    .line 554
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_57

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v0, p3, :cond_57

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 559
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 568
    :cond_4b
    :goto_4b
    iget-object v0, p3, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 569
    iput-object p3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 570
    iget v0, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->userId:I

    .line 572
    :cond_56
    return-void

    .line 560
    :cond_57
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->userId:I

    iget v1, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-eq v0, v1, :cond_4b

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was user id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but is now user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_4b
.end method

.method private addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .parameter "uid"
    .parameter "obj"
    .parameter "name"

    .prologue
    const/4 v5, 0x6

    const/4 v2, 0x0

    .line 656
    const/16 v3, 0x2af8

    if-lt p1, v3, :cond_7

    .line 683
    :goto_6
    return v2

    .line 660
    :cond_7
    const/16 v3, 0x2710

    if-lt p1, v3, :cond_4e

    .line 661
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 662
    .local v0, N:I
    add-int/lit16 v1, p1, -0x2710

    .line 663
    .local v1, index:I
    :goto_13
    if-lt v1, v0, :cond_1e

    .line 664
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 667
    :cond_1e
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate user id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_6

    .line 673
    :cond_47
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 683
    .end local v0           #N:I
    .end local v1           #index:I
    :goto_4c
    const/4 v2, 0x1

    goto :goto_6

    .line 675
    :cond_4e
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_77

    .line 676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_6

    .line 681
    :cond_77
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4c
.end method

.method private getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIZZ)Lcom/android/server/pm/PackageSetting;
    .registers 23
    .parameter "name"
    .parameter "origPackage"
    .parameter "realName"
    .parameter "sharedUser"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "vc"
    .parameter "pkgFlags"
    .parameter "create"
    .parameter "add"

    .prologue
    .line 363
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 364
    .local v1, p:Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_88

    .line 365
    iget-object v2, v1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 367
    iget v2, v1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_96

    .line 371
    sget-boolean v2, Lcom/android/server/pm/Settings;->mIsEngBuild:Z

    if-eqz v2, :cond_8e

    .line 372
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to update system app code path from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_46
    :goto_46
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v2, p4, :cond_e4

    .line 398
    const/4 v3, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " shared user changed from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_de

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :goto_68
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p4, :cond_e1

    iget-object v2, p4, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :goto_76
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; replacing with new"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 404
    const/4 v1, 0x0

    .line 414
    :cond_88
    :goto_88
    if-nez v1, :cond_1c4

    .line 417
    if-nez p10, :cond_ef

    .line 418
    const/4 v2, 0x0

    .line 493
    :goto_8d
    return-object v2

    .line 375
    :cond_8e
    const-string v2, "PackageManager"

    const-string v3, "Trying to update system app code path from p.codePathString to codePath.toString()"

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 381
    :cond_96
    sget-boolean v2, Lcom/android/server/pm/Settings;->mIsEngBuild:Z

    if-eqz v2, :cond_d6

    .line 382
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " codePath changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; Retaining data and using new"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_d0
    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    goto/16 :goto_46

    .line 385
    :cond_d6
    const-string v2, "PackageManager"

    const-string v3, "Package name codePath changed from p.codePath to codePath; Retaining data and using new"

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    .line 398
    :cond_de
    const-string v2, "<nothing>"

    goto :goto_68

    :cond_e1
    const-string v2, "<nothing>"

    goto :goto_76

    .line 406
    :cond_e4
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_88

    .line 410
    iget v2, v1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    goto :goto_88

    .line 420
    :cond_ef
    if-eqz p2, :cond_148

    .line 422
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    .end local v1           #p:Lcom/android/server/pm/PackageSetting;
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    move-object v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 428
    .restart local v1       #p:Lcom/android/server/pm/PackageSetting;
    iget-object v10, v1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 429
    .local v10, s:Lcom/android/server/pm/PackageSignatures;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    .line 430
    iput-object v10, v1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 431
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iput-object v2, v1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 432
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->userId:I

    iput v2, v1, Lcom/android/server/pm/PackageSetting;->userId:I

    .line 433
    iput-object p2, v1, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    .line 434
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object p1, p2, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 437
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 482
    .end local v10           #s:Lcom/android/server/pm/PackageSignatures;
    :goto_124
    iget v2, v1, Lcom/android/server/pm/PackageSetting;->userId:I

    if-gez v2, :cond_1bf

    .line 483
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " could not be assigned a valid uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 485
    const/4 v2, 0x0

    goto/16 :goto_8d

    .line 439
    :cond_148
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    .end local v1           #p:Lcom/android/server/pm/PackageSetting;
    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 441
    .restart local v1       #p:Lcom/android/server/pm/PackageSetting;
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 442
    iput-object p4, v1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 444
    and-int/lit8 v2, p9, 0x1

    if-nez v2, :cond_16c

    .line 450
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/pm/PackageSettingBase;->stopped:Z

    .line 451
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Z

    .line 453
    :cond_16c
    if-eqz p4, :cond_173

    .line 454
    iget v2, p4, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v2, v1, Lcom/android/server/pm/PackageSetting;->userId:I

    goto :goto_124

    .line 457
    :cond_173
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 458
    .local v9, dis:Lcom/android/server/pm/PackageSetting;
    if-eqz v9, :cond_1b7

    .line 463
    iget-object v2, v9, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_191

    .line 464
    iget-object v3, v1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v9, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v2}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/Signature;

    iput-object v2, v3, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .line 466
    :cond_191
    iget v2, v9, Lcom/android/server/pm/PackageSetting;->userId:I

    iput v2, v1, Lcom/android/server/pm/PackageSetting;->userId:I

    .line 468
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v9, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 470
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v9, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    .line 471
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v9, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    .line 473
    iget v2, v1, Lcom/android/server/pm/PackageSetting;->userId:I

    invoke-direct {p0, v2, v1, p1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_124

    .line 476
    :cond_1b7
    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Lcom/android/server/pm/PackageSetting;->userId:I

    goto/16 :goto_124

    .line 487
    .end local v9           #dis:Lcom/android/server/pm/PackageSetting;
    :cond_1bf
    if-eqz p11, :cond_1c4

    .line 490
    invoke-direct {p0, v1, p1, p4}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V

    :cond_1c4
    move-object v2, v1

    .line 493
    goto/16 :goto_8d
.end method

.method private newUserIdLPw(Ljava/lang/Object;)I
    .registers 5
    .parameter "obj"

    .prologue
    .line 2001
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2002
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 2003
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_19

    .line 2004
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2005
    add-int/lit16 v2, v1, 0x2710

    .line 2015
    :goto_18
    return v2

    .line 2002
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2010
    :cond_1c
    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_22

    .line 2011
    const/4 v2, -0x1

    goto :goto_18

    .line 2014
    :cond_22
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2015
    add-int/lit16 v2, v0, 0x2710

    goto :goto_18
.end method

.method private readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .parameter "packageSetting"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 1825
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1828
    .local v1, outerDepth:I
    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_72

    if-ne v3, v6, :cond_15

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_72

    .line 1829
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 1833
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1834
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 1835
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1836
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_3c

    .line 1837
    iget-object v4, p1, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1847
    .end local v0           #name:Ljava/lang/String;
    :goto_38
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 1839
    .restart local v0       #name:Ljava/lang/String;
    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_38

    .line 1844
    .end local v0           #name:Ljava/lang/String;
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_38

    .line 1849
    .end local v2           #tagName:Ljava/lang/String;
    :cond_72
    return-void
.end method

.method private readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 25
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1523
    const/4 v5, 0x0

    const-string v6, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1524
    .local v3, name:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "realName"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1525
    .local v4, realName:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "codePath"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1526
    .local v10, codePathStr:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "resourcePath"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1527
    .local v14, resourcePathStr:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "nativeLibraryPath"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1528
    .local v7, nativeLibraryPathStr:Ljava/lang/String;
    if-nez v14, :cond_30

    .line 1529
    move-object v14, v10

    .line 1531
    :cond_30
    const/4 v5, 0x0

    const-string v6, "version"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1532
    .local v21, version:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1533
    .local v8, versionCode:I
    if-eqz v21, :cond_40

    .line 1535
    :try_start_3c
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_3f} :catch_f4

    move-result v8

    .line 1541
    :cond_40
    const/4 v9, 0x0

    .line 1542
    .local v9, pkgFlags:I
    or-int/lit8 v9, v9, 0x1

    .line 1543
    new-instance v2, Lcom/android/server/pm/PackageSetting;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 1545
    .local v2, ps:Lcom/android/server/pm/PackageSetting;
    const/4 v5, 0x0

    const-string v6, "ft"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1546
    .local v19, timeStampStr:Ljava/lang/String;
    if-eqz v19, :cond_10a

    .line 1548
    const/16 v5, 0x10

    :try_start_5f
    move-object/from16 v0, v19

    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v17

    .line 1549
    .local v17, timeStamp:J
    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_5f .. :try_end_6a} :catch_ff

    .line 1564
    .end local v17           #timeStamp:J
    :cond_6a
    :goto_6a
    const/4 v5, 0x0

    const-string v6, "it"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1565
    if-eqz v19, :cond_7f

    .line 1567
    const/16 v5, 0x10

    :try_start_77
    move-object/from16 v0, v19

    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J
    :try_end_7f
    .catch Ljava/lang/NumberFormatException; {:try_start_77 .. :try_end_7f} :catch_12b

    .line 1572
    :cond_7f
    const/4 v5, 0x0

    const-string v6, "ut"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1573
    if-eqz v19, :cond_94

    .line 1575
    const/16 v5, 0x10

    :try_start_8c
    move-object/from16 v0, v19

    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J
    :try_end_94
    .catch Ljava/lang/NumberFormatException; {:try_start_8c .. :try_end_94} :catch_136

    .line 1580
    :cond_94
    const/4 v5, 0x0

    const-string v6, "userId"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1581
    .local v12, idStr:Ljava/lang/String;
    if-eqz v12, :cond_141

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_a3
    iput v5, v2, Lcom/android/server/pm/PackageSetting;->userId:I

    .line 1582
    iget v5, v2, Lcom/android/server/pm/PackageSetting;->userId:I

    if-gtz v5, :cond_ba

    .line 1583
    const/4 v5, 0x0

    const-string v6, "sharedUserId"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1584
    .local v15, sharedIdStr:Ljava/lang/String;
    if-eqz v15, :cond_144

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_b8
    iput v5, v2, Lcom/android/server/pm/PackageSetting;->userId:I

    .line 1586
    .end local v15           #sharedIdStr:Ljava/lang/String;
    :cond_ba
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .line 1589
    .local v13, outerDepth:I
    :cond_be
    :goto_be
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .local v20, type:I
    const/4 v5, 0x1

    move/from16 v0, v20

    if-eq v0, v5, :cond_16b

    const/4 v5, 0x3

    move/from16 v0, v20

    if-ne v0, v5, :cond_d2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v13, :cond_16b

    .line 1590
    :cond_d2
    const/4 v5, 0x3

    move/from16 v0, v20

    if-eq v0, v5, :cond_be

    const/4 v5, 0x4

    move/from16 v0, v20

    if-eq v0, v5, :cond_be

    .line 1594
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1595
    .local v16, tagName:Ljava/lang/String;
    const-string v5, "perms"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_147

    .line 1596
    iget-object v5, v2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/server/pm/Settings;->readGrantedPermissionsLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    goto :goto_be

    .line 1536
    .end local v2           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v9           #pkgFlags:I
    .end local v12           #idStr:Ljava/lang/String;
    .end local v13           #outerDepth:I
    .end local v16           #tagName:Ljava/lang/String;
    .end local v19           #timeStampStr:Ljava/lang/String;
    .end local v20           #type:I
    :catch_f4
    move-exception v11

    .line 1537
    .local v11, e:Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1550
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #ps:Lcom/android/server/pm/PackageSetting;
    .restart local v9       #pkgFlags:I
    .restart local v19       #timeStampStr:Ljava/lang/String;
    :catch_ff
    move-exception v11

    .line 1551
    .restart local v11       #e:Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1554
    .end local v11           #e:Ljava/lang/NumberFormatException;
    :cond_10a
    const/4 v5, 0x0

    const-string v6, "ts"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1555
    if-eqz v19, :cond_6a

    .line 1557
    :try_start_115
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 1558
    .restart local v17       #timeStamp:J
    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_11e
    .catch Ljava/lang/NumberFormatException; {:try_start_115 .. :try_end_11e} :catch_120

    goto/16 :goto_6a

    .line 1559
    .end local v17           #timeStamp:J
    :catch_120
    move-exception v11

    .line 1560
    .restart local v11       #e:Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1568
    .end local v11           #e:Ljava/lang/NumberFormatException;
    :catch_12b
    move-exception v11

    .line 1569
    .restart local v11       #e:Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1576
    .end local v11           #e:Ljava/lang/NumberFormatException;
    :catch_136
    move-exception v11

    .line 1577
    .restart local v11       #e:Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1581
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .restart local v12       #idStr:Ljava/lang/String;
    :cond_141
    const/4 v5, 0x0

    goto/16 :goto_a3

    .line 1584
    .restart local v15       #sharedIdStr:Ljava/lang/String;
    :cond_144
    const/4 v5, 0x0

    goto/16 :goto_b8

    .line 1598
    .end local v15           #sharedIdStr:Ljava/lang/String;
    .restart local v13       #outerDepth:I
    .restart local v16       #tagName:Ljava/lang/String;
    .restart local v20       #type:I
    :cond_147
    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown element under <updated-package>: "

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1600
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_be

    .line 1603
    .end local v16           #tagName:Ljava/lang/String;
    :cond_16b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    return-void
.end method

.method private readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .parameter "packageSetting"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 1853
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1856
    .local v1, outerDepth:I
    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_72

    if-ne v3, v6, :cond_15

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_72

    .line 1857
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 1861
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1862
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 1863
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1864
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_3c

    .line 1865
    iget-object v4, p1, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1875
    .end local v0           #name:Ljava/lang/String;
    :goto_38
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 1867
    .restart local v0       #name:Ljava/lang/String;
    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_38

    .line 1872
    .end local v0           #name:Ljava/lang/String;
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_38

    .line 1877
    .end local v2           #tagName:Ljava/lang/String;
    :cond_72
    return-void
.end method

.method private readGrantedPermissionsLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V
    .registers 11
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .local p2, outPerms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 1943
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1946
    .local v1, outerDepth:I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_70

    if-ne v3, v6, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_70

    .line 1947
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 1951
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1952
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 1953
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1954
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_3a

    .line 1955
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1965
    .end local v0           #name:Ljava/lang/String;
    :goto_36
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 1957
    .restart local v0       #name:Ljava/lang/String;
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <perms> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_36

    .line 1962
    .end local v0           #name:Ljava/lang/String;
    :cond_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <perms>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_36

    .line 1967
    .end local v2           #tagName:Ljava/lang/String;
    :cond_70
    return-void
.end method

.method private readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .parameter "parser"
    .parameter "ns"
    .parameter "name"
    .parameter "defValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1461
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1463
    .local v1, v:Ljava/lang/String;
    if-nez v1, :cond_7

    .line 1466
    .end local p4
    :goto_6
    return p4

    .restart local p4
    :cond_7
    :try_start_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_c

    move-result p4

    goto :goto_6

    .line 1467
    :catch_c
    move-exception v0

    .line 1468
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has bad integer value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1472
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 36
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1607
    const/16 v21, 0x0

    .line 1608
    .local v21, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1609
    .local v4, realName:Ljava/lang/String;
    const/16 v16, 0x0

    .line 1610
    .local v16, idStr:Ljava/lang/String;
    const/16 v25, 0x0

    .line 1611
    .local v25, sharedIdStr:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1612
    .local v11, codePathStr:Ljava/lang/String;
    const/16 v24, 0x0

    .line 1613
    .local v24, resourcePathStr:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1614
    .local v7, nativeLibraryPathStr:Ljava/lang/String;
    const/16 v26, 0x0

    .line 1615
    .local v26, systemStr:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1616
    .local v18, installerPackageName:Ljava/lang/String;
    const/16 v32, 0x0

    .line 1617
    .local v32, uidError:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1618
    .local v10, pkgFlags:I
    const-wide/16 v28, 0x0

    .line 1619
    .local v28, timeStamp:J
    const-wide/16 v14, 0x0

    .line 1620
    .local v14, firstInstallTime:J
    const-wide/16 v19, 0x0

    .line 1621
    .local v19, lastUpdateTime:J
    const/16 v23, 0x0

    .line 1622
    .local v23, packageSetting:Lcom/android/server/pm/PackageSettingBase;
    const/16 v33, 0x0

    .line 1623
    .local v33, version:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1625
    .local v9, versionCode:I
    const/4 v3, 0x0

    :try_start_1e
    const-string v5, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1626
    const/4 v3, 0x0

    const-string v5, "realName"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1627
    const/4 v3, 0x0

    const-string v5, "userId"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1628
    const/4 v3, 0x0

    const-string v5, "uidError"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1629
    const/4 v3, 0x0

    const-string v5, "sharedUserId"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1630
    const/4 v3, 0x0

    const-string v5, "codePath"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1631
    const/4 v3, 0x0

    const-string v5, "resourcePath"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1632
    const/4 v3, 0x0

    const-string v5, "nativeLibraryPath"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1633
    const/4 v3, 0x0

    const-string v5, "version"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_6d} :catch_174

    move-result-object v33

    .line 1634
    if-eqz v33, :cond_74

    .line 1636
    :try_start_70
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_73} :catch_169

    move-result v9

    .line 1641
    :cond_74
    const/4 v3, 0x0

    :try_start_75
    const-string v5, "installer"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1643
    const/4 v3, 0x0

    const-string v5, "flags"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_75 .. :try_end_85} :catch_174

    move-result-object v26

    .line 1644
    if-eqz v26, :cond_1bf

    .line 1646
    :try_start_88
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8b
    .catch Ljava/lang/NumberFormatException; {:try_start_88 .. :try_end_8b} :catch_1b4

    move-result v10

    .line 1662
    :goto_8c
    const/4 v3, 0x0

    :try_start_8d
    const-string v5, "ft"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_94
    .catch Ljava/lang/NumberFormatException; {:try_start_8d .. :try_end_94} :catch_174

    move-result-object v30

    .line 1663
    .local v30, timeStampStr:Ljava/lang/String;
    if-eqz v30, :cond_1e9

    .line 1665
    const/16 v3, 0x10

    :try_start_99
    move-object/from16 v0, v30

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_9e
    .catch Ljava/lang/NumberFormatException; {:try_start_99 .. :try_end_9e} :catch_1de

    move-result-wide v28

    .line 1679
    :cond_9f
    :goto_9f
    const/4 v3, 0x0

    :try_start_a0
    const-string v5, "it"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a7
    .catch Ljava/lang/NumberFormatException; {:try_start_a0 .. :try_end_a7} :catch_174

    move-result-object v30

    .line 1680
    if-eqz v30, :cond_b2

    .line 1682
    const/16 v3, 0x10

    :try_start_ac
    move-object/from16 v0, v30

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_ac .. :try_end_b1} :catch_205

    move-result-wide v14

    .line 1687
    :cond_b2
    const/4 v3, 0x0

    :try_start_b3
    const-string v5, "ut"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_ba
    .catch Ljava/lang/NumberFormatException; {:try_start_b3 .. :try_end_ba} :catch_174

    move-result-object v30

    .line 1688
    if-eqz v30, :cond_c5

    .line 1690
    const/16 v3, 0x10

    :try_start_bf
    move-object/from16 v0, v30

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_c4
    .catch Ljava/lang/NumberFormatException; {:try_start_bf .. :try_end_c4} :catch_210

    move-result-wide v19

    .line 1698
    :cond_c5
    if-eqz v16, :cond_21b

    :try_start_c7
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1699
    .local v8, userId:I
    :goto_cb
    if-nez v24, :cond_cf

    .line 1700
    move-object/from16 v24, v11

    .line 1702
    :cond_cf
    if-eqz v4, :cond_d5

    .line 1703
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 1705
    :cond_d5
    if-nez v21, :cond_21e

    .line 1706
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_f2
    .catch Ljava/lang/NumberFormatException; {:try_start_c7 .. :try_end_f2} :catch_174

    move-object/from16 v2, v23

    .line 1759
    .end local v23           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .local v2, packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :goto_f4
    if-eqz v2, :cond_408

    .line 1760
    const-string v3, "true"

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 1761
    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 1762
    iput-object v7, v2, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 1763
    const/4 v3, 0x0

    const-string v5, "enabled"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1764
    .local v13, enabledStr:Ljava/lang/String;
    if-eqz v13, :cond_39c

    .line 1766
    :try_start_111
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/pm/PackageSettingBase;->enabled:I
    :try_end_117
    .catch Ljava/lang/NumberFormatException; {:try_start_111 .. :try_end_117} :catch_337

    .line 1785
    :goto_117
    const/4 v3, 0x0

    const-string v5, "installStatus"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1786
    .local v17, installStatusStr:Ljava/lang/String;
    if-eqz v17, :cond_12f

    .line 1787
    const-string v3, "false"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a1

    .line 1788
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 1794
    :cond_12f
    :goto_12f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v22

    .line 1797
    .local v22, outerDepth:I
    :cond_133
    :goto_133
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v31

    .local v31, type:I
    const/4 v3, 0x1

    move/from16 v0, v31

    if-eq v0, v3, :cond_40b

    const/4 v3, 0x3

    move/from16 v0, v31

    if-ne v0, v3, :cond_149

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v22

    if-le v3, v0, :cond_40b

    .line 1798
    :cond_149
    const/4 v3, 0x3

    move/from16 v0, v31

    if-eq v0, v3, :cond_133

    const/4 v3, 0x4

    move/from16 v0, v31

    if-eq v0, v3, :cond_133

    .line 1802
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v27

    .line 1803
    .local v27, tagName:Ljava/lang/String;
    const-string v3, "disabled-components"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a6

    .line 1804
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_133

    .line 1637
    .end local v2           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .end local v8           #userId:I
    .end local v13           #enabledStr:Ljava/lang/String;
    .end local v17           #installStatusStr:Ljava/lang/String;
    .end local v22           #outerDepth:I
    .end local v27           #tagName:Ljava/lang/String;
    .end local v30           #timeStampStr:Ljava/lang/String;
    .end local v31           #type:I
    .restart local v23       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :catch_169
    move-exception v12

    .line 1638
    .local v12, e:Ljava/lang/NumberFormatException;
    :try_start_16a
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_174
    .catch Ljava/lang/NumberFormatException; {:try_start_16a .. :try_end_174} :catch_174

    .line 1753
    .end local v12           #e:Ljava/lang/NumberFormatException;
    :catch_174
    move-exception v12

    move-object/from16 v2, v23

    .line 1754
    .end local v23           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v2       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v12       #e:Ljava/lang/NumberFormatException;
    :goto_177
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1757
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1647
    .end local v2           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .end local v12           #e:Ljava/lang/NumberFormatException;
    .restart local v23       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :catch_1b4
    move-exception v12

    .line 1648
    .restart local v12       #e:Ljava/lang/NumberFormatException;
    :try_start_1b5
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1652
    .end local v12           #e:Ljava/lang/NumberFormatException;
    :cond_1bf
    const/4 v3, 0x0

    const-string v5, "system"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1653
    if-eqz v26, :cond_1da

    .line 1654
    const-string v3, "true"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d8

    const/4 v3, 0x1

    :goto_1d5
    or-int/2addr v10, v3

    goto/16 :goto_8c

    :cond_1d8
    const/4 v3, 0x0

    goto :goto_1d5

    .line 1659
    :cond_1da
    or-int/lit8 v10, v10, 0x1

    goto/16 :goto_8c

    .line 1666
    .restart local v30       #timeStampStr:Ljava/lang/String;
    :catch_1de
    move-exception v12

    .line 1667
    .restart local v12       #e:Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1670
    .end local v12           #e:Ljava/lang/NumberFormatException;
    :cond_1e9
    const/4 v3, 0x0

    const-string v5, "ts"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1f1
    .catch Ljava/lang/NumberFormatException; {:try_start_1b5 .. :try_end_1f1} :catch_174

    move-result-object v30

    .line 1671
    if-eqz v30, :cond_9f

    .line 1673
    :try_start_1f4
    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1f7
    .catch Ljava/lang/NumberFormatException; {:try_start_1f4 .. :try_end_1f7} :catch_1fa

    move-result-wide v28

    goto/16 :goto_9f

    .line 1674
    :catch_1fa
    move-exception v12

    .line 1675
    .restart local v12       #e:Ljava/lang/NumberFormatException;
    :try_start_1fb
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1683
    .end local v12           #e:Ljava/lang/NumberFormatException;
    :catch_205
    move-exception v12

    .line 1684
    .restart local v12       #e:Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1691
    .end local v12           #e:Ljava/lang/NumberFormatException;
    :catch_210
    move-exception v12

    .line 1692
    .restart local v12       #e:Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1698
    .end local v12           #e:Ljava/lang/NumberFormatException;
    :cond_21b
    const/4 v8, 0x0

    goto/16 :goto_cb

    .line 1709
    .restart local v8       #userId:I
    :cond_21e
    if-nez v11, :cond_23f

    .line 1710
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v2, v23

    .end local v23           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v2       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_f4

    .line 1713
    .end local v2           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v23       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :cond_23f
    if-lez v8, :cond_290

    .line 1714
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)Lcom/android/server/pm/PackageSetting;
    :try_end_256
    .catch Ljava/lang/NumberFormatException; {:try_start_1fb .. :try_end_256} :catch_174

    move-result-object v2

    .line 1720
    .end local v23           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v2       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    if-nez v2, :cond_283

    .line 1721
    const/4 v3, 0x6

    :try_start_25a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure adding uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while parsing settings at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_f4

    .line 1753
    :catch_280
    move-exception v12

    goto/16 :goto_177

    .line 1725
    :cond_283
    move-wide/from16 v0, v28

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 1726
    iput-wide v14, v2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 1727
    move-wide/from16 v0, v19

    iput-wide v0, v2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J
    :try_end_28e
    .catch Ljava/lang/NumberFormatException; {:try_start_25a .. :try_end_28e} :catch_280

    goto/16 :goto_f4

    .line 1729
    .end local v2           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v23       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :cond_290
    if-eqz v25, :cond_300

    .line 1730
    if-eqz v25, :cond_2c7

    :try_start_294
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1731
    :goto_298
    if-lez v8, :cond_2c9

    .line 1732
    new-instance v2, Lcom/android/server/pm/PendingPackage;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v2 .. v10}, Lcom/android/server/pm/PendingPackage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)V
    :try_end_2af
    .catch Ljava/lang/NumberFormatException; {:try_start_294 .. :try_end_2af} :catch_174

    .line 1735
    .end local v23           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v2       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :try_start_2af
    move-wide/from16 v0, v28

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->setTimeStamp(J)V

    .line 1736
    iput-wide v14, v2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 1737
    move-wide/from16 v0, v19

    iput-wide v0, v2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 1738
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PendingPackage;

    move-object v3, v0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c5
    .catch Ljava/lang/NumberFormatException; {:try_start_2af .. :try_end_2c5} :catch_280

    goto/16 :goto_f4

    .line 1730
    .end local v2           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v23       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :cond_2c7
    const/4 v8, 0x0

    goto :goto_298

    .line 1743
    :cond_2c9
    const/4 v3, 0x5

    :try_start_2ca
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad sharedId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v2, v23

    .end local v23           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v2       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_f4

    .line 1749
    .end local v2           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v23       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :cond_300
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_333
    .catch Ljava/lang/NumberFormatException; {:try_start_2ca .. :try_end_333} :catch_174

    move-object/from16 v2, v23

    .end local v23           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v2       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_f4

    .line 1767
    .restart local v13       #enabledStr:Ljava/lang/String;
    :catch_337
    move-exception v12

    .line 1768
    .restart local v12       #e:Ljava/lang/NumberFormatException;
    const-string v3, "true"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_345

    .line 1769
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    goto/16 :goto_117

    .line 1770
    :cond_345
    const-string v3, "false"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_352

    .line 1771
    const/4 v3, 0x2

    iput v3, v2, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    goto/16 :goto_117

    .line 1772
    :cond_352
    const-string v3, "default"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35f

    .line 1773
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    goto/16 :goto_117

    .line 1775
    :cond_35f
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad enabled value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1779
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1783
    .end local v12           #e:Ljava/lang/NumberFormatException;
    :cond_39c
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    goto/16 :goto_117

    .line 1790
    .restart local v17       #installStatusStr:Ljava/lang/String;
    :cond_3a1
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    goto/16 :goto_12f

    .line 1805
    .restart local v22       #outerDepth:I
    .restart local v27       #tagName:Ljava/lang/String;
    .restart local v31       #type:I
    :cond_3a6
    const-string v3, "enabled-components"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b9

    .line 1806
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_133

    .line 1807
    :cond_3b9
    const-string v3, "sigs"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d0

    .line 1808
    iget-object v3, v2, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto/16 :goto_133

    .line 1809
    :cond_3d0
    const-string v3, "perms"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e8

    .line 1810
    iget-object v3, v2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/Settings;->readGrantedPermissionsLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    .line 1811
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    goto/16 :goto_133

    .line 1813
    :cond_3e8
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <package>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1815
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_133

    .line 1819
    .end local v13           #enabledStr:Ljava/lang/String;
    .end local v17           #installStatusStr:Ljava/lang/String;
    .end local v22           #outerDepth:I
    .end local v27           #tagName:Ljava/lang/String;
    .end local v31           #type:I
    :cond_408
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1821
    :cond_40b
    return-void
.end method

.method private readPermissionsLPw(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .parameter
    .parameter "parser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1478
    .local p1, out:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1481
    .local v3, outerDepth:I
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, type:I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_d5

    const/4 v9, 0x3

    if-ne v8, v9, :cond_14

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_d5

    .line 1482
    :cond_14
    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_4

    .line 1486
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1487
    .local v7, tagName:Ljava/lang/String;
    const-string v9, "item"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ab

    .line 1488
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1489
    .local v2, name:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "package"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1490
    .local v6, sourcePackage:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "type"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1491
    .local v5, ptype:Ljava/lang/String;
    if-eqz v2, :cond_8f

    if-eqz v6, :cond_8f

    .line 1492
    const-string v9, "dynamic"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1493
    .local v1, dynamic:Z
    new-instance v0, Lcom/android/server/pm/BasePermission;

    if-eqz v1, :cond_8d

    const/4 v9, 0x2

    :goto_4a
    invoke-direct {v0, v2, v6, v9}, Lcom/android/server/pm/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1495
    .local v0, bp:Lcom/android/server/pm/BasePermission;
    const/4 v9, 0x0

    const-string v10, "protection"

    const/4 v11, 0x0

    invoke-direct {p0, p2, v9, v10, v11}, Lcom/android/server/pm/Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    .line 1497
    if-eqz v1, :cond_83

    .line 1498
    new-instance v4, Landroid/content/pm/PermissionInfo;

    invoke-direct {v4}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 1499
    .local v4, pi:Landroid/content/pm/PermissionInfo;
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1500
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1501
    const/4 v9, 0x0

    const-string v10, "icon"

    const/4 v11, 0x0

    invoke-direct {p0, p2, v9, v10, v11}, Lcom/android/server/pm/Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v4, Landroid/content/pm/PermissionInfo;->icon:I

    .line 1502
    const/4 v9, 0x0

    const-string v10, "label"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1503
    iget v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    iput v9, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 1504
    iput-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    .line 1506
    .end local v4           #pi:Landroid/content/pm/PermissionInfo;
    :cond_83
    iget-object v9, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    .end local v0           #bp:Lcom/android/server/pm/BasePermission;
    .end local v1           #dynamic:Z
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #ptype:Ljava/lang/String;
    .end local v6           #sourcePackage:Ljava/lang/String;
    :goto_88
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 1493
    .restart local v1       #dynamic:Z
    .restart local v2       #name:Ljava/lang/String;
    .restart local v5       #ptype:Ljava/lang/String;
    .restart local v6       #sourcePackage:Ljava/lang/String;
    :cond_8d
    const/4 v9, 0x0

    goto :goto_4a

    .line 1508
    .end local v1           #dynamic:Z
    :cond_8f
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: permissions has no name at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_88

    .line 1513
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #ptype:Ljava/lang/String;
    .end local v6           #sourcePackage:Ljava/lang/String;
    :cond_ab
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element reading permissions: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_88

    .line 1519
    .end local v7           #tagName:Ljava/lang/String;
    :cond_d5
    return-void
.end method

.method private readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 1971
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1974
    .local v0, outerDepth:I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_82

    if-ne v3, v6, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_82

    .line 1975
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 1979
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1980
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 1981
    new-instance v1, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1982
    .local v1, pa:Lcom/android/server/pm/PreferredActivity;
    iget-object v4, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    invoke-virtual {v4}, Lcom/android/server/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_39

    .line 1983
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    invoke-virtual {v4, v1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_6

    .line 1985
    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_6

    .line 1991
    .end local v1           #pa:Lcom/android/server/pm/PreferredActivity;
    :cond_64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1993
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 1996
    .end local v2           #tagName:Ljava/lang/String;
    :cond_82
    return-void
.end method

.method private readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 16
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x5

    .line 1880
    const/4 v2, 0x0

    .line 1881
    .local v2, name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1882
    .local v1, idStr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1883
    .local v4, pkgFlags:I
    const/4 v5, 0x0

    .line 1885
    .local v5, su:Lcom/android/server/pm/SharedUserSetting;
    const/4 v9, 0x0

    :try_start_7
    const-string v10, "name"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1886
    const/4 v9, 0x0

    const-string v10, "userId"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1887
    if-eqz v1, :cond_76

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1888
    .local v8, userId:I
    :goto_1a
    const-string v9, "true"

    const/4 v10, 0x0

    const-string v11, "system"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 1889
    or-int/lit8 v4, v4, 0x1

    .line 1891
    :cond_2b
    if-nez v2, :cond_78

    .line 1892
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_48} :catch_aa

    .line 1915
    :cond_48
    :goto_48
    if-eqz v5, :cond_138

    .line 1916
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1919
    .local v3, outerDepth:I
    :cond_4e
    :goto_4e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_13b

    if-ne v7, v13, :cond_5d

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_13b

    .line 1920
    :cond_5d
    if-eq v7, v13, :cond_4e

    const/4 v9, 0x4

    if-eq v7, v9, :cond_4e

    .line 1924
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1925
    .local v6, tagName:Ljava/lang/String;
    const-string v9, "sigs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10a

    .line 1926
    iget-object v9, v5, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v10, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, p1, v10}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_4e

    .line 1887
    .end local v3           #outerDepth:I
    .end local v6           #tagName:Ljava/lang/String;
    .end local v7           #type:I
    .end local v8           #userId:I
    :cond_76
    const/4 v8, 0x0

    goto :goto_1a

    .line 1895
    .restart local v8       #userId:I
    :cond_78
    if-nez v8, :cond_e3

    .line 1896
    const/4 v9, 0x5

    :try_start_7b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: shared-user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has bad userId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_a9
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_a9} :catch_aa

    goto :goto_48

    .line 1907
    .end local v8           #userId:I
    :catch_aa
    move-exception v0

    .line 1908
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in package manager settings: package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has bad userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1911
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1901
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #userId:I
    :cond_e3
    :try_start_e3
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v8, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5

    if-nez v5, :cond_48

    .line 1902
    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Occurred while parsing settings at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_108
    .catch Ljava/lang/NumberFormatException; {:try_start_e3 .. :try_end_108} :catch_aa

    goto/16 :goto_48

    .line 1927
    .restart local v3       #outerDepth:I
    .restart local v6       #tagName:Ljava/lang/String;
    .restart local v7       #type:I
    :cond_10a
    const-string v9, "perms"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_119

    .line 1928
    iget-object v9, v5, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-direct {p0, p1, v9}, Lcom/android/server/pm/Settings;->readGrantedPermissionsLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    goto/16 :goto_4e

    .line 1930
    :cond_119
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <shared-user>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1932
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4e

    .line 1937
    .end local v3           #outerDepth:I
    .end local v6           #tagName:Ljava/lang/String;
    .end local v7           #type:I
    :cond_138
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1939
    :cond_13b
    return-void
.end method

.method private removeUserIdLPw(I)V
    .registers 6
    .parameter "uid"

    .prologue
    .line 697
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_15

    .line 698
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 699
    .local v0, N:I
    add-int/lit16 v1, p1, -0x2710

    .line 700
    .local v1, index:I
    if-ge v1, v0, :cond_14

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 704
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_14
    :goto_14
    return-void

    .line 702
    :cond_15
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_14
.end method

.method private replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .registers 5
    .parameter "name"
    .parameter "newp"

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 644
    .local v0, p:Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1c

    .line 645
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_22

    .line 646
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 647
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    return-void

    .line 649
    :cond_22
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->userId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    goto :goto_1c
.end method

.method private replaceUserIdLPw(ILjava/lang/Object;)V
    .registers 6
    .parameter "uid"
    .parameter "obj"

    .prologue
    .line 707
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_14

    .line 708
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 709
    .local v0, N:I
    add-int/lit16 v1, p1, -0x2710

    .line 710
    .local v1, index:I
    if-ge v1, v0, :cond_13

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 714
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_13
    :goto_13
    return-void

    .line 712
    :cond_14
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_13
.end method


# virtual methods
.method addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)Lcom/android/server/pm/PackageSetting;
    .registers 17
    .parameter "name"
    .parameter "realName"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "uid"
    .parameter "vc"
    .parameter "pkgFlags"

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 298
    .local v0, p:Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_29

    .line 299
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->userId:I

    if-ne v1, p6, :cond_10

    move-object v1, v0

    .line 313
    :goto_f
    return-object v1

    .line 302
    :cond_10
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate package, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 304
    const/4 v1, 0x0

    goto :goto_f

    .line 306
    :cond_29
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    .end local v0           #p:Lcom/android/server/pm/PackageSetting;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 308
    .restart local v0       #p:Lcom/android/server/pm/PackageSetting;
    iput p6, v0, Lcom/android/server/pm/PackageSetting;->userId:I

    .line 309
    invoke-direct {p0, p6, v0, p1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 310
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 311
    goto :goto_f

    .line 313
    :cond_45
    const/4 v1, 0x0

    goto :goto_f
.end method

.method addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;
    .registers 9
    .parameter "name"
    .parameter "uid"
    .parameter "pkgFlags"

    .prologue
    const/4 v1, 0x0

    .line 317
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 318
    .local v0, s:Lcom/android/server/pm/SharedUserSetting;
    if-eqz v0, :cond_29

    .line 319
    iget v2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ne v2, p2, :cond_11

    move-object v1, v0

    .line 332
    :cond_10
    :goto_10
    return-object v1

    .line 322
    :cond_11
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared user, keeping first: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_10

    .line 326
    :cond_29
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    .end local v0           #s:Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {v0, p1, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;I)V

    .line 327
    .restart local v0       #s:Lcom/android/server/pm/SharedUserSetting;
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 328
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 329
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 330
    goto :goto_10
.end method

.method checkXML(I)Z
    .registers 11
    .parameter "i"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 180
    if-nez p1, :cond_d

    .line 181
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 189
    .local v0, checkFile:Ljava/io/File;
    :goto_6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_15

    .line 206
    :goto_c
    return v3

    .line 183
    .end local v0           #checkFile:Ljava/io/File;
    :cond_d
    if-ne p1, v4, :cond_12

    .line 184
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .restart local v0       #checkFile:Ljava/io/File;
    goto :goto_6

    .line 186
    .end local v0           #checkFile:Ljava/io/File;
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    .restart local v0       #checkFile:Ljava/io/File;
    goto :goto_6

    .line 194
    :cond_15
    :try_start_15
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v2, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    .local v2, raf_xmltest:Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    const-wide/16 v7, 0xe

    cmp-long v5, v5, v7

    if-gtz v5, :cond_49

    .line 196
    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "too small "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 198
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_43} :catch_44

    goto :goto_c

    .line 202
    .end local v2           #raf_xmltest:Ljava/io/RandomAccessFile;
    :catch_44
    move-exception v1

    .line 203
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 201
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #raf_xmltest:Ljava/io/RandomAccessFile;
    :cond_49
    :try_start_49
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_44

    move v3, v4

    .line 206
    goto :goto_c
.end method

.method disableSystemPackageLPw(Ljava/lang/String;)Z
    .registers 9
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 255
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 256
    .local v2, p:Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_2a

    .line 257
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not an installed package"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_29
    :goto_29
    return v3

    .line 260
    :cond_2a
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 262
    .local v0, dp:Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_29

    .line 263
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_48

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_48

    .line 264
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 266
    :cond_48
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    .line 273
    .local v1, newp:Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/Settings;->replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    .line 274
    const/4 v3, 0x1

    goto :goto_29
.end method

.method dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .registers 15
    .parameter "pw"
    .parameter "packageName"
    .parameter "dumpState"

    .prologue
    .line 2126
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2127
    .local v8, sdf:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2128
    .local v0, date:Ljava/util/Date;
    const/4 v5, 0x0

    .line 2129
    .local v5, printedSomething:Z
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2a8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 2130
    .local v6, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz p2, :cond_35

    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_35

    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 2135
    :cond_35
    if-eqz p2, :cond_3c

    .line 2136
    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p3, v9}, Lcom/android/server/pm/PackageManagerService$DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    .line 2139
    :cond_3c
    if-nez v5, :cond_4f

    .line 2140
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v9

    if-eqz v9, :cond_49

    .line 2141
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2142
    :cond_49
    const-string v9, "Packages:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2143
    const/4 v5, 0x1

    .line 2145
    :cond_4f
    const-string v9, "  Package ["

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2146
    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    if-eqz v9, :cond_254

    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    :goto_5a
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2147
    const-string v9, "] ("

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2148
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2149
    const-string v9, "):"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2151
    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    if-eqz v9, :cond_80

    .line 2152
    const-string v9, "    compat name="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2153
    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2156
    :cond_80
    const-string v9, "    userId="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v6, Lcom/android/server/pm/PackageSetting;->userId:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 2157
    const-string v9, " gids="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    invoke-static {v9}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2158
    const-string v9, "    sharedUser="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2159
    const-string v9, "    pkg="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2160
    const-string v9, "    codePath="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2161
    const-string v9, "    resourcePath="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2162
    const-string v9, "    nativeLibraryPath="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2163
    const-string v9, "    versionCode="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v6, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 2164
    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v9, :cond_19c

    .line 2165
    const-string v9, "    versionName="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2166
    const-string v9, "    dataDir="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2167
    const-string v9, "    targetSdk="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 2168
    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-boolean v9, v9, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    if-eqz v9, :cond_10b

    .line 2169
    const-string v9, "    mOperationPending=true"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2171
    :cond_10b
    const-string v9, "    supportsScreens=["

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2172
    const/4 v2, 0x1

    .line 2173
    .local v2, first:Z
    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x200

    if-eqz v9, :cond_128

    .line 2174
    if-nez v2, :cond_122

    .line 2175
    const-string v9, ", "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2176
    :cond_122
    const/4 v2, 0x0

    .line 2177
    const-string v9, "small"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2179
    :cond_128
    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_13f

    .line 2180
    if-nez v2, :cond_139

    .line 2181
    const-string v9, ", "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2182
    :cond_139
    const/4 v2, 0x0

    .line 2183
    const-string v9, "medium"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2185
    :cond_13f
    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_156

    .line 2186
    if-nez v2, :cond_150

    .line 2187
    const-string v9, ", "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2188
    :cond_150
    const/4 v2, 0x0

    .line 2189
    const-string v9, "large"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2191
    :cond_156
    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x8

    and-int/2addr v9, v10

    if-eqz v9, :cond_16e

    .line 2192
    if-nez v2, :cond_168

    .line 2193
    const-string v9, ", "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2194
    :cond_168
    const/4 v2, 0x0

    .line 2195
    const-string v9, "xlarge"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2197
    :cond_16e
    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x1000

    if-eqz v9, :cond_185

    .line 2198
    if-nez v2, :cond_17f

    .line 2199
    const-string v9, ", "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2200
    :cond_17f
    const/4 v2, 0x0

    .line 2201
    const-string v9, "resizeable"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2203
    :cond_185
    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_19c

    .line 2204
    if-nez v2, :cond_196

    .line 2205
    const-string v9, ", "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2206
    :cond_196
    const/4 v2, 0x0

    .line 2207
    const-string v9, "anyDensity"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2210
    .end local v2           #first:Z
    :cond_19c
    const-string v9, "]"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2211
    const-string v9, "    timeStamp="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2212
    iget-wide v9, v6, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    invoke-virtual {v0, v9, v10}, Ljava/util/Date;->setTime(J)V

    .line 2213
    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2214
    const-string v9, "    firstInstallTime="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2215
    iget-wide v9, v6, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    invoke-virtual {v0, v9, v10}, Ljava/util/Date;->setTime(J)V

    .line 2216
    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2217
    const-string v9, "    lastUpdateTime="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2218
    iget-wide v9, v6, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    invoke-virtual {v0, v9, v10}, Ljava/util/Date;->setTime(J)V

    .line 2219
    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2220
    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    if-eqz v9, :cond_1e2

    .line 2221
    const-string v9, "    installerPackageName="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2223
    :cond_1e2
    const-string v9, "    signatures="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2224
    const-string v9, "    permissionsFixed="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v6, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 2225
    const-string v9, " haveGids="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v6, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Z)V

    .line 2226
    const-string v9, "    pkgFlags=0x"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v6, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2227
    const-string v9, " installStatus="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v6, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 2228
    const-string v9, " stopped="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v6, Lcom/android/server/pm/PackageSettingBase;->stopped:Z

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 2229
    const-string v9, " enabled="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v6, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 2230
    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    if-lez v9, :cond_258

    .line 2231
    const-string v9, "    disabledComponents:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2232
    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_23f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_258

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2233
    .local v7, s:Ljava/lang/String;
    const-string v9, "      "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_23f

    .line 2146
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #s:Ljava/lang/String;
    :cond_254
    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    goto/16 :goto_5a

    .line 2236
    :cond_258
    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    if-lez v9, :cond_280

    .line 2237
    const-string v9, "    enabledComponents:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2238
    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_26b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_280

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2239
    .restart local v7       #s:Ljava/lang/String;
    const-string v9, "      "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26b

    .line 2242
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #s:Ljava/lang/String;
    :cond_280
    iget-object v9, v6, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    if-lez v9, :cond_17

    .line 2243
    const-string v9, "    grantedPermissions:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2244
    iget-object v9, v6, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_293
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2245
    .restart local v7       #s:Ljava/lang/String;
    const-string v9, "      "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_293

    .line 2250
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v7           #s:Ljava/lang/String;
    :cond_2a8
    const/4 v5, 0x0

    .line 2251
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_30d

    .line 2252
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2bb
    :goto_2bb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_30d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2253
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_2dd

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2dd

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2bb

    .line 2257
    :cond_2dd
    if-nez v5, :cond_2f0

    .line 2258
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v9

    if-eqz v9, :cond_2ea

    .line 2259
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2260
    :cond_2ea
    const-string v9, "Renamed packages:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2261
    const/4 v5, 0x1

    .line 2263
    :cond_2f0
    const-string v9, "  "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2264
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2265
    const-string v9, " -> "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2266
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2bb

    .line 2270
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_30d
    const/4 v5, 0x0

    .line 2271
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_3af

    .line 2272
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_320
    :goto_320
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3af

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 2273
    .restart local v6       #ps:Lcom/android/server/pm/PackageSetting;
    if-eqz p2, :cond_33e

    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_33e

    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_320

    .line 2277
    :cond_33e
    if-nez v5, :cond_351

    .line 2278
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v9

    if-eqz v9, :cond_34b

    .line 2279
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2280
    :cond_34b
    const-string v9, "Hidden system packages:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2281
    const/4 v5, 0x1

    .line 2283
    :cond_351
    const-string v9, "  Package ["

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2284
    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    if-eqz v9, :cond_3ac

    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    :goto_35c
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2285
    const-string v9, "] ("

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2286
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2287
    const-string v9, "):"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2288
    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    if-eqz v9, :cond_382

    .line 2289
    const-string v9, "    compat name="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2290
    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2292
    :cond_382
    const-string v9, "    userId="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2293
    iget v9, v6, Lcom/android/server/pm/PackageSetting;->userId:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 2294
    const-string v9, "    sharedUser="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2295
    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2296
    const-string v9, "    codePath="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2297
    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2298
    const-string v9, "    resourcePath="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2299
    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_320

    .line 2284
    :cond_3ac
    iget-object v9, v6, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    goto :goto_35c

    .line 2302
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_3af
    return-void
.end method

.method dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .registers 8
    .parameter "pw"
    .parameter "packageName"
    .parameter "dumpState"

    .prologue
    .line 2305
    const/4 v2, 0x0

    .line 2306
    .local v2, printedSomething:Z
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/BasePermission;

    .line 2307
    .local v1, p:Lcom/android/server/pm/BasePermission;
    if-eqz p2, :cond_21

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2310
    :cond_21
    if-nez v2, :cond_34

    .line 2311
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2312
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2313
    :cond_2e
    const-string v3, "Permissions:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2314
    const/4 v2, 0x1

    .line 2316
    :cond_34
    const-string v3, "  Permission ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "] ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2317
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2318
    const-string v3, "):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2319
    const-string v3, "    sourcePackage="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2320
    const-string v3, "    uid="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/pm/BasePermission;->uid:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2321
    const-string v3, " gids="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2322
    const-string v3, " type="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/pm/BasePermission;->type:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2323
    const-string v3, " prot="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2324
    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    if-eqz v3, :cond_97

    .line 2325
    const-string v3, "    packageSetting="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2327
    :cond_97
    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v3, :cond_b

    .line 2328
    const-string v3, "    perm="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 2331
    .end local v1           #p:Lcom/android/server/pm/BasePermission;
    :cond_a7
    return-void
.end method

.method dumpReadMessagesLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .registers 4
    .parameter "pw"
    .parameter "dumpState"

    .prologue
    .line 2363
    const-string v0, "Settings parse messages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2364
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2365
    return-void
.end method

.method dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .registers 10
    .parameter "pw"
    .parameter "packageName"
    .parameter "dumpState"

    .prologue
    .line 2334
    const/4 v2, 0x0

    .line 2335
    .local v2, printedSomething:Z
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    .line 2336
    .local v4, su:Lcom/android/server/pm/SharedUserSetting;
    if-eqz p2, :cond_1f

    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5

    if-ne v4, v5, :cond_b

    .line 2339
    :cond_1f
    if-nez v2, :cond_32

    .line 2340
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 2341
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2342
    :cond_2c
    const-string v5, "Shared users:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2343
    const/4 v2, 0x1

    .line 2345
    :cond_32
    const-string v5, "  SharedUser ["

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2346
    iget-object v5, v4, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2347
    const-string v5, "] ("

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2348
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2349
    const-string v5, "):"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2350
    const-string v5, "    userId="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2351
    iget v5, v4, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2352
    const-string v5, " gids="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2353
    iget-object v5, v4, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2354
    const-string v5, "    grantedPermissions:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2355
    iget-object v5, v4, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_74
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2356
    .local v3, s:Ljava/lang/String;
    const-string v5, "      "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2357
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_74

    .line 2360
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #su:Lcom/android/server/pm/SharedUserSetting;
    :cond_89
    return-void
.end method

.method enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 13
    .parameter "name"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 281
    .local v9, p:Lcom/android/server/pm/PackageSetting;
    if-nez v9, :cond_2a

    .line 282
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/safelog/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v10, 0x0

    .line 292
    :goto_29
    return-object v10

    .line 286
    :cond_2a
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_3e

    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3e

    .line 287
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 289
    :cond_3e
    iget-object v2, v9, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iget-object v4, v9, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iget-object v5, v9, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    iget v6, v9, Lcom/android/server/pm/PackageSetting;->userId:I

    iget v7, v9, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    iget v8, v9, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    .line 291
    .local v10, ret:Lcom/android/server/pm/PackageSetting;
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29
.end method

.method getApplicationEnabledSettingLPr(Ljava/lang/String;)I
    .registers 6
    .parameter "packageName"

    .prologue
    .line 2073
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 2074
    .local v0, pkg:Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_23

    .line 2075
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2077
    :cond_23
    iget v1, v0, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    return v1
.end method

.method getComponentEnabledSettingLPr(Landroid/content/ComponentName;)I
    .registers 8
    .parameter "componentName"

    .prologue
    .line 2081
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2082
    .local v1, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 2083
    .local v2, pkg:Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_27

    .line 2084
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown component: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2086
    :cond_27
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2087
    .local v0, classNameStr:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 4
    .parameter "name"

    .prologue
    .line 2029
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 2030
    .local v0, ps:Lcom/android/server/pm/PackageSetting;
    return-object v0
.end method

.method getInstallerPackageNameLPr(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "packageName"

    .prologue
    .line 2065
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 2066
    .local v0, pkg:Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_23

    .line 2067
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2069
    :cond_23
    iget-object v1, v0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-object v1
.end method

.method getListOfIncompleteInstallPackagesLPr()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1252
    new-instance v1, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1253
    .local v1, kList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1254
    .local v0, its:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1255
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1257
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1258
    .local v3, ps:Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getInstallStatus()I

    move-result v5

    if-nez v5, :cond_14

    .line 1259
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1262
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_32
    return-object v4
.end method

.method getPackageLPw(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZZ)Lcom/android/server/pm/PackageSetting;
    .registers 24
    .parameter "pkg"
    .parameter "origPackage"
    .parameter "realName"
    .parameter "sharedUser"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "pkgFlags"
    .parameter "create"
    .parameter "add"

    .prologue
    .line 172
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 173
    .local v1, name:Ljava/lang/String;
    iget v8, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/pm/Settings;->getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIZZ)Lcom/android/server/pm/PackageSetting;

    move-result-object v12

    .line 175
    .local v12, p:Lcom/android/server/pm/PackageSetting;
    return-object v12
.end method

.method getSharedUserLPw(Ljava/lang/String;IZ)Lcom/android/server/pm/SharedUserSetting;
    .registers 8
    .parameter "name"
    .parameter "pkgFlags"
    .parameter "create"

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 233
    .local v0, s:Lcom/android/server/pm/SharedUserSetting;
    if-nez v0, :cond_46

    .line 234
    if-nez p3, :cond_e

    .line 235
    const/4 v1, 0x0

    .line 251
    :goto_d
    return-object v1

    .line 237
    :cond_e
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    .end local v0           #s:Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {v0, p1, p2}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;I)V

    .line 239
    .restart local v0       #s:Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 243
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New shared user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/safelog/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ltz v1, :cond_46

    .line 247
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    move-object v1, v0

    .line 251
    goto :goto_d
.end method

.method public getUserIdLPr(I)Ljava/lang/Object;
    .registers 5
    .parameter "uid"

    .prologue
    .line 687
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_17

    .line 688
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 689
    .local v0, N:I
    add-int/lit16 v1, p1, -0x2710

    .line 690
    .local v1, index:I
    if-ge v1, v0, :cond_15

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 692
    .end local v0           #N:I
    .end local v1           #index:I
    :goto_14
    return-object v2

    .line 690
    .restart local v0       #N:I
    .restart local v1       #index:I
    :cond_15
    const/4 v2, 0x0

    goto :goto_14

    .line 692
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_17
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_14
.end method

.method public getVerifierDeviceIdentityLPw()Landroid/content/pm/VerifierDeviceIdentity;
    .registers 2

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_d

    .line 2020
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 2022
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 2025
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    return-object v0
.end method

.method insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .registers 9
    .parameter "p"
    .parameter "pkg"

    .prologue
    .line 497
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 498
    iget v3, p1, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    iput v3, p2, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    .line 499
    iget-boolean v3, p1, Lcom/android/server/pm/PackageSettingBase;->stopped:Z

    iput-boolean v3, p2, Landroid/content/pm/PackageParser$Package;->mSetStopped:Z

    .line 500
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 501
    .local v0, codePath:Ljava/lang/String;
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 503
    .local v2, resourcePath:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 504
    sget-boolean v3, Lcom/android/server/pm/Settings;->mIsEngBuild:Z

    if-eqz v3, :cond_e4

    .line 505
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Code path for pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changing from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :goto_50
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 512
    iput-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 515
    :cond_59
    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a0

    .line 516
    sget-boolean v3, Lcom/android/server/pm/Settings;->mIsEngBuild:Z

    if-eqz v3, :cond_ed

    .line 517
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource path for pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changing from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :goto_97
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 524
    iput-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 527
    :cond_a0
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 528
    .local v1, nativeLibraryPath:Ljava/lang/String;
    if-eqz v1, :cond_b0

    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b0

    .line 530
    iput-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 533
    :cond_b0
    iget v3, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v4, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    if-eq v3, v4, :cond_ba

    .line 534
    iget v3, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v3, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    .line 537
    :cond_ba
    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v3, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v3, :cond_c7

    .line 538
    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    .line 542
    :cond_c7
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_dc

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v3, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v3, :cond_dc

    .line 543
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    .line 545
    :cond_dc
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V

    .line 546
    return-void

    .line 508
    .end local v1           #nativeLibraryPath:Ljava/lang/String;
    :cond_e4
    const-string v3, "PackageManager"

    const-string v4, "Code path for pkg : p.pkg.packageName changing from p.codePathString to codePath"

    invoke-static {v3, v4}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_50

    .line 520
    :cond_ed
    const-string v3, "PackageManager"

    const-string v4, "Resource path for pkg : p.pkg.packageName changing from p.resourcePathString to resourcePath"

    invoke-static {v3, v4}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97
.end method

.method isEnabledLPr(Landroid/content/pm/ComponentInfo;I)Z
    .registers 8
    .parameter "componentInfo"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2034
    and-int/lit16 v3, p2, 0x200

    if-eqz v3, :cond_7

    .line 2061
    :cond_6
    :goto_6
    return v1

    .line 2037
    :cond_7
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 2046
    .local v0, packageSettings:Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_15

    move v1, v2

    .line 2047
    goto :goto_6

    .line 2049
    :cond_15
    iget v3, v0, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2f

    iget v3, v0, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2f

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_31

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_31

    iget v3, v0, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    if-nez v3, :cond_31

    :cond_2f
    move v1, v2

    .line 2053
    goto :goto_6

    .line 2055
    :cond_31
    iget-object v3, v0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2058
    iget-object v1, v0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    move v1, v2

    .line 2059
    goto :goto_6

    .line 2061
    :cond_47
    iget-boolean v1, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    goto :goto_6
.end method

.method peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .parameter "name"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method readLPw()Z
    .registers 41

    .prologue
    .line 1266
    const/16 v36, 0x0

    .line 1267
    .local v36, str:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->checkXML(I)Z

    move-result v26

    .line 1268
    .local v26, mSettingsExists:Z
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->checkXML(I)Z

    move-result v24

    .line 1269
    .local v24, mBackupSettingsExists:Z
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->checkXML(I)Z

    move-result v25

    .line 1270
    .local v25, mMoreBackupSettingsExists:Z
    const/16 v35, 0x0

    .line 1271
    .local v35, readXmlFileName:Ljava/io/File;
    if-eqz v25, :cond_34

    if-nez v24, :cond_34

    if-nez v26, :cond_34

    .line 1272
    const/4 v2, 0x4

    const-string v3, "Only MoreBackup file"

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1274
    const/16 v24, 0x1

    .line 1275
    const/16 v25, 0x0

    .line 1277
    :cond_34
    if-eqz v24, :cond_7d

    .line 1279
    :try_start_36
    new-instance v37, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v0, v37

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_41} :catch_4e0

    .line 1280
    .end local v36           #str:Ljava/io/FileInputStream;
    .local v37, str:Ljava/io/FileInputStream;
    :try_start_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v35, v0

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "Reading from backup settings file\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    const/4 v2, 0x4

    const-string v3, "Need to read from backup settings file"

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1284
    if-eqz v26, :cond_7b

    .line 1288
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up settings file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_7b} :catch_4e3

    :cond_7b
    move-object/from16 v36, v37

    .line 1297
    .end local v37           #str:Ljava/io/FileInputStream;
    .restart local v36       #str:Ljava/io/FileInputStream;
    :cond_7d
    :goto_7d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1301
    if-nez v36, :cond_bb

    .line 1302
    :try_start_8d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_a8

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No settings file found\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    const/4 v2, 0x4

    const-string v3, "No settings file; creating initial state"

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1306
    const/4 v2, 0x0

    .line 1457
    :goto_a7
    return v2

    .line 1308
    :cond_a8
    new-instance v37, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v0, v37

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8d .. :try_end_b3} :catch_12c
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_b3} :catch_1fc
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_b3} :catch_256

    .line 1309
    .end local v36           #str:Ljava/io/FileInputStream;
    .restart local v37       #str:Ljava/io/FileInputStream;
    :try_start_b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v35, v0
    :try_end_b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b3 .. :try_end_b9} :catch_4db
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b9} :catch_4d6
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b9} :catch_4d1

    move-object/from16 v36, v37

    .line 1311
    .end local v37           #str:Ljava/io/FileInputStream;
    .restart local v36       #str:Ljava/io/FileInputStream;
    :cond_bb
    :try_start_bb
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v33

    .line 1312
    .local v33, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1316
    :cond_c7
    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v39

    .local v39, type:I
    const/4 v2, 0x2

    move/from16 v0, v39

    if-eq v0, v2, :cond_d5

    const/4 v2, 0x1

    move/from16 v0, v39

    if-ne v0, v2, :cond_c7

    .line 1320
    :cond_d5
    const/4 v2, 0x2

    move/from16 v0, v39

    if-eq v0, v2, :cond_f2

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No start tag found in settings file\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    const/4 v2, 0x5

    const-string v3, "No start tag found in package manager settings"

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1324
    const-string v2, "PackageManager"

    const-string v3, "No start tag found in package manager settings"

    invoke-static {v2, v3}, Landroid/util/safelog/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    const/4 v2, 0x0

    goto :goto_a7

    .line 1329
    :cond_f2
    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v31

    .line 1331
    .local v31, outerDepth:I
    :cond_f6
    :goto_f6
    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v39

    const/4 v2, 0x1

    move/from16 v0, v39

    if-eq v0, v2, :cond_3cf

    const/4 v2, 0x3

    move/from16 v0, v39

    if-ne v0, v2, :cond_10c

    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v31

    if-le v2, v0, :cond_3cf

    .line 1332
    :cond_10c
    const/4 v2, 0x3

    move/from16 v0, v39

    if-eq v0, v2, :cond_f6

    const/4 v2, 0x4

    move/from16 v0, v39

    if-eq v0, v2, :cond_f6

    .line 1336
    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v38

    .line 1337
    .local v38, tagName:Ljava/lang/String;
    const-string v2, "package"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e5

    .line 1338
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_12b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bb .. :try_end_12b} :catch_12c
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_12b} :catch_1fc
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_12b} :catch_256

    goto :goto_f6

    .line 1393
    .end local v31           #outerDepth:I
    .end local v33           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v38           #tagName:Ljava/lang/String;
    .end local v39           #type:I
    :catch_12c
    move-exception v18

    .line 1394
    .local v18, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_12d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1396
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->delete()Z

    .line 1397
    const-string v2, "PackageManager"

    const-string v3, "Error reading package manager settings"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/safelog/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1411
    .end local v18           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1412
    .local v14, N:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_17a
    move/from16 v0, v20

    if-ge v0, v14, :cond_457

    .line 1413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/pm/PendingPackage;

    .line 1414
    .local v34, pp:Lcom/android/server/pm/PendingPackage;
    move-object/from16 v0, v34

    iget v2, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v22

    .line 1415
    .local v22, idObj:Ljava/lang/Object;
    if-eqz v22, :cond_3dd

    move-object/from16 v0, v22

    instance-of v2, v0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_3dd

    .line 1416
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    move-object/from16 v6, v22

    check-cast v6, Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    move-object/from16 v0, v34

    iget-object v9, v0, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    move-object/from16 v0, v34

    iget v10, v0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    move-object/from16 v0, v34

    iget v11, v0, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/server/pm/Settings;->getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIZZ)Lcom/android/server/pm/PackageSetting;

    move-result-object v32

    .line 1419
    .local v32, p:Lcom/android/server/pm/PackageSetting;
    if-nez v32, :cond_3d4

    .line 1420
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create application package for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1412
    .end local v32           #p:Lcom/android/server/pm/PackageSetting;
    :goto_1e2
    add-int/lit8 v20, v20, 0x1

    goto :goto_17a

    .line 1339
    .end local v14           #N:I
    .end local v20           #i:I
    .end local v22           #idObj:Ljava/lang/Object;
    .end local v34           #pp:Lcom/android/server/pm/PendingPackage;
    .restart local v31       #outerDepth:I
    .restart local v33       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v38       #tagName:Ljava/lang/String;
    .restart local v39       #type:I
    :cond_1e5
    :try_start_1e5
    const-string v2, "permissions"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23f

    .line 1340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/Settings;->readPermissionsLPw(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1fa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e5 .. :try_end_1fa} :catch_12c
    .catch Ljava/io/IOException; {:try_start_1e5 .. :try_end_1fa} :catch_1fc
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_1fa} :catch_256

    goto/16 :goto_f6

    .line 1399
    .end local v31           #outerDepth:I
    .end local v33           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v38           #tagName:Ljava/lang/String;
    .end local v39           #type:I
    :catch_1fc
    move-exception v18

    .line 1400
    .local v18, e:Ljava/io/IOException;
    :goto_1fd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1401
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1402
    const-string v2, "PackageManager"

    const-string v3, "Error reading package manager settings"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/safelog/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_170

    .line 1341
    .end local v18           #e:Ljava/io/IOException;
    .restart local v31       #outerDepth:I
    .restart local v33       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v38       #tagName:Ljava/lang/String;
    .restart local v39       #type:I
    :cond_23f
    :try_start_23f
    const-string v2, "permission-trees"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29c

    .line 1342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/Settings;->readPermissionsLPw(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_254
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23f .. :try_end_254} :catch_12c
    .catch Ljava/io/IOException; {:try_start_23f .. :try_end_254} :catch_1fc
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_254} :catch_256

    goto/16 :goto_f6

    .line 1404
    .end local v31           #outerDepth:I
    .end local v33           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v38           #tagName:Ljava/lang/String;
    .end local v39           #type:I
    :catch_256
    move-exception v18

    .line 1405
    .local v18, e:Ljava/lang/Exception;
    :goto_257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1406
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1407
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->delete()Z

    .line 1408
    const-string v2, "PackageManager"

    const-string v3, "Error reading package manager settings"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/safelog/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_170

    .line 1343
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v31       #outerDepth:I
    .restart local v33       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v38       #tagName:Ljava/lang/String;
    .restart local v39       #type:I
    :cond_29c
    :try_start_29c
    const-string v2, "shared-user"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2af

    .line 1344
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f6

    .line 1345
    :cond_2af
    const-string v2, "preferred-packages"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f6

    .line 1347
    const-string v2, "preferred-activities"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2cc

    .line 1348
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f6

    .line 1349
    :cond_2cc
    const-string v2, "updated-package"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2df

    .line 1350
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f6

    .line 1351
    :cond_2df
    const-string v2, "cleaning-package"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ff

    .line 1352
    const/4 v2, 0x0

    const-string v3, "name"

    move-object/from16 v0, v33

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1353
    .local v28, name:Ljava/lang/String;
    if-eqz v28, :cond_f6

    .line 1354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f6

    .line 1356
    .end local v28           #name:Ljava/lang/String;
    :cond_2ff
    const-string v2, "renamed-package"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32c

    .line 1357
    const/4 v2, 0x0

    const-string v3, "new"

    move-object/from16 v0, v33

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1358
    .local v29, nname:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "old"

    move-object/from16 v0, v33

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1359
    .local v30, oname:Ljava/lang/String;
    if-eqz v29, :cond_f6

    if-eqz v30, :cond_f6

    .line 1360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f6

    .line 1362
    .end local v29           #nname:Ljava/lang/String;
    .end local v30           #oname:Ljava/lang/String;
    :cond_32c
    const-string v2, "last-platform-version"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_372

    .line 1363
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/pm/Settings;->mExternalSdkPlatform:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/pm/Settings;->mInternalSdkPlatform:I
    :try_end_33f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29c .. :try_end_33f} :catch_12c
    .catch Ljava/io/IOException; {:try_start_29c .. :try_end_33f} :catch_1fc
    .catch Ljava/lang/Exception; {:try_start_29c .. :try_end_33f} :catch_256

    .line 1365
    const/4 v2, 0x0

    :try_start_340
    const-string v3, "internal"

    move-object/from16 v0, v33

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1366
    .local v23, internal:Ljava/lang/String;
    if-eqz v23, :cond_352

    .line 1367
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/pm/Settings;->mInternalSdkPlatform:I

    .line 1369
    :cond_352
    const/4 v2, 0x0

    const-string v3, "external"

    move-object/from16 v0, v33

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1370
    .local v19, external:Ljava/lang/String;
    if-eqz v19, :cond_f6

    .line 1371
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/pm/Settings;->mExternalSdkPlatform:I
    :try_end_365
    .catch Ljava/lang/NumberFormatException; {:try_start_340 .. :try_end_365} :catch_367
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_340 .. :try_end_365} :catch_12c
    .catch Ljava/io/IOException; {:try_start_340 .. :try_end_365} :catch_1fc
    .catch Ljava/lang/Exception; {:try_start_340 .. :try_end_365} :catch_256

    goto/16 :goto_f6

    .line 1373
    .end local v19           #external:Ljava/lang/String;
    .end local v23           #internal:Ljava/lang/String;
    :catch_367
    move-exception v18

    .line 1374
    .local v18, e:Ljava/lang/NumberFormatException;
    :try_start_368
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1376
    .end local v18           #e:Ljava/lang/NumberFormatException;
    :cond_372
    const-string v2, "verifier"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3ae

    .line 1377
    const/4 v2, 0x0

    const-string v3, "device"

    move-object/from16 v0, v33

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_384
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_368 .. :try_end_384} :catch_12c
    .catch Ljava/io/IOException; {:try_start_368 .. :try_end_384} :catch_1fc
    .catch Ljava/lang/Exception; {:try_start_368 .. :try_end_384} :catch_256

    move-result-object v15

    .line 1379
    .local v15, deviceIdentity:Ljava/lang/String;
    :try_start_385
    invoke-static {v15}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_38d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_385 .. :try_end_38d} :catch_38f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_385 .. :try_end_38d} :catch_12c
    .catch Ljava/io/IOException; {:try_start_385 .. :try_end_38d} :catch_1fc
    .catch Ljava/lang/Exception; {:try_start_385 .. :try_end_38d} :catch_256

    goto/16 :goto_f6

    .line 1380
    :catch_38f
    move-exception v18

    .line 1381
    .local v18, e:Ljava/lang/IllegalArgumentException;
    :try_start_390
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discard invalid verifier device id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f6

    .line 1385
    .end local v15           #deviceIdentity:Ljava/lang/String;
    .end local v18           #e:Ljava/lang/IllegalArgumentException;
    :cond_3ae
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <packages>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v33 .. v33}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-static/range {v33 .. v33}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_f6

    .line 1391
    .end local v38           #tagName:Ljava/lang/String;
    :cond_3cf
    invoke-virtual/range {v36 .. v36}, Ljava/io/FileInputStream;->close()V
    :try_end_3d2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_390 .. :try_end_3d2} :catch_12c
    .catch Ljava/io/IOException; {:try_start_390 .. :try_end_3d2} :catch_1fc
    .catch Ljava/lang/Exception; {:try_start_390 .. :try_end_3d2} :catch_256

    goto/16 :goto_170

    .line 1424
    .end local v31           #outerDepth:I
    .end local v33           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v39           #type:I
    .restart local v14       #N:I
    .restart local v20       #i:I
    .restart local v22       #idObj:Ljava/lang/Object;
    .restart local v32       #p:Lcom/android/server/pm/PackageSetting;
    .restart local v34       #pp:Lcom/android/server/pm/PendingPackage;
    :cond_3d4
    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    goto/16 :goto_1e2

    .line 1425
    .end local v32           #p:Lcom/android/server/pm/PackageSetting;
    :cond_3dd
    if-eqz v22, :cond_41b

    .line 1426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad package setting: package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has shared uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v34

    iget v3, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " that is not a shared uid\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1428
    .local v27, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    const/4 v2, 0x6

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_1e2

    .line 1431
    .end local v27           #msg:Ljava/lang/String;
    :cond_41b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad package setting: package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has shared uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v34

    iget v3, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " that is not defined\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1433
    .restart local v27       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    const/4 v2, 0x6

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_1e2

    .line 1437
    .end local v22           #idObj:Ljava/lang/Object;
    .end local v27           #msg:Ljava/lang/String;
    .end local v34           #pp:Lcom/android/server/pm/PendingPackage;
    :cond_457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 1444
    .local v16, disabledIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_46a
    :goto_46a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_491

    .line 1445
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/pm/PackageSetting;

    .line 1446
    .local v17, disabledPs:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/pm/PackageSetting;->userId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v21

    .line 1447
    .local v21, id:Ljava/lang/Object;
    if-eqz v21, :cond_46a

    move-object/from16 v0, v21

    instance-of v2, v0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_46a

    .line 1448
    check-cast v21, Lcom/android/server/pm/SharedUserSetting;

    .end local v21           #id:Ljava/lang/Object;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    goto :goto_46a

    .line 1452
    .end local v17           #disabledPs:Lcom/android/server/pm/PackageSetting;
    :cond_491
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    .line 1454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read completed successfully: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " packages, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shared uids\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    const/4 v2, 0x1

    goto/16 :goto_a7

    .line 1404
    .end local v14           #N:I
    .end local v16           #disabledIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v20           #i:I
    .end local v36           #str:Ljava/io/FileInputStream;
    .restart local v37       #str:Ljava/io/FileInputStream;
    :catch_4d1
    move-exception v18

    move-object/from16 v36, v37

    .end local v37           #str:Ljava/io/FileInputStream;
    .restart local v36       #str:Ljava/io/FileInputStream;
    goto/16 :goto_257

    .line 1399
    .end local v36           #str:Ljava/io/FileInputStream;
    .restart local v37       #str:Ljava/io/FileInputStream;
    :catch_4d6
    move-exception v18

    move-object/from16 v36, v37

    .end local v37           #str:Ljava/io/FileInputStream;
    .restart local v36       #str:Ljava/io/FileInputStream;
    goto/16 :goto_1fd

    .line 1393
    .end local v36           #str:Ljava/io/FileInputStream;
    .restart local v37       #str:Ljava/io/FileInputStream;
    :catch_4db
    move-exception v18

    move-object/from16 v36, v37

    .end local v37           #str:Ljava/io/FileInputStream;
    .restart local v36       #str:Ljava/io/FileInputStream;
    goto/16 :goto_12d

    .line 1292
    :catch_4e0
    move-exception v2

    goto/16 :goto_7d

    .end local v36           #str:Ljava/io/FileInputStream;
    .restart local v37       #str:Ljava/io/FileInputStream;
    :catch_4e3
    move-exception v2

    move-object/from16 v36, v37

    .end local v37           #str:Ljava/io/FileInputStream;
    .restart local v36       #str:Ljava/io/FileInputStream;
    goto/16 :goto_7d
.end method

.method readStoppedLPw()V
    .registers 15

    .prologue
    .line 793
    const/4 v7, 0x0

    .line 794
    .local v7, str:Ljava/io/FileInputStream;
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1bc

    .line 796
    :try_start_9
    new-instance v8, Ljava/io/FileInputStream;

    iget-object v11, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v8, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_b5

    .line 797
    .end local v7           #str:Ljava/io/FileInputStream;
    .local v8, str:Ljava/io/FileInputStream;
    :try_start_10
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v12, "Reading from backup stopped packages file\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    const/4 v11, 0x4

    const-string v12, "Need to read from backup stopped packages file"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 799
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_44

    .line 803
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cleaning up stopped packages file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_44} :catch_1b5

    .line 813
    :cond_44
    :goto_44
    if-nez v8, :cond_1b9

    .line 814
    :try_start_46
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_ba

    .line 815
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v12, "No stopped packages file found\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    const/4 v11, 0x4

    const-string v12, "No stopped packages file file; assuming all started"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 821
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 822
    .local v5, pkg:Lcom/android/server/pm/PackageSetting;
    const/4 v11, 0x0

    iput-boolean v11, v5, Lcom/android/server/pm/PackageSettingBase;->stopped:Z

    .line 823
    const/4 v11, 0x0

    iput-boolean v11, v5, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Z
    :try_end_77
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_77} :catch_78
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_77} :catch_1b2

    goto :goto_65

    .line 876
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #pkg:Lcom/android/server/pm/PackageSetting;
    :catch_78
    move-exception v0

    move-object v7, v8

    .line 877
    .end local v8           #str:Ljava/io/FileInputStream;
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7       #str:Ljava/io/FileInputStream;
    :goto_7a
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    const/4 v11, 0x6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading stopped packages: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 879
    const-string v11, "PackageManager"

    const-string v12, "Error reading package manager stopped packages"

    invoke-static {v11, v12, v0}, Landroid/util/safelog/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 887
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_b4
    return-void

    .line 807
    :catch_b5
    move-exception v11

    :goto_b6
    move-object v8, v7

    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    goto :goto_44

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_b8
    move-object v7, v8

    .line 825
    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    goto :goto_b4

    .line 827
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    :cond_ba
    :try_start_ba
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v11, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ba .. :try_end_c1} :catch_78
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_c1} :catch_1b2

    .line 829
    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    :goto_c1
    :try_start_c1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 830
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v4, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 834
    :cond_c9
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, type:I
    const/4 v11, 0x2

    if-eq v10, v11, :cond_d3

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c9

    .line 838
    :cond_d3
    const/4 v11, 0x2

    if-eq v10, v11, :cond_e6

    .line 839
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v12, "No start tag found in stopped packages file\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    const/4 v11, 0x5

    const-string v12, "No start tag found in package manager stopped packages"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_b4

    .line 876
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #type:I
    :catch_e4
    move-exception v0

    goto :goto_7a

    .line 845
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #type:I
    :cond_e6
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 847
    .local v3, outerDepth:I
    :cond_ea
    :goto_ea
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1ad

    const/4 v11, 0x3

    if-ne v10, v11, :cond_fa

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v3, :cond_1ad

    .line 849
    :cond_fa
    const/4 v11, 0x3

    if-eq v10, v11, :cond_ea

    const/4 v11, 0x4

    if-eq v10, v11, :cond_ea

    .line 854
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 855
    .local v9, tagName:Ljava/lang/String;
    const-string v11, "pkg"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18c

    .line 856
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, name:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 858
    .local v6, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v6, :cond_173

    .line 859
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/android/server/pm/PackageSettingBase;->stopped:Z

    .line 860
    const-string v11, "1"

    const/4 v12, 0x0

    const-string v13, "nl"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_132

    .line 861
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Z

    .line 866
    :cond_132
    :goto_132
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_135
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c1 .. :try_end_135} :catch_e4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_135} :catch_136

    goto :goto_ea

    .line 881
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #outerDepth:I
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v9           #tagName:Ljava/lang/String;
    .end local v10           #type:I
    :catch_136
    move-exception v0

    .line 882
    .local v0, e:Ljava/io/IOException;
    :goto_137
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    const/4 v11, 0x6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading settings: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 884
    const-string v11, "PackageManager"

    const-string v12, "Error reading package manager stopped packages"

    invoke-static {v11, v12, v0}, Landroid/util/safelog/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b4

    .line 864
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #outerDepth:I
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #ps:Lcom/android/server/pm/PackageSetting;
    .restart local v9       #tagName:Ljava/lang/String;
    .restart local v10       #type:I
    :cond_173
    :try_start_173
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No package known for stopped package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_132

    .line 868
    .end local v2           #name:Ljava/lang/String;
    .end local v6           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_18c
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown element under <stopped-packages>: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_ea

    .line 874
    .end local v9           #tagName:Ljava/lang/String;
    :cond_1ad
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_173 .. :try_end_1b0} :catch_e4
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_1b0} :catch_136

    goto/16 :goto_b4

    .line 881
    .end local v3           #outerDepth:I
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #str:Ljava/io/FileInputStream;
    .end local v10           #type:I
    .restart local v8       #str:Ljava/io/FileInputStream;
    :catch_1b2
    move-exception v0

    move-object v7, v8

    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    goto :goto_137

    .line 807
    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    :catch_1b5
    move-exception v11

    move-object v7, v8

    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    goto/16 :goto_b6

    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    :cond_1b9
    move-object v7, v8

    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    goto/16 :goto_c1

    :cond_1bc
    move-object v8, v7

    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    goto/16 :goto_44
.end method

.method removePackageLPw(Ljava/lang/String;)I
    .registers 5
    .parameter "name"

    .prologue
    .line 624
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 625
    .local v0, p:Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_41

    .line 626
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_39

    .line 628
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 629
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_41

    .line 630
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    .line 632
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 639
    :goto_38
    return v1

    .line 635
    :cond_39
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    .line 636
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->userId:I

    goto :goto_38

    .line 639
    :cond_41
    const/4 v1, -0x1

    goto :goto_38
.end method

.method setInstallStatus(Ljava/lang/String;I)V
    .registers 5
    .parameter "pkgName"
    .parameter "status"

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 215
    .local v0, p:Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_13

    .line 216
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getInstallStatus()I

    move-result v1

    if-eq v1, p2, :cond_13

    .line 217
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallStatus(I)V

    .line 220
    :cond_13
    return-void
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "pkgName"
    .parameter "installerPkgName"

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 225
    .local v0, p:Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_d

    .line 226
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 228
    :cond_d
    return-void
.end method

.method setPackageStoppedStateLPw(Ljava/lang/String;ZZI)Z
    .registers 11
    .parameter "packageName"
    .parameter "stopped"
    .parameter "allowedByPermission"
    .parameter "uid"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 2092
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 2093
    .local v0, pkgSetting:Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_25

    .line 2094
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2096
    :cond_25
    if-nez p3, :cond_5e

    iget v2, v0, Lcom/android/server/pm/PackageSetting;->userId:I

    if-eq p4, v2, :cond_5e

    .line 2097
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/pm/PackageSetting;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2109
    :cond_5e
    iget-boolean v2, v0, Lcom/android/server/pm/PackageSettingBase;->stopped:Z

    if-eq v2, p2, :cond_7c

    .line 2110
    iput-boolean p2, v0, Lcom/android/server/pm/PackageSettingBase;->stopped:Z

    .line 2111
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iput-boolean p2, v2, Landroid/content/pm/PackageParser$Package;->mSetStopped:Z

    .line 2112
    iget-boolean v2, v0, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Z

    if-eqz v2, :cond_7b

    .line 2113
    iget-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_79

    .line 2114
    const-string v2, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    iget-object v3, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v5, v4, v5}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;)V

    .line 2118
    :cond_79
    iput-boolean v1, v0, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Z

    .line 2120
    :cond_7b
    const/4 v1, 0x1

    .line 2122
    :cond_7c
    return v1
.end method

.method transferPermissionsLPw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "origPkg"
    .parameter "newPkg"

    .prologue
    const/4 v5, 0x0

    .line 338
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/4 v4, 0x2

    if-ge v1, v4, :cond_3f

    .line 339
    if-nez v1, :cond_39

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    .line 341
    .local v3, permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :goto_9
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 342
    .local v0, bp:Lcom/android/server/pm/BasePermission;
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 347
    iput-object p2, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    .line 348
    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 349
    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 350
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v4, :cond_33

    .line 351
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    iput-object p2, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 353
    :cond_33
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/pm/BasePermission;->uid:I

    .line 354
    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->gids:[I

    goto :goto_11

    .line 339
    .end local v0           #bp:Lcom/android/server/pm/BasePermission;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_39
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    goto :goto_9

    .line 338
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 358
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_3f
    return-void
.end method

.method updateSharedUserPermsLPw(Lcom/android/server/pm/PackageSetting;[I)V
    .registers 13
    .parameter "deletedPs"
    .parameter "globalGids"

    .prologue
    .line 583
    if-eqz p1, :cond_6

    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v8, :cond_e

    .line 584
    :cond_6
    const-string v8, "PackageManager"

    const-string v9, "Trying to update info for null package. Just ignoring"

    invoke-static {v8, v9}, Landroid/util/safelog/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_d
    :goto_d
    return-void

    .line 589
    :cond_e
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v8, :cond_d

    .line 592
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 594
    .local v6, sus:Lcom/android/server/pm/SharedUserSetting;
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 595
    .local v1, eachPerm:Ljava/lang/String;
    const/4 v7, 0x0

    .line 596
    .local v7, used:Z
    iget-object v8, v6, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 599
    iget-object v8, v6, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 600
    .local v5, pkg:Lcom/android/server/pm/PackageSetting;
    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_37

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_37

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 603
    const/4 v7, 0x1

    .line 607
    .end local v5           #pkg:Lcom/android/server/pm/PackageSetting;
    :cond_60
    if-nez v7, :cond_1c

    .line 609
    iget-object v8, v6, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 613
    .end local v1           #eachPerm:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #used:Z
    :cond_68
    move-object v4, p2

    .line 614
    .local v4, newGids:[I
    iget-object v8, v6, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6f
    :goto_6f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 615
    .restart local v1       #eachPerm:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 616
    .local v0, bp:Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_6f

    .line 617
    iget-object v8, v0, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v4, v8}, Lcom/android/server/pm/PackageManagerService;->appendInts([I[I)[I

    move-result-object v4

    goto :goto_6f

    .line 620
    .end local v0           #bp:Lcom/android/server/pm/BasePermission;
    .end local v1           #eachPerm:Ljava/lang/String;
    :cond_8c
    iput-object v4, v6, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    goto/16 :goto_d
.end method

.method writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 10
    .parameter "serializer"
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1105
    const-string v3, "updated-package"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1106
    const-string v3, "name"

    iget-object v4, p2, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1107
    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    if-eqz v3, :cond_18

    .line 1108
    const-string v3, "realName"

    iget-object v4, p2, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1110
    :cond_18
    const-string v3, "codePath"

    iget-object v4, p2, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1111
    const-string v3, "ft"

    iget-wide v4, p2, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1112
    const-string v3, "it"

    iget-wide v4, p2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1113
    const-string v3, "ut"

    iget-wide v4, p2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1114
    const-string v3, "version"

    iget v4, p2, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1115
    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 1116
    const-string v3, "resourcePath"

    iget-object v4, p2, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1118
    :cond_5c
    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    if-eqz v3, :cond_67

    .line 1119
    const-string v3, "nativeLibraryPath"

    iget-object v4, p2, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1121
    :cond_67
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v3, :cond_ab

    .line 1122
    const-string v3, "userId"

    iget v4, p2, Lcom/android/server/pm/PackageSetting;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1126
    :goto_76
    const-string v3, "perms"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1127
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v3, :cond_b7

    .line 1132
    iget-object v3, p2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_85
    :goto_85
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1133
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 1134
    .local v0, bp:Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_85

    .line 1139
    const-string v3, "item"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1140
    const-string v3, "name"

    invoke-interface {p1, v6, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1141
    const-string v3, "item"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_85

    .line 1124
    .end local v0           #bp:Lcom/android/server/pm/BasePermission;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    :cond_ab
    const-string v3, "sharedUserId"

    iget v4, p2, Lcom/android/server/pm/PackageSetting;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_76

    .line 1145
    :cond_b7
    const-string v3, "perms"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1146
    const-string v3, "updated-package"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1147
    return-void
.end method

.method writeLPr()V
    .registers 31

    .prologue
    .line 894
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->checkXML(I)Z

    move-result v17

    .line 895
    .local v17, mSettingsExists:Z
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->checkXML(I)Z

    move-result v15

    .line 896
    .local v15, mBackupSettingsExists:Z
    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->checkXML(I)Z

    move-result v16

    .line 897
    .local v16, mMoreBackupSettingsExists:Z
    if-eqz v17, :cond_1a1

    .line 902
    if-nez v15, :cond_18f

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v26

    if-nez v26, :cond_3c

    .line 904
    const-string v26, "PackageSettings"

    const-string v27, "Unable to backup package manager settings, current changes will be lost at reboot"

    invoke-static/range {v26 .. v27}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_3b
    :goto_3b
    return-void

    .line 907
    :cond_3c
    const/4 v15, 0x1

    .line 921
    :cond_3d
    :goto_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 924
    :try_start_46
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 925
    .local v9, fstr:Ljava/io/FileOutputStream;
    new-instance v23, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v23

    invoke-direct {v0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 928
    .local v23, str:Ljava/io/BufferedOutputStream;
    new-instance v22, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 929
    .local v22, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v26, "utf-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 930
    const/16 v26, 0x0

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 931
    const-string v26, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v27, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 933
    const/16 v26, 0x0

    const-string v27, "packages"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 935
    const/16 v26, 0x0

    const-string v27, "last-platform-version"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 936
    const/16 v26, 0x0

    const-string v27, "internal"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/Settings;->mInternalSdkPlatform:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 937
    const/16 v26, 0x0

    const-string v27, "external"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/Settings;->mExternalSdkPlatform:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 938
    const/16 v26, 0x0

    const-string v27, "last-platform-version"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    move-object/from16 v26, v0

    if-eqz v26, :cond_11c

    .line 941
    const/16 v26, 0x0

    const-string v27, "verifier"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 942
    const/16 v26, 0x0

    const-string v27, "device"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 943
    const/16 v26, 0x0

    const-string v27, "verifier"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 946
    :cond_11c
    const/16 v26, 0x0

    const-string v27, "permission-trees"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_137
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1b9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/BasePermission;

    .line 948
    .local v5, bp:Lcom/android/server/pm/BasePermission;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/Settings;->writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    :try_end_14a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_14a} :catch_14b
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_14a} :catch_1f5

    goto :goto_137

    .line 1087
    .end local v5           #bp:Lcom/android/server/pm/BasePermission;
    .end local v9           #fstr:Ljava/io/FileOutputStream;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v22           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v23           #str:Ljava/io/BufferedOutputStream;
    :catch_14b
    move-exception v7

    .line 1088
    .local v7, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v26, "PackageManager"

    const-string v27, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/safelog/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1095
    .end local v7           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_3b

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    move-result v26

    if-nez v26, :cond_3b

    .line 1097
    const-string v26, "PackageManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Failed to clean up mangled file: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/safelog/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 910
    :cond_18f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 911
    const-string v26, "PackageSettings"

    const-string v27, "Preserving older settings backup"

    invoke-static/range {v26 .. v27}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 914
    :cond_1a1
    if-nez v15, :cond_3d

    if-eqz v16, :cond_3d

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 916
    const/16 v16, 0x0

    .line 917
    const/4 v15, 0x1

    goto/16 :goto_3d

    .line 950
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v22       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v23       #str:Ljava/io/BufferedOutputStream;
    :cond_1b9
    const/16 v26, 0x0

    :try_start_1bb
    const-string v27, "permission-trees"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 952
    const/16 v26, 0x0

    const-string v27, "permissions"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1e1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_203

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/BasePermission;

    .line 954
    .restart local v5       #bp:Lcom/android/server/pm/BasePermission;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/Settings;->writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    :try_end_1f4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1bb .. :try_end_1f4} :catch_14b
    .catch Ljava/io/IOException; {:try_start_1bb .. :try_end_1f4} :catch_1f5

    goto :goto_1e1

    .line 1090
    .end local v5           #bp:Lcom/android/server/pm/BasePermission;
    .end local v9           #fstr:Ljava/io/FileOutputStream;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v22           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v23           #str:Ljava/io/BufferedOutputStream;
    :catch_1f5
    move-exception v7

    .line 1091
    .local v7, e:Ljava/io/IOException;
    const-string v26, "PackageManager"

    const-string v27, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/safelog/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_157

    .line 956
    .end local v7           #e:Ljava/io/IOException;
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v22       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v23       #str:Ljava/io/BufferedOutputStream;
    :cond_203
    const/16 v26, 0x0

    :try_start_205
    const-string v27, "permissions"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_21e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_234

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/pm/PackageSetting;

    .line 959
    .local v20, pkg:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_21e

    .line 962
    .end local v20           #pkg:Lcom/android/server/pm/PackageSetting;
    :cond_234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_242
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_258

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/pm/PackageSetting;

    .line 963
    .restart local v20       #pkg:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_242

    .line 966
    .end local v20           #pkg:Lcom/android/server/pm/PackageSetting;
    :cond_258
    const/16 v26, 0x0

    const-string v27, "preferred-activities"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_273
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2a1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/pm/PreferredActivity;

    .line 968
    .local v19, pa:Lcom/android/server/pm/PreferredActivity;
    const/16 v26, 0x0

    const-string v27, "item"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 969
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 970
    const/16 v26, 0x0

    const-string v27, "item"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_273

    .line 972
    .end local v19           #pa:Lcom/android/server/pm/PreferredActivity;
    :cond_2a1
    const/16 v26, 0x0

    const-string v27, "preferred-activities"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v11           #i$:Ljava/util/Iterator;
    :goto_2bc
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_385

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/pm/SharedUserSetting;

    .line 975
    .local v25, usr:Lcom/android/server/pm/SharedUserSetting;
    const/16 v26, 0x0

    const-string v27, "shared-user"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 976
    const/16 v26, 0x0

    const-string v27, "name"

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 977
    const/16 v26, 0x0

    const-string v27, "userId"

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 979
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v26, v0

    const-string v27, "sigs"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 980
    const/16 v26, 0x0

    const-string v27, "perms"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 981
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_333
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_369

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 982
    .local v18, name:Ljava/lang/String;
    const/16 v26, 0x0

    const-string v27, "item"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 983
    const/16 v26, 0x0

    const-string v27, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 984
    const/16 v26, 0x0

    const-string v27, "item"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_333

    .line 986
    .end local v18           #name:Ljava/lang/String;
    :cond_369
    const/16 v26, 0x0

    const-string v27, "perms"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 987
    const/16 v26, 0x0

    const-string v27, "shared-user"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_2bc

    .line 990
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v25           #usr:Lcom/android/server/pm/SharedUserSetting;
    :cond_385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_3da

    .line 991
    const/4 v10, 0x0

    .local v10, i:I
    :goto_392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_3da

    .line 992
    const/16 v26, 0x0

    const-string v27, "cleaning-package"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 993
    const/16 v27, 0x0

    const-string v28, "name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 994
    const/16 v26, 0x0

    const-string v27, "cleaning-package"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 991
    add-int/lit8 v10, v10, 0x1

    goto :goto_392

    .line 998
    .end local v10           #i:I
    :cond_3da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->size()I

    move-result v26

    if-lez v26, :cond_445

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_3f4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_445

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1000
    .local v8, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v26, 0x0

    const-string v27, "renamed-package"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1001
    const/16 v27, 0x0

    const-string v28, "new"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1002
    const/16 v27, 0x0

    const-string v28, "old"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1003
    const/16 v26, 0x0

    const-string v27, "renamed-package"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3f4

    .line 1007
    .end local v8           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_445
    const/16 v26, 0x0

    const-string v27, "packages"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1009
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1011
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1012
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1013
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedOutputStream;->close()V

    .line 1017
    if-eqz v16, :cond_469

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 1020
    :cond_469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1b4

    const/16 v28, -0x1

    const/16 v29, -0x1

    invoke-static/range {v26 .. v29}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1029
    new-instance v24, Ljava/io/File;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ".tmp"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1030
    .local v24, tempFile:Ljava/io/File;
    new-instance v14, Lcom/android/internal/util/JournaledFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v14, v0, v1}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 1032
    .local v14, journal:Lcom/android/internal/util/JournaledFile;
    new-instance v9, Ljava/io/FileOutputStream;

    .end local v9           #fstr:Ljava/io/FileOutputStream;
    invoke-virtual {v14}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1033
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    new-instance v23, Ljava/io/BufferedOutputStream;

    .end local v23           #str:Ljava/io/BufferedOutputStream;
    move-object/from16 v0, v23

    invoke-direct {v0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4d2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_205 .. :try_end_4d2} :catch_14b
    .catch Ljava/io/IOException; {:try_start_205 .. :try_end_4d2} :catch_1f5

    .line 1035
    .restart local v23       #str:Ljava/io/BufferedOutputStream;
    :try_start_4d2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1036
    .local v21, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_4e5
    :goto_4e5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_593

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/pm/PackageSetting;

    .line 1037
    .restart local v20       #pkg:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1038
    .local v4, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1039
    .local v6, dataPath:Ljava/lang/String;
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x2

    if-eqz v26, :cond_58d

    const/4 v13, 0x1

    .line 1043
    .local v13, isDebug:Z
    :goto_506
    const-string v26, " "

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    if-gez v26, :cond_4e5

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v26, v0

    const/16 v27, 0x2710

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_4e5

    .line 1059
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1060
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    const-string v26, " "

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v26, v0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1063
    if-eqz v13, :cond_590

    const-string v26, " 1 "

    :goto_548
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    const-string v26, "\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_56c
    .catch Ljava/lang/Exception; {:try_start_4d2 .. :try_end_56c} :catch_56e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4d2 .. :try_end_56c} :catch_14b
    .catch Ljava/io/IOException; {:try_start_4d2 .. :try_end_56c} :catch_1f5

    goto/16 :goto_4e5

    .line 1072
    .end local v4           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #dataPath:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #isDebug:Z
    .end local v20           #pkg:Lcom/android/server/pm/PackageSetting;
    .end local v21           #sb:Ljava/lang/StringBuilder;
    :catch_56e
    move-exception v7

    .line 1073
    .local v7, e:Ljava/lang/Exception;
    :try_start_56f
    invoke-static/range {v23 .. v23}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1074
    invoke-virtual {v14}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 1077
    .end local v7           #e:Ljava/lang/Exception;
    :goto_575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1b4

    const/16 v28, -0x1

    const/16 v29, -0x1

    invoke-static/range {v26 .. v29}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeStoppedLPr()V
    :try_end_58b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56f .. :try_end_58b} :catch_14b
    .catch Ljava/io/IOException; {:try_start_56f .. :try_end_58b} :catch_1f5

    goto/16 :goto_3b

    .line 1039
    .restart local v4       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #dataPath:Ljava/lang/String;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v20       #pkg:Lcom/android/server/pm/PackageSetting;
    .restart local v21       #sb:Ljava/lang/StringBuilder;
    :cond_58d
    const/4 v13, 0x0

    goto/16 :goto_506

    .line 1063
    .restart local v13       #isDebug:Z
    :cond_590
    :try_start_590
    const-string v26, " 0 "

    goto :goto_548

    .line 1068
    .end local v4           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #dataPath:Ljava/lang/String;
    .end local v13           #isDebug:Z
    .end local v20           #pkg:Lcom/android/server/pm/PackageSetting;
    :cond_593
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1069
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1070
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedOutputStream;->close()V

    .line 1071
    invoke-virtual {v14}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_59f
    .catch Ljava/lang/Exception; {:try_start_590 .. :try_end_59f} :catch_56e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_590 .. :try_end_59f} :catch_14b
    .catch Ljava/io/IOException; {:try_start_590 .. :try_end_59f} :catch_1f5

    goto :goto_575
.end method

.method writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 9
    .parameter "serializer"
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1151
    const-string v2, "package"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1152
    const-string v2, "name"

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1153
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 1154
    const-string v2, "realName"

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1156
    :cond_18
    const-string v2, "codePath"

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1157
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1158
    const-string v2, "resourcePath"

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1160
    :cond_30
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    if-eqz v2, :cond_3b

    .line 1161
    const-string v2, "nativeLibraryPath"

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1163
    :cond_3b
    const-string v2, "flags"

    iget v3, p2, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1164
    const-string v2, "ft"

    iget-wide v3, p2, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1165
    const-string v2, "it"

    iget-wide v3, p2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1166
    const-string v2, "ut"

    iget-wide v3, p2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1167
    const-string v2, "version"

    iget v3, p2, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1168
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_eb

    .line 1169
    const-string v2, "userId"

    iget v3, p2, Lcom/android/server/pm/PackageSetting;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1173
    :goto_81
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    if-eqz v2, :cond_8c

    .line 1174
    const-string v2, "uidError"

    const-string v3, "true"

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1176
    :cond_8c
    iget v2, p2, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    if-eqz v2, :cond_9b

    .line 1177
    const-string v2, "enabled"

    iget v3, p2, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1179
    :cond_9b
    iget v2, p2, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    if-nez v2, :cond_a6

    .line 1180
    const-string v2, "installStatus"

    const-string v3, "false"

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1182
    :cond_a6
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_b1

    .line 1183
    const-string v2, "installer"

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1185
    :cond_b1
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string v3, "sigs"

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1186
    iget v2, p2, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_fc

    .line 1187
    const-string v2, "perms"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1188
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_f7

    .line 1193
    iget-object v2, p2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_cf
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1194
    .local v1, name:Ljava/lang/String;
    const-string v2, "item"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1195
    const-string v2, "name"

    invoke-interface {p1, v5, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1196
    const-string v2, "item"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_cf

    .line 1171
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    :cond_eb
    const-string v2, "sharedUserId"

    iget v3, p2, Lcom/android/server/pm/PackageSetting;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_81

    .line 1199
    :cond_f7
    const-string v2, "perms"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1201
    :cond_fc
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_130

    .line 1202
    const-string v2, "disabled-components"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1203
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_10f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1204
    .restart local v1       #name:Ljava/lang/String;
    const-string v2, "item"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1205
    const-string v2, "name"

    invoke-interface {p1, v5, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1206
    const-string v2, "item"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_10f

    .line 1208
    .end local v1           #name:Ljava/lang/String;
    :cond_12b
    const-string v2, "disabled-components"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1210
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_130
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_164

    .line 1211
    const-string v2, "enabled-components"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1212
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_143
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1213
    .restart local v1       #name:Ljava/lang/String;
    const-string v2, "item"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1214
    const-string v2, "name"

    invoke-interface {p1, v5, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1215
    const-string v2, "item"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_143

    .line 1217
    .end local v1           #name:Ljava/lang/String;
    :cond_15f
    const-string v2, "enabled-components"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1220
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_164
    const-string v2, "package"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1221
    return-void
.end method

.method writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    .registers 7
    .parameter "serializer"
    .parameter "bp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1225
    iget v1, p2, Lcom/android/server/pm/BasePermission;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_65

    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    if-eqz v1, :cond_65

    .line 1226
    const-string v1, "item"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1227
    const-string v1, "name"

    iget-object v2, p2, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1228
    const-string v1, "package"

    iget-object v2, p2, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1229
    iget v1, p2, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    if-eqz v1, :cond_2c

    .line 1230
    const-string v1, "protection"

    iget v2, p2, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1235
    :cond_2c
    iget v1, p2, Lcom/android/server/pm/BasePermission;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_60

    .line 1236
    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v1, :cond_66

    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 1237
    .local v0, pi:Landroid/content/pm/PermissionInfo;
    :goto_39
    if-eqz v0, :cond_60

    .line 1238
    const-string v1, "type"

    const-string v2, "dynamic"

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1239
    iget v1, v0, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v1, :cond_51

    .line 1240
    const-string v1, "icon"

    iget v2, v0, Landroid/content/pm/PermissionInfo;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1242
    :cond_51
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_60

    .line 1243
    const-string v1, "label"

    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1247
    .end local v0           #pi:Landroid/content/pm/PermissionInfo;
    :cond_60
    const-string v1, "item"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1249
    :cond_65
    return-void

    .line 1236
    :cond_66
    iget-object v0, p2, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    goto :goto_39
.end method

.method writeStoppedLPr()V
    .registers 11

    .prologue
    .line 719
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 724
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_22

    .line 725
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_2e

    .line 726
    const-string v6, "PackageManager"

    const-string v7, "Unable to backup package manager stopped packages, current changes will be lost at reboot"

    invoke-static {v6, v7}, Landroid/util/safelog/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_21
    :goto_21
    return-void

    .line 731
    :cond_22
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 732
    const-string v6, "PackageManager"

    const-string v7, "Preserving older stopped packages backup"

    invoke-static {v6, v7}, Landroid/util/safelog/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_2e
    :try_start_2e
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 738
    .local v1, fstr:Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 741
    .local v5, str:Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 742
    .local v4, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 743
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 744
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 746
    const/4 v6, 0x0

    const-string v7, "stopped-packages"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 748
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_63
    :goto_63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 749
    .local v3, pkg:Lcom/android/server/pm/PackageSetting;
    iget-boolean v6, v3, Lcom/android/server/pm/PackageSettingBase;->stopped:Z

    if-eqz v6, :cond_63

    .line 750
    const/4 v6, 0x0

    const-string v7, "pkg"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 751
    const/4 v6, 0x0

    const-string v7, "name"

    iget-object v8, v3, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 752
    iget-boolean v6, v3, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Z

    if-eqz v6, :cond_8d

    .line 753
    const/4 v6, 0x0

    const-string v7, "nl"

    const-string v8, "1"

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 755
    :cond_8d
    const/4 v6, 0x0

    const-string v7, "pkg"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_93} :catch_94

    goto :goto_63

    .line 778
    .end local v1           #fstr:Ljava/io/FileOutputStream;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pkg:Lcom/android/server/pm/PackageSetting;
    .end local v4           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v5           #str:Ljava/io/BufferedOutputStream;
    :catch_94
    move-exception v0

    .line 779
    .local v0, e:Ljava/io/IOException;
    const-string v6, "PackageManager"

    const-string v7, "Unable to write package manager stopped packages,  current changes will be lost at reboot"

    invoke-static {v6, v7, v0}, Landroid/util/safelog/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 785
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_21

    .line 786
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clean up mangled file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/safelog/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 759
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #fstr:Ljava/io/FileOutputStream;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v5       #str:Ljava/io/BufferedOutputStream;
    :cond_c8
    const/4 v6, 0x0

    :try_start_c9
    const-string v7, "stopped-packages"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 761
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 763
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 764
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 765
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 769
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 770
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1b4

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_ec} :catch_94

    goto/16 :goto_21
.end method
