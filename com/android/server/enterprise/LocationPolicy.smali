.class public Lcom/android/server/enterprise/LocationPolicy;
.super Landroid/app/enterprise/ILocationPolicy$Stub;
.source "LocationPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EDM"


# instance fields
.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mLM:Landroid/location/LocationManager;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/enterprise/ILocationPolicy$Stub;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 48
    iput-object p1, p0, Lcom/android/server/enterprise/LocationPolicy;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    .line 50
    new-instance v0, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 51
    return-void
.end method

.method private addToBlocked(ILjava/lang/String;)Z
    .registers 8
    .parameter "adminUid"
    .parameter "sProvider"

    .prologue
    .line 369
    const-string v3, "EDM"

    const-string v4, ">>> LocationPolicyService.addToBlocked()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->getAllLocationProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 372
    const/4 v3, 0x0

    .line 385
    :goto_12
    return v3

    .line 374
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 376
    .local v2, provider:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_20

    .line 378
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 382
    .end local v2           #provider:Ljava/lang/String;
    :cond_37
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 383
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_40
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/LocationPolicy;->saveBlockedList(ILjava/util/List;)Z

    move-result v3

    goto :goto_12
.end method

.method private enforceLocationPermission()I
    .registers 3

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/enterprise/LocationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getBlockedList(I)Ljava/util/ArrayList;
    .registers 7
    .parameter "adminUid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v0, blockedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "LOCATION"

    const-string v4, "blockedProviders"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, blockedProviders:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 310
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :goto_1a
    return-object v0

    .line 312
    :cond_1b
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1a
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 58
    iget-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 61
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private isBlocked(Ljava/lang/String;)Z
    .registers 4
    .parameter "sProvider"

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->getAllBlockedProviders()Ljava/util/List;

    move-result-object v0

    .line 391
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 392
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 395
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private removeFromBlocked(ILjava/lang/String;)Z
    .registers 6
    .parameter "adminUid"
    .parameter "sProvider"

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->getAllLocationProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 349
    const/4 v2, 0x0

    .line 365
    :goto_b
    return v2

    .line 351
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 352
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_36

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 353
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2e

    .line 354
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 355
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 365
    .end local v0           #i:I
    :cond_2e
    :goto_2e
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/LocationPolicy;->saveBlockedList(ILjava/util/List;)Z

    move-result v2

    goto :goto_b

    .line 353
    .restart local v0       #i:I
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 362
    .end local v0           #i:I
    :cond_36
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e
.end method

.method private saveBlockedList(ILjava/util/List;)Z
    .registers 10
    .parameter "adminUid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 324
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v2, sb:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_43

    .line 326
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 327
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 331
    .end local v1           #s:Ljava/lang/String;
    :cond_34
    iget-object v3, p0, Lcom/android/server/enterprise/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "LOCATION"

    const-string v5, "blockedProviders"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 335
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_42
    return v3

    .line 334
    :cond_43
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget-object v3, p0, Lcom/android/server/enterprise/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "LOCATION"

    const-string v5, "blockedProviders"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_42
.end method

.method private setLocationManager()V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mLM:Landroid/location/LocationManager;

    .line 69
    return-void
.end method


# virtual methods
.method public forceLocationProvidersEnable(Z)Z
    .registers 13
    .parameter "force"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 105
    const-string v7, "EDM"

    const-string v9, " >>> LocationPolicy.forceLocationProvidersEnable()"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v5, 0x1

    .line 107
    .local v5, ret:Z
    const/4 v4, 0x0

    .line 108
    .local v4, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/LocationPolicy;->mLM:Landroid/location/LocationManager;

    if-nez v7, :cond_12

    .line 109
    invoke-direct {p0}, Lcom/android/server/enterprise/LocationPolicy;->setLocationManager()V

    .line 110
    :cond_12
    iget-object v7, p0, Lcom/android/server/enterprise/LocationPolicy;->mLM:Landroid/location/LocationManager;

    if-eqz v7, :cond_1c

    .line 111
    iget-object v7, p0, Lcom/android/server/enterprise/LocationPolicy;->mLM:Landroid/location/LocationManager;

    invoke-virtual {v7}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v4

    .line 114
    :cond_1c
    if-eqz v4, :cond_3d

    .line 115
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/enterprise/LocationPolicy;->enforceLocationPermission()I

    move-result v0

    .line 116
    .local v0, callingUid:I
    iget-object v7, p0, Lcom/android/server/enterprise/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "LOCATION"

    const-string v10, "forceProviders"

    invoke-virtual {v7, v0, v9, v10, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    and-int/2addr v5, v7

    .line 119
    if-eqz p1, :cond_3e

    .line 120
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/LocationPolicy;->setLocationProviders(Z)Z

    move-result v7

    and-int/2addr v5, v7

    .line 128
    const-string v7, "EDM"

    const-string v8, "LocationPolicy.forceLocationProvidersEnable() >>> force providers enabled"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 134
    .end local v0           #callingUid:I
    :cond_3d
    :goto_3d
    return v6

    .line 122
    .restart local v0       #callingUid:I
    :cond_3e
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 123
    .local v3, provider:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5b

    move v7, v8

    :goto_55
    invoke-virtual {p0, v3, v7}, Lcom/android/server/enterprise/LocationPolicy;->setIndividualLocationProvider(Ljava/lang/String;Z)Z

    move-result v7

    and-int/2addr v5, v7

    goto :goto_42

    :cond_5b
    move v7, v6

    goto :goto_55

    .line 125
    .end local v3           #provider:Ljava/lang/String;
    :cond_5d
    const-string v7, "EDM"

    const-string v8, "LocationPolicy.forceLocationProvidersEnable() force providers disabled"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_64} :catch_66

    move v6, v5

    .line 126
    goto :goto_3d

    .line 131
    .end local v0           #callingUid:I
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_66
    move-exception v1

    .line 132
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d
.end method

.method public getAllBlockedProviders()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v4, p0, Lcom/android/server/enterprise/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "LOCATION"

    const-string v6, "blockedProviders"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 288
    .local v2, blockedProvidersList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, blockedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_2f

    .line 290
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 291
    .local v1, blockedProviders:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    .line 294
    .end local v1           #blockedProviders:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2f
    const-string v4, ""

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_34
    return-object v0
.end method

.method public getAllLocationProviders()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/LocationPolicy;->enforceLocationPermission()I

    .line 276
    invoke-direct {p0}, Lcom/android/server/enterprise/LocationPolicy;->setLocationManager()V

    .line 277
    iget-object v1, p0, Lcom/android/server/enterprise/LocationPolicy;->mLM:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 278
    return-object v0
.end method

.method public getIndividualLocationProvider(Ljava/lang/String;)Z
    .registers 4
    .parameter "sProvider"

    .prologue
    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->isLocationProvidersEnableForced()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 259
    :cond_7
    :goto_7
    return v0

    .line 256
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->getAllLocationProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 259
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/LocationPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .registers 3
    .parameter "sProvider"

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/LocationPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLocationProvidersEnableForced()Z
    .registers 8

    .prologue
    .line 86
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "LOCATION"

    const-string v6, "forceProviders"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 89
    .local v1, forcedProvidersList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_22

    move-result v3

    .line 90
    .local v3, providersForced:Z
    if-eqz v3, :cond_e

    .line 91
    const/4 v4, 0x1

    .line 96
    .end local v1           #forcedProvidersList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #providersForced:Z
    :goto_21
    return v4

    .line 93
    :catch_22
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    .end local v0           #e:Ljava/lang/Exception;
    :cond_26
    const/4 v4, 0x0

    goto :goto_21
.end method

.method public setIndividualLocationProvider(Ljava/lang/String;Z)Z
    .registers 11
    .parameter "sProvider"
    .parameter "enable"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/server/enterprise/LocationPolicy;->enforceLocationPermission()I

    move-result v1

    .line 189
    .local v1, callingUid:I
    const/4 v3, 0x1

    .line 190
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/LocationPolicy;->setLocationManager()V

    .line 191
    iget-object v6, p0, Lcom/android/server/enterprise/LocationPolicy;->mLM:Landroid/location/LocationManager;

    invoke-virtual {v6}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    .line 192
    .local v2, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 194
    .local v0, blockedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_56

    .line 197
    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->getAllLocationProviders()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    .line 198
    const/4 v6, 0x0

    .line 220
    :goto_23
    return v6

    .line 203
    :cond_24
    monitor-enter p0

    .line 204
    if-eqz p2, :cond_34

    .line 205
    :try_start_27
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 206
    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/LocationPolicy;->removeFromBlocked(ILjava/lang/String;)Z

    move-result v3

    .line 219
    :cond_31
    :goto_31
    monitor-exit p0

    move v6, v3

    .line 220
    goto :goto_23

    .line 209
    :cond_34
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 210
    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/LocationPolicy;->addToBlocked(ILjava/lang/String;)Z

    move-result v3

    .line 212
    :cond_3e
    if-eqz v3, :cond_31

    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->isLocationProvidersEnableForced()Z

    move-result v6

    if-nez v6, :cond_31

    .line 213
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 214
    .local v4, token:J
    iget-object v6, p0, Lcom/android/server/enterprise/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v6, p1, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 216
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_31

    .line 219
    .end local v4           #token:J
    :catchall_53
    move-exception v6

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_27 .. :try_end_55} :catchall_53

    throw v6

    .line 222
    :cond_56
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid provider name !"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public setLocationBlockedList(Ljava/util/List;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, blockedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 232
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/LocationPolicy;->enforceLocationPermission()I

    move-result v0

    .line 233
    .local v0, callingUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 235
    .local v4, token:J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 236
    .local v2, prov:Ljava/lang/String;
    monitor-enter p0

    .line 237
    :try_start_1a
    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/LocationPolicy;->addToBlocked(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 238
    const/4 v3, 0x0

    .line 240
    :cond_21
    iget-object v6, p0, Lcom/android/server/enterprise/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    invoke-static {v6, v2, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 241
    monitor-exit p0

    goto :goto_d

    :catchall_29
    move-exception v6

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_29

    throw v6

    .line 243
    .end local v2           #prov:Ljava/lang/String;
    :cond_2c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    return v3
.end method

.method public setLocationProviders(Z)Z
    .registers 11
    .parameter "enable"

    .prologue
    .line 146
    const/4 v5, 0x1

    .line 147
    .local v5, result:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/LocationPolicy;->enforceLocationPermission()I

    move-result v1

    .line 148
    .local v1, callingUid:I
    invoke-direct {p0}, Lcom/android/server/enterprise/LocationPolicy;->setLocationManager()V

    .line 149
    iget-object v8, p0, Lcom/android/server/enterprise/LocationPolicy;->mLM:Landroid/location/LocationManager;

    invoke-virtual {v8}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v4

    .line 150
    .local v4, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->getAllBlockedProviders()Ljava/util/List;

    move-result-object v0

    .line 151
    .local v0, blockedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 152
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 153
    .local v6, token:J
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 157
    .local v3, prov:Ljava/lang/String;
    if-eqz p1, :cond_41

    .line 158
    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/LocationPolicy;->removeFromBlocked(ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_30

    .line 159
    const/4 v5, 0x0

    .line 166
    :cond_30
    :goto_30
    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->isLocationProvidersEnableForced()Z

    move-result v8

    if-eqz v8, :cond_49

    if-eqz p1, :cond_49

    .line 167
    iget-object v8, p0, Lcom/android/server/enterprise/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v8, v3, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_1b

    .line 175
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #prov:Ljava/lang/String;
    .end local v6           #token:J
    :catchall_3e
    move-exception v8

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_3e

    throw v8

    .line 162
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #prov:Ljava/lang/String;
    .restart local v6       #token:J
    :cond_41
    :try_start_41
    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/LocationPolicy;->addToBlocked(ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_30

    .line 163
    const/4 v5, 0x0

    goto :goto_30

    .line 169
    :cond_49
    if-eqz v0, :cond_1b

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    if-nez p1, :cond_1b

    .line 170
    iget-object v8, p0, Lcom/android/server/enterprise/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v8, v3, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_1b

    .line 174
    .end local v3           #prov:Ljava/lang/String;
    :cond_59
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_41 .. :try_end_5d} :catchall_3e

    .line 176
    return v5
.end method
