.class public Lcom/android/server/enterprise/ApplicationPolicy;
.super Landroid/app/enterprise/IApplicationPolicy$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/ApplicationPolicy$2;,
        Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;,
        Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;,
        Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;,
        Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;
    }
.end annotation


# static fields
.field private static final CPU_ELAPSED_TIME:I = 0x3e8

.field private static final CPU_IDLE_TIME:I = 0x4

.field private static final CPU_IO_WAIT_TIME:I = 0x5

.field private static final CPU_IRQ_TIME:I = 0x6

.field private static final CPU_NICE_TIME:I = 0x2

.field private static final CPU_SOFT_IRQ_TIME:I = 0x7

.field private static final CPU_SYSTEM_TIME:I = 0x3

.field private static final CPU_USER_TIME:I = 0x1

.field private static final EXTRA_APPSTATE:Ljava/lang/String; = "application_state_disable_enable"

.field private static final PERMISSION_INSTALLATION_BLACKLIST:Ljava/lang/String; = "PermissionInstallationBlacklist"

.field private static final PKGNAME_INSTALLATION_BLACKLIST:Ljava/lang/String; = "PackageNameInstallationBlacklist"

.field private static final PKGNAME_INSTALLATION_WHITELIST:Ljava/lang/String; = "PackageNameInstallationWhitelist"

.field private static final PROCESS_SYSTEM_TIME:I = 0xe

.field private static final PROCESS_USER_TIME:I = 0xd

.field private static final SIGNATURE_INSTALLATION_BLACKLIST:Ljava/lang/String; = "SignatureInstallationBlacklist"

.field private static final TAG:Ljava/lang/String; = "ApplicationPolicy"

.field private static mAppControlState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static mAppIconChangedPkgNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mAppNetworkStatsTracker:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    sput-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    .line 133
    sput-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-direct {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;-><init>()V

    .line 127
    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 129
    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 163
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 164
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 165
    new-instance v0, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 166
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->registerPackageChangeReceiver()V

    .line 167
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/ApplicationIconDb;->getApplicationIconChangedList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    .line 168
    new-instance v0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 169
    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/ApplicationPolicy;)Lcom/android/server/enterprise/EdmStorageProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private canRead(Ljava/lang/String;)Z
    .registers 7
    .parameter "filepath"

    .prologue
    .line 1107
    const/4 v0, 0x0

    .line 1109
    .local v0, canread:Z
    :try_start_1
    const-string v3, "\\\\"

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1110
    const-string v3, "/"

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1111
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1112
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1113
    :cond_1e
    const/4 v3, 0x3

    new-array v2, v3, [I

    .line 1114
    .local v2, mOutPermissions:[I
    invoke-static {p1, v2}, Landroid/os/FileUtils;->getPermissions(Ljava/lang/String;[I)I

    .line 1115
    const/4 v3, 0x4

    const/4 v4, 0x0

    aget v4, v2, v4
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2e

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_2d

    .line 1116
    const/4 v0, 0x1

    .line 1121
    .end local v2           #mOutPermissions:[I
    :cond_2d
    :goto_2d
    return v0

    .line 1118
    :catch_2e
    move-exception v1

    .line 1119
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method private checkRegex(Ljava/lang/String;)Z
    .registers 4
    .parameter "regex"

    .prologue
    .line 2370
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    .line 2375
    const/4 v1, 0x1

    :goto_4
    return v1

    .line 2371
    :catch_5
    move-exception v0

    .line 2372
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2373
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private cleanCmdline(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "aRawData"

    .prologue
    .line 3007
    if-nez p1, :cond_5

    .line 3008
    const-string p1, "<invalid>"

    .line 3015
    .end local p1
    :cond_4
    :goto_4
    return-object p1

    .line 3010
    .restart local p1
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 3011
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isIdentifierIgnorable(C)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3012
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 3010
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private clearApplicationCacheFiles(Ljava/lang/String;)Z
    .registers 7
    .parameter "packageName"

    .prologue
    .line 868
    const/4 v2, 0x0

    .line 869
    .local v2, success:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 870
    if-eqz p1, :cond_2c

    .line 871
    new-instance v0, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Lcom/android/server/enterprise/ApplicationPolicy$1;)V

    .line 873
    .local v0, clearCacheObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;
    :try_start_d
    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1, v0}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 875
    monitor-enter v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_32

    .line 876
    :goto_13
    :try_start_13
    iget-boolean v3, v0, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;->finished:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_2f

    if-nez v3, :cond_1d

    .line 878
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_2f
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_13

    .line 879
    :catch_1b
    move-exception v3

    goto :goto_13

    .line 882
    :cond_1d
    const/4 v3, 0x1

    :try_start_1e
    iget-boolean v4, v0, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;->success:Z

    if-ne v3, v4, :cond_2d

    iget-object v3, v0, Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 883
    const/4 v2, 0x1

    .line 887
    :goto_2b
    monitor-exit v0

    .line 893
    .end local v0           #clearCacheObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;
    :cond_2c
    :goto_2c
    return v2

    .line 885
    .restart local v0       #clearCacheObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearCacheObserver;
    :cond_2d
    const/4 v2, 0x0

    goto :goto_2b

    .line 887
    :catchall_2f
    move-exception v3

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_2f

    :try_start_31
    throw v3
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_32} :catch_32

    .line 888
    :catch_32
    move-exception v1

    .line 889
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 890
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c
.end method

.method private clearUserData(Ljava/lang/String;)Z
    .registers 9
    .parameter "packageName"

    .prologue
    .line 912
    const/4 v4, 0x0

    .line 913
    .local v4, success:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 914
    if-eqz p1, :cond_33

    .line 915
    new-instance v1, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Lcom/android/server/enterprise/ApplicationPolicy$1;)V

    .line 917
    .local v1, clearDataObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;
    :try_start_d
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 918
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v3

    .line 919
    .local v3, res:Z
    if-nez v3, :cond_34

    .line 921
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t clear application user data for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 942
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #clearDataObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;
    .end local v3           #res:Z
    :cond_33
    :goto_33
    return v4

    .line 923
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #clearDataObserver:Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;
    .restart local v3       #res:Z
    :cond_34
    monitor-enter v1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_35} :catch_52

    .line 924
    :goto_35
    :try_start_35
    iget-boolean v5, v1, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;->finished:Z
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_4f

    if-nez v5, :cond_3f

    .line 926
    :try_start_39
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4f
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_35

    .line 927
    :catch_3d
    move-exception v5

    goto :goto_35

    .line 930
    :cond_3f
    const/4 v5, 0x1

    :try_start_40
    iget-boolean v6, v1, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;->success:Z

    if-ne v5, v6, :cond_58

    iget-object v5, v1, Lcom/android/server/enterprise/ApplicationPolicy$ClearUserDataObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 931
    const/4 v4, 0x1

    .line 935
    :goto_4d
    monitor-exit v1

    goto :goto_33

    :catchall_4f
    move-exception v5

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_40 .. :try_end_51} :catchall_4f

    :try_start_51
    throw v5
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_52} :catch_52

    .line 937
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v3           #res:Z
    :catch_52
    move-exception v2

    .line 938
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 939
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33

    .line 933
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v3       #res:Z
    :cond_58
    const/4 v4, 0x0

    goto :goto_4d
.end method

.method private declared-synchronized createAdminMap(I)V
    .registers 5
    .parameter "adminUid"

    .prologue
    .line 248
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_43

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v0, adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v1, "PackageNameInstallationBlacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v1, "PackageNameInstallationWhitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v1, "PermissionInstallationBlacklist"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v1, "SignatureInstallationBlacklist"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    .line 257
    .end local v0           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_43
    monitor-exit p0

    return-void

    .line 248
    :catchall_45
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private enforceAppPermission()I
    .registers 3

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getActualApplicationStateEnabled(Ljava/lang/String;)Z
    .registers 8
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    .line 785
    const/4 v1, 0x0

    .line 786
    .local v1, enabled:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 788
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 801
    :goto_c
    return v3

    .line 791
    :cond_d
    if-eqz p1, :cond_19

    .line 793
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_35

    move-result v2

    .line 794
    .local v2, value:I
    const/4 v4, 0x2

    if-eq v2, v4, :cond_33

    move v1, v3

    .line 800
    .end local v2           #value:I
    :cond_19
    :goto_19
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActualApplicationStateEnabled() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    .line 801
    goto :goto_c

    .line 794
    .restart local v2       #value:I
    :cond_33
    const/4 v1, 0x0

    goto :goto_19

    .line 795
    .end local v2           #value:I
    :catch_35
    move-exception v0

    .line 796
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 797
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method private getAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 6
    .parameter "packageName"

    .prologue
    .line 2477
    const/4 v1, 0x0

    .line 2478
    .local v1, mAppInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2479
    if-eqz p1, :cond_f

    .line 2481
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_e} :catch_10

    move-result-object v1

    .line 2487
    :cond_f
    :goto_f
    return-object v1

    .line 2482
    :catch_10
    move-exception v0

    .line 2483
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppInfo() : Exception when retrieving package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    goto :goto_f
.end method

.method private declared-synchronized getApplicationControlState(Ljava/lang/String;II)Z
    .registers 11
    .parameter "pkgName"
    .parameter "callingUid"
    .parameter "controlStateMask"

    .prologue
    .line 360
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    const-string v5, "controlState"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    move-result v6

    .line 365
    .local v6, controlState:I
    and-int v0, v6, p3

    if-ne p3, v0, :cond_16

    const/4 v0, 0x1

    :goto_14
    monitor-exit p0

    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_14

    .line 360
    .end local v6           #controlState:I
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getApplicationPackageInfo(Ljava/lang/String;Landroid/net/Uri;)Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;
    .registers 14
    .parameter "packageName"
    .parameter "packageUri"

    .prologue
    .line 1629
    new-instance v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 1631
    .local v4, pkg:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;
    if-eqz p2, :cond_57

    .line 1633
    :try_start_7
    invoke-static {p2}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1634
    .local v6, pkgInst:Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_56

    if-eqz v6, :cond_56

    .line 1635
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 1636
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v8, :cond_1b

    .line 1637
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 1638
    :cond_1b
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    .line 1639
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_56

    .line 1640
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2a
    if-ge v2, v3, :cond_56

    aget-object v7, v0, v2

    .line 1641
    .local v7, sig:Landroid/content/pm/Signature;
    iget-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_3a

    .line 1640
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 1644
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v6           #pkgInst:Landroid/content/pm/PackageParser$Package;
    .end local v7           #sig:Landroid/content/pm/Signature;
    :catch_3a
    move-exception v1

    .line 1645
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1646
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    .end local v1           #e:Ljava/lang/Exception;
    :cond_56
    :goto_56
    return-object v4

    .line 1651
    :cond_57
    if-nez p1, :cond_94

    const-string p1, ""

    .line 1652
    :goto_5b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_56

    .line 1654
    :try_start_61
    iget-object v8, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x1040

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1657
    .local v5, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_56

    .line 1658
    iput-object p1, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 1659
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v8, :cond_79

    .line 1660
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 1662
    :cond_79
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    .line 1663
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .restart local v0       #arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_84
    if-ge v2, v3, :cond_56

    aget-object v7, v0, v2

    .line 1664
    .restart local v7       #sig:Landroid/content/pm/Signature;
    iget-object v8, v4, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_91} :catch_99

    .line 1663
    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    .line 1651
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v7           #sig:Landroid/content/pm/Signature;
    :cond_94
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_5b

    .line 1667
    :catch_99
    move-exception v1

    .line 1668
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1669
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56
.end method

.method private getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .registers 8
    .parameter "packageName"

    .prologue
    .line 2105
    const/4 v1, 0x0

    .line 2106
    .local v1, pkgst:Landroid/content/pm/PackageStats;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2107
    if-eqz p1, :cond_2a

    .line 2108
    new-instance v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 2109
    .local v0, obs:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2111
    .local v2, token:J
    :try_start_10
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1, v0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 2112
    monitor-enter v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_2e

    .line 2113
    :goto_16
    :try_start_16
    iget-boolean v4, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->finished:Z
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_2b

    if-nez v4, :cond_20

    .line 2115
    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2b
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_16

    .line 2116
    :catch_1e
    move-exception v4

    goto :goto_16

    .line 2119
    :cond_20
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_2b

    .line 2121
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2122
    iget-boolean v4, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v4, :cond_2a

    .line 2123
    iget-object v1, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    .line 2127
    .end local v0           #obs:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    .end local v2           #token:J
    :cond_2a
    return-object v1

    .line 2119
    .restart local v0       #obs:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    .restart local v2       #token:J
    :catchall_2b
    move-exception v4

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 2121
    :catchall_2e
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2122
    iget-boolean v5, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v5, :cond_38

    .line 2123
    iget-object v1, v0, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    .line 2121
    :cond_38
    throw v4
.end method

.method private getApplicationsList(Ljava/lang/String;I)[Landroid/app/enterprise/ManagedAppInfo;
    .registers 14
    .parameter "pkg"
    .parameter "callingUid"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1523
    const/4 v7, 0x0

    .line 1524
    .local v7, appInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/ManagedAppInfo;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1525
    const/4 v0, 0x6

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "packageName"

    aput-object v0, v5, v9

    const-string v0, "applicationInstallationCount"

    aput-object v0, v5, v10

    const/4 v0, 0x2

    const-string v1, "applicationUninstallationCount"

    aput-object v1, v5, v0

    const/4 v0, 0x3

    const-string v1, "managedApp"

    aput-object v1, v5, v0

    const/4 v0, 0x4

    const-string v1, "install_sourceMDM"

    aput-object v1, v5, v0

    const/4 v0, 0x5

    const-string v1, "controlState"

    aput-object v1, v5, v0

    .line 1533
    .local v5, columns:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1535
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_b8

    .line 1536
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #appInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/ManagedAppInfo;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1537
    .restart local v7       #appInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/ManagedAppInfo;>;"
    :goto_39
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 1538
    new-instance v6, Landroid/app/enterprise/ManagedAppInfo;

    invoke-direct {v6}, Landroid/app/enterprise/ManagedAppInfo;-><init>()V

    .line 1539
    .local v6, appInfo:Landroid/app/enterprise/ManagedAppInfo;
    const-string v0, "packageName"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    .line 1540
    const-string v0, "applicationInstallationCount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    .line 1541
    const-string v0, "applicationUninstallationCount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallCount:I

    .line 1542
    const-string v0, "managedApp"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mIsEnterpriseApp:I

    .line 1543
    const-string v0, "install_sourceMDM"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mIsInstallSourceMDM:I

    .line 1544
    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getActualApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad

    move v0, v9

    :goto_91
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppDisabled:I

    .line 1546
    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationInstallationEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    move v0, v9

    :goto_9c
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallationDisabled:I

    .line 1547
    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    move v0, v9

    :goto_a7
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallationDisabled:I

    .line 1548
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_ad
    move v0, v10

    .line 1544
    goto :goto_91

    :cond_af
    move v0, v9

    goto :goto_91

    :cond_b1
    move v0, v10

    .line 1546
    goto :goto_9c

    :cond_b3
    move v0, v10

    .line 1547
    goto :goto_a7

    .line 1550
    .end local v6           #appInfo:Landroid/app/enterprise/ManagedAppInfo;
    :cond_b5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1553
    :cond_b8
    if-eqz v7, :cond_cf

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_cf

    .line 1554
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/app/enterprise/ManagedAppInfo;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/enterprise/ManagedAppInfo;

    check-cast v0, [Landroid/app/enterprise/ManagedAppInfo;

    .line 1556
    :goto_ce
    return-object v0

    :cond_cf
    const/4 v0, 0x0

    goto :goto_ce
.end method

.method private final getDebugMemoryInfo(ILandroid/app/ActivityManager;)J
    .registers 7
    .parameter "pid"
    .parameter "am"

    .prologue
    const/4 v3, 0x0

    .line 2054
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 2055
    .local v1, pidArray:[I
    aput p1, v1, v3

    .line 2056
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 2057
    .local v0, memInfoArray:[Landroid/os/Debug$MemoryInfo;
    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    int-to-long v2, v2

    return-wide v2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 143
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 146
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method static getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;
    .registers 7
    .parameter "packageURI"

    .prologue
    const/4 v5, 0x0

    .line 1679
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1680
    .local v0, archiveFilePath:Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 1681
    .local v2, packageParser:Landroid/content/pm/PackageParser;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1682
    .local v4, sourceFile:Ljava/io/File;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1683
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 1684
    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1686
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_20

    .line 1687
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    .line 1691
    :cond_20
    const/4 v2, 0x0

    .line 1692
    return-object v3
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .parameter "intent"

    .prologue
    .line 805
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 806
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, pkg:Ljava/lang/String;
    :goto_a
    return-object v0

    .line 806
    .end local v0           #pkg:Ljava/lang/String;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 7
    .parameter "uid"

    .prologue
    .line 3229
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "ADMIN"

    const-string v4, "adminName"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3231
    .local v1, pkgName:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3232
    .local v0, compName:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getPidList()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3024
    new-instance v3, Ljava/io/File;

    const-string v4, "/proc/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3025
    .local v3, lProcDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 3026
    .local v1, lFiles:[Ljava/lang/String;
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPidList: process count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3028
    .local v2, lPidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    array-length v4, v1

    if-ge v0, v4, :cond_48

    .line 3030
    const/4 v4, 0x1

    aget-object v5, v1, v0

    const-string v6, "[0-9]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-ne v4, v5, :cond_45

    .line 3031
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3028
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 3035
    :cond_48
    return-object v2
.end method

.method private getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 6
    .parameter "packageName"

    .prologue
    .line 2494
    const/4 v1, 0x0

    .line 2495
    .local v1, mpkgInfo:Landroid/content/pm/PackageInfo;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2496
    if-eqz p1, :cond_f

    .line 2498
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_e} :catch_10

    move-result-object v1

    .line 2504
    :cond_f
    :goto_f
    return-object v1

    .line 2499
    :catch_10
    move-exception v0

    .line 2500
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppInfo() : Exception when retrieving package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    goto :goto_f
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 2524
    if-nez p0, :cond_4

    .line 2528
    :cond_3
    :goto_3
    return-object v1

    .line 2524
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    .line 2525
    :catch_10
    move-exception v0

    .line 2526
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private isActiveAdmin(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3217
    if-nez p1, :cond_5

    .line 3225
    :cond_4
    :goto_4
    return v0

    .line 3221
    :cond_5
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_4

    move v0, v1

    .line 3222
    goto :goto_4
.end method

.method private declared-synchronized loadApplicationBlacklistWhitelist()V
    .registers 14

    .prologue
    .line 185
    monitor-enter p0

    :try_start_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    .line 187
    iget-object v8, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "ADMIN"

    const-string v10, "adminUid"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 191
    .local v7, uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x2

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "packageName"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string v9, "controlState"

    aput-object v9, v1, v8

    .line 196
    .local v1, columns:[Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_119

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 198
    .local v6, storedUid:I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 199
    .local v0, adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v8, "PackageNameInstallationBlacklist"

    new-instance v9, Ljava/util/TreeSet;

    invoke-direct {v9}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v8, "PackageNameInstallationWhitelist"

    new-instance v9, Ljava/util/TreeSet;

    invoke-direct {v9}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v8, "PermissionInstallationBlacklist"

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v8, "SignatureInstallationBlacklist"

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v8, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "APPLICATION"

    invoke-virtual {v8, v9, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 206
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_ac

    .line 207
    :cond_6a
    :goto_6a
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_a9

    .line 208
    const-string v8, "packageName"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, pkgName:Ljava/lang/String;
    const-string v8, "controlState"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 211
    .local v2, controlState:I
    const/4 v8, 0x4

    and-int/lit8 v9, v2, 0x4

    if-ne v8, v9, :cond_94

    .line 213
    const-string v8, "PackageNameInstallationBlacklist"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_94
    const/16 v8, 0x8

    and-int/lit8 v9, v2, 0x8

    if-ne v8, v9, :cond_6a

    .line 217
    const-string v8, "PackageNameInstallationWhitelist"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a5
    .catchall {:try_start_1 .. :try_end_a5} :catchall_a6

    goto :goto_6a

    .line 185
    .end local v0           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v1           #columns:[Ljava/lang/String;
    .end local v2           #controlState:I
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #pkgName:Ljava/lang/String;
    .end local v6           #storedUid:I
    .end local v7           #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_a6
    move-exception v8

    monitor-exit p0

    throw v8

    .line 220
    .restart local v0       #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v1       #columns:[Ljava/lang/String;
    .restart local v3       #cursor:Landroid/database/Cursor;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #storedUid:I
    .restart local v7       #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_a9
    :try_start_a9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_ac
    iget-object v8, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "APPLICATION_PERMISSION"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "permission"

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v6, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 225
    if-eqz v3, :cond_dd

    .line 226
    :goto_be
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_da

    .line 227
    const-string v8, "PermissionInstallationBlacklist"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    const-string v9, "permission"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 229
    :cond_da
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_dd
    iget-object v8, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "APPLICATION_SIGNATURE"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "signature"

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v6, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 234
    if-eqz v3, :cond_10e

    .line 235
    :goto_ef
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_10b

    .line 236
    const-string v8, "SignatureInstallationBlacklist"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    const-string v9, "signature"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_ef

    .line 238
    :cond_10b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 241
    :cond_10e
    sget-object v8, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_117
    .catchall {:try_start_a9 .. :try_end_117} :catchall_a6

    goto/16 :goto_23

    .line 245
    .end local v0           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v6           #storedUid:I
    :cond_119
    monitor-exit p0

    return-void
.end method

.method private parseTopCommand(Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .registers 32
    .parameter "aOutput"
    .parameter "aAppCount"
    .parameter "bShowAllProcess"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2727
    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_11

    .line 2729
    :cond_8
    const-string v25, "ApplicationPolicy"

    const-string v26, "parseTopCommand: not a valid output "

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    const/4 v13, 0x0

    .line 2816
    :goto_10
    return-object v13

    .line 2734
    :cond_11
    const-string v18, "\n"

    .line 2735
    .local v18, lNewLineDelim:Ljava/lang/String;
    new-instance v23, Ljava/util/StringTokenizer;

    const-string v25, "\n"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    .local v23, lSTokenizer:Ljava/util/StringTokenizer;
    const/4 v13, 0x0

    .line 2740
    .local v13, lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_22
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ge v9, v0, :cond_2e

    .line 2741
    :try_start_28
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 2740
    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    .line 2745
    :cond_2e
    if-lez p2, :cond_3a

    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, p2

    if-ge v0, v1, :cond_3e

    .line 2746
    :cond_3a
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p2

    .line 2749
    :cond_3e
    const/4 v4, 0x0

    .line 2755
    .local v4, PID_INDEX:I
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0xa

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_bc

    .line 2756
    const-string v25, "ApplicationPolicy"

    const-string v26, "HoneyComb : Set top parameters"

    invoke-static/range {v25 .. v26}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
    const/4 v3, 0x2

    .line 2758
    .local v3, CPU_USAGE_INDEX:I
    const/16 v6, 0xa

    .line 2759
    .local v6, TOTAL_TOKEN_COUNT_PER_LINE:I
    const/16 v5, 0x9

    .line 2766
    .local v5, PROCESS_NAME_INDEX:I
    :goto_55
    const/4 v11, 0x0

    .line 2767
    .local v11, lAppCount:I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_5b} :catch_159

    .line 2769
    .end local v13           #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    .local v14, lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    const/16 v16, 0x0

    .line 2770
    .local v16, lInstalledAppPidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_c2

    .line 2772
    :try_start_5f
    const-string v25, "ApplicationPolicy"

    const-string v26, "readAppMemoryInfo : show only installed application"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "activity"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 2774
    .local v7, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v7}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v22

    .line 2775
    .local v22, lRunningAppProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v16, Ljava/util/ArrayList;

    .end local v16           #lInstalledAppPidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2776
    .restart local v16       #lInstalledAppPidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_81
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_c2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2778
    .local v21, lRunningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_ad} :catch_ae

    goto :goto_81

    .line 2810
    .end local v7           #activityManager:Landroid/app/ActivityManager;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v16           #lInstalledAppPidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v21           #lRunningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v22           #lRunningAppProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_ae
    move-exception v8

    move-object v13, v14

    .line 2811
    .end local v3           #CPU_USAGE_INDEX:I
    .end local v4           #PID_INDEX:I
    .end local v5           #PROCESS_NAME_INDEX:I
    .end local v6           #TOTAL_TOKEN_COUNT_PER_LINE:I
    .end local v11           #lAppCount:I
    .end local v14           #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    .local v8, e:Ljava/lang/Exception;
    .restart local v13       #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    :goto_b0
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 2814
    .end local v8           #e:Ljava/lang/Exception;
    :goto_b3
    const-string v25, "ApplicationPolicy"

    const-string v26, "parseTopCommand : cpu info"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 2761
    .restart local v4       #PID_INDEX:I
    :cond_bc
    const/4 v3, 0x1

    .line 2762
    .restart local v3       #CPU_USAGE_INDEX:I
    const/16 v6, 0x9

    .line 2763
    .restart local v6       #TOTAL_TOKEN_COUNT_PER_LINE:I
    const/16 v5, 0x8

    .restart local v5       #PROCESS_NAME_INDEX:I
    goto :goto_55

    .line 2782
    .end local v13           #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    .restart local v11       #lAppCount:I
    .restart local v14       #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    .restart local v16       #lInstalledAppPidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_c2
    :goto_c2
    :try_start_c2
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v25

    if-eqz v25, :cond_156

    move/from16 v0, p2

    if-ge v11, v0, :cond_156

    .line 2783
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 2784
    .local v17, lLine:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    const-string v26, "\\s+"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 2790
    .local v24, lVaues:[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v6, v0, :cond_14d

    .line 2791
    const/16 v25, 0x0

    aget-object v19, v24, v25

    .line 2792
    .local v19, lPid:Ljava/lang/String;
    aget-object v20, v24, v5

    .line 2793
    .local v20, lProcessName:Ljava/lang/String;
    if-eqz v16, :cond_f5

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_f7

    :cond_f5
    if-nez v16, :cond_121

    .line 2795
    :cond_f7
    add-int/lit8 v11, v11, 0x1

    .line 2796
    aget-object v25, v24, v3

    const-string v26, "%"

    const-string v27, ""

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    .line 2797
    .local v15, lCpuUsage:Ljava/lang/Float;
    new-instance v12, Landroid/app/enterprise/AppInfo;

    invoke-direct {v12}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 2798
    .local v12, lAppInfo:Landroid/app/enterprise/AppInfo;
    move-object/from16 v0, v20

    iput-object v0, v12, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 2799
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v12, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 2800
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c2

    .line 2804
    .end local v12           #lAppInfo:Landroid/app/enterprise/AppInfo;
    .end local v15           #lCpuUsage:Ljava/lang/Float;
    :cond_121
    const-string v25, "ApplicationPolicy"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "parseTopCommand : package not included pid: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "name :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c2

    .line 2807
    .end local v19           #lPid:Ljava/lang/String;
    .end local v20           #lProcessName:Ljava/lang/String;
    :cond_14d
    const-string v25, "ApplicationPolicy"

    const-string v26, "some problem with top command output"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_154} :catch_ae

    goto/16 :goto_c2

    .end local v17           #lLine:Ljava/lang/String;
    .end local v24           #lVaues:[Ljava/lang/String;
    :cond_156
    move-object v13, v14

    .line 2812
    .end local v14           #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    .restart local v13       #lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    goto/16 :goto_b3

    .line 2810
    .end local v3           #CPU_USAGE_INDEX:I
    .end local v4           #PID_INDEX:I
    .end local v5           #PROCESS_NAME_INDEX:I
    .end local v6           #TOTAL_TOKEN_COUNT_PER_LINE:I
    .end local v11           #lAppCount:I
    .end local v16           #lInstalledAppPidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_159
    move-exception v8

    goto/16 :goto_b0
.end method

.method private readAppMemoryInfo(Z)Ljava/util/List;
    .registers 27
    .parameter "bShowAllProcess"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2571
    const-string v22, "ApplicationPolicy"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "readAppMemoryInfo start bShowAllProcess:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2575
    .local v21, lStats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "activity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 2576
    .local v4, activityManager:Landroid/app/ActivityManager;
    const/4 v14, 0x0

    .line 2578
    .local v14, lPidArray:[I
    if-nez p1, :cond_e7

    .line 2580
    const-string v22, "ApplicationPolicy"

    const-string v23, "readAppMemoryInfo : show only installed application"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v20

    .line 2582
    .local v20, lRunningAppProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v14, v0, [I

    .line 2583
    const/4 v8, 0x0

    .line 2584
    .local v8, k:I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    move v9, v8

    .end local v8           #k:I
    .local v9, k:I
    :goto_4b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_63

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2586
    .local v19, lRunningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    add-int/lit8 v8, v9, 0x1

    .end local v9           #k:I
    .restart local v8       #k:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v22, v0

    aput v22, v14, v9

    move v9, v8

    .end local v8           #k:I
    .restart local v9       #k:I
    goto :goto_4b

    .end local v19           #lRunningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_63
    move v8, v9

    .line 2599
    .end local v9           #k:I
    .end local v20           #lRunningAppProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v8       #k:I
    :goto_64
    invoke-virtual {v4, v14}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v12

    .line 2600
    .local v12, lMemInfoArray:[Landroid/os/Debug$MemoryInfo;
    const-string v22, "ApplicationPolicy"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "memory length : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    array-length v0, v12

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "pids length"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    array-length v0, v14

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    const/4 v6, 0x0

    .local v6, i:I
    :goto_91
    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_113

    .line 2603
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "/proc/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v14, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/cmdline"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2604
    .local v16, lPkgName:Ljava/lang/String;
    if-eqz v16, :cond_e4

    .line 2605
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->cleanCmdline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2606
    .local v10, lCmdLine:Ljava/lang/String;
    aget-object v11, v12, v6

    .line 2607
    .local v11, lMemInfo:Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v11}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v22

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v17, v0

    .line 2608
    .local v17, lRamSize:J
    new-instance v22, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;J)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2602
    .end local v10           #lCmdLine:Ljava/lang/String;
    .end local v11           #lMemInfo:Landroid/os/Debug$MemoryInfo;
    .end local v17           #lRamSize:J
    :cond_e4
    add-int/lit8 v6, v6, 0x1

    goto :goto_91

    .line 2591
    .end local v6           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #k:I
    .end local v12           #lMemInfoArray:[Landroid/os/Debug$MemoryInfo;
    .end local v16           #lPkgName:Ljava/lang/String;
    :cond_e7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getPidList()Ljava/util/ArrayList;

    move-result-object v15

    .line 2592
    .local v15, lPidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v14, v0, [I

    .line 2593
    const/4 v8, 0x0

    .line 2594
    .restart local v8       #k:I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    move v9, v8

    .end local v8           #k:I
    .restart local v9       #k:I
    :goto_f9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_11b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 2595
    .local v13, lPid:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #k:I
    .restart local v8       #k:I
    aput v13, v14, v9
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_10d} :catch_10f

    move v9, v8

    .end local v8           #k:I
    .restart local v9       #k:I
    goto :goto_f9

    .line 2611
    .end local v4           #activityManager:Landroid/app/ActivityManager;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #k:I
    .end local v13           #lPid:I
    .end local v14           #lPidArray:[I
    .end local v15           #lPidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_10f
    move-exception v5

    .line 2612
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 2615
    .end local v5           #e:Ljava/lang/Exception;
    :cond_113
    const-string v22, "ApplicationPolicy"

    const-string v23, "readAppMemoryInfo end"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    return-object v21

    .restart local v4       #activityManager:Landroid/app/ActivityManager;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #k:I
    .restart local v14       #lPidArray:[I
    .restart local v15       #lPidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_11b
    move v8, v9

    .end local v9           #k:I
    .restart local v8       #k:I
    goto/16 :goto_64
.end method

.method private readAppSizeInfo()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2656
    const-string v11, "ApplicationPolicy"

    const-string v12, "readAppSizeInfo start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    iget-object v11, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 2659
    .local v3, lPkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2660
    .local v6, lStats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2662
    .local v9, token:J
    :try_start_17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 2663
    .local v2, lPkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2664
    .local v4, lPkgName:Ljava/lang/String;
    if-eqz v4, :cond_1b

    .line 2665
    new-instance v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 2666
    .local v5, lPkgSizeObserver:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    iget-object v11, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v4, v5}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 2667
    monitor-enter v5
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_73
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_36} :catch_61

    .line 2668
    :goto_36
    :try_start_36
    iget-boolean v11, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->finished:Z
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_70

    if-nez v11, :cond_40

    .line 2670
    :try_start_3a
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_70
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_36

    .line 2671
    :catch_3e
    move-exception v11

    goto :goto_36

    .line 2674
    :cond_40
    :try_start_40
    monitor-exit v5
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_70

    .line 2675
    :try_start_41
    iget-boolean v11, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v11, :cond_1b

    .line 2676
    iget-object v11, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    if-eqz v11, :cond_1b

    .line 2677
    iget-object v11, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v13, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v13, v13, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v11, v13

    iget-object v13, v5, Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v13, v13, Landroid/content/pm/PackageStats;->dataSize:J

    add-long v7, v11, v13

    .line 2679
    .local v7, lTotalSize:J
    new-instance v11, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    invoke-direct {v11, p0, v4, v7, v8}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;J)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catchall {:try_start_41 .. :try_end_60} :catchall_73
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_60} :catch_61

    goto :goto_1b

    .line 2684
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #lPkgInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #lPkgName:Ljava/lang/String;
    .end local v5           #lPkgSizeObserver:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    .end local v7           #lTotalSize:J
    :catch_61
    move-exception v0

    .line 2685
    .local v0, e:Ljava/lang/Exception;
    :try_start_62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_73

    .line 2688
    .end local v0           #e:Ljava/lang/Exception;
    :cond_65
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2691
    const-string v11, "ApplicationPolicy"

    const-string v12, "readAppSizeInfo end"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    return-object v6

    .line 2674
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #lPkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v4       #lPkgName:Ljava/lang/String;
    .restart local v5       #lPkgSizeObserver:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    :catchall_70
    move-exception v11

    :try_start_71
    monitor-exit v5
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    :try_start_72
    throw v11
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_73
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_73} :catch_61

    .line 2688
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #lPkgInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #lPkgName:Ljava/lang/String;
    .end local v5           #lPkgSizeObserver:Lcom/android/server/enterprise/ApplicationPolicy$PkgSizeObserver;
    :catchall_73
    move-exception v11

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method private readCpuTime()J
    .registers 7

    .prologue
    .line 2950
    const-string v2, "ApplicationPolicy"

    const-string v3, "readCpuTime start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    const-string v2, "proc/stat"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2952
    .local v0, lCpuStat:Ljava/lang/String;
    if-nez v0, :cond_12

    .line 2953
    const-wide/16 v2, 0x0

    .line 2957
    :goto_11
    return-wide v2

    .line 2955
    :cond_12
    const-string v2, "[ ]+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2956
    .local v1, segs:[Ljava/lang/String;
    const-string v2, "ApplicationPolicy"

    const-string v3, "readCpuTime end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x4

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x5

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x6

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/4 v4, 0x7

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_11
.end method

.method private readData(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "aFileName"

    .prologue
    const/4 v3, 0x0

    .line 2970
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6} :catch_1e

    .line 2977
    .local v2, lFstream:Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x1f4

    invoke-direct {v1, v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2979
    .local v1, lBufReader:Ljava/io/BufferedReader;
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_68
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_3b

    move-result-object v3

    .line 2986
    if-eqz v2, :cond_17

    .line 2987
    :try_start_13
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_7b

    .line 2988
    const/4 v2, 0x0

    .line 2990
    :cond_17
    if-eqz v1, :cond_1d

    .line 2991
    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_7d

    .line 2992
    :goto_1c
    const/4 v1, 0x0

    .line 2983
    .end local v1           #lBufReader:Ljava/io/BufferedReader;
    .end local v2           #lFstream:Ljava/io/FileReader;
    :cond_1d
    :goto_1d
    return-object v3

    .line 2971
    :catch_1e
    move-exception v0

    .line 2972
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2973
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File access error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 2980
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #lBufReader:Ljava/io/BufferedReader;
    .restart local v2       #lFstream:Ljava/io/FileReader;
    :catch_3b
    move-exception v0

    .line 2981
    .local v0, e:Ljava/io/IOException;
    :try_start_3c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2982
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read error on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3c .. :try_end_57} :catchall_68

    .line 2986
    if-eqz v2, :cond_5d

    .line 2987
    :try_start_59
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 2988
    const/4 v2, 0x0

    .line 2990
    :cond_5d
    if-eqz v1, :cond_1d

    .line 2991
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_62} :catch_63

    goto :goto_1c

    .line 2994
    :catch_63
    move-exception v0

    .line 2995
    :goto_64
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .line 2985
    .end local v0           #e:Ljava/io/IOException;
    :catchall_68
    move-exception v3

    .line 2986
    if-eqz v2, :cond_6f

    .line 2987
    :try_start_6b
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 2988
    const/4 v2, 0x0

    .line 2990
    :cond_6f
    if-eqz v1, :cond_75

    .line 2991
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_74} :catch_76

    .line 2992
    const/4 v1, 0x0

    .line 2985
    :cond_75
    :goto_75
    throw v3

    .line 2994
    :catch_76
    move-exception v0

    .line 2995
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_75

    .line 2994
    .end local v0           #e:Ljava/io/IOException;
    :catch_7b
    move-exception v0

    goto :goto_64

    :catch_7d
    move-exception v0

    goto :goto_64
.end method

.method private readProcInfo()Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2916
    const-string v10, "ApplicationPolicy"

    const-string v11, "readProcInfo start"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2919
    .local v9, lStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getPidList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2920
    .local v3, lPidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_9e

    .line 2921
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2922
    .local v2, lPid:Ljava/lang/Integer;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/stat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2923
    .local v8, lStat:Ljava/lang/String;
    if-eqz v8, :cond_16

    .line 2927
    const-string v10, "[ ]+"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2928
    .local v7, lSegs:[Ljava/lang/String;
    const/16 v10, 0xd

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/16 v12, 0xe

    aget-object v12, v7, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long v5, v10, v12

    .line 2930
    .local v5, lRunTime:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/cmdline"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2931
    .local v4, lPkgName:Ljava/lang/String;
    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "package name"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    if-eqz v4, :cond_16

    .line 2933
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ApplicationPolicy;->cleanCmdline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2934
    .local v1, lCmdLine:Ljava/lang/String;
    new-instance v10, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    invoke-direct {v10, p0, v1, v5, v6}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;J)V

    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_16

    .line 2938
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #lCmdLine:Ljava/lang/String;
    .end local v2           #lPid:Ljava/lang/Integer;
    .end local v4           #lPkgName:Ljava/lang/String;
    .end local v5           #lRunTime:J
    .end local v7           #lSegs:[Ljava/lang/String;
    .end local v8           #lStat:Ljava/lang/String;
    :cond_9e
    const-string v10, "ApplicationPolicy"

    const-string v11, "cannot open file "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    :cond_a5
    const-string v10, "ApplicationPolicy"

    const-string v11, "readProcInfo end"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    return-object v9
.end method

.method private registerPackageChangeReceiver()V
    .registers 5

    .prologue
    .line 712
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_34

    .line 713
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 714
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 715
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 716
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 717
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 719
    new-instance v2, Lcom/android/server/enterprise/ApplicationPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/ApplicationPolicy$1;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    sput-object v2, Lcom/android/server/enterprise/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 768
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 769
    const-string v2, "ApplicationPolicy"

    const-string v3, "registerPackageChangeReceiver() : Done"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    .line 774
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_34
    :goto_34
    return-void

    .line 771
    :catch_35
    move-exception v0

    .line 772
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method private declared-synchronized setApplicationPermissionControlState(Ljava/lang/String;IZ)Z
    .registers 8
    .parameter "permission"
    .parameter "callingUid"
    .parameter "add"

    .prologue
    .line 320
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->createAdminMap(I)V

    .line 322
    if-eqz p3, :cond_3a

    .line 323
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "PermissionInstallationBlacklist"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 325
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "permission"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v1, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION_PERMISSION"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_5c

    move-result v1

    .line 330
    .end local v0           #cv:Landroid/content/ContentValues;
    :goto_38
    monitor-exit p0

    return v1

    .line 329
    :cond_3a
    :try_start_3a
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "PermissionInstallationBlacklist"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 330
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION_PERMISSION"

    const-string v3, "permission"

    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_5a
    .catchall {:try_start_3a .. :try_end_5a} :catchall_5c

    move-result v1

    goto :goto_38

    .line 320
    :catchall_5c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    .registers 12
    .parameter "pkgName"
    .parameter "callingUid"
    .parameter "controlStateMask"
    .parameter "enableMask"

    .prologue
    .line 265
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    const-string v5, "controlState"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 269
    .local v6, controlState:I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_13

    .line 270
    const/4 v6, 0x0

    .line 274
    :cond_13
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->createAdminMap(I)V

    .line 277
    sparse-switch p3, :sswitch_data_a6

    .line 295
    :goto_19
    if-eqz p4, :cond_a0

    .line 296
    or-int/2addr v6, p3

    .line 307
    :goto_1c
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 308
    .local v5, cv:Landroid/content/ContentValues;
    const-string v0, "controlState"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_52

    move-result v0

    monitor-exit p0

    return v0

    .line 280
    .end local v5           #cv:Landroid/content/ContentValues;
    :sswitch_38
    if-eqz p4, :cond_55

    .line 281
    :try_start_3a
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameInstallationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_52

    goto :goto_19

    .line 265
    .end local v6           #controlState:I
    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0

    .line 283
    .restart local v6       #controlState:I
    :cond_55
    :try_start_55
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameInstallationBlacklist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_19

    .line 287
    :sswitch_6d
    if-eqz p4, :cond_87

    .line 288
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameInstallationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 290
    :cond_87
    sget-object v0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "PackageNameInstallationWhitelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_9e
    .catchall {:try_start_55 .. :try_end_9e} :catchall_52

    goto/16 :goto_19

    .line 298
    :cond_a0
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr v6, v0

    goto/16 :goto_1c

    .line 277
    nop

    :sswitch_data_a6
    .sparse-switch
        0x4 -> :sswitch_38
        0x8 -> :sswitch_6d
    .end sparse-switch
.end method

.method private declared-synchronized setApplicationSignatureControlState(Ljava/lang/String;IZ)Z
    .registers 8
    .parameter "signature"
    .parameter "callingUid"
    .parameter "add"

    .prologue
    .line 340
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->createAdminMap(I)V

    .line 342
    if-eqz p3, :cond_3a

    .line 343
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "SignatureInstallationBlacklist"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 345
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "signature"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v1, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION_SIGNATURE"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_5c

    move-result v1

    .line 350
    .end local v0           #cv:Landroid/content/ContentValues;
    :goto_38
    monitor-exit p0

    return v1

    .line 349
    :cond_3a
    :try_start_3a
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "SignatureInstallationBlacklist"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 350
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION_SIGNATURE"

    const-string v3, "signature"

    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_5a
    .catchall {:try_start_3a .. :try_end_5a} :catchall_5c

    move-result v1

    goto :goto_38

    .line 340
    :catchall_5c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private setInstallSoureMDM(ILjava/lang/String;Z)V
    .registers 11
    .parameter "callingUid"
    .parameter "pkgName"
    .parameter "stateValue"

    .prologue
    const/4 v6, 0x1

    .line 1253
    if-ne p3, v6, :cond_1d

    .line 1254
    .local v6, state:I
    :goto_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1255
    .local v5, cv:Landroid/content/ContentValues;
    const-string v0, "install_sourceMDM"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1256
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 1259
    return-void

    .line 1253
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v6           #state:I
    :cond_1d
    const/4 v6, 0x0

    goto :goto_3
.end method

.method private setManagedApp(ILjava/lang/String;Z)V
    .registers 11
    .parameter "callingUid"
    .parameter "pkgName"
    .parameter "stateValue"

    .prologue
    const/4 v6, 0x1

    .line 1243
    if-ne p3, v6, :cond_1d

    .line 1244
    .local v6, state:I
    :goto_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1245
    .local v5, cv:Landroid/content/ContentValues;
    const-string v0, "managedApp"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1246
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 1249
    return-void

    .line 1243
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v6           #state:I
    :cond_1d
    const/4 v6, 0x0

    goto :goto_3
.end method

.method private updateCount(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "callingUid"
    .parameter "pkgName"
    .parameter "contentName"

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 779
    .local v6, count:I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 780
    .local v5, cv:Landroid/content/ContentValues;
    if-gtz v6, :cond_28

    const/4 v0, 0x1

    :goto_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 781
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 782
    return-void

    .line 780
    :cond_28
    add-int/lit8 v0, v6, 0x1

    goto :goto_15
.end method


# virtual methods
.method public addAppPackageNameToBlackList(Ljava/lang/String;)Z
    .registers 6
    .parameter "packageName"

    .prologue
    .line 2379
    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAppPackageNameToBlackList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2381
    .local v0, callingUid:I
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2382
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 2383
    const/4 v1, 0x0

    .line 2385
    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_27
.end method

.method public addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    .line 2426
    const-string v1, "ApplicationPolicy"

    const-string v2, "addAppPackageNameToWhiteList"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2428
    .local v0, callingUid:I
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2429
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 2430
    const/4 v1, 0x0

    .line 2432
    :goto_16
    return v1

    :cond_17
    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_16
.end method

.method public addAppPermissionToBlackList(Ljava/lang/String;)Z
    .registers 4
    .parameter "appPermission"

    .prologue
    .line 2212
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2213
    .local v0, callingUid:I
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPermissionControlState(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public addAppSignatureToBlackList(Ljava/lang/String;)Z
    .registers 4
    .parameter "appSignature"

    .prologue
    .line 2280
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2281
    .local v0, callingUid:I
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public changeApplicationIcon(Ljava/lang/String;[B)Z
    .registers 12
    .parameter "aPackageName"
    .parameter "aImageData"

    .prologue
    const/4 v5, 0x0

    .line 2140
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2141
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeApplicationIcon:packageName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "called from :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2143
    .local v3, token:J
    const/4 v1, 0x0

    .line 2145
    .local v1, success:Z
    if-eqz p1, :cond_33

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gez v6, :cond_3c

    .line 2146
    :cond_33
    const-string v5, "ApplicationPolicy"

    const-string v6, "changeApplicationIcon: packageName can\'t be null :"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 2176
    .end local v1           #success:Z
    .local v2, success:I
    :goto_3b
    return v2

    .line 2152
    .end local v2           #success:I
    .restart local v1       #success:Z
    :cond_3c
    if-nez p2, :cond_80

    .line 2153
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/server/enterprise/ApplicationIconDb;->deleteApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 2156
    :goto_44
    if-eqz v1, :cond_7b

    .line 2159
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    if-nez v6, :cond_51

    .line 2160
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    .line 2162
    :cond_51
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_87

    if-nez p2, :cond_87

    .line 2163
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2169
    :cond_61
    :goto_61
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 2170
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    if-eqz p1, :cond_73

    const-string v7, "package"

    invoke-static {v7, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :cond_73
    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2172
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2175
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 2176
    .restart local v2       #success:I
    goto :goto_3b

    .line 2155
    .end local v2           #success:I
    :cond_80
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, p2}, Lcom/android/server/enterprise/ApplicationIconDb;->updateApplicationIcon(Landroid/content/Context;Ljava/lang/String;[B)Z

    move-result v1

    goto :goto_44

    .line 2165
    :cond_87
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_61

    if-eqz p2, :cond_61

    .line 2166
    sget-object v6, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61
.end method

.method public deleteManagedAppInfo(Ljava/lang/String;)Z
    .registers 6
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 1568
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1569
    .local v0, callingUid:I
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1571
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v2

    if-nez v2, :cond_11

    .line 1580
    :goto_10
    return v1

    .line 1575
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1576
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1578
    :cond_1b
    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 1579
    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 1580
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION"

    const-string v3, "packageName"

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_10
.end method

.method public deletePackageFromAppUsageDb(Ljava/lang/String;)Z
    .registers 4
    .parameter "packageName"

    .prologue
    .line 2905
    new-instance v0, Lcom/android/server/enterprise/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/ApplicationUsage;->deletePackageFromDb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;
    .registers 3

    .prologue
    .line 2900
    new-instance v0, Lcom/android/server/enterprise/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/ApplicationUsage;->getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getAppInstallationMode()I
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 1323
    monitor-enter p0

    :try_start_2
    const-string v3, "getAppInstallationMode :  mode start: "

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 1324
    const/4 v0, 0x1

    .line 1325
    .local v0, install:Z
    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v3, :cond_14

    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_7a

    move-result v3

    if-eqz v3, :cond_17

    :cond_14
    move v3, v4

    .line 1343
    :goto_15
    monitor-exit p0

    return v3

    .line 1328
    :cond_17
    :try_start_17
    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1330
    .local v2, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 1331
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1334
    .local v1, uid:Ljava/lang/Integer;
    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "PackageNameInstallationBlacklist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v5, ".*"

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    sget-object v3, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "PackageNameInstallationWhitelist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v5, ".*"

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 1336
    const/4 v0, 0x0

    .line 1341
    .end local v1           #uid:Ljava/lang/Integer;
    :cond_5e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppInstallationMode :  mode"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_17 .. :try_end_74} :catchall_7a

    .line 1343
    if-eqz v0, :cond_78

    move v3, v4

    goto :goto_15

    :cond_78
    const/4 v3, 0x0

    goto :goto_15

    .line 1323
    .end local v0           #install:Z
    .end local v2           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_7a
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getAppPackageNamesAllBlackLists()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2400
    monitor-enter p0

    :try_start_1
    const-string v5, "ApplicationPolicy"

    const-string v6, "getAppPackageNamesAllBlackLists "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2402
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_17

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_83

    move-result v5

    if-eqz v5, :cond_1a

    .line 2403
    :cond_17
    const/4 v1, 0x0

    .line 2422
    :cond_18
    monitor-exit p0

    return-object v1

    .line 2405
    :cond_1a
    :try_start_1a
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2408
    .local v4, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2410
    .local v1, blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2411
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2412
    .local v3, uid:Ljava/lang/Integer;
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "PackageNameInstallationBlacklist"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2413
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 2414
    .local v0, aci:Landroid/app/enterprise/AppControlInfo;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 2415
    new-instance v6, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "PackageNameInstallationBlacklist"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 2416
    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_86

    .line 2417
    iget-object v5, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_82
    .catchall {:try_start_1a .. :try_end_82} :catchall_83

    goto :goto_73

    .line 2400
    .end local v0           #aci:Landroid/app/enterprise/AppControlInfo;
    .end local v1           #blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .end local v2           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #uid:Ljava/lang/Integer;
    .end local v4           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_83
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2419
    .restart local v0       #aci:Landroid/app/enterprise/AppControlInfo;
    .restart local v1       #blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .restart local v2       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3       #uid:Ljava/lang/Integer;
    .restart local v4       #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_86
    :try_start_86
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_83

    goto :goto_29
.end method

.method public declared-synchronized getAppPackageNamesAllWhiteLists()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2447
    monitor-enter p0

    :try_start_1
    const-string v5, "ApplicationPolicy"

    const-string v6, "getAppPackageNamesAllWhiteLists "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2449
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_17

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_83

    move-result v5

    if-eqz v5, :cond_1a

    .line 2450
    :cond_17
    const/4 v4, 0x0

    .line 2469
    :cond_18
    monitor-exit p0

    return-object v4

    .line 2452
    :cond_1a
    :try_start_1a
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2455
    .local v3, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2457
    .local v4, whitelist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2458
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2459
    .local v2, uid:Ljava/lang/Integer;
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "PackageNameInstallationWhitelist"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2460
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 2461
    .local v0, aci:Landroid/app/enterprise/AppControlInfo;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 2462
    new-instance v6, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "PackageNameInstallationWhitelist"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 2463
    :goto_73
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_86

    .line 2464
    iget-object v5, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_82
    .catchall {:try_start_1a .. :try_end_82} :catchall_83

    goto :goto_73

    .line 2447
    .end local v0           #aci:Landroid/app/enterprise/AppControlInfo;
    .end local v1           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #uid:Ljava/lang/Integer;
    .end local v3           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4           #whitelist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :catchall_83
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2466
    .restart local v0       #aci:Landroid/app/enterprise/AppControlInfo;
    .restart local v1       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2       #uid:Ljava/lang/Integer;
    .restart local v3       #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v4       #whitelist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :cond_86
    :try_start_86
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_83

    goto :goto_29
.end method

.method public declared-synchronized getAppPermissionsAllBlackLists()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2254
    monitor-enter p0

    :try_start_1
    const-string v5, "ApplicationPolicy"

    const-string v6, "getAppPermissionAllBlackLists:"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2256
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_17

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_83

    move-result v5

    if-eqz v5, :cond_1a

    .line 2257
    :cond_17
    const/4 v1, 0x0

    .line 2275
    :cond_18
    monitor-exit p0

    return-object v1

    .line 2259
    :cond_1a
    :try_start_1a
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2262
    .local v4, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2264
    .local v1, blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2265
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2266
    .local v3, uid:Ljava/lang/Integer;
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "PermissionInstallationBlacklist"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2267
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 2268
    .local v0, aci:Landroid/app/enterprise/AppControlInfo;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 2269
    new-instance v6, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "PermissionInstallationBlacklist"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 2270
    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_86

    .line 2271
    iget-object v5, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_82
    .catchall {:try_start_1a .. :try_end_82} :catchall_83

    goto :goto_73

    .line 2254
    .end local v0           #aci:Landroid/app/enterprise/AppControlInfo;
    .end local v1           #blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .end local v2           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #uid:Ljava/lang/Integer;
    .end local v4           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_83
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2273
    .restart local v0       #aci:Landroid/app/enterprise/AppControlInfo;
    .restart local v1       #blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .restart local v2       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3       #uid:Ljava/lang/Integer;
    .restart local v4       #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_86
    :try_start_86
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_83

    goto :goto_29
.end method

.method public getAppPermissionsBlackList()[Ljava/lang/String;
    .registers 9

    .prologue
    .line 2232
    const-string v2, "ApplicationPolicy"

    const-string v3, "getAppPermissionsBlackList:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    const/4 v1, 0x0

    .line 2234
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "APPLICATION_PERMISSION"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "permission"

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2235
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3a

    .line 2236
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2237
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_23
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2238
    const-string v2, "permission"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 2240
    :cond_37
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2243
    :cond_3a
    if-eqz v1, :cond_51

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_51

    .line 2244
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    .line 2246
    :goto_50
    return-object v2

    :cond_51
    const/4 v2, 0x0

    goto :goto_50
.end method

.method public getAppSignatureBlackList()[Ljava/lang/String;
    .registers 9

    .prologue
    .line 2295
    const-string v2, "ApplicationPolicy"

    const-string v3, "getAppSignatureBlackList()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    const/4 v1, 0x0

    .line 2297
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "APPLICATION_SIGNATURE"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "signature"

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2298
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3a

    .line 2299
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2300
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_23
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2301
    const-string v2, "signature"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 2303
    :cond_37
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2306
    :cond_3a
    if-eqz v1, :cond_51

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_51

    .line 2307
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    .line 2309
    :goto_50
    return-object v2

    :cond_51
    const/4 v2, 0x0

    goto :goto_50
.end method

.method public declared-synchronized getAppSignaturesAllBlackLists()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2317
    monitor-enter p0

    :try_start_1
    const-string v5, "ApplicationPolicy"

    const-string v6, "getAppSignatureAllBlackLists:"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2319
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_17

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_83

    move-result v5

    if-eqz v5, :cond_1a

    .line 2320
    :cond_17
    const/4 v1, 0x0

    .line 2338
    :cond_18
    monitor-exit p0

    return-object v1

    .line 2322
    :cond_1a
    :try_start_1a
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2325
    .local v4, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2327
    .local v1, blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2328
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2329
    .local v3, uid:Ljava/lang/Integer;
    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "SignatureInstallationBlacklist"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2330
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    .line 2331
    .local v0, aci:Landroid/app/enterprise/AppControlInfo;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 2332
    new-instance v6, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "SignatureInstallationBlacklist"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    .line 2333
    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_86

    .line 2334
    iget-object v5, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_82
    .catchall {:try_start_1a .. :try_end_82} :catchall_83

    goto :goto_73

    .line 2317
    .end local v0           #aci:Landroid/app/enterprise/AppControlInfo;
    .end local v1           #blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .end local v2           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #uid:Ljava/lang/Integer;
    .end local v4           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_83
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2336
    .restart local v0       #aci:Landroid/app/enterprise/AppControlInfo;
    .restart local v1       #blacklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppControlInfo;>;"
    .restart local v2       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3       #uid:Ljava/lang/Integer;
    .restart local v4       #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_86
    :try_start_86
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_83

    goto :goto_29
.end method

.method public getApplicationCacheSize(Ljava/lang/String;)J
    .registers 6
    .parameter "packageName"

    .prologue
    .line 1991
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 1992
    const-wide/16 v2, -0x1

    .line 1993
    .local v2, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1994
    if-eqz p1, :cond_11

    .line 1996
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 1997
    .local v1, pkgSt:Landroid/content/pm/PackageStats;
    iget-wide v2, v1, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_12

    .line 2002
    .end local v1           #pkgSt:Landroid/content/pm/PackageStats;
    :cond_11
    :goto_11
    return-wide v2

    .line 1998
    :catch_12
    move-exception v0

    .line 1999
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getApplicationCodeSize(Ljava/lang/String;)J
    .registers 6
    .parameter "packageName"

    .prologue
    .line 1947
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 1948
    const-wide/16 v2, -0x1

    .line 1949
    .local v2, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1950
    if-eqz p1, :cond_11

    .line 1952
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 1953
    .local v1, pkgSt:Landroid/content/pm/PackageStats;
    iget-wide v2, v1, Landroid/content/pm/PackageStats;->codeSize:J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_12

    .line 1958
    .end local v1           #pkgSt:Landroid/content/pm/PackageStats;
    :cond_11
    :goto_11
    return-wide v2

    .line 1954
    :catch_12
    move-exception v0

    .line 1955
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getApplicationCpuUsage(Ljava/lang/String;)J
    .registers 14
    .parameter "packageName"

    .prologue
    const-wide/16 v6, -0x1

    .line 2069
    iget-object v8, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.sec.MDM_APP_MGMT"

    const-string v10, "Application Policy"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    const-wide/16 v4, 0x0

    .line 2071
    .local v4, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2072
    if-eqz p1, :cond_7c

    .line 2074
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1a

    .line 2098
    :cond_19
    :goto_19
    return-wide v6

    .line 2079
    :cond_1a
    const/4 v8, -0x1

    const/4 v9, 0x0

    :try_start_1c
    invoke-virtual {p0, v8, v9}, Lcom/android/server/enterprise/ApplicationPolicy;->getTopNCPUUsageAppFromTopCommand(IZ)Ljava/util/List;

    move-result-object v1

    .line 2080
    .local v1, appInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    if-eqz v1, :cond_19

    .line 2083
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/AppInfo;

    .line 2085
    .local v0, appInfo:Landroid/app/enterprise/AppInfo;
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    iget-object v8, v0, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 2087
    long-to-double v8, v4

    iget-wide v10, v0, Landroid/app/enterprise/AppInfo;->mUsage:D

    add-double/2addr v8, v10

    double-to-long v4, v8

    goto :goto_26

    .line 2091
    .end local v0           #appInfo:Landroid/app/enterprise/AppInfo;
    :cond_5a
    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cpu usage : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_7c} :catch_84

    .line 2098
    .end local v1           #appInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_7c
    :goto_7c
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-ltz v8, :cond_19

    move-wide v6, v4

    goto :goto_19

    .line 2093
    :catch_84
    move-exception v2

    .line 2094
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2095
    const-wide/16 v4, -0x1

    goto :goto_7c
.end method

.method public getApplicationDataSize(Ljava/lang/String;)J
    .registers 6
    .parameter "packageName"

    .prologue
    .line 1969
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 1970
    const-wide/16 v2, -0x1

    .line 1971
    .local v2, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1972
    if-eqz p1, :cond_11

    .line 1974
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 1975
    .local v1, pkgSt:Landroid/content/pm/PackageStats;
    iget-wide v2, v1, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_12

    .line 1980
    .end local v1           #pkgSt:Landroid/content/pm/PackageStats;
    :cond_11
    :goto_11
    return-wide v2

    .line 1976
    :catch_12
    move-exception v0

    .line 1977
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getApplicationIconFromDb(Ljava/lang/String;)[B
    .registers 5
    .parameter "aPackageName"

    .prologue
    .line 2187
    const/4 v0, 0x0

    .line 2190
    .local v0, lImg:[B
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    if-eqz v1, :cond_14

    .line 2192
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 2193
    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/ApplicationIconDb;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 2199
    :cond_14
    return-object v0
.end method

.method public getApplicationInstallationEnabled(Ljava/lang/String;)Z
    .registers 3
    .parameter "aPacakageName"

    .prologue
    .line 1704
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public getApplicationMemoryUsage(Ljava/lang/String;)J
    .registers 16
    .parameter "packageName"

    .prologue
    const-wide/16 v8, -0x1

    .line 2013
    iget-object v10, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.sec.MDM_APP_MGMT"

    const-string v12, "Application Policy"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    const-wide/16 v6, 0x0

    .line 2016
    .local v6, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2017
    if-eqz p1, :cond_73

    .line 2020
    :try_start_13
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1a

    .line 2049
    :cond_19
    :goto_19
    return-wide v8

    .line 2026
    :cond_1a
    iget-object v10, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2028
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 2030
    .local v3, lRapi:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2033
    .local v5, rapi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v10, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 2035
    .local v4, pkgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 2037
    iget v10, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-direct {p0, v10, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getDebugMemoryInfo(ILandroid/app/ActivityManager;)J

    move-result-wide v10

    iget-object v12, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v12, v12

    int-to-long v12, v12

    div-long/2addr v10, v12

    add-long/2addr v6, v10

    goto :goto_2c

    .line 2041
    .end local v4           #pkgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #rapi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_51
    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "packageName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ram usage : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_73} :catch_7b

    .line 2049
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #lRapi:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_73
    :goto_73
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-ltz v10, :cond_19

    move-wide v8, v6

    goto :goto_19

    .line 2044
    :catch_7b
    move-exception v1

    .line 2045
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2046
    const-wide/16 v6, -0x1

    goto :goto_73
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "packageName"

    .prologue
    .line 1878
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 1879
    const/4 v1, 0x0

    .line 1880
    .local v1, appName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1881
    if-eqz p1, :cond_1a

    .line 1883
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1884
    .local v3, mAppInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_1a

    .line 1885
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_1b

    .line 1890
    .end local v3           #mAppInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1a
    :goto_1a
    return-object v1

    .line 1886
    :catch_1b
    move-exception v2

    .line 1887
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .registers 10
    .parameter "pkg"

    .prologue
    .line 1380
    const/4 v0, 0x1

    .line 1381
    .local v0, enabled:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1384
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    if-eq v4, v5, :cond_14

    .line 1385
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getActualApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v4

    .line 1405
    :goto_13
    return v4

    .line 1387
    :cond_14
    if-eqz p1, :cond_48

    .line 1388
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "APPLICATION"

    const-string v6, "packageName"

    const-string v7, "controlState"

    invoke-virtual {v4, v5, v6, p1, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1391
    .local v3, states:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_48

    .line 1392
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1393
    .local v2, state:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_2c

    .line 1395
    const/4 v4, 0x2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-ne v4, v5, :cond_2c

    .line 1398
    const/4 v0, 0x0

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #state:Ljava/lang/Integer;
    .end local v3           #states:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_48
    move v4, v0

    .line 1405
    goto :goto_13
.end method

.method public getApplicationStateList(Z)[Ljava/lang/String;
    .registers 8
    .parameter "state"

    .prologue
    .line 3167
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3169
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getApplicationStateList:state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3172
    .local v2, lAppList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getInstalledApplicationsIDList()[Ljava/lang/String;

    move-result-object v0

    .line 3174
    .local v0, appInstallList:[Ljava/lang/String;
    if-nez v0, :cond_27

    .line 3188
    .end local v0           #appInstallList:[Ljava/lang/String;
    :goto_26
    return-object v0

    .line 3178
    .restart local v0       #appInstallList:[Ljava/lang/String;
    :cond_27
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    array-length v3, v0

    if-ge v1, v3, :cond_3b

    .line 3179
    aget-object v3, v0, v1

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/ApplicationPolicy;->getActualApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, p1, :cond_38

    .line 3180
    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3178
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 3184
    :cond_3b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_43

    .line 3185
    const/4 v0, 0x0

    goto :goto_26

    .line 3188
    :cond_43
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    goto :goto_26
.end method

.method public getApplicationTotalSize(Ljava/lang/String;)J
    .registers 10
    .parameter "packageName"

    .prologue
    .line 1925
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 1926
    const-wide/16 v2, -0x1

    .line 1927
    .local v2, total:J
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1928
    if-eqz p1, :cond_18

    .line 1930
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 1931
    .local v1, pkgSt:Landroid/content/pm/PackageStats;
    iget-wide v4, v1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v6, v1, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v4, v6

    iget-wide v6, v1, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_19

    add-long v2, v4, v6

    .line 1936
    .end local v1           #pkgSt:Landroid/content/pm/PackageStats;
    :cond_18
    :goto_18
    return-wide v2

    .line 1932
    :catch_19
    move-exception v0

    .line 1933
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    .registers 10
    .parameter "pkg"

    .prologue
    .line 1820
    const/4 v3, 0x1

    .line 1821
    .local v3, uninstallationEnabled:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1822
    if-eqz p1, :cond_39

    .line 1823
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "APPLICATION"

    const-string v6, "packageName"

    const-string v7, "controlState"

    invoke-virtual {v4, v5, v6, p1, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1826
    .local v2, states:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    .line 1827
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1828
    .local v1, state:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_1d

    .line 1829
    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_1d

    .line 1831
    const/4 v3, 0x0

    .line 1839
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #state:Ljava/lang/Integer;
    .end local v2           #states:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_39
    return v3
.end method

.method public getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "packageName"

    .prologue
    .line 1901
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 1902
    const/4 v0, 0x0

    .line 1903
    .local v0, appName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1904
    if-eqz p1, :cond_12

    .line 1906
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1907
    .local v2, mpkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_12

    .line 1908
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_13

    .line 1913
    .end local v2           #mpkgInfo:Landroid/content/pm/PackageInfo;
    :cond_12
    :goto_12
    return-object v0

    .line 1909
    :catch_13
    move-exception v1

    .line 1910
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .registers 4
    .parameter "pkg"

    .prologue
    .line 1505
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1506
    .local v0, callingUid:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationsList(Ljava/lang/String;I)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v1

    return-object v1
.end method

.method public getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;
    .registers 3

    .prologue
    .line 2888
    new-instance v0, Lcom/android/server/enterprise/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/ApplicationUsage;->getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledApplicationsIDList()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1848
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 1849
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->getInstalledApplicationsIDListExtended(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInstalledApplicationsIDListExtended(Z)[Ljava/lang/String;
    .registers 11
    .parameter "includeUninstalledDataPresent"

    .prologue
    .line 1853
    const/4 v6, 0x0

    .line 1855
    .local v6, packageNameList:[Ljava/lang/String;
    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz p1, :cond_33

    const/16 v7, 0x2000

    :goto_7
    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 1856
    .local v0, appinfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_3a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3a

    .line 1857
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 1858
    const/4 v4, 0x0

    .line 1859
    .local v4, index:I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    move v5, v4

    .end local v4           #index:I
    .local v5, index:I
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1860
    .local v1, applicationInfo:Landroid/content/pm/ApplicationInfo;
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v5
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_35

    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_1f

    .line 1855
    .end local v0           #appinfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #index:I
    :cond_33
    const/4 v7, 0x0

    goto :goto_7

    .line 1863
    :catch_35
    move-exception v2

    .line 1864
    .local v2, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 1865
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1867
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3a
    return-object v6
.end method

.method public getInstalledManagedApplicationsList()[Ljava/lang/String;
    .registers 16

    .prologue
    .line 1445
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v2

    .line 1446
    .local v2, callingUid:I
    const/4 v0, 0x0

    .line 1448
    .local v0, appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 1449
    .local v10, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x2

    :try_start_7
    new-array v3, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "packageName"

    aput-object v14, v3, v13

    const/4 v13, 0x1

    const-string v14, "managedApp"

    aput-object v14, v3, v13

    .line 1453
    .local v3, columns:[Ljava/lang/String;
    iget-object v13, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "APPLICATION"

    invoke-virtual {v13, v14, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1454
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_6b

    .line 1455
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_b1

    .line 1456
    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_22
    :goto_22
    :try_start_22
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_67

    .line 1458
    const-string v13, "managedApp"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1459
    .local v12, state:I
    const/4 v13, 0x1

    and-int/lit8 v14, v12, 0x1

    if-ne v13, v14, :cond_65

    const/4 v9, 0x1

    .line 1460
    .local v9, isEnterpriseApp:Z
    :goto_38
    const/4 v13, 0x1

    if-ne v9, v13, :cond_22

    .line 1461
    const-string v13, "packageName"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_48} :catch_49

    goto :goto_22

    .line 1483
    .end local v9           #isEnterpriseApp:Z
    .end local v12           #state:I
    :catch_49
    move-exception v7

    move-object v10, v11

    .line 1484
    .end local v3           #columns:[Ljava/lang/String;
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v11           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v7, e:Ljava/lang/Exception;
    .restart local v10       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_4b
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1486
    .end local v7           #e:Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    if-eqz v0, :cond_af

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_af

    .line 1487
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    check-cast v13, [Ljava/lang/String;

    .line 1489
    :goto_64
    return-object v13

    .line 1459
    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #columns:[Ljava/lang/String;
    .restart local v4       #cursor:Landroid/database/Cursor;
    .restart local v11       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12       #state:I
    :cond_65
    const/4 v9, 0x0

    goto :goto_38

    .line 1464
    .end local v12           #state:I
    :cond_67
    :try_start_67
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_49

    move-object v10, v11

    .line 1466
    .end local v11           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6b
    if-eqz v10, :cond_4e

    :try_start_6d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_4e

    .line 1467
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_78} :catch_b1

    .line 1468
    .end local v0           #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    :try_start_79
    invoke-virtual {p0, v13}, Lcom/android/server/enterprise/ApplicationPolicy;->getInstalledApplicationsIDListExtended(Z)[Ljava/lang/String;

    move-result-object v5

    .line 1469
    .local v5, deviceApps:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1470
    .local v6, deviceInstalledAppsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_87

    array-length v13, v5

    if-lez v13, :cond_87

    .line 1471
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1473
    :cond_87
    const/4 v8, 0x0

    .local v8, i:I
    :goto_88
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_b3

    .line 1474
    if-eqz v6, :cond_a4

    .line 1475
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a1

    .line 1476
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1473
    :cond_a1
    :goto_a1
    add-int/lit8 v8, v8, 0x1

    goto :goto_88

    .line 1479
    :cond_a4
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_ab} :catch_ac

    goto :goto_a1

    .line 1483
    .end local v5           #deviceApps:[Ljava/lang/String;
    .end local v6           #deviceInstalledAppsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #i:I
    :catch_ac
    move-exception v7

    move-object v0, v1

    .end local v1           #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0       #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_4b

    .line 1489
    .end local v3           #columns:[Ljava/lang/String;
    .end local v4           #cursor:Landroid/database/Cursor;
    :cond_af
    const/4 v13, 0x0

    goto :goto_64

    .line 1483
    :catch_b1
    move-exception v7

    goto :goto_4b

    .end local v0           #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1       #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #columns:[Ljava/lang/String;
    .restart local v4       #cursor:Landroid/database/Cursor;
    .restart local v5       #deviceApps:[Ljava/lang/String;
    .restart local v6       #deviceInstalledAppsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8       #i:I
    :cond_b3
    move-object v0, v1

    .end local v1           #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0       #appsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_4e
.end method

.method public getNetworkStats()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 370
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->getAppLevelDataUsage()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkStats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->getNetworkStats()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTopNCPUUsageApp(I)Ljava/util/List;
    .registers 25
    .parameter "aAppCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2828
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2829
    const-string v19, "ApplicationPolicy"

    const-string v20, "getTopNCPUUsageApp start"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readProcInfo()Ljava/util/Map;

    move-result-object v17

    .line 2832
    .local v17, lPrevState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readCpuTime()J

    move-result-wide v15

    .line 2837
    .local v15, lPrevCpuTime:J
    const-wide/16 v19, 0x3e8

    :try_start_14
    invoke-static/range {v19 .. v20}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_6d

    .line 2843
    :goto_17
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readProcInfo()Ljava/util/Map;

    move-result-object v11

    .line 2844
    .local v11, lCurrent:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readCpuTime()J

    move-result-wide v8

    .line 2846
    .local v8, lCPUTime:J
    sub-long v12, v8, v15

    .line 2848
    .local v12, lDeltaTime:J
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 2851
    .local v14, lPids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 2853
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    .line 2855
    .local v18, lResults:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_37
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_72

    .line 2856
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2857
    .local v4, index:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->delta(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;J)Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 2838
    .end local v4           #index:I
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v8           #lCPUTime:J
    .end local v11           #lCurrent:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    .end local v12           #lDeltaTime:J
    .end local v14           #lPids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v18           #lResults:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    :catch_6d
    move-exception v2

    .line 2839
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_17

    .line 2859
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v5       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v8       #lCPUTime:J
    .restart local v11       #lCurrent:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    .restart local v12       #lDeltaTime:J
    .restart local v14       #lPids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v18       #lResults:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    :cond_72
    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2862
    if-lez p1, :cond_81

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_85

    .line 2863
    :cond_81
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result p1

    .line 2867
    :cond_85
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2868
    .local v7, lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8b
    move/from16 v0, p1

    if-ge v3, v0, :cond_bb

    .line 2869
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    .line 2870
    .local v10, lCpuInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    new-instance v6, Landroid/app/enterprise/AppInfo;

    invoke-direct {v6}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 2871
    .local v6, lAppInfo:Landroid/app/enterprise/AppInfo;
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1100(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v6, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 2873
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v10}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1200(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4024

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    iput-wide v0, v6, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 2874
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2868
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 2877
    .end local v6           #lAppInfo:Landroid/app/enterprise/AppInfo;
    .end local v10           #lCpuInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    :cond_bb
    const-string v19, "ApplicationPolicy"

    const-string v20, "getTopNCPUUsageApp end"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    return-object v7
.end method

.method public getTopNCPUUsageAppFromTopCommand(IZ)Ljava/util/List;
    .registers 8
    .parameter "aAppCount"
    .parameter "bShowAllProcess"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2704
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_APP_MGMT"

    const-string v4, "ApplicationPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2705
    const-string v2, "ApplicationPolicy"

    const-string v3, "getTopNCPUUsageAppFromTopCommand start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    sget-object v2, Lcom/android/server/enterprise/DeviceShell;->BASH_COMMANDS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/android/server/enterprise/DeviceShell;->setShell(Ljava/lang/String;)V

    .line 2708
    const-string v2, "top -n 1"

    invoke-static {v2}, Lcom/android/server/enterprise/DeviceShell;->getProcessOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2710
    .local v1, lOutput:Ljava/lang/String;
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->parseTopCommand(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 2711
    .local v0, lCPUInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    const-string v3, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTopNCPUUsageAppFromTopCommand size :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_39
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    return-object v0

    .line 2711
    :cond_45
    const-string v2, "null"

    goto :goto_39
.end method

.method public getTopNDataUsageApp(I)Ljava/util/List;
    .registers 9
    .parameter "aAppCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2626
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2627
    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNDataUsageApp start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->readAppSizeInfo()Ljava/util/List;

    move-result-object v2

    .line 2630
    .local v2, lResults:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2631
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2634
    .local v4, lStorageInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    if-lez p1, :cond_1e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, p1, :cond_22

    .line 2635
    :cond_1e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    .line 2638
    :cond_22
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    if-ge v0, p1, :cond_43

    .line 2639
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    .line 2640
    .local v1, lDataInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    new-instance v3, Landroid/app/enterprise/AppInfo;

    invoke-direct {v3}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 2641
    .local v3, lStorageInfo:Landroid/app/enterprise/AppInfo;
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1100(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 2642
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1200(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v5

    long-to-double v5, v5

    iput-wide v5, v3, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 2643
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2638
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 2646
    .end local v1           #lDataInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    .end local v3           #lStorageInfo:Landroid/app/enterprise/AppInfo;
    :cond_43
    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNDataUsageApp end"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    return-object v4
.end method

.method public getTopNMemoryUsageApp(IZ)Ljava/util/List;
    .registers 12
    .parameter "aAppCount"
    .parameter "bShowAllProcess"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2541
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 2542
    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNMemoryUsageApp start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->readAppMemoryInfo(Z)Ljava/util/List;

    move-result-object v2

    .line 2545
    .local v2, lResults:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2546
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2548
    .local v4, lStorageInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/AppInfo;>;"
    if-lez p1, :cond_1e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, p1, :cond_22

    .line 2549
    :cond_1e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    .line 2552
    :cond_22
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    if-ge v0, p1, :cond_6d

    .line 2553
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    .line 2554
    .local v1, lMemInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    new-instance v3, Landroid/app/enterprise/AppInfo;

    invoke-direct {v3}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 2555
    .local v3, lStorageInfo:Landroid/app/enterprise/AppInfo;
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1100(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 2556
    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1200(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v5

    long-to-double v5, v5

    iput-wide v5, v3, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 2557
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2558
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1100(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " memory usage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->access$1200(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 2560
    .end local v1           #lMemInfo:Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    .end local v3           #lStorageInfo:Landroid/app/enterprise/AppInfo;
    :cond_6d
    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNMemoryUsageApp end"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    return-object v4
.end method

.method public installApplication(Ljava/lang/String;Z)Z
    .registers 16
    .parameter "apkFilePath"
    .parameter "installOnSDCard"

    .prologue
    const/4 v12, 0x1

    .line 1032
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v1

    .line 1033
    .local v1, callingUid:I
    const/4 v5, 0x0

    .line 1036
    .local v5, success:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1038
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".apk"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1a

    :cond_18
    move v6, v5

    .line 1086
    .end local v5           #success:Z
    .local v6, success:I
    :goto_19
    return v6

    .line 1041
    .end local v6           #success:I
    .restart local v5       #success:Z
    :cond_1a
    const/4 v3, 0x2

    .line 1043
    .local v3, installFlags:I
    if-eqz p2, :cond_67

    .line 1044
    or-int/lit8 v3, v3, 0x8

    .line 1048
    :goto_1f
    new-instance v4, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 1050
    .local v4, obs:Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1053
    .local v7, token:J
    :try_start_28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1054
    .local v0, apkFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_6a

    .line 1055
    new-instance v9, Ljava/lang/Exception;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ApplicationPolicy: Not a valid file \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_52
    .catchall {:try_start_28 .. :try_end_52} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_52} :catch_52

    .line 1075
    .end local v0           #apkFile:Ljava/io/File;
    :catch_52
    move-exception v2

    .line 1076
    .local v2, e:Ljava/lang/Exception;
    :try_start_53
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_93

    .line 1079
    if-eqz v5, :cond_62

    .line 1081
    iget-object v9, v4, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, v1, v9, v12}, Lcom/android/server/enterprise/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1082
    iget-object v9, v4, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, v1, v9, v12}, Lcom/android/server/enterprise/ApplicationPolicy;->setInstallSoureMDM(ILjava/lang/String;Z)V

    .line 1084
    .end local v2           #e:Ljava/lang/Exception;
    :cond_62
    :goto_62
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v5

    .line 1086
    .restart local v6       #success:I
    goto :goto_19

    .line 1046
    .end local v4           #obs:Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;
    .end local v6           #success:I
    .end local v7           #token:J
    :cond_67
    or-int/lit8 v3, v3, 0x10

    goto :goto_1f

    .line 1057
    .restart local v0       #apkFile:Ljava/io/File;
    .restart local v4       #obs:Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;
    .restart local v7       #token:J
    :cond_6a
    :try_start_6a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/ApplicationPolicy;->canRead(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a4

    .line 1058
    new-instance v9, Ljava/lang/Exception;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ApplicationPolicy: Permission denied - Unable to open file \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_93
    .catchall {:try_start_6a .. :try_end_93} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_93} :catch_52

    .line 1079
    .end local v0           #apkFile:Ljava/io/File;
    :catchall_93
    move-exception v9

    if-eqz v5, :cond_a0

    .line 1081
    iget-object v10, v4, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, v1, v10, v12}, Lcom/android/server/enterprise/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1082
    iget-object v10, v4, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, v1, v10, v12}, Lcom/android/server/enterprise/ApplicationPolicy;->setInstallSoureMDM(ILjava/lang/String;Z)V

    .line 1084
    :cond_a0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1079
    throw v9

    .line 1060
    .restart local v0       #apkFile:Ljava/io/File;
    :cond_a4
    :try_start_a4
    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v4, v3, v11}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 1062
    monitor-enter v4
    :try_end_af
    .catchall {:try_start_a4 .. :try_end_af} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_af} :catch_52

    .line 1063
    :goto_af
    :try_start_af
    iget-boolean v9, v4, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->finished:Z
    :try_end_b1
    .catchall {:try_start_af .. :try_end_b1} :catchall_ce

    if-nez v9, :cond_b9

    .line 1065
    :try_start_b3
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_ce
    .catch Ljava/lang/InterruptedException; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_af

    .line 1066
    :catch_b7
    move-exception v9

    goto :goto_af

    .line 1069
    :cond_b9
    :try_start_b9
    iget v9, v4, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->result:I

    if-ne v9, v12, :cond_cc

    .line 1070
    const/4 v5, 0x1

    .line 1074
    :goto_be
    monitor-exit v4
    :try_end_bf
    .catchall {:try_start_b9 .. :try_end_bf} :catchall_ce

    .line 1079
    if-eqz v5, :cond_62

    .line 1081
    iget-object v9, v4, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, v1, v9, v12}, Lcom/android/server/enterprise/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 1082
    iget-object v9, v4, Lcom/android/server/enterprise/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, v1, v9, v12}, Lcom/android/server/enterprise/ApplicationPolicy;->setInstallSoureMDM(ILjava/lang/String;Z)V

    goto :goto_62

    .line 1072
    :cond_cc
    const/4 v5, 0x0

    goto :goto_be

    .line 1074
    :catchall_ce
    move-exception v9

    :try_start_cf
    monitor-exit v4
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    :try_start_d0
    throw v9
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d1} :catch_52
.end method

.method public declared-synchronized isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 13
    .parameter "packageName"
    .parameter "packageUri"

    .prologue
    .line 1725
    monitor-enter p0

    const/4 v2, 0x1

    .line 1727
    .local v2, install:Z
    :try_start_2
    const-string v7, "ApplicationPolicy"

    const-string v8, "isApplicationInstallationEnabled"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v7, :cond_15

    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_159

    move-result v7

    if-eqz v7, :cond_18

    :cond_15
    move v3, v2

    .line 1804
    .end local v2           #install:Z
    .local v3, install:I
    :goto_16
    monitor-exit p0

    return v3

    .line 1732
    .end local v3           #install:I
    .restart local v2       #install:Z
    :cond_18
    :try_start_18
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationPackageInfo(Ljava/lang/String;Landroid/net/Uri;)Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_159

    move-result-object v0

    .line 1736
    .local v0, appPkgInfo:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;
    :try_start_1c
    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1738
    .local v6, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13e

    .line 1739
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1744
    .local v5, uid:Ljava/lang/Integer;
    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "PackageNameInstallationBlacklist"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1747
    .local v4, strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_59

    .line 1748
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 1749
    const/4 v2, 0x0

    .line 1753
    :cond_59
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isApplicationInstallationEnabled :  Checking PKG BL - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "PermissionInstallationBlacklist"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1759
    :cond_85
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_98

    .line 1760
    iget-object v7, v0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_85

    .line 1761
    const/4 v2, 0x0

    .line 1765
    :cond_98
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isApplicationInstallationEnabled :  Checking PERM BL - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "SignatureInstallationBlacklist"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1771
    :cond_c4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 1772
    iget-object v7, v0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c4

    .line 1773
    const/4 v2, 0x0

    .line 1777
    :cond_d7
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isApplicationInstallationEnabled :  Checking SIG BL - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    sget-object v7, Lcom/android/server/enterprise/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "PackageNameInstallationWhitelist"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1785
    :cond_103
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_116

    .line 1786
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_103

    .line 1787
    const/4 v2, 0x1

    .line 1791
    :cond_116
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isApplicationInstallationEnabled :  Checking PKG WL - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12e
    .catchall {:try_start_1c .. :try_end_12e} :catchall_159
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_12e} :catch_133

    .line 1795
    if-nez v2, :cond_26

    move v3, v2

    .line 1796
    .restart local v3       #install:I
    goto/16 :goto_16

    .line 1798
    .end local v3           #install:I
    .end local v4           #strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #uid:Ljava/lang/Integer;
    .end local v6           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catch_133
    move-exception v1

    .line 1799
    .local v1, e:Ljava/lang/Exception;
    :try_start_134
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1800
    const-string v7, "ApplicationPolicy"

    const-string v8, "Could not retrieve permissions & signature for package"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    .end local v1           #e:Ljava/lang/Exception;
    :cond_13e
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_156
    .catchall {:try_start_134 .. :try_end_156} :catchall_159

    move v3, v2

    .line 1804
    .restart local v3       #install:I
    goto/16 :goto_16

    .line 1725
    .end local v0           #appPkgInfo:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationPackageInfo;
    .end local v3           #install:I
    :catchall_159
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public isApplicationInstalled(Ljava/lang/String;)Z
    .registers 9
    .parameter "pkgName"

    .prologue
    .line 968
    const/4 v4, 0x0

    .line 969
    .local v4, isInstalled:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 970
    if-eqz p1, :cond_2f

    .line 972
    :try_start_7
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 973
    .local v0, appinfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_2f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2f

    .line 974
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 975
    .local v1, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2b} :catch_30

    move-result v5

    if-eqz v5, :cond_1a

    .line 976
    const/4 v4, 0x1

    .line 987
    .end local v0           #appinfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2f
    :goto_2f
    return v4

    .line 981
    :catch_30
    move-exception v2

    .line 982
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 983
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method

.method public isApplicationRunning(Ljava/lang/String;)Z
    .registers 10
    .parameter "pkgName"

    .prologue
    .line 998
    const/4 v3, 0x0

    .line 999
    .local v3, isInstalled:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1000
    if-eqz p1, :cond_36

    .line 1002
    :try_start_7
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1003
    .local v0, amgr:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 1005
    .local v4, runninAppinfList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v4, :cond_36

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_36

    .line 1006
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1007
    .local v5, runningApplicationInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_32} :catch_37

    move-result v6

    if-eqz v6, :cond_21

    .line 1008
    const/4 v3, 0x1

    .line 1018
    .end local v0           #amgr:Landroid/app/ActivityManager;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #runninAppinfList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5           #runningApplicationInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_36
    :goto_36
    return v3

    .line 1013
    :catch_37
    move-exception v1

    .line 1014
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1015
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .registers 10
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1416
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntentDisabled start :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    const/4 v1, 0x1

    .line 1420
    .local v1, isIntentEnabled:Z
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x200

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1421
    .local v2, lResolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntentDisabled resolve info :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    if-eqz v2, :cond_68

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_68

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_68

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_68

    .line 1427
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_67

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->getActualApplicationStateEnabled(Ljava/lang/String;)Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_64} :catch_85

    move-result v5

    if-eqz v5, :cond_83

    :cond_67
    move v1, v4

    .line 1436
    .end local v2           #lResolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_68
    :goto_68
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntentDisabled return :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    if-nez v1, :cond_8a

    :goto_82
    return v4

    .restart local v2       #lResolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_83
    move v1, v3

    .line 1427
    goto :goto_68

    .line 1431
    .end local v2           #lResolveInfo:Landroid/content/pm/ResolveInfo;
    :catch_85
    move-exception v0

    .line 1433
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_68

    .end local v0           #e:Ljava/lang/Exception;
    :cond_8a
    move v4, v3

    .line 1437
    goto :goto_82
.end method

.method isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;
    .registers 11
    .parameter "aPkgName"
    .parameter "aManageAppInfoArray"
    .parameter "aCallingUid"

    .prologue
    const/4 v4, 0x0

    .line 1594
    if-nez p2, :cond_7

    .line 1596
    invoke-direct {p0, v4, p3}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationsList(Ljava/lang/String;I)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object p2

    .line 1599
    :cond_7
    if-eqz p1, :cond_36

    if-eqz p2, :cond_36

    .line 1601
    move-object v0, p2

    .local v0, arr$:[Landroid/app/enterprise/ManagedAppInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_e
    if-ge v1, v3, :cond_36

    aget-object v2, v0, v1

    .line 1603
    .local v2, lManagedAppInfo:Landroid/app/enterprise/ManagedAppInfo;
    iget-object v5, v2, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1605
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsManagedAppInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    .end local v0           #arr$:[Landroid/app/enterprise/ManagedAppInfo;
    .end local v1           #i$:I
    .end local v2           #lManagedAppInfo:Landroid/app/enterprise/ManagedAppInfo;
    .end local v3           #len$:I
    :goto_32
    return-object v2

    .line 1601
    .restart local v0       #arr$:[Landroid/app/enterprise/ManagedAppInfo;
    .restart local v1       #i$:I
    .restart local v2       #lManagedAppInfo:Landroid/app/enterprise/ManagedAppInfo;
    .restart local v3       #len$:I
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .end local v0           #arr$:[Landroid/app/enterprise/ManagedAppInfo;
    .end local v1           #i$:I
    .end local v2           #lManagedAppInfo:Landroid/app/enterprise/ManagedAppInfo;
    .end local v3           #len$:I
    :cond_36
    move-object v2, v4

    .line 1610
    goto :goto_32
.end method

.method onAdminRemoved()V
    .registers 1

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    .line 177
    return-void
.end method

.method public removeAppPackageNameFromBlackList(Ljava/lang/String;)Z
    .registers 6
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 2389
    const-string v2, "ApplicationPolicy"

    const-string v3, "removeAppPackageNameFromBlackList "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2391
    .local v0, callingUid:I
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2392
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 2395
    :goto_16
    return v1

    :cond_17
    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_16
.end method

.method public removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z
    .registers 6
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 2436
    const-string v2, "ApplicationPolicy"

    const-string v3, "removeAppPackageNameFromWhiteList"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2438
    .local v0, callingUid:I
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2439
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 2442
    :goto_16
    return v1

    :cond_17
    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_16
.end method

.method public removeAppPermissionFromBlackList(Ljava/lang/String;)Z
    .registers 4
    .parameter "appPermission"

    .prologue
    .line 2223
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2224
    .local v0, callingUid:I
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPermissionControlState(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public removeAppSignatureFromBlackList(Ljava/lang/String;)Z
    .registers 4
    .parameter "appSignature"

    .prologue
    .line 2286
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2287
    .local v0, callingUid:I
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public removeManagedApplications(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 819
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 820
    const/4 v3, 0x0

    .line 821
    .local v3, removedAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_34

    .line 822
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #removedAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 823
    .restart local v3       #removedAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 825
    .local v2, pkg:Ljava/lang/String;
    :try_start_21
    invoke-static {v2}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 826
    if-eqz v2, :cond_15

    .line 827
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/enterprise/ApplicationPolicy;->uninstallApplication(Ljava/lang/String;Z)Z

    .line 829
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2e} :catch_2f

    goto :goto_15

    .line 831
    :catch_2f
    move-exception v0

    .line 832
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 836
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pkg:Ljava/lang/String;
    :cond_34
    return-object v3
.end method

.method public bridge synthetic removeManagedApplications(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->removeManagedApplications(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public setAppInstallationMode(I)Z
    .registers 5
    .parameter "aInstallationMode"

    .prologue
    .line 1300
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v1

    .line 1301
    .local v1, lCallingUid:I
    const/4 v0, 0x0

    .line 1303
    .local v0, bInstallationModeSet:Z
    const/4 v2, 0x1

    if-ne v2, p1, :cond_f

    .line 1305
    const-string v2, ".*"

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->removeAppPackageNameFromBlackList(Ljava/lang/String;)Z

    move-result v0

    .line 1313
    :cond_e
    :goto_e
    return v0

    .line 1307
    :cond_f
    if-nez p1, :cond_e

    .line 1309
    const-string v2, ".*"

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->addAppPackageNameToBlackList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_e
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    .registers 7
    .parameter "packageName"
    .parameter "disableAppInstallation"

    .prologue
    .line 1274
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1275
    .local v0, callingUid:I
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1276
    if-eqz p1, :cond_16

    .line 1278
    const/4 v2, 0x4

    :try_start_b
    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 1279
    const/16 v3, 0x8

    if-nez p2, :cond_17

    const/4 v2, 0x1

    :goto_13
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_19

    .line 1288
    :cond_16
    :goto_16
    return-void

    .line 1279
    :cond_17
    const/4 v2, 0x0

    goto :goto_13

    .line 1284
    :catch_19
    move-exception v1

    .line 1285
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public setApplicationState(Ljava/lang/String;Z)Z
    .registers 16
    .parameter "packageName"
    .parameter "enableApp"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1197
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1198
    .local v0, callingUid:I
    const/4 v4, 0x0

    .line 1199
    .local v4, success:Z
    const-string v10, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setApplicationState :  pkgName :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " callingUid :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " enableApp :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1201
    if-eqz p1, :cond_aa

    .line 1203
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_41

    .line 1232
    :goto_40
    return v7

    .line 1206
    :cond_41
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isActiveAdmin(Ljava/lang/String;)Z

    move-result v10

    if-ne v10, v8, :cond_50

    .line 1207
    const-string v7, "ApplicationPolicy"

    const-string v8, "setApplicationState() : can not disable Admin app"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v4

    .line 1208
    goto :goto_40

    .line 1211
    :cond_50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1214
    .local v5, token:J
    const/4 v10, 0x2

    if-nez p2, :cond_58

    move v7, v8

    :cond_58
    :try_start_58
    invoke-direct {p0, p1, v0, v10, v7}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    .line 1216
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 1217
    .local v3, state:Z
    const-string v7, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "state : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget-object v10, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v3, :cond_ac

    move v7, v8

    :goto_7c
    const/4 v8, 0x0

    invoke-virtual {v10, p1, v7, v8}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1219
    const/4 v4, 0x1

    .line 1220
    new-instance v2, Landroid/content/Intent;

    if-eqz v3, :cond_ae

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    :goto_87
    const-string v8, "package"

    const/4 v9, 0x0

    invoke-static {v8, p1, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1222
    .local v2, intent:Landroid/content/Intent;
    const/high16 v7, 0x1000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1223
    const-string v7, "android.intent.extra.REPLACING"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1224
    const-string v7, "application_state_disable_enable"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1225
    iget-object v7, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a7
    .catchall {:try_start_58 .. :try_end_a7} :catchall_b6
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_a7} :catch_b1

    .line 1229
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #state:Z
    :goto_a7
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v5           #token:J
    :cond_aa
    move v7, v4

    .line 1232
    goto :goto_40

    .restart local v3       #state:Z
    .restart local v5       #token:J
    :cond_ac
    move v7, v9

    .line 1218
    goto :goto_7c

    .line 1220
    :cond_ae
    :try_start_ae
    const-string v7, "android.intent.action.PACKAGE_REMOVED"
    :try_end_b0
    .catchall {:try_start_ae .. :try_end_b0} :catchall_b6
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b0} :catch_b1

    goto :goto_87

    .line 1226
    .end local v3           #state:Z
    :catch_b1
    move-exception v1

    .line 1227
    .local v1, e:Ljava/lang/Exception;
    :try_start_b2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b6

    goto :goto_a7

    .line 1229
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_b6
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 10
    .parameter "pkgList"
    .parameter "operation"

    .prologue
    .line 3193
    const/4 v0, 0x0

    .line 3194
    .local v0, appStateLst:[Ljava/lang/String;
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setApplicationStateList:operation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3198
    .local v2, lAppList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_26

    array-length v4, p1

    if-gez v4, :cond_28

    :cond_26
    move-object v4, v0

    .line 3212
    :goto_27
    return-object v4

    .line 3201
    :cond_28
    const/4 v1, 0x0

    .local v1, i:I
    :goto_29
    array-length v4, p1

    if-ge v1, v4, :cond_57

    .line 3202
    aget-object v4, p1, v1

    invoke-virtual {p0, v4, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    move-result v3

    .line 3203
    .local v3, ret:Z
    const/4 v4, 0x1

    if-ne v3, v4, :cond_54

    .line 3204
    aget-object v4, p1, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3205
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setApplicationStateList:pkgList[i]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 3209
    .end local v3           #ret:Z
    :cond_57
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_5f

    .line 3210
    const/4 v4, 0x0

    goto :goto_27

    .line 3212
    :cond_5f
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    goto :goto_27
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    .registers 6
    .parameter "packageName"
    .parameter "disableAppUninstallation"

    .prologue
    .line 1359
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1360
    .local v0, callingUid:I
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1361
    if-eqz p1, :cond_e

    .line 1363
    const/4 v2, 0x1

    :try_start_b
    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    .line 1368
    :cond_e
    :goto_e
    return-void

    .line 1364
    :catch_f
    move-exception v1

    .line 1365
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public setAsManagedApp(Ljava/lang/String;)Z
    .registers 10
    .parameter "pkgName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2342
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAsManagedApp():pkgName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 2345
    .local v0, callingUid:I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 2360
    :goto_24
    return v3

    .line 2349
    :cond_25
    const/4 v5, 0x1

    :try_start_26
    invoke-direct {p0, v0, p1, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    .line 2351
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v2

    .line 2352
    .local v2, mAppInfo:Landroid/app/enterprise/ManagedAppInfo;
    if-eqz v2, :cond_40

    iget v5, v2, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    if-nez v5, :cond_40

    .line 2353
    const-string v5, "applicationInstallationCount"

    invoke-direct {p0, v0, p1, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    .line 2354
    const-string v5, "ApplicationPolicy"

    const-string v6, "App install count incremented"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_40} :catch_42

    :cond_40
    move v3, v4

    .line 2356
    goto :goto_24

    .line 2358
    .end local v2           #mAppInfo:Landroid/app/enterprise/ManagedAppInfo;
    :catch_42
    move-exception v1

    .line 2359
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .parameter "pkgName"
    .parameter "className"

    .prologue
    .line 3136
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3137
    const/4 v3, 0x0

    .line 3138
    .local v3, result:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3139
    invoke-static {p2}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3140
    if-eqz p1, :cond_44

    .line 3141
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 3142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3145
    .local v4, token:J
    if-nez p2, :cond_27

    .line 3146
    :try_start_1a
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_46

    move-result-object v2

    .line 3147
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_36

    .line 3148
    const/4 v6, 0x0

    .line 3160
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3164
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #token:J
    :goto_26
    return v6

    .line 3150
    .restart local v4       #token:J
    :cond_27
    :try_start_27
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3151
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3152
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3154
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_36
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3155
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_40} :catch_46

    .line 3156
    const/4 v3, 0x1

    .line 3160
    .end local v2           #intent:Landroid/content/Intent;
    :goto_41
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v4           #token:J
    :cond_44
    move v6, v3

    .line 3164
    goto :goto_26

    .line 3157
    .restart local v4       #token:J
    :catch_46
    move-exception v1

    .line 3158
    .local v1, e:Ljava/lang/Exception;
    :try_start_47
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not start app"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_47 .. :try_end_63} :catchall_64

    goto :goto_41

    .line 3160
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_64
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public stopApp(Ljava/lang/String;)Z
    .registers 10
    .parameter "pkgName"

    .prologue
    .line 3109
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 3110
    const/4 v2, 0x0

    .line 3111
    .local v2, result:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3112
    if-eqz p1, :cond_25

    .line 3113
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 3114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3116
    .local v3, token:J
    :try_start_14
    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3117
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_21} :catch_26

    .line 3118
    const/4 v2, 0x1

    .line 3122
    .end local v0           #am:Landroid/app/ActivityManager;
    :goto_22
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3126
    .end local v3           #token:J
    :cond_25
    return v2

    .line 3119
    .restart local v3       #token:J
    :catch_26
    move-exception v1

    .line 3120
    .local v1, e:Ljava/lang/Exception;
    :try_start_27
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not stop app"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_44

    goto :goto_22

    .line 3122
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_44
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method systemReady()V
    .registers 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    .line 173
    return-void
.end method

.method public uninstallApplication(Ljava/lang/String;Z)Z
    .registers 10
    .parameter "packageName"
    .parameter "keepDataAndCache"

    .prologue
    .line 1136
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    .line 1137
    .local v0, callingUid:I
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1138
    if-nez p1, :cond_c

    .line 1139
    const/4 v6, 0x0

    .line 1170
    :goto_b
    return v6

    .line 1140
    :cond_c
    const/4 v5, 0x0

    .line 1141
    .local v5, unInstallFlags:I
    if-eqz p2, :cond_10

    .line 1142
    const/4 v5, 0x1

    .line 1145
    :cond_10
    new-instance v2, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    .line 1147
    .local v2, obs:Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1150
    .local v3, token:J
    :try_start_19
    iget-object v6, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, p1, v2, v5}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 1152
    monitor-enter v2
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_38
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1f} :catch_33

    .line 1153
    :goto_1f
    :try_start_1f
    iget-boolean v6, v2, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;->finished:Z
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_30

    if-nez v6, :cond_29

    .line 1155
    :try_start_23
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_30
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_1f

    .line 1156
    :catch_27
    move-exception v6

    goto :goto_1f

    .line 1159
    :cond_29
    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_30

    .line 1168
    :goto_2a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1170
    iget-boolean v6, v2, Lcom/android/server/enterprise/ApplicationPolicy$PackageDeleteObserver;->result:Z

    goto :goto_b

    .line 1159
    :catchall_30
    move-exception v6

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    throw v6
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_38
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_33} :catch_33

    .line 1160
    :catch_33
    move-exception v1

    .line 1161
    .local v1, e:Ljava/lang/Exception;
    :try_start_34
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_2a

    .line 1168
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_38
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public updateDataUsageDb()V
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateNetworkUsageDb()V

    .line 375
    return-void
.end method

.method public wipeApplicationData(Ljava/lang/String;)Z
    .registers 7
    .parameter "pkgName"

    .prologue
    .line 847
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy;->enforceAppPermission()I

    .line 848
    const/4 v1, 0x0

    .line 849
    .local v1, success:Z
    invoke-static {p1}, Lcom/android/server/enterprise/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 850
    if-eqz p1, :cond_1b

    .line 851
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 853
    .local v2, token:J
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->clearUserData(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 854
    const/4 v1, 0x1

    .line 855
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy;->clearApplicationCacheFiles(Ljava/lang/String;)Z
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_22
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_1c

    .line 861
    :cond_18
    :goto_18
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 864
    .end local v2           #token:J
    :cond_1b
    return v1

    .line 857
    .restart local v2       #token:J
    :catch_1c
    move-exception v0

    .line 858
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 859
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_18

    .line 861
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_22
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
