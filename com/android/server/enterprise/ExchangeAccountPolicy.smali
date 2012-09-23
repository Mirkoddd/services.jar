.class public Lcom/android/server/enterprise/ExchangeAccountPolicy;
.super Landroid/app/enterprise/IExchangeAccountPolicy$Stub;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/ExchangeAccountPolicy$IntentFieldName;
    }
.end annotation


# static fields
.field private static final RESTART_DELAY:I = 0x1388

.field private static final RESTART_EMAIL_APP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExchangeAccountPolicy"

.field private static final TASK_AUTHORITY:Ljava/lang/String; = "tasks"

.field private static mDeviceId:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mExchangeServiceDisabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mRestartExtendDelay:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-direct {p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;-><init>()V

    .line 37
    iput-boolean v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    .line 38
    iput-boolean v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    .line 129
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1134
    new-instance v3, Lcom/android/server/enterprise/ExchangeAccountPolicy$2;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy$2;-><init>(Lcom/android/server/enterprise/ExchangeAccountPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    .line 110
    iput-object p1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 114
    :try_start_14
    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 115
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.exchange"

    const-string v4, "com.android.exchange.ExchangeService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .local v2, syncMgrCn:Landroid/content/ComponentName;
    if-eqz v1, :cond_38

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_38

    .line 119
    const-string v3, "ExchangeAccountPolicy"

    const-string v4, "Enabling EAS ExchangeService"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_38} :catch_39

    .line 127
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #syncMgrCn:Landroid/content/ComponentName;
    :cond_38
    :goto_38
    return-void

    .line 124
    :catch_39
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Constructor EX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    sput-object p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/ExchangeAccountPolicy;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/ExchangeAccountPolicy;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/ExchangeAccountPolicy;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/enterprise/ExchangeAccountPolicy;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    return p1
.end method

.method private enforceExchangeAccountPermission()I
    .registers 3

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private fillInExchangeAccountData(Lcom/android/server/enterprise/AccountMetaData;)Landroid/app/enterprise/Account;
    .registers 13
    .parameter "info"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    .line 939
    new-instance v0, Landroid/app/enterprise/Account;

    invoke-direct {v0}, Landroid/app/enterprise/Account;-><init>()V

    .line 941
    .local v0, acc:Landroid/app/enterprise/Account;
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mId:I

    iput v3, v0, Landroid/app/enterprise/Account;->mId:I

    .line 942
    iget-object v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mDisplayName:Ljava/lang/String;

    .line 943
    iget-object v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    .line 944
    const-string v3, "0"

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSyncKey:Ljava/lang/String;

    .line 945
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    iput v3, v0, Landroid/app/enterprise/Account;->mSyncLookback:I

    .line 946
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    iput v3, v0, Landroid/app/enterprise/Account;->mSyncInterval:I

    .line 947
    iput-wide v7, v0, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    .line 948
    iput-wide v7, v0, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    .line 949
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    iput v3, v0, Landroid/app/enterprise/Account;->mFlags:I

    .line 950
    iget-boolean v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:Z

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mIsDefault:Z

    .line 951
    iput-object v6, v0, Landroid/app/enterprise/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 952
    iget-object v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSenderName:Ljava/lang/String;

    .line 953
    iput-object v6, v0, Landroid/app/enterprise/Account;->mRingtoneUri:Ljava/lang/String;

    .line 954
    iget-object v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mProtocolVersion:Ljava/lang/String;

    .line 955
    iput-object v6, v0, Landroid/app/enterprise/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 956
    iget-object v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSignature:Ljava/lang/String;

    .line 957
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mPeakDays:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakDays:I

    .line 958
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mPeakStartMinute:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakStartMinute:I

    .line 959
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mPeakEndMinute:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakEndMinute:I

    .line 960
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mPeakSyncSchedule:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakSyncSchedule:I

    .line 961
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mOffPeakSyncSchedule:I

    iput v3, v0, Landroid/app/enterprise/Account;->mOffPeakSyncSchedule:I

    .line 962
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mRoamingSyncSchedule:I

    iput v3, v0, Landroid/app/enterprise/Account;->mRoamingSyncSchedule:I

    .line 966
    :try_start_58
    new-instance v1, Landroid/accounts/Account;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    const-string v4, "com.android.exchange"

    invoke-direct {v1, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    .local v1, acct:Landroid/accounts/Account;
    const-string v3, "com.android.contacts"

    invoke-static {v1, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncContacts:Z

    .line 970
    const-string v3, "com.android.calendar"

    invoke-static {v1, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncCalendar:Z

    .line 972
    const-string v3, "tasks"

    invoke-static {v1, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncTasks:Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_79} :catch_120

    .line 978
    .end local v1           #acct:Landroid/accounts/Account;
    :goto_79
    iput-boolean v9, v0, Landroid/app/enterprise/Account;->mSyncNotes:Z

    .line 980
    new-instance v3, Landroid/app/enterprise/HostAuth;

    invoke-direct {v3}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    .line 981
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v10, v3, Landroid/app/enterprise/HostAuth;->mId:I

    .line 982
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const-string v4, "eas"

    iput-object v4, v3, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 983
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v4, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v4, v3, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 984
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v9, v3, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 985
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v4, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerFlags:I

    iput v4, v3, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 986
    iget-object v4, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v3, :cond_13f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\\"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_bd
    iput-object v3, v4, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 988
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v4, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v4, v3, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 989
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 990
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-wide v7, v3, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 992
    new-instance v3, Landroid/app/enterprise/HostAuth;

    invoke-direct {v3}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    .line 993
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v10, v3, Landroid/app/enterprise/HostAuth;->mId:I

    .line 994
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const-string v4, "eas"

    iput-object v4, v3, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 995
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v4, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v4, v3, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 996
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v9, v3, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 997
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v4, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerFlags:I

    iput v4, v3, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 998
    iget-object v4, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v3, :cond_143

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\\"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_10f
    iput-object v3, v4, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 1000
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v4, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v4, v3, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 1001
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 1002
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-wide v7, v3, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 1004
    return-object v0

    .line 974
    :catch_120
    move-exception v2

    .line 975
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fillInExchangeAccountData() EX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_79

    .line 986
    .end local v2           #e:Ljava/lang/Exception;
    :cond_13f
    iget-object v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto/16 :goto_bd

    .line 998
    :cond_143
    iget-object v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto :goto_10f
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 133
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 135
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J
    .registers 20
    .parameter "accountMData"
    .parameter "accountId"
    .parameter "doReCreate"
    .parameter "updateField"

    .prologue
    .line 328
    const-wide/16 v2, -0x1

    .line 329
    .local v2, accId:J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 330
    .local v9, token:J
    const/4 v11, 0x1

    iput-boolean v11, p1, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    .line 332
    const/4 v11, 0x1

    move/from16 v0, p4

    if-ne v0, v11, :cond_a0

    .line 333
    :try_start_e
    const-string v11, "Disabling EAS ExchangeService"

    invoke-static {v11}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 334
    iget-object v11, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 335
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/ComponentName;

    const-string v11, "com.android.exchange"

    const-string v12, "com.android.exchange.ExchangeService"

    invoke-direct {v8, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .local v8, syncMgrCn:Landroid/content/ComponentName;
    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v11, v12}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 337
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    .line 340
    iget-object v11, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v11}, Lcom/android/server/enterprise/SettingsUtils;->getCBAAlias(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, alias:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v11}, Lcom/android/server/enterprise/SettingsUtils;->deleteAccount(JLandroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5a

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, v11, v12}, Lcom/android/server/enterprise/SettingsUtils;->addorUpdateAccount(Lcom/android/server/enterprise/AccountMetaData;ZLandroid/content/Context;)J

    move-result-wide v2

    .line 343
    :goto_43
    const-wide/16 v11, -0x1

    cmp-long v11, v2, v11

    if-nez v11, :cond_5d

    .line 344
    const-string v11, "Enabling EAS ExchangeService"

    invoke-static {v11}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 345
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v11, v12}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 347
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z
    :try_end_56
    .catchall {:try_start_e .. :try_end_56} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_56} :catch_7d

    .line 366
    .end local v4           #alias:Ljava/lang/String;
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v8           #syncMgrCn:Landroid/content/ComponentName;
    :cond_56
    :goto_56
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 369
    return-wide v2

    .line 342
    .restart local v4       #alias:Ljava/lang/String;
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    .restart local v8       #syncMgrCn:Landroid/content/ComponentName;
    :cond_5a
    const-wide/16 v2, -0x1

    goto :goto_43

    .line 351
    :cond_5d
    if-eqz v4, :cond_56

    .line 353
    :try_start_5f
    const-string v11, "ExchangeAccountPolicy"

    const-string v12, "updateAccount() :Sending intent to rename"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v6, Landroid/content/Intent;

    const-string v11, "com.android.email.RENAME_CERTIFICATE"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v6, intent:Landroid/content/Intent;
    const-string v11, "accountid"

    invoke-virtual {v6, v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 356
    const-string v11, "alias"

    invoke-virtual {v6, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    iget-object v11, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_7c
    .catchall {:try_start_5f .. :try_end_7c} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_7c} :catch_7d

    goto :goto_56

    .line 363
    .end local v4           #alias:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v8           #syncMgrCn:Landroid/content/ComponentName;
    :catch_7d
    move-exception v5

    .line 364
    .local v5, e:Ljava/lang/Exception;
    :try_start_7e
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAccount() EX : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_7e .. :try_end_9a} :catchall_9b

    goto :goto_56

    .line 366
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_9b
    move-exception v11

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 361
    :cond_a0
    const/4 v11, 0x0

    :try_start_a1
    iget-object v12, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, v11, v12}, Lcom/android/server/enterprise/SettingsUtils;->addorUpdateAccount(Lcom/android/server/enterprise/AccountMetaData;ZLandroid/content/Context;)J
    :try_end_a6
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a6} :catch_7d

    move-result-wide v2

    goto :goto_56
.end method


# virtual methods
.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .registers 50
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "easUser"
    .parameter "easDomain"
    .parameter "syncLookback"
    .parameter "syncInterval"
    .parameter "isDefault"
    .parameter "senderName"
    .parameter "protocolVersion"
    .parameter "signature"
    .parameter "emailNotificationVibrateAlways"
    .parameter "emailNotificationVibrateWhenSilent"
    .parameter "serverAddress"
    .parameter "useSSL"
    .parameter "useTLS"
    .parameter "acceptAllCertificates"
    .parameter "serverPassword"
    .parameter "serverPathPrefix"

    .prologue
    .line 229
    const/16 v19, 0x1e0

    const/16 v20, 0x3fc

    const/16 v21, 0x3e

    const/16 v22, -0x2

    const/16 v23, 0x0

    const/16 v24, 0x3

    const/16 v25, 0x4

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    invoke-virtual/range {v0 .. v30}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->addNewAccount_ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addNewAccount_ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J
    .registers 44
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "easUser"
    .parameter "easDomain"
    .parameter "syncLookback"
    .parameter "syncInterval"
    .parameter "isDefault"
    .parameter "senderName"
    .parameter "protocolVersion"
    .parameter "signature"
    .parameter "emailNotificationVibrateAlways"
    .parameter "emailNotificationVibrateWhenSilent"
    .parameter "serverAddress"
    .parameter "useSSL"
    .parameter "useTLS"
    .parameter "acceptAllCertificates"
    .parameter "serverPassword"
    .parameter "serverPathPrefix"
    .parameter "peakStarttime"
    .parameter "peakEndtime"
    .parameter "peakDays"
    .parameter "offPeak"
    .parameter "roamingSchedule"
    .parameter "retrivalSize"
    .parameter "periodCalendar"
    .parameter "isNotify"
    .parameter "syncContacts"
    .parameter "syncCalendar"
    .parameter "certificate_data"
    .parameter "certificate_password"

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 252
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-static {p2}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 254
    invoke-static/range {p13 .. p13}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p13

    .line 255
    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    .line 256
    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    .line 257
    invoke-static/range {p10 .. p10}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    .line 258
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 259
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 260
    invoke-static/range {p17 .. p17}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p17

    .line 262
    if-eqz p2, :cond_35

    invoke-static {p2}, Lcom/android/server/enterprise/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    if-eqz p13, :cond_35

    if-eqz p9, :cond_35

    if-nez p3, :cond_3f

    .line 264
    :cond_35
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "addNewAccount : Error :: Invalid input parameters."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-wide/16 v7, -0x1

    .line 321
    :goto_3e
    return-wide v7

    .line 269
    :cond_3f
    const/4 v1, 0x1

    move/from16 v0, p11

    if-ne v1, v0, :cond_53

    const/4 v1, 0x1

    move/from16 v0, p12

    if-ne v1, v0, :cond_53

    .line 270
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "addNewAccount : Error :: Invalid input parameters. From the arguments \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-wide/16 v7, -0x1

    goto :goto_3e

    .line 275
    :cond_53
    const-string v4, "eas"

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object/from16 v3, p13

    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/SettingsUtils;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_72

    .line 276
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "addNewAccount : Error :: Account already exists."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-wide/16 v7, -0x1

    goto :goto_3e

    .line 280
    :cond_72
    const-wide/16 v7, 0x0

    .line 281
    .local v7, accId:J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 285
    .local v11, token:J
    :try_start_78
    new-instance v10, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_ACCOUNT_FROM_MDM"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v10, intent:Landroid/content/Intent;
    const-string v1, "user_id"

    invoke-virtual {v10, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v1, "service"

    const-string v2, "eas"

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v1, "server_name"

    move-object/from16 v0, p13

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v1, "user_passwd"

    move-object/from16 v0, p17

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v2, "use_ssl"

    if-eqz p14, :cond_13d

    const/4 v1, 0x1

    :goto_9e
    invoke-virtual {v10, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const-string v2, "trust_all"

    if-eqz p16, :cond_140

    const/4 v1, 0x1

    :goto_a6
    invoke-virtual {v10, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const-string v1, "domain"

    move-object/from16 v0, p4

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v1, "peak_starttime"

    move/from16 v0, p19

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    const-string v1, "peak_endtime"

    move/from16 v0, p20

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string v1, "peak_days"

    move/from16 v0, p21

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    const-string v1, "peak"

    move/from16 v0, p6

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const-string v1, "off_peak"

    move/from16 v0, p22

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    const-string v1, "roaming_schedule"

    move/from16 v0, p23

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    const-string v1, "period_email"

    move/from16 v0, p5

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const-string v1, "retrival_size"

    move/from16 v0, p24

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    const-string v1, "period_calendar"

    move/from16 v0, p25

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string v1, "notify"

    move/from16 v0, p26

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    const-string v1, "sync_contacts"

    move/from16 v0, p27

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    const-string v1, "sync_calendar"

    move/from16 v0, p28

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    const-string v1, "account_name"

    invoke-virtual {v10, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v1, "signature"

    move-object/from16 v0, p10

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v1, "vibrate_when_slient"

    move/from16 v0, p12

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    const-string v1, "vibrate"

    move/from16 v0, p11

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    const-string v1, "is_default"

    move/from16 v0, p7

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    const-string v1, "certificate_data"

    move-object/from16 v0, p29

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 311
    const-string v1, "certificate_password"

    move-object/from16 v0, p30

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_138
    .catchall {:try_start_78 .. :try_end_138} :catchall_161
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_138} :catch_143

    .line 318
    .end local v10           #intent:Landroid/content/Intent;
    :goto_138
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3e

    .line 290
    .restart local v10       #intent:Landroid/content/Intent;
    :cond_13d
    const/4 v1, 0x0

    goto/16 :goto_9e

    .line 291
    :cond_140
    const/4 v1, 0x0

    goto/16 :goto_a6

    .line 315
    .end local v10           #intent:Landroid/content/Intent;
    :catch_143
    move-exception v9

    .line 316
    .local v9, e:Ljava/lang/Exception;
    :try_start_144
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNewAccount() EX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_160
    .catchall {:try_start_144 .. :try_end_160} :catchall_161

    goto :goto_138

    .line 318
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_161
    move-exception v1

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public createAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 25
    .parameter "emailAddress"
    .parameter "easUser"
    .parameter "easDomain"
    .parameter "serverAddress"
    .parameter "serverPassword"

    .prologue
    .line 161
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "2.5"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v13, p4

    move-object/from16 v17, p5

    invoke-virtual/range {v0 .. v18}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteAccount(J)Z
    .registers 10
    .parameter "accId"

    .prologue
    .line 1041
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 1042
    const-string v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAccount() :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v4, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v4}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 1044
    .local v0, acc:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_56

    iget-boolean v4, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-eqz v4, :cond_56

    .line 1045
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1047
    .local v2, token:J
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, ">>>>>>>>>>>>>>>>>        deleteAccount(long accId)"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE_ACCOUNT_FROM_MDM"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "user_id"

    iget-object v5, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    const-string v4, "service"

    const-string v5, "eas"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    const-string v4, "server_name"

    iget-object v5, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1052
    iget-object v4, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1054
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1056
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #token:J
    :cond_56
    const/4 v4, 0x1

    return v4
.end method

.method public getAccountDetails(J)Landroid/app/enterprise/Account;
    .registers 9
    .parameter "accId"

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 928
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAccountDetails() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 929
    const/4 v1, 0x0

    .line 930
    .local v1, ret:Landroid/app/enterprise/Account;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 931
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v4}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 932
    .local v0, acc:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_2e

    iget-boolean v4, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-eqz v4, :cond_2e

    .line 933
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->fillInExchangeAccountData(Lcom/android/server/enterprise/AccountMetaData;)Landroid/app/enterprise/Account;

    move-result-object v1

    .line 934
    :cond_2e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 935
    return-object v1
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 10
    .parameter "easDomain"
    .parameter "easUser"
    .parameter "activeSyncHost"

    .prologue
    .line 914
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 916
    const-string v3, "eas"

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/SettingsUtils;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAllEASAccounts()[Landroid/app/enterprise/Account;
    .registers 15

    .prologue
    .line 1014
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 1015
    const-string v11, "getEASAccounts()"

    invoke-static {v11}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 1016
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/Account;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1019
    .local v9, token:J
    :try_start_11
    iget-object v11, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/enterprise/SettingsUtils;->getAccountIds(Landroid/content/Context;)[J

    move-result-object v6

    .line 1020
    .local v6, ids:[J
    if-eqz v6, :cond_54

    .line 1021
    move-object v1, v6

    .local v1, arr$:[J
    array-length v7, v1

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1c
    if-ge v3, v7, :cond_54

    aget-wide v4, v1, v3

    .line 1022
    .local v4, id:J
    iget-object v11, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v11}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 1023
    .local v0, acc:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_34

    iget-boolean v11, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_34

    .line 1024
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->fillInExchangeAccountData(Lcom/android/server/enterprise/AccountMetaData;)Landroid/app/enterprise/Account;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_34} :catch_37

    .line 1021
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1026
    .end local v0           #acc:Lcom/android/server/enterprise/AccountMetaData;
    .end local v1           #arr$:[J
    .end local v3           #i$:I
    .end local v4           #id:J
    .end local v6           #ids:[J
    .end local v7           #len$:I
    :catch_37
    move-exception v2

    .line 1027
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getEASAccounts() EX : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    .end local v2           #e:Ljava/lang/Exception;
    :cond_54
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1030
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6c

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Landroid/app/enterprise/Account;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/app/enterprise/Account;

    check-cast v11, [Landroid/app/enterprise/Account;

    :goto_6b
    return-object v11

    :cond_6c
    const/4 v11, 0x0

    goto :goto_6b
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 11

    .prologue
    .line 1080
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 1081
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    if-eqz v7, :cond_19

    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v7

    const-string v8, "com.android.email"

    invoke-virtual {v7, v8}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 1083
    :cond_19
    const/4 v7, 0x0

    .line 1128
    :goto_1a
    return-object v7

    .line 1085
    :cond_1b
    sget-object v7, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mDeviceId:Ljava/lang/String;

    if-eqz v7, :cond_22

    .line 1086
    sget-object v7, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mDeviceId:Ljava/lang/String;

    goto :goto_1a

    .line 1088
    :cond_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1090
    .local v5, token:J
    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    .line 1091
    .local v4, sync:Ljava/lang/Object;
    monitor-enter v4

    .line 1093
    :try_start_2c
    new-instance v3, Lcom/android/server/enterprise/ExchangeAccountPolicy$1;

    invoke-direct {v3, p0, v4}, Lcom/android/server/enterprise/ExchangeAccountPolicy$1;-><init>(Lcom/android/server/enterprise/ExchangeAccountPolicy;Ljava/lang/Object;)V

    .line 1106
    .local v3, receiver:Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.enterprise.GET_DEVICEID"

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1110
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.email.GET_DEVICEID"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1111
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_49
    .catchall {:try_start_2c .. :try_end_49} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_49} :catch_6a

    .line 1114
    :try_start_49
    sget-object v7, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mDeviceId:Ljava/lang/String;

    if-nez v7, :cond_59

    .line 1115
    const-string v7, "ExchangeAccountPolicy"

    const-string v8, "Device id is still null, waiting 5 seconds..."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    const-wide/16 v7, 0x1388

    invoke-virtual {v4, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_88
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_59} :catch_65
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_59} :catch_6a

    .line 1122
    :cond_59
    :goto_59
    :try_start_59
    iget-object v7, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_6a

    .line 1126
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #receiver:Landroid/content/BroadcastReceiver;
    :goto_5e
    :try_start_5e
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_88

    .line 1127
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1128
    sget-object v7, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mDeviceId:Ljava/lang/String;

    goto :goto_1a

    .line 1118
    .restart local v1       #filter:Landroid/content/IntentFilter;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #receiver:Landroid/content/BroadcastReceiver;
    :catch_65
    move-exception v0

    .line 1119
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_66
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_59

    .line 1123
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #receiver:Landroid/content/BroadcastReceiver;
    :catch_6a
    move-exception v0

    .line 1124
    .local v0, e:Ljava/lang/Exception;
    :try_start_6b
    const-string v7, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDeviceId() EX : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 1126
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_88
    move-exception v7

    monitor-exit v4
    :try_end_8a
    .catchall {:try_start_6b .. :try_end_8a} :catchall_88

    throw v7
.end method

.method public sendAccountsChangedBroadcast()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1063
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 1064
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/SettingsUtils;->sendAccountsChangedBroadcast(Landroid/content/Context;)V

    .line 1065
    iget-boolean v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    if-nez v0, :cond_1b

    .line 1066
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1072
    :goto_1a
    return-void

    .line 1069
    :cond_1b
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "Delayed Broadcast"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1a
.end method

.method public setAcceptAllCertificates(ZJ)Z
    .registers 12
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 409
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 410
    const-string v0, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAcceptAllCertificates() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 414
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_25

    .line 421
    :cond_24
    :goto_24
    return v4

    .line 418
    :cond_25
    iput-boolean p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 419
    iput-boolean p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 421
    const-wide/16 v6, -0x1

    const-string v5, "trust_all"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_24

    const/4 v4, 0x1

    goto :goto_24
.end method

.method public setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 12
    .parameter "user"
    .parameter "domain"
    .parameter "emailAddress"
    .parameter "host"
    .parameter "accId"

    .prologue
    const-wide/16 v3, -0x1

    .line 499
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 501
    invoke-static {p3}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 502
    invoke-static {p3}, Lcom/android/server/enterprise/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 503
    const/4 p3, 0x0

    .line 505
    :cond_10
    invoke-static {p4}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 506
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 507
    invoke-static {p2}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 509
    if-nez p3, :cond_2a

    if-nez p4, :cond_2a

    if-nez p1, :cond_2a

    .line 510
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "setAccountBaseParameters : Error :: Invalid input parameters."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_29
    :goto_29
    return-wide v3

    .line 514
    :cond_2a
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p5, p6, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 516
    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_29

    .line 520
    iput-object p2, v0, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 522
    if-eqz p3, :cond_38

    .line 523
    iput-object p3, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 525
    :cond_38
    if-eqz p1, :cond_3e

    .line 526
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 527
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 529
    :cond_3e
    if-eqz p4, :cond_29

    .line 530
    iput-object p4, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 531
    iput-object p4, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    goto :goto_29
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .registers 12
    .parameter "accountName"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 774
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 777
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 779
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 781
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_11

    .line 787
    :cond_10
    :goto_10
    return v4

    .line 785
    :cond_11
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 787
    const-wide/16 v6, -0x1

    const-string v5, "account_name"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_10

    const/4 v4, 0x1

    goto :goto_10
.end method

.method public setAlwaysVibrateOnEmailNotification(ZJ)Z
    .registers 13
    .parameter "enable"
    .parameter "accId"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 435
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 436
    const-string v0, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlwaysVibrateOnEmailNotification() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 440
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_26

    .line 452
    :cond_25
    :goto_25
    return v4

    .line 444
    :cond_26
    if-eqz p1, :cond_3c

    .line 445
    iput-boolean v6, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 446
    iput-boolean v4, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 452
    :goto_2c
    const-wide/16 v7, -0x1

    const-string v5, "vibrate"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v7, v2

    if-eqz v0, :cond_25

    move v4, v6

    goto :goto_25

    .line 449
    :cond_3c
    iput-boolean v4, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    goto :goto_2c
.end method

.method public setAsDefaultAccount(J)Z
    .registers 6
    .parameter "accId"

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 759
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsDefaultAccount() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/android/server/enterprise/SettingsUtils;->setAsDefaultAccount(JLandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setClientAuthCert([BLjava/lang/String;J)V
    .registers 12
    .parameter "certData"
    .parameter "password"
    .parameter "accId"

    .prologue
    const/4 v6, 0x1

    .line 642
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 643
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setClientAuthCert() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    if-eqz p1, :cond_26

    if-eqz p2, :cond_26

    const-wide/16 v3, 0x1

    cmp-long v3, p3, v3

    if-gez v3, :cond_27

    .line 660
    :cond_26
    :goto_26
    return-void

    .line 648
    :cond_27
    iput-boolean v6, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    .line 650
    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 651
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 653
    .local v1, token:J
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.email.INSTALL_CERTIFICATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 654
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "password"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    const-string v3, "data"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 656
    const-string v3, "accountid"

    invoke-virtual {v0, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 658
    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 659
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_26
.end method

.method public setDataSyncs(ZZZZJ)Z
    .registers 15
    .parameter "syncCalendar"
    .parameter "syncContacts"
    .parameter "syncTasks"
    .parameter "syncNotes"
    .parameter "accId"

    .prologue
    .line 876
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 879
    iget-object v5, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p5, p6, v5}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 881
    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v0, :cond_d

    .line 882
    const/4 v5, 0x0

    .line 898
    :goto_c
    return v5

    .line 885
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 888
    .local v3, token:J
    :try_start_11
    new-instance v1, Landroid/accounts/Account;

    iget-object v5, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v6, "com.android.exchange"

    invoke-direct {v1, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    .local v1, acct:Landroid/accounts/Account;
    const-string v5, "com.android.contacts"

    invoke-static {v1, v5, p2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 891
    const-string v5, "com.android.calendar"

    invoke-static {v1, v5, p1}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 892
    const-string v5, "tasks"

    invoke-static {v1, v5, p3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_2e

    .line 897
    .end local v1           #acct:Landroid/accounts/Account;
    :goto_29
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 898
    const/4 v5, 0x1

    goto :goto_c

    .line 894
    :catch_2e
    move-exception v2

    .line 895
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDataSyncs() EX : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

.method public setPassword(Ljava/lang/String;J)Z
    .registers 12
    .parameter "password"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 547
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 549
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 551
    if-nez p1, :cond_12

    .line 552
    const-string v0, "ExchangeAccountPolicy"

    const-string v2, "setPassword : Error :: Invalid input parameter."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_11
    :goto_11
    return v4

    .line 556
    :cond_12
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 558
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_11

    .line 562
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 563
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 565
    const-wide/16 v6, -0x1

    const-string v5, "user_passwd"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_11

    const/4 v4, 0x1

    goto :goto_11
.end method

.method public setPastDaysToSync(IJ)Z
    .registers 13
    .parameter "pastDaysToSync"
    .parameter "accId"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 673
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 674
    const-string v0, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPastDaysToSync() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    if-gt v6, p1, :cond_22

    const/4 v0, 0x6

    if-ge v0, p1, :cond_2a

    .line 677
    :cond_22
    const-string v0, "ExchangeAccountPolicy"

    const-string v2, "setPastDaysToSync : Error :: Invalid input parameter."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_29
    :goto_29
    return v4

    .line 681
    :cond_2a
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 683
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_29

    .line 687
    iput p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    .line 689
    const-wide/16 v7, -0x1

    const-string v5, "period_email"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v7, v2

    if-eqz v0, :cond_29

    move v4, v6

    goto :goto_29
.end method

.method public setProtocolVersion(Ljava/lang/String;J)Z
    .registers 8
    .parameter "protocolVersion"
    .parameter "accId"

    .prologue
    const/4 v3, 0x0

    .line 579
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 582
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 584
    if-nez p1, :cond_12

    .line 585
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "setProtocolVersion : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_11
    :goto_11
    return v3

    .line 589
    :cond_12
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 590
    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_11

    .line 594
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    goto :goto_11
.end method

.method public setSSL(ZJ)Z
    .registers 12
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 383
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 384
    const-string v0, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSSL() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 388
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_25

    .line 395
    :cond_24
    :goto_24
    return v4

    .line 392
    :cond_25
    iput-boolean p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:Z

    .line 393
    iput-boolean p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 395
    const-wide/16 v6, -0x1

    const-string v5, "use_ssl"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_24

    const/4 v4, 0x1

    goto :goto_24
.end method

.method public setSenderName(Ljava/lang/String;J)Z
    .registers 7
    .parameter "senderName"
    .parameter "accId"

    .prologue
    const/4 v2, 0x0

    .line 733
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 736
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 738
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 740
    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v0, :cond_11

    .line 747
    :goto_10
    return v2

    .line 744
    :cond_11
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    goto :goto_10
.end method

.method public setSignature(Ljava/lang/String;J)Z
    .registers 13
    .parameter "signature"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 609
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 613
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.android.email.SIGNATURE_UPDATED"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 614
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "signature"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 618
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 620
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 622
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_22

    .line 628
    :cond_21
    :goto_21
    return v4

    .line 626
    :cond_22
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 628
    const-wide/16 v7, -0x1

    const-string v5, "signature"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v7, v2

    if-eqz v0, :cond_21

    const/4 v4, 0x1

    goto :goto_21
.end method

.method public setSilentVibrateOnEmailNotification(ZJ)Z
    .registers 13
    .parameter "enable"
    .parameter "accId"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 466
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 467
    const-string v0, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSilentVibrateOnEmailNotification() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 471
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_26

    .line 483
    :cond_25
    :goto_25
    return v4

    .line 475
    :cond_26
    if-eqz p1, :cond_3c

    .line 476
    iput-boolean v6, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 477
    iput-boolean v4, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 483
    :goto_2c
    const-wide/16 v7, -0x1

    const-string v5, "vibrate_when_slient"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v7, v2

    if-eqz v0, :cond_25

    move v4, v6

    goto :goto_25

    .line 480
    :cond_3c
    iput-boolean v4, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    goto :goto_2c
.end method

.method public setSyncInterval(IJ)Z
    .registers 9
    .parameter "syncInterval"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 705
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 706
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSyncInterval() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 710
    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v0, :cond_25

    .line 720
    :goto_24
    return v4

    .line 716
    :cond_25
    iput p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    .line 717
    iput p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOffPeakSyncSchedule:I

    goto :goto_24
.end method

.method public setSyncPeakTimings(IIIJ)Z
    .registers 14
    .parameter "peakDays"
    .parameter "peakStartMinute"
    .parameter "peakEndMinute"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 804
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 807
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p4, p5, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 809
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_d

    .line 817
    :cond_c
    :goto_c
    return v4

    .line 813
    :cond_d
    iput p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mPeakDays:I

    .line 814
    iput p2, v1, Lcom/android/server/enterprise/AccountMetaData;->mPeakStartMinute:I

    .line 815
    iput p3, v1, Lcom/android/server/enterprise/AccountMetaData;->mPeakEndMinute:I

    .line 817
    const-wide/16 v6, -0x1

    const-string v5, "peak_days"

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_c

    const/4 v4, 0x1

    goto :goto_c
.end method

.method public setSyncSchedules(IIIJ)Z
    .registers 15
    .parameter "peakSyncSchedule"
    .parameter "offPeakSyncSchedule"
    .parameter "roamingSyncSchedule"
    .parameter "accId"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 844
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 847
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p4, p5, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 849
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_e

    .line 857
    :goto_d
    return v4

    .line 853
    :cond_e
    iput p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mPeakSyncSchedule:I

    .line 854
    iput p2, v1, Lcom/android/server/enterprise/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 855
    if-ne p3, v6, :cond_27

    move v0, v6

    :goto_15
    iput v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mRoamingSyncSchedule:I

    .line 857
    const-wide/16 v7, -0x1

    const-string v5, "peak"

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v7, v2

    if-eqz v0, :cond_29

    :goto_25
    move v4, v6

    goto :goto_d

    :cond_27
    move v0, v4

    .line 855
    goto :goto_15

    :cond_29
    move v6, v4

    .line 857
    goto :goto_25
.end method
