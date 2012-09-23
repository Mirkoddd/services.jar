.class Lcom/android/server/pm/PackageManagerService$1$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService$1;

.field final synthetic val$dir:Ljava/io/File;

.field final synthetic val$files:[Ljava/lang/String;

.field final synthetic val$nSeparateProcessesInner:[Ljava/lang/String;

.field final synthetic val$parseFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$1;[Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$1$1;->this$0:Lcom/android/server/pm/PackageManagerService$1;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$files:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$dir:Ljava/io/File;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$nSeparateProcessesInner:[Ljava/lang/String;

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$parseFlags:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 517
    :try_start_0
    sget v6, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    .line 518
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$files:[Ljava/lang/String;

    array-length v6, v6

    div-int/lit8 v6, v6, 0x2

    if-ge v2, v6, :cond_77

    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->isError:Z

    if-nez v6, :cond_77

    .line 519
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$dir:Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$files:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 520
    .local v1, file:Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$files:[Ljava/lang/String;

    aget-object v6, v6, v2

    #calls: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$200(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 518
    :cond_27
    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 525
    :cond_2a
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$files:[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string v7, "PhoneSetupWizard.apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 527
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$files:[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string v7, "SetupWizard.apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 529
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$files:[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string v7, "OrangeSetupWizard.apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 532
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 533
    .local v5, scanPath:Ljava/lang/String;
    new-instance v4, Landroid/content/pm/PackageParser;

    invoke-direct {v4, v5}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 534
    .local v4, pp:Landroid/content/pm/PackageParser;
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$nSeparateProcessesInner:[Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 535
    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$parseFlags:I

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 538
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    sget-object v6, Lcom/android/server/pm/PackageManagerService;->pom:Lcom/android/server/pm/PackageManagerService$PackageObjectMap;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$PackageObjectMap;->map:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6a} :catch_6b

    goto :goto_27

    .line 541
    .end local v1           #file:Ljava/io/File;
    .end local v2           #i:I
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v4           #pp:Landroid/content/pm/PackageParser;
    .end local v5           #scanPath:Ljava/lang/String;
    :catch_6b
    move-exception v0

    .line 542
    .local v0, e:Ljava/lang/Exception;
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/server/pm/PackageManagerService;->isError:Z

    .line 543
    const-string v6, "BootTime"

    const-string v7, "!@Exception in Thread"

    invoke-static {v6, v7, v0}, Landroid/util/safelog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    .end local v0           #e:Ljava/lang/Exception;
    :goto_76
    return-void

    .line 540
    .restart local v2       #i:I
    :cond_77
    :try_start_77
    sget v6, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    add-int/lit8 v6, v6, -0x1

    sput v6, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7d} :catch_6b

    goto :goto_76
.end method
