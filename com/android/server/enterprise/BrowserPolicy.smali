.class public Lcom/android/server/enterprise/BrowserPolicy;
.super Landroid/app/enterprise/IBrowserPolicy$Stub;
.source "BrowserPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BrowserPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/enterprise/IBrowserPolicy$Stub;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 24
    iput-object p1, p0, Lcom/android/server/enterprise/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 25
    new-instance v0, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 26
    return-void
.end method

.method private enforceBrowserPermission()I
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/enterprise/BrowserPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BROWSER_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/enterprise/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 32
    iget-object v0, p0, Lcom/android/server/enterprise/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 35
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public getBrowserSettingStatus(I)Z
    .registers 11
    .parameter "setting"

    .prologue
    const/16 v8, 0x8

    .line 94
    const/4 v2, 0x1

    .line 95
    .local v2, lEnabled:Z
    if-ne p1, v8, :cond_6

    .line 96
    const/4 v2, 0x0

    .line 99
    :cond_6
    :try_start_6
    iget-object v5, p0, Lcom/android/server/enterprise/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "BROWSER"

    const-string v7, "browserSettings"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 102
    .local v4, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_36

    .line 103
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 104
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_1a

    .line 105
    if-eq p1, v8, :cond_37

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, p1

    if-eq p1, v5, :cond_37

    .line 107
    const/4 v2, 0x0

    .line 122
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #value:Ljava/lang/Integer;
    .end local v4           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_36
    :goto_36
    return v2

    .line 111
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #value:Ljava/lang/Integer;
    .restart local v4       #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_37
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3a} :catch_40

    move-result v5

    and-int/2addr v5, p1

    if-ne p1, v5, :cond_1a

    .line 112
    const/4 v2, 0x1

    .line 113
    goto :goto_36

    .line 118
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #value:Ljava/lang/Integer;
    .end local v4           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_40
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "BrowserPolicy"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method public setBrowserSettingStatus(ZI)Z
    .registers 13
    .parameter "enable"
    .parameter "setting"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/enterprise/BrowserPolicy;->enforceBrowserPermission()I

    move-result v1

    .line 58
    .local v1, callingUid:I
    const/4 v4, 0x0

    .line 59
    .local v4, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 64
    .local v5, token:J
    :try_start_9
    iget-object v7, p0, Lcom/android/server/enterprise/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "BROWSER"

    const-string v9, "browserSettings"

    invoke-virtual {v7, v1, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_9 .. :try_end_12} :catch_34
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_3c

    move-result v3

    .line 71
    .local v3, lValue:I
    :goto_13
    const/4 v7, 0x1

    if-ne v7, p1, :cond_38

    or-int/2addr v3, p2

    .line 73
    :goto_17
    :try_start_17
    iget-object v7, p0, Lcom/android/server/enterprise/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "BROWSER"

    const-string v9, "browserSettings"

    invoke-virtual {v7, v1, v8, v9, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 78
    iget-object v7, p0, Lcom/android/server/enterprise/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 80
    .local v0, am:Landroid/app/ActivityManager;
    const-string v7, "com.android.browser"

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_30} :catch_3c

    .line 84
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v3           #lValue:I
    :goto_30
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    return v4

    .line 67
    :catch_34
    move-exception v2

    .line 68
    .local v2, e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    const/16 v3, 0x17

    .restart local v3       #lValue:I
    goto :goto_13

    .line 71
    .end local v2           #e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    :cond_38
    xor-int/lit8 v7, p2, -0x1

    and-int/2addr v3, v7

    goto :goto_17

    .line 81
    .end local v3           #lValue:I
    :catch_3c
    move-exception v2

    .line 82
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "BrowserPolicy"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method
