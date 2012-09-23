.class public Lcom/android/server/enterprise/PhoneRestrictionPolicy;
.super Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;
.source "PhoneRestrictionPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneRestrictionPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataCheckboxPreviousState:Z

.field private mDataLimitEnabled:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 44
    iput-boolean v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 48
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, " >>> PhoneRestrictionPolicy.PhoneRestrictionPolicy()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 51
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getDataCallLimitEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 52
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getDataCheckboxState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 53
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 54
    return-void
.end method

.method private blockDataNetwork()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1264
    iget-object v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1266
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_16

    .line 1267
    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, "Failed to get Connectivity Manager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :goto_15
    return v1

    .line 1270
    :cond_16
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1272
    iput-boolean v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 1273
    iget-boolean v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->putDataCheckboxState(Z)Z

    .line 1274
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :cond_26
    move v1, v2

    .line 1276
    goto :goto_15
.end method

.method private dataLimitCounter(Ljava/lang/String;J)V
    .registers 9
    .parameter "period"
    .parameter "totalBytes"

    .prologue
    .line 1248
    const-wide/16 v1, 0x0

    .line 1250
    .local v1, storageValue:J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_b} :catch_17

    move-result-wide v1

    .line 1254
    :goto_c
    add-long/2addr v1, p2

    .line 1255
    iget-object v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1256
    return-void

    .line 1251
    :catch_17
    move-exception v0

    .line 1252
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v1, 0x0

    goto :goto_c
.end method

.method private enforcePhoneApp()V
    .registers 3

    .prologue
    .line 72
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_10

    .line 73
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_10
    return-void
.end method

.method private enforcePhoneAppOrAdmin()V
    .registers 3

    .prologue
    .line 78
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_b

    .line 79
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    .line 81
    :cond_b
    return-void
.end method

.method private enforcePhonePermission()I
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_PHONE_RESTRICTION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceSms()V
    .registers 3

    .prologue
    .line 546
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_10

    .line 547
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only receive SMS by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_10
    return-void
.end method

.method private enforceSystemUser()V
    .registers 3

    .prologue
    .line 66
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 67
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_12
    return-void
.end method

.method private getDataCheckboxState()Z
    .registers 3

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "dataCallPacketDataCheckBox"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 88
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 91
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "allAdmins"
    .parameter "patternType"

    .prologue
    .line 271
    const/4 v5, 0x0

    .line 272
    .local v5, result:Ljava/lang/String;
    if-nez p1, :cond_10

    .line 273
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 274
    .local v0, adminUid:I
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    invoke-virtual {v6, v0, v7, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 286
    .end local v0           #adminUid:I
    :cond_f
    :goto_f
    return-object v5

    .line 277
    :cond_10
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    invoke-virtual {v6, v7, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 278
    .local v4, restrictionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, ""

    .line 279
    .local v1, allRestriction:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 280
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    .line 282
    .end local v3           #regex:Ljava/lang/String;
    :cond_35
    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 283
    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_f
.end method

.method private isNumberAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "phoneNumber"
    .parameter "policy"

    .prologue
    .line 220
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    invoke-virtual {v6, v7, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 222
    .local v4, patternList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_38

    if-eqz p1, :cond_38

    .line 223
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 224
    .local v5, regex:Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 225
    .local v3, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 226
    .local v2, match:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_30

    move-result v6

    if-eqz v6, :cond_14

    .line 227
    const/4 v6, 0x0

    .line 234
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #match:Ljava/util/regex/Matcher;
    .end local v3           #pattern:Ljava/util/regex/Pattern;
    .end local v4           #patternList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #regex:Ljava/lang/String;
    :goto_2f
    return v6

    .line 231
    :catch_30
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, ">>> PhoneRestrictionPolicy.isNumberAllowed() - exception"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v0           #e:Ljava/lang/Exception;
    :cond_38
    const/4 v6, 0x1

    goto :goto_2f
.end method

.method private putDataCheckboxState(Z)Z
    .registers 5
    .parameter "state"

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "dataCallPacketDataCheckBox"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private restorePacketDataNetworkSetting()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1285
    iget-boolean v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    if-eqz v3, :cond_38

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1286
    iget-object v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1288
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_28

    .line 1289
    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, "Failed to get Connectivity Manager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    :goto_27
    return v1

    .line 1292
    .restart local v0       #connectivityManager:Landroid/net/ConnectivityManager;
    :cond_28
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-nez v3, :cond_31

    .line 1293
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1295
    :cond_31
    iput-boolean v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 1296
    iget-boolean v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->putDataCheckboxState(Z)Z

    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    :cond_38
    move v1, v2

    .line 1298
    goto :goto_27
.end method

.method private updateDateAndCounters()V
    .registers 14

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 920
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, ">>> PhoneRestrictionPolicy.updateDateAndCounters()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 923
    .local v0, calendarCurrent:Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 924
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 925
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 926
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 929
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 930
    .local v1, calendarDay:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dateDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 932
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 933
    .local v3, calendarWeek:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 935
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 936
    .local v2, calendarMonth:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dateMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 938
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 941
    .local v4, time:J
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_105

    .line 942
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 944
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "incomingCallCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 945
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "outgoingCallCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 948
    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_a5

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_c6

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_c6

    .line 951
    :cond_a5
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 953
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "incomingCallCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 954
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "outgoingCallCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 958
    :cond_c6
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_e4

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_105

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_105

    .line 961
    :cond_e4
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 963
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "incomingCallCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 964
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "outgoingCallCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 967
    :cond_105
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, "PhoneRestrictionPolicy.updateDateAndCounters() >>>"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void
.end method

.method private updateDateAndCountersSms()V
    .registers 14

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 621
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, ">>> SmsRestrictionPolicy.updateDateAndCountersSms()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 624
    .local v0, calendarCurrent:Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 625
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 626
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 627
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 630
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 631
    .local v1, calendarDay:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "smsDateDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 633
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 634
    .local v3, calendarWeek:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "smsDateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 636
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 637
    .local v2, calendarMonth:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "smsDateMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 638
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 640
    .local v4, time:J
    const-string v6, "PhoneRestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11d

    .line 643
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "smsDateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 645
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "incomingSmsCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 646
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "outgoingSmsCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 649
    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_bd

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_de

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_de

    .line 652
    :cond_bd
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "smsDateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 654
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "incomingSmsCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 655
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "outgoingSmsCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 659
    :cond_de
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_fc

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_11d

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_11d

    .line 662
    :cond_fc
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "smsDateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 664
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "incomingSmsCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 665
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "outgoingSmsCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 668
    :cond_11d
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, "SmsRestrictionPolicy.updateDateAndCountersSms() >>>"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-void
.end method


# virtual methods
.method public addIncomingCallRestriction(Ljava/lang/String;)Z
    .registers 5
    .parameter "pattern"

    .prologue
    .line 132
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, ">>> PhoneRestrictionPolicy.addIncomingCallRestriction()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getIncomingCallRestriction(Z)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, regex:Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 135
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setIncomingCallRestriction(Ljava/lang/String;)Z

    move-result v1

    .line 137
    :goto_18
    return v1

    :cond_19
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setIncomingCallRestriction(Ljava/lang/String;)Z

    move-result v1

    goto :goto_18
.end method

.method public addIncomingSmsRestriction(Ljava/lang/String;)Z
    .registers 5
    .parameter "pattern"

    .prologue
    .line 320
    const/4 v1, 0x0

    const-string v2, "smsRestrictionIncomingPattern"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, regex:Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 322
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Ljava/lang/String;)Z

    move-result v1

    .line 324
    :goto_13
    return v1

    :cond_14
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Ljava/lang/String;)Z

    move-result v1

    goto :goto_13
.end method

.method public addNumberOfIncomingCalls()Z
    .registers 12

    .prologue
    .line 823
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, ">>> PhoneRestrictionPolicy.addNumberOfIncomingCalls()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneApp()V

    .line 825
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v8

    if-nez v8, :cond_14

    .line 826
    const/4 v4, 0x0

    .line 857
    :cond_13
    :goto_13
    return v4

    .line 828
    :cond_14
    const/4 v4, 0x0

    .line 829
    .local v4, ret:Z
    const/4 v0, 0x0

    .line 830
    .local v0, countDay:I
    const/4 v2, 0x0

    .line 831
    .local v2, countWeek:I
    const/4 v1, 0x0

    .line 832
    .local v1, countMonth:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 835
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "incomingCallCountDay"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 836
    .local v5, strCountDay:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "incomingCallCountWeek"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 837
    .local v7, strCountWeek:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "incomingCallCountMonth"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 838
    .local v6, strCountMonth:Ljava/lang/String;
    if-eqz v5, :cond_48

    if-eqz v7, :cond_48

    if-eqz v6, :cond_48

    .line 840
    :try_start_3c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 841
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 842
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_47} :catch_7c

    move-result v1

    .line 848
    :cond_48
    :goto_48
    add-int/lit8 v0, v0, 0x1

    .line 849
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "incomingCallCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 851
    add-int/lit8 v2, v2, 0x1

    .line 852
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "incomingCallCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    .line 854
    add-int/lit8 v1, v1, 0x1

    .line 855
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "incomingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    .line 856
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "PhoneRestrictionPolicy.addNumberOfIncomingCalls() >>>"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 843
    :catch_7c
    move-exception v3

    .line 844
    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "addNumberOfIncomingCalls - exception"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48
.end method

.method public addNumberOfIncomingSms()Z
    .registers 9

    .prologue
    .line 477
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> SMSRestrictionPolicy.addNumberOfIncomingSMS()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforceSms()V

    .line 479
    const/4 v3, 0x0

    .line 480
    .local v3, ret:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v5

    if-nez v5, :cond_13

    move v4, v3

    .line 496
    .end local v3           #ret:Z
    .local v4, ret:I
    :goto_12
    return v4

    .line 484
    .end local v4           #ret:I
    .restart local v3       #ret:Z
    :cond_13
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "incomingSmsCountDay"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 485
    .local v0, countDay:I
    add-int/lit8 v0, v0, 0x1

    .line 486
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "incomingSmsCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 488
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "incomingSmsCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 489
    .local v2, countWeek:I
    add-int/lit8 v2, v2, 0x1

    .line 490
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "incomingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 492
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "incomingSmsCountMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 493
    .local v1, countMonth:I
    add-int/lit8 v1, v1, 0x1

    .line 494
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "incomingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 495
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "SMSRestrictionPolicy.addNumberOfIncomingSMS() >>>"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 496
    .restart local v4       #ret:I
    goto :goto_12
.end method

.method public addNumberOfOutgoingCalls()Z
    .registers 12

    .prologue
    .line 862
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, ">>> PhoneRestrictionPolicy.addNumberOfOutgoingCalls()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneApp()V

    .line 864
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v8

    if-nez v8, :cond_14

    .line 865
    const/4 v4, 0x0

    .line 896
    :cond_13
    :goto_13
    return v4

    .line 867
    :cond_14
    const/4 v4, 0x0

    .line 868
    .local v4, ret:Z
    const/4 v0, 0x0

    .line 869
    .local v0, countDay:I
    const/4 v2, 0x0

    .line 870
    .local v2, countWeek:I
    const/4 v1, 0x0

    .line 871
    .local v1, countMonth:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 874
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "outgoingCallCountDay"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 875
    .local v5, strCountDay:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "outgoingCallCountWeek"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 876
    .local v7, strCountWeek:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "outgoingCallCountMonth"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 877
    .local v6, strCountMonth:Ljava/lang/String;
    if-eqz v5, :cond_48

    if-eqz v7, :cond_48

    if-eqz v6, :cond_48

    .line 879
    :try_start_3c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 880
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 881
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_47} :catch_7c

    move-result v1

    .line 887
    :cond_48
    :goto_48
    add-int/lit8 v0, v0, 0x1

    .line 888
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "outgoingCallCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 890
    add-int/lit8 v2, v2, 0x1

    .line 891
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "outgoingCallCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    .line 893
    add-int/lit8 v1, v1, 0x1

    .line 894
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "outgoingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    .line 895
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "PhoneRestrictionPolicy.addNumberOfOutgoingCalls >>>"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 882
    :catch_7c
    move-exception v3

    .line 883
    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "addNumberOfOutgoingCalls - exception"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48
.end method

.method public addNumberOfOutgoingSms()Z
    .registers 9

    .prologue
    .line 500
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> SmsRestrictionPolicy.addNumberOfOutgoingSms()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforceSms()V

    .line 502
    const/4 v3, 0x0

    .line 503
    .local v3, ret:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v5

    if-nez v5, :cond_13

    move v4, v3

    .line 519
    .end local v3           #ret:Z
    .local v4, ret:I
    :goto_12
    return v4

    .line 507
    .end local v4           #ret:I
    .restart local v3       #ret:Z
    :cond_13
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountDay"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 508
    .local v0, countDay:I
    add-int/lit8 v0, v0, 0x1

    .line 509
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 511
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 512
    .local v2, countWeek:I
    add-int/lit8 v2, v2, 0x1

    .line 513
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 515
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 516
    .local v1, countMonth:I
    add-int/lit8 v1, v1, 0x1

    .line 517
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 518
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "SmsRestrictionPolicy.addNumberOfOutgoingSms >>>"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 519
    .restart local v4       #ret:I
    goto :goto_12
.end method

.method public addOutgoingCallRestriction(Ljava/lang/String;)Z
    .registers 5
    .parameter "pattern"

    .prologue
    .line 123
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, ">>> PhoneRestrictionPolicy.addOutgoingCallRestriction()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getOutgoingCallRestriction(Z)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, regex:Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 126
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Ljava/lang/String;)Z

    move-result v1

    .line 128
    :goto_18
    return v1

    :cond_19
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Ljava/lang/String;)Z

    move-result v1

    goto :goto_18
.end method

.method public addOutgoingSmsRestriction(Ljava/lang/String;)Z
    .registers 5
    .parameter "pattern"

    .prologue
    .line 311
    const/4 v1, 0x0

    const-string v2, "smsRestrictionOutgoingPattern"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, regex:Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 313
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Ljava/lang/String;)Z

    move-result v1

    .line 315
    :goto_13
    return v1

    :cond_14
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Ljava/lang/String;)Z

    move-result v1

    goto :goto_13
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .registers 14
    .parameter "phoneNumber"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 189
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 190
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v10

    if-nez v10, :cond_e

    .line 215
    :cond_d
    :goto_d
    return v8

    .line 193
    :cond_e
    const-string v10, "incomingPattern"

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 195
    .local v0, canCall:Z
    const/4 v7, 0x0

    .line 196
    .local v7, underLimit:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled()Z

    move-result v10

    if-eqz v10, :cond_69

    .line 197
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->updateDateAndCounters()V

    .line 198
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(I)I

    move-result v4

    .line 199
    .local v4, limitDay:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "incomingCallCountDay"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 200
    .local v1, countDay:I
    if-lt v1, v4, :cond_32

    if-ge v4, v8, :cond_5c

    .line 201
    :cond_32
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(I)I

    move-result v6

    .line 202
    .local v6, limitWeek:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "incomingCallCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 203
    .local v3, countWeek:I
    if-lt v3, v6, :cond_46

    if-ge v6, v8, :cond_5c

    .line 204
    :cond_46
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(I)I

    move-result v5

    .line 205
    .local v5, limitMonth:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "incomingCallCountMonth"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 206
    .local v2, countMonth:I
    if-lt v2, v5, :cond_5b

    if-ge v5, v8, :cond_5c

    .line 207
    :cond_5b
    const/4 v7, 0x1

    .line 214
    .end local v1           #countDay:I
    .end local v2           #countMonth:I
    .end local v3           #countWeek:I
    .end local v4           #limitDay:I
    .end local v5           #limitMonth:I
    .end local v6           #limitWeek:I
    :cond_5c
    :goto_5c
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "PhoneRestrictionPolicy.canIncomingCall >>>>"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-eqz v0, :cond_67

    if-nez v7, :cond_d

    :cond_67
    move v8, v9

    goto :goto_d

    .line 212
    :cond_69
    const/4 v7, 0x1

    goto :goto_5c
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .registers 15
    .parameter "phoneNumber"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 553
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 554
    const-string v10, "smsRestrictionIncomingPattern"

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 556
    .local v0, canReceive:Z
    const/4 v7, 0x0

    .line 557
    .local v7, underLimit:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v10

    if-eqz v10, :cond_96

    .line 558
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "Limit of sms is enabled!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->updateDateAndCountersSms()V

    .line 560
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfIncomingSms(I)I

    move-result v4

    .line 561
    .local v4, limitDay:I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canIncomingSms - limitDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "incomingSmsCountDay"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 563
    .local v1, countDay:I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canIncomingSms - countDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    if-lt v1, v4, :cond_60

    if-ge v4, v8, :cond_91

    .line 565
    :cond_60
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfIncomingSms(I)I

    move-result v6

    .line 566
    .local v6, limitWeek:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "incomingSmsCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 567
    .local v3, countWeek:I
    if-lt v3, v6, :cond_74

    if-ge v6, v8, :cond_91

    .line 568
    :cond_74
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfIncomingSms(I)I

    move-result v5

    .line 569
    .local v5, limitMonth:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "incomingSmsCountMonth"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 570
    .local v2, countMonth:I
    if-lt v2, v5, :cond_89

    if-ge v5, v8, :cond_91

    .line 571
    :cond_89
    const/4 v7, 0x1

    .line 572
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "canIncomingSms - limit = true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    .end local v1           #countDay:I
    .end local v2           #countMonth:I
    .end local v3           #countWeek:I
    .end local v4           #limitDay:I
    .end local v5           #limitMonth:I
    .end local v6           #limitWeek:I
    :cond_91
    :goto_91
    if-eqz v0, :cond_98

    if-eqz v7, :cond_98

    :goto_95
    return v8

    .line 577
    :cond_96
    const/4 v7, 0x1

    goto :goto_91

    :cond_98
    move v8, v9

    .line 580
    goto :goto_95
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .registers 14
    .parameter "phoneNumber"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 159
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 160
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v10

    if-nez v10, :cond_e

    .line 185
    :cond_d
    :goto_d
    return v8

    .line 163
    :cond_e
    const-string v10, "outgoingPattern"

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 165
    .local v0, canCall:Z
    const/4 v7, 0x0

    .line 166
    .local v7, underLimit:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled()Z

    move-result v10

    if-eqz v10, :cond_69

    .line 167
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->updateDateAndCounters()V

    .line 168
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(I)I

    move-result v4

    .line 169
    .local v4, limitDay:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "outgoingCallCountDay"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 170
    .local v1, countDay:I
    if-lt v1, v4, :cond_32

    if-ge v4, v8, :cond_5c

    .line 171
    :cond_32
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(I)I

    move-result v6

    .line 172
    .local v6, limitWeek:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "outgoingCallCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 173
    .local v3, countWeek:I
    if-lt v3, v6, :cond_46

    if-ge v6, v8, :cond_5c

    .line 174
    :cond_46
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(I)I

    move-result v5

    .line 175
    .local v5, limitMonth:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "outgoingCallCountMonth"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 176
    .local v2, countMonth:I
    if-lt v2, v5, :cond_5b

    if-ge v5, v8, :cond_5c

    .line 177
    :cond_5b
    const/4 v7, 0x1

    .line 184
    .end local v1           #countDay:I
    .end local v2           #countMonth:I
    .end local v3           #countWeek:I
    .end local v4           #limitDay:I
    .end local v5           #limitMonth:I
    .end local v6           #limitWeek:I
    :cond_5c
    :goto_5c
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "PhoneRestrictionPolicy.canOutgoingCall >>>>"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    if-eqz v0, :cond_67

    if-nez v7, :cond_d

    :cond_67
    move v8, v9

    goto :goto_d

    .line 182
    :cond_69
    const/4 v7, 0x1

    goto :goto_5c
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .registers 15
    .parameter "phoneNumber"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 585
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 586
    const-string v10, "smsRestrictionOutgoingPattern"

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 588
    .local v0, canSend:Z
    const/4 v7, 0x0

    .line 589
    .local v7, underLimit:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v10

    if-eqz v10, :cond_9d

    .line 590
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "Limit of sms is enabled!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->updateDateAndCountersSms()V

    .line 592
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(I)I

    move-result v4

    .line 593
    .local v4, limitDay:I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canOutgoingSms - limitDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "outgoingSmsCountDay"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 595
    .local v1, countDay:I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canOutgoingSms - countDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    if-lt v1, v4, :cond_60

    if-ge v4, v8, :cond_91

    .line 597
    :cond_60
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(I)I

    move-result v6

    .line 598
    .local v6, limitWeek:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "outgoingSmsCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 599
    .local v3, countWeek:I
    if-lt v3, v6, :cond_74

    if-ge v6, v8, :cond_91

    .line 600
    :cond_74
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(I)I

    move-result v5

    .line 601
    .local v5, limitMonth:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "outgoingSmsCountMonth"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 602
    .local v2, countMonth:I
    if-lt v2, v5, :cond_89

    if-ge v5, v8, :cond_91

    .line 603
    :cond_89
    const/4 v7, 0x1

    .line 604
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "canOutgoingSms - limit = true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .end local v1           #countDay:I
    .end local v2           #countMonth:I
    .end local v3           #countWeek:I
    .end local v4           #limitDay:I
    .end local v5           #limitMonth:I
    .end local v6           #limitWeek:I
    :cond_91
    :goto_91
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "SmsRestrictionPolicy.canOutgoingSms >>>>"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    if-eqz v0, :cond_9f

    if-eqz v7, :cond_9f

    :goto_9c
    return v8

    .line 609
    :cond_9d
    const/4 v7, 0x1

    goto :goto_91

    :cond_9f
    move v8, v9

    .line 612
    goto :goto_9c
.end method

.method public checkDataCallLimit()Z
    .registers 16

    .prologue
    .line 1108
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforceSystemUser()V

    .line 1110
    iget-boolean v13, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v13, :cond_9

    .line 1111
    const/4 v13, 0x0

    .line 1151
    :goto_8
    return v13

    .line 1114
    :cond_9
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfDataCalls(I)J

    move-result-wide v2

    .line 1115
    .local v2, dayLimit:J
    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfDataCalls(I)J

    move-result-wide v11

    .line 1116
    .local v11, weekLimit:J
    const/4 v13, 0x2

    invoke-virtual {p0, v13}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfDataCalls(I)J

    move-result-wide v7

    .line 1118
    .local v7, monthLimit:J
    const-wide/16 v0, 0x0

    .line 1119
    .local v0, dayCurrent:J
    const-wide/16 v9, 0x0

    .line 1120
    .local v9, weekCurrent:J
    const-wide/16 v5, 0x0

    .line 1124
    .local v5, monthCurrent:J
    :try_start_1e
    iget-object v13, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "dataCallBytesCountByDay"

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_29} :catch_62

    move-result-wide v0

    .line 1131
    :goto_2a
    :try_start_2a
    iget-object v13, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "dataCallBytesCountByWeek"

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_35} :catch_6b

    move-result-wide v9

    .line 1138
    :goto_36
    :try_start_36
    iget-object v13, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "dataCallByteCountByMonth"

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_41} :catch_74

    move-result-wide v5

    .line 1146
    :goto_42
    const-wide/16 v13, 0x0

    cmp-long v13, v13, v2

    if-gez v13, :cond_4c

    cmp-long v13, v0, v2

    if-gtz v13, :cond_60

    :cond_4c
    const-wide/16 v13, 0x0

    cmp-long v13, v13, v11

    if-gez v13, :cond_56

    cmp-long v13, v9, v11

    if-gtz v13, :cond_60

    :cond_56
    const-wide/16 v13, 0x0

    cmp-long v13, v13, v7

    if-gez v13, :cond_7d

    cmp-long v13, v5, v7

    if-lez v13, :cond_7d

    .line 1149
    :cond_60
    const/4 v13, 0x1

    goto :goto_8

    .line 1126
    :catch_62
    move-exception v4

    .line 1127
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v13, "PhoneRestrictionPolicy"

    const-string v14, "Could not read from Storage"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1133
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :catch_6b
    move-exception v4

    .line 1134
    .restart local v4       #e:Ljava/lang/NumberFormatException;
    const-string v13, "PhoneRestrictionPolicy"

    const-string v14, "Could not read from Storage"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 1140
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :catch_74
    move-exception v4

    .line 1141
    .restart local v4       #e:Ljava/lang/NumberFormatException;
    const-string v13, "PhoneRestrictionPolicy"

    const-string v14, "Could not read from Storage"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 1151
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_7d
    const/4 v13, 0x0

    goto :goto_8
.end method

.method public checkEnableUseOfPacketData(Z)Z
    .registers 9
    .parameter "showMsg"

    .prologue
    .line 1078
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1079
    .local v2, token:J
    const/4 v1, 0x0

    .line 1080
    .local v1, ret:Z
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V

    .line 1081
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->checkDataCallLimit()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 1082
    :cond_1e
    if-eqz p1, :cond_3a

    .line 1083
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v0, i:Landroid/content/Intent;
    const-string v4, "message"

    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const v6, 0x10401c8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1086
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1088
    .end local v0           #i:Landroid/content/Intent;
    :cond_3a
    const/4 v1, 0x0

    .line 1092
    :goto_3b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1093
    return v1

    .line 1090
    :cond_3f
    const/4 v1, 0x1

    goto :goto_3b
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .registers 9

    .prologue
    .line 523
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> SmsRestrictionPolicy.decreaseNumberOfOutgoingSms()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforceSms()V

    .line 525
    const/4 v3, 0x0

    .line 526
    .local v3, ret:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v5

    if-nez v5, :cond_13

    move v4, v3

    .line 542
    .end local v3           #ret:Z
    .local v4, ret:I
    :goto_12
    return v4

    .line 530
    .end local v4           #ret:I
    .restart local v3       #ret:Z
    :cond_13
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountDay"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 531
    .local v0, countDay:I
    add-int/lit8 v0, v0, -0x1

    .line 532
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 534
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 535
    .local v2, countWeek:I
    add-int/lit8 v2, v2, -0x1

    .line 536
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 538
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 539
    .local v1, countMonth:I
    add-int/lit8 v1, v1, -0x1

    .line 540
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 541
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "SmsRestrictionPolicy.addNumberOfOutgoingSms >>>"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 542
    .restart local v4       #ret:I
    goto :goto_12
.end method

.method public enableLimitNumberOfCalls(Z)Z
    .registers 12
    .parameter "status"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 674
    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, " >>>> enableLimitNumberOfCalls "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v1

    .line 676
    .local v1, callingUid:I
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-nez v7, :cond_16

    .line 696
    :goto_15
    return v6

    .line 679
    :cond_16
    const/4 v2, 0x1

    .line 680
    .local v2, ret:Z
    if-eqz p1, :cond_6c

    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled()Z

    move-result v7

    if-nez v7, :cond_6c

    .line 681
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->resetCallsCount()Z

    .line 682
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 683
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 684
    const/16 v7, 0xc

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 685
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 686
    const/16 v7, 0xe

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 687
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 688
    .local v3, time:J
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "dateDay"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 690
    if-eqz v2, :cond_83

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "dateWeek"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_83

    move v2, v5

    .line 692
    :goto_5b
    if-eqz v2, :cond_85

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "dateMonth"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_85

    move v2, v5

    .line 695
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v3           #time:J
    :cond_6c
    :goto_6c
    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, "enableLimitNumberOfCalls  >>>>>"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    if-eqz v2, :cond_87

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "PHONERESTRICTION"

    const-string v9, "limitCallEnable"

    invoke-virtual {v7, v1, v8, v9, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_87

    :goto_81
    move v6, v5

    goto :goto_15

    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v3       #time:J
    :cond_83
    move v2, v6

    .line 690
    goto :goto_5b

    :cond_85
    move v2, v6

    .line 692
    goto :goto_6c

    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v3           #time:J
    :cond_87
    move v5, v6

    .line 696
    goto :goto_81
.end method

.method public enableLimitNumberOfSms(Z)Z
    .registers 12
    .parameter "status"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 343
    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, " >>>> enableLimitNumberOfSMS "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v1

    .line 345
    .local v1, callingUid:I
    const/4 v2, 0x1

    .line 346
    .local v2, ret:Z
    if-eqz p1, :cond_63

    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v7

    if-nez v7, :cond_63

    .line 347
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->resetSmsCount()Z

    .line 348
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 349
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 350
    const/16 v7, 0xc

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 351
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 352
    const/16 v7, 0xe

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 353
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 354
    .local v3, time:J
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "smsDateDay"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 356
    if-eqz v2, :cond_79

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "smsDateWeek"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_79

    move v2, v5

    .line 358
    :goto_52
    if-eqz v2, :cond_7b

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "smsDateMonth"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7b

    move v2, v5

    .line 361
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v3           #time:J
    :cond_63
    :goto_63
    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, "enableLimitNumberOfSMS  >>>>>"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-eqz v2, :cond_7d

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "PHONERESTRICTION"

    const-string v9, "limitSmsEnable"

    invoke-virtual {v7, v1, v8, v9, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_7d

    :goto_78
    return v5

    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v3       #time:J
    :cond_79
    move v2, v6

    .line 356
    goto :goto_52

    :cond_7b
    move v2, v6

    .line 358
    goto :goto_63

    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v3           #time:J
    :cond_7d
    move v5, v6

    .line 362
    goto :goto_78
.end method

.method public getDataCallLimitEnabled()Z
    .registers 8

    .prologue
    .line 1004
    const/4 v1, 0x0

    .line 1005
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "enableLimitDataCall"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1008
    .local v3, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1009
    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    .line 1010
    move v1, v2

    .line 1014
    .end local v2           #value:Z
    :cond_23
    return v1
.end method

.method public getEmergencyCallOnly(Z)Z
    .registers 11
    .parameter "allAdmins"

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 247
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v6

    if-nez v6, :cond_d

    .line 248
    const/4 v5, 0x0

    .line 267
    :cond_c
    :goto_c
    return v5

    .line 250
    :cond_d
    const/4 v5, 0x0

    .line 252
    .local v5, result:Z
    if-nez p1, :cond_1f

    .line 253
    :try_start_10
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 254
    .local v0, adminUid:I
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string v8, "emergencyCallOnly"

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 255
    goto :goto_c

    .line 257
    .end local v0           #adminUid:I
    :cond_1f
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string v8, "emergencyCallOnly"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 258
    .local v4, restrictionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 259
    .local v1, block:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3c} :catch_41

    move-result v6

    if-eqz v6, :cond_2d

    .line 260
    const/4 v5, 0x1

    goto :goto_c

    .line 264
    .end local v1           #block:Ljava/lang/Boolean;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #restrictionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :catch_41
    move-exception v2

    .line 265
    .local v2, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_c
.end method

.method public getIncomingCallRestriction(Z)Ljava/lang/String;
    .registers 4
    .parameter "allAdmins"

    .prologue
    .line 104
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingCallRestriction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    .line 106
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_14

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_13
    return-object v0

    :cond_14
    const-string v0, "incomingPattern"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public getIncomingSmsRestriction(Z)Ljava/lang/String;
    .registers 3
    .parameter "allAdmins"

    .prologue
    .line 296
    const-string v0, "smsRestrictionIncomingPattern"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLimitOfDataCalls(I)J
    .registers 13
    .parameter "type"

    .prologue
    const-wide/16 v9, 0x0

    .line 1029
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    .line 1030
    const/4 v1, 0x0

    .line 1032
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    packed-switch p1, :pswitch_data_5c

    .line 1049
    const-wide/16 v2, -0x1

    .line 1058
    :cond_b
    return-wide v2

    .line 1034
    :pswitch_c
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string v8, "dataCallByDay"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1036
    const-wide/16 v2, 0x0

    .line 1051
    .local v2, res:J
    :goto_18
    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 1052
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1053
    .local v4, value:J
    cmp-long v6, v4, v9

    if-eqz v6, :cond_24

    cmp-long v6, v4, v2

    if-ltz v6, :cond_40

    cmp-long v6, v2, v9

    if-nez v6, :cond_24

    .line 1054
    :cond_40
    move-wide v2, v4

    goto :goto_24

    .line 1039
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #res:J
    .end local v4           #value:J
    :pswitch_42
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string v8, "dataCallByWeek"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1041
    const-wide/16 v2, 0x0

    .line 1042
    .restart local v2       #res:J
    goto :goto_18

    .line 1044
    .end local v2           #res:J
    :pswitch_4f
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string v8, "dataCallByMonth"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1046
    const-wide/16 v2, 0x0

    .line 1047
    .restart local v2       #res:J
    goto :goto_18

    .line 1032
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_42
        :pswitch_4f
    .end packed-switch
.end method

.method public getLimitOfIncomingCalls(I)I
    .registers 9
    .parameter "type"

    .prologue
    const/4 v2, -0x1

    .line 735
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 736
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_d

    .line 767
    :cond_c
    :goto_c
    return v2

    .line 739
    :cond_d
    const/4 v1, 0x0

    .line 741
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p1, :pswitch_data_60

    goto :goto_c

    .line 743
    :pswitch_12
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 745
    const/4 v2, 0x0

    .line 760
    .local v2, res:I
    :goto_1d
    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 761
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 762
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_43

    if-nez v2, :cond_29

    .line 763
    :cond_43
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_29

    .line 748
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #res:I
    .end local v3           #value:Ljava/lang/Integer;
    :pswitch_48
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 750
    const/4 v2, 0x0

    .line 751
    .restart local v2       #res:I
    goto :goto_1d

    .line 753
    .end local v2           #res:I
    :pswitch_54
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 755
    const/4 v2, 0x0

    .line 756
    .restart local v2       #res:I
    goto :goto_1d

    .line 741
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_12
        :pswitch_48
        :pswitch_54
    .end packed-switch
.end method

.method public getLimitOfIncomingSms(I)I
    .registers 9
    .parameter "type"

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 402
    const/4 v1, 0x0

    .line 404
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p1, :pswitch_data_58

    .line 421
    const/4 v2, -0x1

    .line 430
    :cond_8
    return v2

    .line 406
    :pswitch_9
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 408
    const/4 v2, 0x0

    .line 423
    .local v2, res:I
    :goto_14
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 424
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 425
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_3a

    if-nez v2, :cond_20

    .line 426
    :cond_3a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_20

    .line 411
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #res:I
    .end local v3           #value:Ljava/lang/Integer;
    :pswitch_3f
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 413
    const/4 v2, 0x0

    .line 414
    .restart local v2       #res:I
    goto :goto_14

    .line 416
    .end local v2           #res:I
    :pswitch_4b
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 418
    const/4 v2, 0x0

    .line 419
    .restart local v2       #res:I
    goto :goto_14

    .line 404
    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_9
        :pswitch_3f
        :pswitch_4b
    .end packed-switch
.end method

.method public getLimitOfOutgoingCalls(I)I
    .registers 9
    .parameter "type"

    .prologue
    const/4 v2, -0x1

    .line 786
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 787
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_d

    .line 818
    :cond_c
    :goto_c
    return v2

    .line 790
    :cond_d
    const/4 v1, 0x0

    .line 792
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p1, :pswitch_data_60

    goto :goto_c

    .line 794
    :pswitch_12
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 796
    const/4 v2, 0x0

    .line 811
    .local v2, res:I
    :goto_1d
    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 812
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 813
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_43

    if-nez v2, :cond_29

    .line 814
    :cond_43
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_29

    .line 799
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #res:I
    .end local v3           #value:Ljava/lang/Integer;
    :pswitch_48
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 801
    const/4 v2, 0x0

    .line 802
    .restart local v2       #res:I
    goto :goto_1d

    .line 804
    .end local v2           #res:I
    :pswitch_54
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 806
    const/4 v2, 0x0

    .line 807
    .restart local v2       #res:I
    goto :goto_1d

    .line 792
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_12
        :pswitch_48
        :pswitch_54
    .end packed-switch
.end method

.method public getLimitOfOutgoingSms(I)I
    .registers 9
    .parameter "type"

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 445
    const/4 v1, 0x0

    .line 447
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p1, :pswitch_data_58

    .line 464
    const/4 v2, -0x1

    .line 473
    :cond_8
    return v2

    .line 449
    :pswitch_9
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 451
    const/4 v2, 0x0

    .line 466
    .local v2, res:I
    :goto_14
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 467
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 468
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_3a

    if-nez v2, :cond_20

    .line 469
    :cond_3a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_20

    .line 454
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #res:I
    .end local v3           #value:Ljava/lang/Integer;
    :pswitch_3f
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 456
    const/4 v2, 0x0

    .line 457
    .restart local v2       #res:I
    goto :goto_14

    .line 459
    .end local v2           #res:I
    :pswitch_4b
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 461
    const/4 v2, 0x0

    .line 462
    .restart local v2       #res:I
    goto :goto_14

    .line 447
    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_9
        :pswitch_3f
        :pswitch_4b
    .end packed-switch
.end method

.method public getOutgoingCallRestriction(Z)Ljava/lang/String;
    .registers 4
    .parameter "allAdmins"

    .prologue
    .line 95
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingCallRestriction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    .line 97
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_14

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_13
    return-object v0

    :cond_14
    const-string v0, "outgoingPattern"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public getOutgoingSmsRestriction(Z)Ljava/lang/String;
    .registers 3
    .parameter "allAdmins"

    .prologue
    .line 291
    const-string v0, "smsRestrictionOutgoingPattern"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLimitNumberOfCallsEnabled()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 702
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 703
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_d

    .line 715
    :cond_c
    :goto_c
    return v3

    .line 706
    :cond_d
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "limitCallEnable"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 708
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 709
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 710
    .local v0, enable:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 711
    const/4 v3, 0x1

    goto :goto_c
.end method

.method public isLimitNumberOfSmsEnabled()Z
    .registers 7

    .prologue
    .line 367
    iget-object v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "PHONERESTRICTION"

    const-string v5, "limitSmsEnable"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 369
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_28

    .line 370
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 371
    .local v0, enable:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 372
    const/4 v3, 0x1

    .line 376
    .end local v0           #enable:Ljava/lang/Boolean;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_27
    return v3

    :cond_28
    const/4 v3, 0x0

    goto :goto_27
.end method

.method public removeIncomingCallRestriction()Z
    .registers 3

    .prologue
    .line 118
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.removeIncomingCallRestriction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setIncomingCallRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeIncomingSmsRestriction()Z
    .registers 2

    .prologue
    .line 306
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeOutgoingCallRestriction()Z
    .registers 3

    .prologue
    .line 113
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.removeOutgoingCallRestriction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeOutgoingSmsRestriction()Z
    .registers 2

    .prologue
    .line 301
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resetCallsCount()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 901
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    .line 902
    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 911
    :goto_d
    return v0

    .line 905
    :cond_e
    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "incomingCallCountDay"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 906
    .local v0, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "outgoingCallCountDay"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 907
    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "incomingCallCountWeek"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 908
    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "outgoingCallCountWeek"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 909
    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "incomingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 910
    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "outgoingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 911
    goto :goto_d
.end method

.method public resetDataCallLimitCounter()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1062
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    .line 1063
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "dataCallBytesCountByDay"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1065
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "dataCallBytesCountByWeek"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 1067
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "dataCallByteCountByMonth"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 1069
    return v0
.end method

.method public resetSmsCount()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 380
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    .line 381
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "incomingSmsCountDay"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 382
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "outgoingSmsCountDay"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 383
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "incomingSmsCountWeek"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 384
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "outgoingSmsCountWeek"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 385
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "incomingSmsCountMonth"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 386
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "outgoingSmsCountMonth"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 387
    return v0
.end method

.method public setDataCallLimitEnabled(Z)Z
    .registers 12
    .parameter "status"

    .prologue
    const/4 v8, 0x0

    .line 972
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v1

    .line 973
    .local v1, callingUid:I
    const/4 v2, 0x1

    .line 974
    .local v2, ret:Z
    if-eqz p1, :cond_52

    iget-boolean v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v7, :cond_52

    .line 975
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->resetDataCallLimitCounter()Z

    .line 976
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 977
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 978
    const/16 v7, 0xc

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 979
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 980
    const/16 v7, 0xe

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 981
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 982
    .local v3, time:J
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "dataCallDateDay"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 984
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "dataCallDateWeek"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 986
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "dataCallDateMonth"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 989
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v3           #time:J
    :cond_52
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "PHONERESTRICTION"

    const-string v9, "enableLimitDataCall"

    invoke-virtual {v7, v1, v8, v9, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    and-int/2addr v2, v7

    .line 991
    if-eqz v2, :cond_7e

    .line 992
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getDataCallLimitEnabled()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 993
    iget-boolean v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v7, :cond_73

    .line 994
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 995
    .local v5, token:J
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->restorePacketDataNetworkSetting()Z

    .line 996
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 998
    .end local v5           #token:J
    :cond_73
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/app/enterprise/DeviceInventory;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/DeviceInventory;->dataUsageTimerActivation()V

    .line 1000
    :cond_7e
    return v2
.end method

.method public setEmergencyCallOnly(Z)Z
    .registers 6
    .parameter "enable"

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 239
    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 240
    const/4 v1, 0x0

    .line 242
    :goto_d
    return v1

    :cond_e
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "emergencyCallOnly"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_d
.end method

.method public setIncomingCallRestriction(Ljava/lang/String;)Z
    .registers 6
    .parameter "pattern"

    .prologue
    .line 150
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, ">>> PhoneRestrictionPolicy.setIncomingCallRestriction()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 152
    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_15

    .line 153
    const/4 v1, 0x0

    .line 155
    :goto_14
    return v1

    :cond_15
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "incomingPattern"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_14
.end method

.method public setIncomingSmsRestriction(Ljava/lang/String;)Z
    .registers 6
    .parameter "pattern"

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 337
    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "smsRestrictionIncomingPattern"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setLimitOfDataCalls(JJJ)Z
    .registers 14
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    .line 1018
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v1

    .line 1019
    .local v1, callingUid:I
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByDay"

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v6

    .line 1021
    .local v6, ret:Z
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByWeek"

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1023
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByMonth"

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1025
    return v6
.end method

.method public setLimitOfIncomingCalls(III)Z
    .registers 11
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 720
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 721
    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_f

    .line 728
    :goto_e
    return v3

    .line 724
    :cond_f
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByDay"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 726
    .local v1, ret:Z
    if-eqz v1, :cond_38

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByWeek"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_38

    move v1, v2

    .line 728
    :goto_28
    if-eqz v1, :cond_3a

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByMonth"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3a

    :goto_36
    move v3, v2

    goto :goto_e

    :cond_38
    move v1, v3

    .line 726
    goto :goto_28

    :cond_3a
    move v2, v3

    .line 728
    goto :goto_36
.end method

.method public setLimitOfIncomingSms(III)Z
    .registers 11
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 391
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 392
    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByDay"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 394
    .local v1, ret:Z
    if-eqz v1, :cond_2e

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByWeek"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2e

    move v1, v2

    .line 396
    :goto_1f
    if-eqz v1, :cond_30

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByMonth"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_30

    :goto_2d
    return v2

    :cond_2e
    move v1, v3

    .line 394
    goto :goto_1f

    :cond_30
    move v2, v3

    .line 396
    goto :goto_2d
.end method

.method public setLimitOfOutgoingCalls(III)Z
    .registers 11
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 772
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 773
    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_f

    .line 780
    :goto_e
    return v3

    .line 776
    :cond_f
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByDay"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 778
    .local v1, ret:Z
    if-eqz v1, :cond_38

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByWeek"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_38

    move v1, v2

    .line 780
    :goto_28
    if-eqz v1, :cond_3a

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByMonth"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3a

    :goto_36
    move v3, v2

    goto :goto_e

    :cond_38
    move v1, v3

    .line 778
    goto :goto_28

    :cond_3a
    move v2, v3

    .line 780
    goto :goto_36
.end method

.method public setLimitOfOutgoingSms(III)Z
    .registers 11
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 434
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 435
    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByDay"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 437
    .local v1, ret:Z
    if-eqz v1, :cond_2e

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByWeek"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2e

    move v1, v2

    .line 439
    :goto_1f
    if-eqz v1, :cond_30

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByMonth"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_30

    :goto_2d
    return v2

    :cond_2e
    move v1, v3

    .line 437
    goto :goto_1f

    :cond_30
    move v2, v3

    .line 439
    goto :goto_2d
.end method

.method public setOutgoingCallRestriction(Ljava/lang/String;)Z
    .registers 6
    .parameter "pattern"

    .prologue
    .line 141
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, ">>> PhoneRestrictionPolicy.setOutgoingCallRestriction()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 143
    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_15

    .line 144
    const/4 v1, 0x0

    .line 146
    :goto_14
    return v1

    :cond_15
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "outgoingPattern"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_14
.end method

.method public setOutgoingSmsRestriction(Ljava/lang/String;)Z
    .registers 6
    .parameter "pattern"

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 330
    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "smsRestrictionOutgoingPattern"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public updateDataLimitState()V
    .registers 2

    .prologue
    .line 1313
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforceSystemUser()V

    .line 1314
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getDataCallLimitEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 1315
    return-void
.end method

.method public updateDateAndDataCallCounters(J)V
    .registers 16
    .parameter "bytes"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1160
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforceSystemUser()V

    .line 1162
    iget-boolean v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v6, :cond_c

    .line 1239
    :goto_b
    return-void

    .line 1167
    :cond_c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1168
    .local v0, calendarCurrent:Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1169
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1170
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1171
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1174
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1176
    .local v1, calendarDay:Ljava/util/Calendar;
    :try_start_28
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallDateDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_37} :catch_110

    .line 1181
    :goto_37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1183
    .local v3, calendarWeek:Ljava/util/Calendar;
    :try_start_3b
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallDateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_4a} :catch_10d

    .line 1188
    :goto_4a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1190
    .local v2, calendarMonth:Ljava/util/Calendar;
    :try_start_4e
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallDateMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_5d} :catch_10a

    .line 1195
    :goto_5d
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1198
    .local v4, time:J
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e5

    .line 1199
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallDateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1201
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallBytesCountByDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1205
    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_9b

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_b1

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_b1

    .line 1208
    :cond_9b
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallDateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1210
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallBytesCountByWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1216
    :cond_b1
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_cf

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_e5

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_e5

    .line 1219
    :cond_cf
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallDateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1222
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallByteCountByMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1227
    :cond_e5
    const-wide/16 v6, 0x0

    cmp-long v6, v6, p1

    if-gez v6, :cond_fa

    .line 1228
    const-string v6, "dataCallBytesCountByDay"

    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    .line 1229
    const-string v6, "dataCallBytesCountByWeek"

    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    .line 1230
    const-string v6, "dataCallByteCountByMonth"

    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    .line 1234
    :cond_fa
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->checkDataCallLimit()Z

    move-result v6

    if-eqz v6, :cond_105

    .line 1235
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->blockDataNetwork()Z

    goto/16 :goto_b

    .line 1237
    :cond_105
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->restorePacketDataNetworkSetting()Z

    goto/16 :goto_b

    .line 1192
    .end local v4           #time:J
    :catch_10a
    move-exception v6

    goto/16 :goto_5d

    .line 1185
    .end local v2           #calendarMonth:Ljava/util/Calendar;
    :catch_10d
    move-exception v6

    goto/16 :goto_4a

    .line 1178
    .end local v3           #calendarWeek:Ljava/util/Calendar;
    :catch_110
    move-exception v6

    goto/16 :goto_37
.end method
