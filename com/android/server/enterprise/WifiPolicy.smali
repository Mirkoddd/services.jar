.class public Lcom/android/server/enterprise/WifiPolicy;
.super Landroid/app/enterprise/IWifiPolicy$Stub;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;
    }
.end annotation


# static fields
.field private static final ANONYMOUS_IDENTITY:Ljava/lang/String; = "anonymous_identity"

.field private static final CA_CERT:Ljava/lang/String; = "ca_cert"

.field private static final CLIENT_CERT:Ljava/lang/String; = "client_cert"

.field private static final EAP:Ljava/lang/String; = "eap"

.field private static final IDENTITY:Ljava/lang/String; = "identity"

.field private static final IP_REGEX:Ljava/lang/String; = "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final PHASE2:Ljava/lang/String; = "phase2"

.field private static final PRIVATE_KEY:Ljava/lang/String; = "private_key"

.field private static final TAG:Ljava/lang/String; = "WifiPolicyService"

.field private static isBootCompleted:Z


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mSecurityLevel:[Ljava/lang/String;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/WifiPolicy;->isBootCompleted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-direct {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;-><init>()V

    .line 75
    iput-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 77
    iput-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->toast:Landroid/widget/Toast;

    .line 86
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Open"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "WEP"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "WPA/WPA2 PSK"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "802.1x EAP-LEAP"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "802.1x EAP-FAST"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "802.1x EAP-PEAP"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "802.1x EAP-TTLS"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "802.1x EAP-TLS"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    .line 124
    iput-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2566
    new-instance v1, Lcom/android/server/enterprise/WifiPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/WifiPolicy$2;-><init>(Lcom/android/server/enterprise/WifiPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    iput-object p1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    .line 103
    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "edm.intent.action.lock"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/WifiPolicy;->edmAddOrUpdateTask(Landroid/net/wifi/WifiConfiguration;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/WifiPolicy;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->edmUpdateConfiguredNetworks()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/WifiPolicy;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/WifiPolicy;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->updateWpsBlockedNetworks()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/server/enterprise/WifiPolicy;->isBootCompleted:Z

    return p0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 9
    .parameter "config"

    .prologue
    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 178
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 179
    .local v2, token:J
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 180
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v5, v6, :cond_2a

    .line 182
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    if-ne v5, v6, :cond_1a

    move v1, v4

    .line 183
    .local v1, ret:Z
    :cond_1a
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 190
    :goto_21
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 194
    :goto_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    return v1

    .line 186
    .end local v1           #ret:Z
    :cond_2a
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 187
    .local v0, netId:I
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v0, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 188
    if-ne v0, v6, :cond_38

    move v1, v4

    .restart local v1       #ret:Z
    :cond_38
    goto :goto_21

    .line 192
    .end local v0           #netId:I
    .end local v1           #ret:Z
    :cond_39
    const/4 v1, 0x1

    .restart local v1       #ret:Z
    goto :goto_26
.end method

.method private addToBlocked(ILjava/lang/String;)V
    .registers 5
    .parameter "callingUid"
    .parameter "ssid"

    .prologue
    .line 2008
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 2010
    .local v0, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2011
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2012
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->saveBlockedList(ILjava/util/Set;)V

    .line 2014
    :cond_10
    return-void
.end method

.method private asyncDisableNetwork(I)V
    .registers 4
    .parameter "netId"

    .prologue
    .line 2620
    sget-boolean v1, Lcom/android/server/enterprise/WifiPolicy;->isBootCompleted:Z

    if-eqz v1, :cond_15

    .line 2621
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.disable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2622
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "netId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2623
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2625
    .end local v0           #intent:Landroid/content/Intent;
    :cond_15
    return-void
.end method

.method private asyncEnableNetwork(IZ)V
    .registers 5
    .parameter "netId"
    .parameter "enableOthers"

    .prologue
    .line 2611
    sget-boolean v1, Lcom/android/server/enterprise/WifiPolicy;->isBootCompleted:Z

    if-eqz v1, :cond_1a

    .line 2612
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.enable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2613
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "netId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2614
    const-string v1, "enableOthers"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2615
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2617
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1a
    return-void
.end method

.method private computeprefixLength(Ljava/net/InetAddress;)I
    .registers 9
    .parameter "mask"

    .prologue
    .line 2555
    const/4 v2, 0x0

    .line 2556
    .local v2, count:I
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_7
    if-ge v4, v5, :cond_1d

    aget-byte v1, v0, v4

    .line 2557
    .local v1, b:B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_c
    const/16 v6, 0x8

    if-ge v3, v6, :cond_1a

    .line 2558
    const/4 v6, 0x1

    shl-int/2addr v6, v3

    and-int/2addr v6, v1

    if-eqz v6, :cond_17

    .line 2559
    add-int/lit8 v2, v2, 0x1

    .line 2557
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2556
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 2563
    .end local v1           #b:B
    .end local v3           #i:I
    :cond_1d
    return v2
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "string"

    .prologue
    const/16 v2, 0x22

    .line 2066
    if-nez p0, :cond_6

    .line 2067
    const/4 p0, 0x0

    .line 2073
    .end local p0
    .local v0, length:I
    :cond_5
    :goto_5
    return-object p0

    .line 2069
    .end local v0           #length:I
    .restart local p0
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2070
    .restart local v0       #length:I
    const/4 v1, 0x1

    if-le v0, v1, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1c

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_5

    .line 2073
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5
.end method

.method private disableNetwork(Ljava/lang/String;)Z
    .registers 6
    .parameter "ssid"

    .prologue
    .line 1901
    const/4 v0, 0x1

    .line 1902
    .local v0, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1903
    .local v1, token:J
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1904
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkIdBySSID(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/WifiPolicy;->asyncDisableNetwork(I)V

    .line 1906
    :cond_12
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1907
    return v0
.end method

.method private edmAddOrUpdateTask(Landroid/net/wifi/WifiConfiguration;I)V
    .registers 10
    .parameter "config"
    .parameter "adminUid"

    .prologue
    const/4 v6, 0x0

    .line 2236
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2237
    .local v3, security:Ljava/lang/String;
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2238
    .local v0, enterprise:Landroid/net/wifi/WifiConfiguration;
    const-string v4, "WEP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 2239
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 2240
    .local v2, index:I
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v6

    if-eqz v4, :cond_36

    .line 2241
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, v4, v2

    .line 2242
    if-eqz v2, :cond_36

    .line 2243
    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 2244
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, v4, v2

    .line 2245
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, v6

    .line 2262
    .end local v2           #index:I
    :cond_36
    :goto_36
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 2264
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v5, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-eq v4, v5, :cond_49

    .line 2265
    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 2268
    :cond_49
    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    .line 2275
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b6

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Open"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 2277
    const/4 v1, 0x0

    .local v1, i:I
    :goto_67
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_b6

    .line 2278
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_78

    .line 2279
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v1

    .line 2277
    :cond_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 2248
    .end local v1           #i:I
    :cond_7b
    const-string v4, "WPA/WPA2 PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 2249
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v4, :cond_36

    .line 2252
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_36

    .line 2254
    :cond_8c
    const-string v4, "802.1x EAP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2255
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_95
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    array-length v4, v4

    if-ge v1, v4, :cond_36

    .line 2256
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b3

    .line 2257
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v4, v4, v1

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2255
    :cond_b3
    add-int/lit8 v1, v1, 0x1

    goto :goto_95

    .line 2283
    .end local v1           #i:I
    :cond_b6
    return-void
.end method

.method private declared-synchronized edmUpdateConfiguredNetworks()V
    .registers 13

    .prologue
    .line 2142
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceSystemUser()V

    .line 2143
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_52

    if-nez v10, :cond_a

    .line 2197
    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    .line 2146
    :cond_a
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllEnterpriseLastSSIDs()Ljava/util/List;

    move-result-object v6

    .line 2150
    .local v6, lastSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->hasAnyActiveAdmin()Z

    move-result v10

    if-nez v10, :cond_1e

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    .line 2155
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllEnterpriseNetworks()Ljava/util/List;

    move-result-object v2

    .line 2156
    .local v2, enterpriseConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 2157
    .local v0, confList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllEnterpriseSSIDs()Ljava/util/List;

    move-result-object v4

    .line 2158
    .local v4, enterpriseSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2161
    .local v3, enterpriseNetIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_55

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2162
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_35

    .line 2163
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 2164
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_a .. :try_end_51} :catchall_52

    goto :goto_35

    .line 2142
    .end local v0           #confList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #enterpriseConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3           #enterpriseNetIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4           #enterpriseSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #lastSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_52
    move-exception v10

    monitor-exit p0

    throw v10

    .line 2169
    .restart local v0       #confList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v2       #enterpriseConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v3       #enterpriseNetIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4       #enterpriseSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #lastSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_55
    :try_start_55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_59
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ab

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2170
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2172
    .local v8, notQuotedSSID:Ljava/lang/String;
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7d

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_89

    :cond_7d
    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_91

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_91

    .line 2176
    :cond_89
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v11, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    goto :goto_59

    .line 2180
    :cond_91
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/app/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/WifiPolicyCache;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11}, Landroid/app/enterprise/WifiPolicyCache;->isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v10

    if-nez v10, :cond_a4

    .line 2181
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/WifiPolicy;->asyncDisableNetwork(I)V

    goto :goto_59

    .line 2184
    :cond_a4
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/server/enterprise/WifiPolicy;->asyncEnableNetwork(IZ)V

    goto :goto_59

    .line 2189
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v8           #notQuotedSSID:Ljava/lang/String;
    :cond_ab
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 2192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2193
    .local v7, newSSIDsList:Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_dc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2194
    .local v9, value:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b9

    .line 2196
    .end local v9           #value:Ljava/lang/String;
    :cond_dc
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/WifiPolicy;->updateNetworkLastSSID(Ljava/lang/String;)Z
    :try_end_e3
    .catchall {:try_start_55 .. :try_end_e3} :catchall_52

    goto/16 :goto_8
.end method

.method private enforceSystemUser()V
    .registers 3

    .prologue
    .line 144
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 145
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_12
    return-void
.end method

.method private enforceWifiPermission()I
    .registers 3

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_WIFI"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceWifiPermission(Ljava/lang/String;)I
    .registers 5
    .parameter "ssid"

    .prologue
    .line 1219
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_d

    .line 1220
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1222
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string v2, "networkSSID"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_c
.end method

.method private getAdminUid()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 162
    .local v1, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "ADMIN"

    const-string v4, "adminUid"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 164
    .local v0, adminUid:I
    if-eq v0, v1, :cond_37

    .line 165
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller is not an active admin, adminUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_37
    return v1
.end method

.method private getAllBlockedList()Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1966
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI"

    const-string v7, "blockedSSIDList"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1968
    .local v4, var:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1970
    .local v3, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1971
    .local v2, list:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1972
    .local v0, array:[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    .line 1974
    .end local v0           #array:[Ljava/lang/String;
    .end local v2           #list:Ljava/lang/String;
    :cond_2d
    return-object v3
.end method

.method private getAllEnterpriseLastSSIDs()Ljava/util/List;
    .registers 10
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
    .line 2305
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2306
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "networkLastSSID"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2307
    .local v4, list:Ljava/lang/String;
    if-eqz v4, :cond_22

    .line 2308
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2309
    .local v2, lastSSIDs:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_18
    if-ge v1, v3, :cond_22

    aget-object v6, v0, v1

    .line 2310
    .local v6, value:Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2309
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 2313
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #lastSSIDs:[Ljava/lang/String;
    .end local v3           #len$:I
    .end local v6           #value:Ljava/lang/String;
    :cond_22
    return-object v5
.end method

.method private getAllEnterpriseNetworks()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2286
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "networkSSID"

    aput-object v5, v3, v4

    .line 2289
    .local v3, ret:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI_CONF"

    invoke-virtual {v4, v5, v6, v6, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2291
    .local v1, cv:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2292
    .local v0, config:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_48

    .line 2293
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "adminUid"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v6, "networkSSID"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2292
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 2296
    :cond_48
    return-object v0
.end method

.method private getAllEnterpriseSSIDs()Ljava/util/List;
    .registers 4
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
    .line 2300
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string v2, "networkSSID"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getBlockedList(I)Ljava/util/Set;
    .registers 12
    .parameter "callingUid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1979
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "WIFI"

    const-string v9, "blockedSSIDList"

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1981
    .local v6, var:Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1982
    .local v3, l:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_24

    .line 1983
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1984
    .local v1, array:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1a
    if-ge v2, v4, :cond_24

    aget-object v5, v0, v2

    .line 1985
    .local v5, s:Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1984
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1988
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #array:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #s:Ljava/lang/String;
    :cond_24
    return-object v3
.end method

.method private getConfigByNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .registers 10
    .parameter "netId"

    .prologue
    .line 1946
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1947
    .local v5, token:J
    const/4 v3, 0x0

    .line 1948
    .local v3, ret:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v7, :cond_b

    move-object v4, v3

    .line 1959
    .end local v3           #ret:Landroid/net/wifi/WifiConfiguration;
    .local v4, ret:Landroid/net/wifi/WifiConfiguration;
    :goto_a
    return-object v4

    .line 1951
    .end local v4           #ret:Landroid/net/wifi/WifiConfiguration;
    .restart local v3       #ret:Landroid/net/wifi/WifiConfiguration;
    :cond_b
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1952
    .local v2, networkList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1953
    .local v0, cfg:Landroid/net/wifi/WifiConfiguration;
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v7, p1, :cond_15

    .line 1954
    move-object v3, v0

    .line 1958
    .end local v0           #cfg:Landroid/net/wifi/WifiConfiguration;
    :cond_26
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v4, v3

    .line 1959
    .end local v3           #ret:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #ret:Landroid/net/wifi/WifiConfiguration;
    goto :goto_a
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 128
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 131
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEnterpriseFieldIndex(Ljava/lang/String;)I
    .registers 5
    .parameter "field"

    .prologue
    .line 697
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 698
    .local v1, wifiCfg:Landroid/net/wifi/WifiConfiguration;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    array-length v2, v2

    if-ge v0, v2, :cond_1d

    .line 699
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 703
    .end local v0           #i:I
    :goto_19
    return v0

    .line 698
    .restart local v0       #i:I
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 703
    :cond_1d
    const/4 v0, -0x1

    goto :goto_19
.end method

.method private getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .parameter "ssid"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 677
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_10

    .line 678
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 684
    .local v0, callingUid:I
    :goto_d
    if-gez p2, :cond_1b

    .line 692
    :cond_f
    :goto_f
    return-object v2

    .line 680
    .end local v0           #callingUid:I
    :cond_10
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "WIFI_CONF"

    const-string v5, "networkSSID"

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #callingUid:I
    goto :goto_d

    .line 688
    :cond_1b
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 689
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 690
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    goto :goto_f
.end method

.method static getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .registers 2
    .parameter "config"

    .prologue
    .line 2628
    invoke-static {p0}, Landroid/app/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method private getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "ssid"
    .parameter "addrType"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1274
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1276
    .local v0, callingUid:I
    if-nez p1, :cond_b

    .line 1292
    :cond_a
    :goto_a
    return-object v4

    .line 1279
    :cond_b
    new-array v1, v6, [Ljava/lang/String;

    const-string v5, "adminUid"

    aput-object v5, v1, v8

    const-string v5, "networkSSID"

    aput-object v5, v1, v7

    .line 1282
    .local v1, col:[Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 1285
    .local v3, val:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    new-array v7, v7, [Ljava/lang/String;

    aput-object p2, v7, v8

    invoke-virtual {v5, v6, v1, v3, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1289
    .local v2, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 1290
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v4, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_a
.end method

.method private getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 10
    .parameter "ssid"

    .prologue
    .line 2321
    const/4 v2, 0x0

    .line 2322
    .local v2, ret:Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2323
    .local v4, token:J
    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_b

    move-object v3, v2

    .line 2335
    .end local v2           #ret:Landroid/net/wifi/WifiConfiguration;
    .local v3, ret:Landroid/net/wifi/WifiConfiguration;
    :goto_a
    return-object v3

    .line 2326
    .end local v3           #ret:Landroid/net/wifi/WifiConfiguration;
    .restart local v2       #ret:Landroid/net/wifi/WifiConfiguration;
    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 2327
    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2328
    .local v0, auxNet:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 2329
    move-object v2, v0

    .line 2334
    .end local v0           #auxNet:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_34
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v3, v2

    .line 2335
    .end local v2           #ret:Landroid/net/wifi/WifiConfiguration;
    .restart local v3       #ret:Landroid/net/wifi/WifiConfiguration;
    goto :goto_a
.end method

.method private getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 29
    .parameter "callingUid"
    .parameter "ssid"

    .prologue
    .line 2418
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v4, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    const-string v24, "adminUid"

    aput-object v24, v4, v23

    const/16 v23, 0x1

    const-string v24, "networkSSID"

    aput-object v24, v4, v23

    .line 2421
    .local v4, col:[Ljava/lang/String;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    .line 2425
    .local v22, val:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "WIFI_CONF"

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 2427
    .local v8, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2428
    .local v5, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v7, 0x0

    .line 2430
    .local v7, cv:Landroid/content/ContentValues;
    if-eqz v8, :cond_54

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5a

    .line 2431
    :cond_54
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2551
    :cond_59
    :goto_59
    return-object v5

    .line 2433
    .restart local v5       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_5a
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #cv:Landroid/content/ContentValues;
    check-cast v7, Landroid/content/ContentValues;

    .line 2437
    .restart local v7       #cv:Landroid/content/ContentValues;
    const-string v23, "networkSSID"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2438
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_80

    .line 2439
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    goto :goto_59

    .line 2441
    .restart local v5       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_80
    const-string v23, "networkBSSID"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 2442
    const-string v23, "networkKeyMgmt"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2444
    const-string v23, "networkAllowedProtos"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 2446
    const-string v23, "networkAuthAlg"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 2449
    const-string v23, "networkAllowedPairwiseCiphers"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 2452
    const-string v23, "networkAllowedGroupProtocols"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 2455
    const-string v23, "networkPSK"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2456
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "networkWEPKey1"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 2457
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const-string v25, "networkWEPKey2"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 2458
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const-string v25, "networkWEPKey3"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 2459
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const-string v25, "networkWEPKey4"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 2460
    const-string v23, "networkWEPKeyId"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 2461
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    const-string v24, "eap"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkEAP"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2463
    const-string v23, "networkPhase2"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_1b3

    .line 2464
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    const-string v24, "phase2"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v24

    aget-object v23, v23, v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "auth="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "networkPhase2"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2468
    :cond_1b3
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    const-string v24, "identity"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkIdentity"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2470
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    const-string v24, "anonymous_identity"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkAnonymousId"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2472
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    const-string v24, "password"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkPassword"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2474
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    const-string v24, "client_cert"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkClientCertification"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2476
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    const-string v24, "private_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkPrivateKey"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2478
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    const-string v24, "ca_cert"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkCaCertificate"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2481
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2482
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 2483
    .local v6, configAux:Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_279

    .line 2484
    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2485
    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 2489
    :cond_279
    const-string v23, "networkStaticIpEnabled"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 2490
    .local v15, ipAssignment:Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_328

    sget-object v23, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_28f
    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 2491
    new-instance v23, Landroid/net/LinkProperties;

    invoke-direct/range {v23 .. v23}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 2492
    const-string v23, "networkStaticIp"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2493
    .local v20, staticIp:Ljava/lang/String;
    const-string v23, "networkStaticGateway"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2494
    .local v19, staticGateway:Ljava/lang/String;
    const-string v23, "networkStaticPrimaryDns"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2495
    .local v17, staticDns1:Ljava/lang/String;
    const-string v23, "networkStaticSecondaryDns"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2496
    .local v18, staticDns2:Ljava/lang/String;
    const-string v23, "networkStaticSubnetMask"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2498
    .local v21, staticSubnetMask:Ljava/lang/String;
    if-eqz v20, :cond_33c

    .line 2500
    :try_start_2c6
    invoke-static/range {v20 .. v20}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    .line 2502
    .local v13, inetAddr:Ljava/net/InetAddress;
    if-eqz v21, :cond_32c

    .line 2503
    invoke-static/range {v21 .. v21}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v14

    .line 2505
    .local v14, inetsubNetAddr:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/WifiPolicy;->computeprefixLength(Ljava/net/InetAddress;)I

    move-result v16

    .line 2509
    .end local v14           #inetsubNetAddr:Ljava/net/InetAddress;
    .local v16, maskLength:I
    :goto_2d6
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    new-instance v24, Landroid/net/LinkAddress;

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-direct {v0, v13, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_2e6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c6 .. :try_end_2e6} :catch_32f

    .line 2519
    .end local v13           #inetAddr:Ljava/net/InetAddress;
    .end local v16           #maskLength:I
    :goto_2e6
    if-eqz v19, :cond_362

    .line 2521
    :try_start_2e8
    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    .line 2522
    .local v12, gatewayAddr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    new-instance v24, Landroid/net/RouteInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v12}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V
    :try_end_2fa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e8 .. :try_end_2fa} :catch_355

    .line 2531
    .end local v12           #gatewayAddr:Ljava/net/InetAddress;
    :goto_2fa
    if-eqz v17, :cond_384

    .line 2533
    :try_start_2fc
    invoke-static/range {v17 .. v17}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 2534
    .local v9, dns1Addr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_309
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2fc .. :try_end_309} :catch_377

    .line 2542
    .end local v9           #dns1Addr:Ljava/net/InetAddress;
    :goto_309
    if-eqz v18, :cond_59

    .line 2544
    :try_start_30b
    invoke-static/range {v18 .. v18}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 2545
    .local v10, dns2Addr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_318
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30b .. :try_end_318} :catch_31a

    goto/16 :goto_59

    .line 2546
    .end local v10           #dns2Addr:Ljava/net/InetAddress;
    :catch_31a
    move-exception v11

    .line 2547
    .local v11, e:Ljava/lang/IllegalArgumentException;
    const-string v23, "WifiPolicyService"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_59

    .line 2490
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    .end local v17           #staticDns1:Ljava/lang/String;
    .end local v18           #staticDns2:Ljava/lang/String;
    .end local v19           #staticGateway:Ljava/lang/String;
    .end local v20           #staticIp:Ljava/lang/String;
    .end local v21           #staticSubnetMask:Ljava/lang/String;
    :cond_328
    sget-object v23, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto/16 :goto_28f

    .line 2507
    .restart local v13       #inetAddr:Ljava/net/InetAddress;
    .restart local v17       #staticDns1:Ljava/lang/String;
    .restart local v18       #staticDns2:Ljava/lang/String;
    .restart local v19       #staticGateway:Ljava/lang/String;
    .restart local v20       #staticIp:Ljava/lang/String;
    .restart local v21       #staticSubnetMask:Ljava/lang/String;
    :cond_32c
    const/16 v16, 0x18

    .restart local v16       #maskLength:I
    goto :goto_2d6

    .line 2510
    .end local v13           #inetAddr:Ljava/net/InetAddress;
    .end local v16           #maskLength:I
    :catch_32f
    move-exception v11

    .line 2511
    .restart local v11       #e:Ljava/lang/IllegalArgumentException;
    const-string v23, "WifiPolicyService"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e6

    .line 2514
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :cond_33c
    const-string v23, "::1"

    invoke-static/range {v23 .. v23}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    .line 2515
    .restart local v13       #inetAddr:Ljava/net/InetAddress;
    const/16 v16, 0x18

    .line 2516
    .restart local v16       #maskLength:I
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    new-instance v24, Landroid/net/LinkAddress;

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-direct {v0, v13, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    goto :goto_2e6

    .line 2523
    .end local v13           #inetAddr:Ljava/net/InetAddress;
    .end local v16           #maskLength:I
    :catch_355
    move-exception v11

    .line 2524
    .restart local v11       #e:Ljava/lang/IllegalArgumentException;
    const-string v23, "WifiPolicyService"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2fa

    .line 2527
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :cond_362
    const-string v23, "::1"

    invoke-static/range {v23 .. v23}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    .line 2528
    .restart local v12       #gatewayAddr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    new-instance v24, Landroid/net/RouteInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v12}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_2fa

    .line 2535
    .end local v12           #gatewayAddr:Ljava/net/InetAddress;
    :catch_377
    move-exception v11

    .line 2536
    .restart local v11       #e:Ljava/lang/IllegalArgumentException;
    const-string v23, "WifiPolicyService"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_309

    .line 2539
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :cond_384
    const-string v23, "::1"

    invoke-static/range {v23 .. v23}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 2540
    .restart local v9       #dns1Addr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto/16 :goto_309
.end method

.method private getNetworkIdBySSID(Ljava/lang/String;)I
    .registers 10
    .parameter "ssid"

    .prologue
    .line 1912
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1913
    .local v4, token:J
    const/4 v2, -0x1

    .line 1914
    .local v2, netId:I
    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_b

    .line 1915
    const/4 v6, -0x1

    .line 1925
    :goto_a
    return v6

    .line 1917
    :cond_b
    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 1918
    .local v3, netList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1919
    .local v0, cfg:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1920
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1924
    .end local v0           #cfg:Landroid/net/wifi/WifiConfiguration;
    :cond_2f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    .line 1925
    goto :goto_a
.end method

.method private getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "adminUid"
    .parameter "ssid"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 409
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 410
    .local v1, enterpriseNetwork:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_68

    .line 411
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 412
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 413
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    aget-object v2, v2, v4

    .line 430
    :goto_1d
    return-object v2

    .line 415
    :cond_1e
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    aget-object v2, v2, v3

    goto :goto_1d

    .line 416
    :cond_23
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 417
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    aget-object v2, v2, v5

    goto :goto_1d

    .line 418
    :cond_30
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 420
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, eap:Ljava/lang/String;
    const-string v2, "PEAP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 422
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    goto :goto_1d

    .line 423
    :cond_4c
    const-string v2, "TTLS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 424
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    goto :goto_1d

    .line 425
    :cond_5a
    const-string v2, "TLS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 426
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    goto :goto_1d

    .line 430
    .end local v0           #eap:Ljava/lang/String;
    :cond_68
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .parameter "ssid"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 551
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAdminUid()I

    move-result v0

    .line 553
    .local v0, callingUid:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ltz p2, :cond_d

    const/4 v3, 0x3

    if-le p2, v3, :cond_e

    .line 564
    :cond_d
    :goto_d
    return-object v2

    .line 557
    :cond_e
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 558
    .local v1, enterprise:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_d

    .line 559
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, p2

    if-eqz v3, :cond_d

    .line 560
    const-string v2, "*"

    goto :goto_d
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "str"

    .prologue
    .line 1373
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1374
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1375
    .local v0, ret:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1376
    return-object v0
.end method

.method private isBlocked(Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"

    .prologue
    .line 2017
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllBlockedList()Ljava/util/Set;

    move-result-object v0

    .line 2018
    .local v0, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isHoneycombOrHigher()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, mainVersion:I
    const/4 v3, 0x3

    if-lt v0, v3, :cond_14

    .line 155
    :goto_13
    return v1

    :cond_14
    move v1, v2

    goto :goto_13
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .registers 4
    .parameter "value"

    .prologue
    .line 1937
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 1938
    :cond_8
    const/4 v1, 0x1

    .line 1942
    :goto_9
    return v1

    .line 1941
    :cond_a
    const-string v1, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1942
    .local v0, validIp:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_9
.end method

.method private isNetworkSecure(II)Z
    .registers 8
    .parameter "netId"
    .parameter "minSec"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1812
    const/4 v3, -0x1

    if-eq p1, v3, :cond_14

    .line 1813
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getConfigByNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1814
    .local v0, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_11

    .line 1815
    invoke-static {v0}, Lcom/android/server/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    if-le p2, v3, :cond_12

    .line 1825
    .end local v0           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_11
    :goto_11
    return v1

    .restart local v0       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_12
    move v1, v2

    .line 1818
    goto :goto_11

    .line 1824
    .end local v0           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_14
    const-string v1, "WifiPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Network id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1825
    goto :goto_11
.end method

.method private isWifiStateEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1893
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_6

    .line 1896
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private loadWifiManager()V
    .registers 4

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1c

    .line 1887
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1888
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1890
    :cond_1c
    return-void
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "string"
    .parameter "strings"

    .prologue
    .line 2077
    array-length v1, p1

    .line 2078
    .local v1, size:I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 2079
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_18

    .line 2080
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2082
    .end local v0           #i:I
    :goto_14
    return v0

    .line 2079
    .restart local v0       #i:I
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2082
    :cond_18
    const/4 v0, -0x1

    goto :goto_14
.end method

.method private makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;
    .registers 11
    .parameter "value"
    .parameter "strings"

    .prologue
    .line 2108
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 2109
    .local v1, bitset:Ljava/util/BitSet;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 2110
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2111
    .local v6, vals:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_14
    if-ge v2, v4, :cond_24

    aget-object v5, v0, v2

    .line 2112
    .local v5, val:Ljava/lang/String;
    invoke-static {v5, p2}, Lcom/android/server/enterprise/WifiPolicy;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2113
    .local v3, index:I
    if-ltz v3, :cond_21

    .line 2114
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 2111
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 2118
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #index:I
    .end local v4           #len$:I
    .end local v5           #val:Ljava/lang/String;
    .end local v6           #vals:[Ljava/lang/String;
    :cond_24
    return-object v1
.end method

.method private makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "set"
    .parameter "strings"

    .prologue
    .line 2086
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2087
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 2093
    .local v1, nextSetBit:I
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {p1, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    .line 2095
    :goto_c
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 2096
    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 2100
    :cond_29
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_38

    .line 2101
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2104
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "str"
    .parameter "value"

    .prologue
    .line 1366
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1367
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1368
    .local v0, ret:Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1369
    return v0
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 2055
    if-nez p0, :cond_7

    .line 2056
    const/4 p0, 0x0

    .line 2062
    .end local p0
    .local v0, length:I
    :cond_6
    :goto_6
    return-object p0

    .line 2058
    .end local v0           #length:I
    .restart local p0
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2059
    .restart local v0       #length:I
    if-le v0, v2, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    .line 2060
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method private removeFromBlocked(ILjava/lang/String;)V
    .registers 4
    .parameter "callingUid"
    .parameter "ssid"

    .prologue
    .line 2002
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 2003
    .local v0, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2004
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->saveBlockedList(ILjava/util/Set;)V

    .line 2005
    return-void
.end method

.method private saveBlockedList(ILjava/util/Set;)V
    .registers 10
    .parameter "callingUid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1993
    .local p2, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1994
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1995
    .local v1, s:Ljava/lang/String;
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

    goto :goto_9

    .line 1997
    .end local v1           #s:Ljava/lang/String;
    :cond_2c
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "WIFI"

    const-string v5, "blockedSSIDList"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1999
    return-void
.end method

.method private sendCacheUpdateCommand(Ljava/lang/String;)V
    .registers 4
    .parameter "type"

    .prologue
    .line 2634
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.enterprise.action.ACTION_WIFI_POLICY_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2635
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_e

    .line 2636
    const-string v1, "android.app.enterprise.extra.WIFI_TYPE_CHANGED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2638
    :cond_e
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2639
    return-void
.end method

.method private setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10
    .parameter "ssid"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 652
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_12

    .line 653
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 660
    .local v0, callingUid:I
    :goto_c
    if-eqz p3, :cond_10

    if-gez p2, :cond_1d

    .line 661
    :cond_10
    const/4 v2, 0x0

    .line 671
    :cond_11
    :goto_11
    return v2

    .line 655
    .end local v0           #callingUid:I
    :cond_12
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "WIFI_CONF"

    const-string v5, "networkSSID"

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #callingUid:I
    goto :goto_c

    .line 664
    :cond_1d
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 665
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x1

    .line 666
    .local v2, ret:Z
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_11

    .line 667
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v3, v3, p2

    invoke-virtual {v3, p3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 668
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 669
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_11
.end method

.method private setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "ssid"
    .parameter "addr"
    .parameter "addrType"

    .prologue
    .line 1256
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v2

    .line 1258
    .local v2, callingUid:I
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez p1, :cond_e

    .line 1259
    :cond_c
    const/4 v6, 0x0

    .line 1269
    :goto_d
    return v6

    .line 1261
    :cond_e
    const/4 v6, 0x1

    .line 1263
    .local v6, ret:Z
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1264
    .local v5, cv:Landroid/content/ContentValues;
    invoke-virtual {v5, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string v3, "networkSSID"

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1268
    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_d
.end method

.method private setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z
    .registers 21
    .parameter "callingUid"
    .parameter "config"

    .prologue
    .line 2342
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2343
    .local v6, cv:Landroid/content/ContentValues;
    const-string v1, "networkSSID"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    const-string v1, "networkBSSID"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    const-string v1, "networkKeyMgmt"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2347
    const-string v1, "networkAllowedProtos"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    const-string v1, "networkAuthAlg"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    const-string v1, "networkAllowedPairwiseCiphers"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    const-string v1, "networkAllowedGroupProtocols"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    const-string v1, "networkPSK"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    const-string v1, "networkWEPKey1"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    const-string v1, "networkWEPKey2"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    const-string v1, "networkWEPKey3"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    const-string v1, "networkWEPKey4"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    const-string v1, "networkWEPKeyId"

    move-object/from16 v0, p2

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2361
    const-string v1, "networkEAP"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "eap"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v2, "phase2"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v15

    .line 2364
    .local v15, phase2:Ljava/lang/String;
    if-eqz v15, :cond_ee

    .line 2365
    const-string v1, "networkPhase2"

    const-string v2, "auth="

    const-string v3, ""

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    :cond_ee
    const-string v1, "networkIdentity"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "identity"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    const-string v1, "networkAnonymousId"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "anonymous_identity"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    const-string v1, "networkPassword"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "password"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    const-string v1, "networkClientCertification"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "client_cert"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    const-string v1, "networkPrivateKey"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "private_key"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    const-string v1, "networkCaCertificate"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "ca_cert"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    const-string v2, "networkStaticIpEnabled"

    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v1, v3, :cond_244

    const/4 v1, 0x1

    :goto_183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2382
    const/4 v12, 0x0

    .local v12, ipAddr:Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, subnetAddr:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, gatewayAddr:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, dns1Addr:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2383
    .local v8, dns2Addr:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 2384
    .local v13, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c0

    .line 2385
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/LinkAddress;

    .line 2386
    .local v14, linkAddress:Landroid/net/LinkAddress;
    invoke-virtual {v14}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    .line 2387
    invoke-virtual {v14}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    .line 2391
    .end local v14           #linkAddress:Landroid/net/LinkAddress;
    :cond_1c0
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_1cc
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/RouteInfo;

    .line 2392
    .local v16, route:Landroid/net/RouteInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_1cc

    .line 2393
    invoke-virtual/range {v16 .. v16}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 2397
    .end local v16           #route:Landroid/net/RouteInfo;
    :cond_1e6
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2398
    .local v9, dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_202

    .line 2399
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 2401
    :cond_202
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_212

    .line 2402
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 2404
    :cond_212
    const-string v1, "networkStaticIp"

    invoke-virtual {v6, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    const-string v1, "networkStaticGateway"

    invoke-virtual {v6, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2406
    const-string v1, "networkStaticPrimaryDns"

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    const-string v1, "networkStaticSecondaryDns"

    invoke-virtual {v6, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    const-string v1, "networkStaticSubnetMask"

    move-object/from16 v0, v17

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "WIFI_CONF"

    const-string v4, "networkSSID"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1

    .line 2380
    .end local v7           #dns1Addr:Ljava/lang/String;
    .end local v8           #dns2Addr:Ljava/lang/String;
    .end local v9           #dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v10           #gatewayAddr:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #ipAddr:Ljava/lang/String;
    .end local v13           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v17           #subnetAddr:Ljava/lang/String;
    :cond_244
    const/4 v1, 0x0

    goto/16 :goto_183
.end method

.method private setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .parameter "ssid"
    .parameter "lastssid"

    .prologue
    .line 1090
    iget-object v8, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "networkLastSSID"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1093
    .local v3, lastSSIDs:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1095
    .local v6, newList:Ljava/lang/StringBuilder;
    if-eqz v3, :cond_41

    .line 1096
    if-eqz p2, :cond_3e

    .line 1097
    move-object v2, p2

    .line 1098
    .local v2, last:Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1099
    .local v5, list:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1b
    if-ge v1, v4, :cond_41

    aget-object v7, v0, v1

    .line 1101
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3b

    .line 1102
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1107
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #last:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #list:[Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_3e
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    :cond_41
    if-eqz p1, :cond_59

    .line 1112
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    :cond_59
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/WifiPolicy;->updateNetworkLastSSID(Ljava/lang/String;)Z

    move-result v8

    return v8
.end method

.method private setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10
    .parameter "ssid"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 488
    .local v0, callingUid:I
    if-eqz p3, :cond_b

    if-ltz p2, :cond_b

    const/4 v4, 0x3

    if-le p2, v4, :cond_d

    .line 489
    :cond_b
    const/4 v3, 0x0

    .line 506
    :cond_c
    :goto_c
    return v3

    .line 491
    :cond_d
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 492
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v3, 0x1

    .line 493
    .local v3, ret:Z
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_c

    if-eqz p3, :cond_c

    .line 494
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 496
    .local v2, length:I
    const/16 v4, 0xa

    if-eq v2, v4, :cond_28

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_28

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_3c

    :cond_28
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {p3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 498
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p3, v4, p2

    .line 503
    :goto_34
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    .line 504
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_c

    .line 501
    :cond_3c
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p2

    goto :goto_34
.end method

.method private updateNetworkLastSSID(Ljava/lang/String;)Z
    .registers 4
    .parameter "list"

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "networkLastSSID"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized updateWpsBlockedNetworks()Z
    .registers 11

    .prologue
    .line 2022
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceSystemUser()V

    .line 2023
    const/4 v5, 0x1

    .line 2024
    .local v5, success:Z
    const/4 v4, 0x0

    .line 2025
    .local v4, showMsg:Z
    const/4 v0, 0x0

    .line 2026
    .local v0, hasChanged:Z
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 2027
    .local v3, listWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 2028
    .local v6, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    const/4 v7, 0x1

    iget v8, v6, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v7, v8, :cond_11

    .line 2029
    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v7, v4}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(IZ)Z

    move-result v7

    if-eqz v7, :cond_32

    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v7, v4}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 2031
    :cond_32
    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v7, :cond_50

    .line 2033
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2034
    .local v1, i:Landroid/content/Intent;
    const-string v7, "message"

    iget-object v8, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const v9, 0x10401cb

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2037
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2040
    .end local v1           #i:Landroid/content/Intent;
    :cond_50
    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/WifiPolicy;->asyncDisableNetwork(I)V

    .line 2041
    const/4 v0, 0x1

    goto :goto_11

    .line 2045
    .end local v6           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_57
    if-eqz v0, :cond_69

    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v7

    if-nez v7, :cond_69

    .line 2046
    const-string v7, "WifiPolicyService"

    const-string v8, "updateWpsBlockedNetworks - error saving network configuration."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_6b

    .line 2047
    const/4 v5, 0x0

    .line 2049
    :cond_69
    monitor-exit p0

    return v5

    .line 2022
    .end local v0           #hasChanged:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4           #showMsg:Z
    .end local v5           #success:Z
    :catchall_6b
    move-exception v7

    monitor-exit p0

    throw v7
.end method


# virtual methods
.method public addBlockedNetwork(Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"

    .prologue
    .line 1137
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1139
    .local v0, callingUid:I
    if-nez p1, :cond_8

    .line 1140
    const/4 v1, 0x0

    .line 1148
    :goto_7
    return v1

    .line 1143
    :cond_8
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addToBlocked(ILjava/lang/String;)V

    .line 1146
    const-string v1, "BLOCKED_NETWORKS"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1148
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->disableNetwork(Ljava/lang/String;)Z

    move-result v1

    goto :goto_7
.end method

.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 10
    .parameter "config"
    .parameter "netSSID"

    .prologue
    .line 2204
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceSystemUser()V

    .line 2206
    if-nez p1, :cond_6

    .line 2230
    :cond_5
    :goto_5
    return-void

    .line 2210
    :cond_6
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2212
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "WIFI_CONF"

    const-string v5, "networkSSID"

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2214
    .local v0, adminUid:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    .line 2223
    new-instance v1, Lcom/android/server/enterprise/WifiPolicy$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy$1;-><init>(Lcom/android/server/enterprise/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V

    .line 2228
    .local v1, taskToUpdateNetwork:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2229
    .local v2, threadToUpdateNetwork:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_5
.end method

.method public getAllowUserPolicyChanges()Z
    .registers 8

    .prologue
    .line 1644
    const/4 v1, 0x1

    .line 1645
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowUserChanges"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1648
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1649
    .local v2, value:Z
    if-nez v2, :cond_f

    .line 1650
    move v1, v2

    .line 1654
    .end local v2           #value:Z
    :cond_22
    return v1
.end method

.method public getAllowUserProfiles(Z)Z
    .registers 10
    .parameter "showMsg"

    .prologue
    .line 1596
    const/4 v2, 0x1

    .line 1597
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI"

    const-string v7, "allowUserProfiles"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1599
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1600
    .local v3, value:Z
    if-nez v3, :cond_f

    .line 1601
    move v2, v3

    .line 1605
    .end local v3           #value:Z
    :cond_22
    if-nez v2, :cond_40

    if-eqz p1, :cond_40

    .line 1606
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1607
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401cc

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1609
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1611
    .end local v0           #i:Landroid/content/Intent;
    :cond_40
    return v2
.end method

.method public getBlockedNetworks()Ljava/util/List;
    .registers 5
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
    .line 1185
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1186
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1187
    .local v2, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllBlockedList()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1188
    .local v0, aux:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1190
    .end local v0           #aux:Ljava/lang/String;
    :cond_24
    return-object v2
.end method

.method public getDHCPEnabled()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1355
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1358
    .local v1, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_use_static_ip"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1360
    .local v0, ret:I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1362
    if-nez v0, :cond_1a

    const/4 v3, 0x1

    :cond_1a
    return v3
.end method

.method public getDefaultGateway()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1420
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1421
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1422
    const/4 v0, 0x0

    .line 1425
    :goto_a
    return-object v0

    .line 1424
    :cond_b
    const-string v1, "wifi_static_gateway"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1425
    .local v0, ret:Ljava/lang/String;
    goto :goto_a
.end method

.method public getDefaultIp()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1397
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1398
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1399
    const/4 v0, 0x0

    .line 1402
    :goto_a
    return-object v0

    .line 1401
    :cond_b
    const-string v1, "wifi_static_ip"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1402
    .local v0, ret:Ljava/lang/String;
    goto :goto_a
.end method

.method public getDefaultPrimaryDNS()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1443
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1444
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1445
    const/4 v0, 0x0

    .line 1448
    :goto_a
    return-object v0

    .line 1447
    :cond_b
    const-string v1, "wifi_static_dns1"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1448
    .local v0, ret:Ljava/lang/String;
    goto :goto_a
.end method

.method public getDefaultSecondaryDNS()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1466
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1467
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1468
    const/4 v0, 0x0

    .line 1471
    :goto_a
    return-object v0

    .line 1470
    :cond_b
    const-string v1, "wifi_static_dns2"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1471
    .local v0, ret:Ljava/lang/String;
    goto :goto_a
.end method

.method public getDefaultSubnetMask()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1489
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1490
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1491
    const/4 v0, 0x0

    .line 1494
    :goto_a
    return-object v0

    .line 1493
    :cond_b
    const-string v1, "wifi_static_netmask"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1494
    .local v0, ret:Ljava/lang/String;
    goto :goto_a
.end method

.method public getMinimumRequiredSecurity()I
    .registers 8

    .prologue
    .line 1761
    const/4 v1, 0x0

    .line 1762
    .local v1, ret:I
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "minimumRequiredSecurity"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1764
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1765
    .local v2, value:I
    if-le v2, v1, :cond_f

    .line 1766
    move v1, v2

    goto :goto_f

    .line 1769
    .end local v2           #value:I
    :cond_23
    return v1
.end method

.method public getNetworkAnonymousIdValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "ssid"

    .prologue
    .line 899
    const-string v1, "anonymous_identity"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 900
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkCaCertification(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "ssid"

    .prologue
    .line 834
    const-string v2, "ca_cert"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 835
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 836
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 837
    const-string v2, "keystore://CACERT_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 839
    :goto_14
    return-object v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public getNetworkClientCertificate(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "ssid"

    .prologue
    .line 849
    const-string v2, "client_cert"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 850
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 851
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 852
    const-string v2, "keystore://USRCERT_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 854
    :goto_14
    return-object v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public getNetworkDHCPEnabled(Ljava/lang/String;)Z
    .registers 7
    .parameter "ssid"

    .prologue
    const/4 v2, 0x0

    .line 1244
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1246
    .local v0, callingUid:I
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1247
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_14

    .line 1248
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v3, v4, :cond_14

    const/4 v2, 0x1

    .line 1250
    :cond_14
    return v2
.end method

.method public getNetworkEAPType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "ssid"

    .prologue
    .line 809
    const-string v1, "eap"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 810
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkGateway(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 1309
    const-string v0, "networkStaticGateway"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkIdentityValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "ssid"

    .prologue
    .line 891
    const-string v1, "identity"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 892
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkIp(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 1301
    const-string v0, "networkStaticIp"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkLinkSecurity(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 401
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAdminUid()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPSK(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "ssid"

    .prologue
    const/4 v2, 0x0

    .line 637
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAdminUid()I

    move-result v0

    .line 638
    .local v0, callingUid:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_9

    .line 645
    :cond_8
    :goto_8
    return-object v2

    .line 641
    :cond_9
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 642
    .local v1, enterprise:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_8

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 643
    const-string v2, "*"

    goto :goto_8
.end method

.method public getNetworkPassword(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "ssid"

    .prologue
    .line 879
    const-string v2, "password"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 880
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 881
    .local v1, password:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 882
    const-string v2, "*"

    .line 884
    :goto_12
    return-object v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public getNetworkPhase2(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "ssid"

    .prologue
    .line 819
    const-string v2, "phase2"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 820
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, phase2:Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 822
    const-string v2, "auth="

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 824
    :goto_14
    return-object v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public getNetworkPrimaryDNS(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 1317
    const-string v0, "networkStaticPrimaryDns"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "ssid"

    .prologue
    .line 864
    const-string v2, "private_key"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 865
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 866
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 867
    const-string v2, "keystore://USRPKEY_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 869
    :goto_14
    return-object v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public getNetworkSSIDList()Ljava/util/List;
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
    const/4 v6, 0x0

    .line 263
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v0, SSIDList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "networkSSID"

    aput-object v5, v3, v4

    .line 268
    .local v3, ret:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI_CONF"

    invoke-virtual {v4, v5, v6, v6, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 270
    .local v1, cv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_32

    .line 271
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "networkSSID"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 273
    :cond_32
    return-object v0
.end method

.method public getNetworkSecondaryDNS(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 1325
    const-string v0, "networkStaticSecondaryDns"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSubnetMask(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 1333
    const-string v0, "networkStaticSubnetMask"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey1(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 573
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey2(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 582
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey3(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 591
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey4(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ssid"

    .prologue
    .line 600
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKeyId(Ljava/lang/String;)I
    .registers 4
    .parameter "ssid"

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 467
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAdminUid()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 468
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 471
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    add-int/lit8 v1, v1, 0x1

    .line 473
    :goto_13
    return v1

    :cond_14
    const/4 v1, -0x1

    goto :goto_13
.end method

.method public getPasswordHidden()Z
    .registers 8

    .prologue
    .line 1869
    const/4 v1, 0x0

    .line 1870
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "passwordHidden"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1873
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1874
    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    .line 1875
    move v1, v2

    goto :goto_f

    .line 1878
    .end local v2           #value:Z
    :cond_24
    return v1
.end method

.method public getPromptCredentialsEnabled()Z
    .registers 8

    .prologue
    .line 1685
    const/4 v1, 0x1

    .line 1686
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "promptCredentials"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1689
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1690
    .local v2, value:Z
    if-nez v2, :cond_f

    .line 1691
    move v1, v2

    .line 1695
    .end local v2           #value:Z
    :cond_22
    return v1
.end method

.method public getTlsCertificateSecurityLevel()I
    .registers 8

    .prologue
    .line 1794
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1795
    const/4 v2, 0x0

    .line 1797
    .local v2, ret:I
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "tlsCertificateSecurityLevel"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1799
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1800
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v2, :cond_12

    .line 1801
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_12

    .line 1804
    .end local v3           #value:Ljava/lang/Integer;
    :cond_29
    return v2
.end method

.method public getWifiProfile(Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile;
    .registers 13
    .parameter "ssid"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1005
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1006
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1008
    .local v0, adminUid:I
    new-instance v4, Landroid/app/enterprise/WifiAdminProfile;

    invoke-direct {v4}, Landroid/app/enterprise/WifiAdminProfile;-><init>()V

    .line 1010
    .local v4, ret:Landroid/app/enterprise/WifiAdminProfile;
    new-array v1, v10, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v1, v9

    const-string v6, "networkSSID"

    aput-object v6, v1, v8

    .line 1013
    .local v1, col:[Ljava/lang/String;
    new-array v5, v10, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 1016
    .local v5, val:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "WIFI_CONF"

    invoke-virtual {v6, v8, v1, v5, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1020
    .local v3, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_165

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-eqz v6, :cond_165

    .line 1021
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1026
    .local v2, cv:Landroid/content/ContentValues;
    const-string v6, "networkSSID"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 1027
    const-string v6, "networkSSID"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    .line 1029
    :cond_58
    const-string v6, "networkPSK"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 1030
    const-string v6, "networkPSK"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    .line 1032
    :cond_68
    const-string v6, "networkPassword"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 1033
    const-string v6, "networkPassword"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    .line 1035
    :cond_78
    const-string v6, "networkWEPKey1"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 1036
    const-string v6, "networkWEPKey1"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    .line 1038
    :cond_88
    const-string v6, "networkWEPKey2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 1039
    const-string v6, "networkWEPKey2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    .line 1041
    :cond_98
    const-string v6, "networkWEPKey3"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 1042
    const-string v6, "networkWEPKey3"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    .line 1044
    :cond_a8
    const-string v6, "networkWEPKey4"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 1045
    const-string v6, "networkWEPKey4"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    .line 1047
    :cond_b8
    const-string v6, "networkWEPKeyId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ce

    .line 1048
    const-string v6, "networkWEPKeyId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    .line 1050
    :cond_ce
    const-string v6, "networkIdentity"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_de

    .line 1051
    const-string v6, "networkIdentity"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    .line 1053
    :cond_de
    const-string v6, "networkAnonymousId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ee

    .line 1054
    const-string v6, "networkAnonymousId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    .line 1056
    :cond_ee
    const-string v6, "networkPhase2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_fe

    .line 1057
    const-string v6, "networkPhase2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    .line 1059
    :cond_fe
    const-string v6, "networkCaCertificate"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11e

    .line 1060
    const-string v6, "networkCaCertificate"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 1061
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    if-eqz v6, :cond_11e

    .line 1062
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    const-string v7, "keystore://CACERT_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 1066
    :cond_11e
    const-string v6, "networkClientCertification"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13e

    .line 1067
    const-string v6, "networkClientCertification"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 1068
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    if-eqz v6, :cond_13e

    .line 1069
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    const-string v7, "keystore://USRCERT_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 1073
    :cond_13e
    const-string v6, "networkPrivateKey"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15e

    .line 1074
    const-string v6, "networkPrivateKey"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 1075
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    if-eqz v6, :cond_15e

    .line 1076
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string v7, "keystore://USRPKEY_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 1080
    :cond_15e
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    .line 1082
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v4           #ret:Landroid/app/enterprise/WifiAdminProfile;
    :goto_164
    return-object v4

    .restart local v4       #ret:Landroid/app/enterprise/WifiAdminProfile;
    :cond_165
    move-object v4, v7

    .line 1023
    goto :goto_164
.end method

.method public isEnterpriseNetwork(Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"

    .prologue
    .line 2131
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceSystemUser()V

    .line 2132
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllEnterpriseSSIDs()Ljava/util/List;

    move-result-object v0

    .line 2133
    .local v0, ssidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isNetworkBlocked(Ljava/lang/String;Z)Z
    .registers 8
    .parameter "ssid"
    .parameter "showMsg"

    .prologue
    .line 1201
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v1

    .line 1202
    .local v1, ret:Z
    if-eqz v1, :cond_26

    if-eqz p2, :cond_26

    .line 1203
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1204
    .local v0, i:Landroid/content/Intent;
    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const v4, 0x10401c9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1206
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1208
    .end local v0           #i:Landroid/content/Intent;
    :cond_26
    return v1
.end method

.method public isNetworkSecure(IZ)Z
    .registers 8
    .parameter "netId"
    .parameter "showMsg"

    .prologue
    .line 1837
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1838
    invoke-virtual {p0}, Lcom/android/server/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(II)Z

    move-result v1

    .line 1839
    .local v1, ret:Z
    if-nez v1, :cond_29

    if-eqz p2, :cond_29

    .line 1840
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1841
    .local v0, i:Landroid/content/Intent;
    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const v4, 0x10401cb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1843
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1845
    .end local v0           #i:Landroid/content/Intent;
    :cond_29
    return v1
.end method

.method public isWifiAllowed(Z)Z
    .registers 9
    .parameter "showMsg"

    .prologue
    .line 1563
    const/4 v1, 0x1

    .line 1564
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1567
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1568
    .local v2, value:Z
    if-nez v2, :cond_f

    .line 1569
    move v1, v2

    .line 1579
    .end local v2           #value:Z
    :cond_22
    return v1
.end method

.method public onAdminRemoved()V
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public removeBlockedNetwork(Ljava/lang/String;)Z
    .registers 8
    .parameter "ssid"

    .prologue
    const/4 v4, 0x0

    .line 1159
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1161
    .local v0, callingUid:I
    if-nez p1, :cond_9

    move v1, v4

    .line 1176
    :goto_8
    return v1

    .line 1164
    :cond_9
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/android/server/enterprise/WifiPolicy;->removeFromBlocked(ILjava/lang/String;)V

    .line 1165
    const/4 v1, 0x1

    .line 1166
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1168
    .local v2, token:J
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_28

    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1169
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkIdBySSID(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5, v4}, Lcom/android/server/enterprise/WifiPolicy;->asyncEnableNetwork(IZ)V

    .line 1171
    :cond_28
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1174
    const-string v4, "BLOCKED_NETWORKS"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .registers 10
    .parameter "ssid"

    .prologue
    .line 281
    const/4 v2, 0x1

    .line 284
    .local v2, ret:Z
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_50

    .line 289
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 296
    .local v0, callingUid:I
    :goto_11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v5, v6, :cond_3f

    .line 297
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 298
    .local v3, token:J
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 299
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 300
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    .line 301
    const/4 v5, 0x0

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 303
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_3c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 306
    .end local v3           #token:J
    :cond_3f
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    const-string v7, "networkSSID"

    invoke-virtual {v5, v6, v0, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 310
    const-string v5, "ENTERPRISE_SSIDS"

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 312
    return v2

    .line 291
    .end local v0           #callingUid:I
    :cond_50
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    const-string v7, "networkSSID"

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #callingUid:I
    goto :goto_11
.end method

.method public setAllowUserPolicyChanges(Z)Z
    .registers 7
    .parameter "enable"

    .prologue
    .line 1625
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1626
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "allowUserChanges"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1630
    .local v1, ret:Z
    const-string v2, "ALLOW_USER_CHANGES"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1632
    return v1
.end method

.method public setAllowUserProfiles(Z)Z
    .registers 7
    .parameter "enable"

    .prologue
    .line 1584
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1585
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "allowUserProfiles"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1589
    .local v1, ret:Z
    const-string v2, "ALLOW_USER_PROFILES"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1591
    return v1
.end method

.method public setDHCPEnabled(Z)Z
    .registers 8
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 1341
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1342
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1350
    :goto_a
    return v3

    .line 1345
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1347
    .local v1, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_use_static_ip"

    if-eqz p1, :cond_22

    :goto_19
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 1349
    .local v0, ret:Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v0

    .line 1350
    goto :goto_a

    .line 1347
    .end local v0           #ret:Z
    :cond_22
    const/4 v3, 0x1

    goto :goto_19
.end method

.method public setDefaultGateway(Ljava/lang/String;)Z
    .registers 4
    .parameter "ipAddr"

    .prologue
    .line 1407
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1408
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1409
    const/4 v0, 0x0

    .line 1415
    :cond_a
    :goto_a
    return v0

    .line 1411
    :cond_b
    const/4 v0, 0x0

    .line 1412
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1413
    const-string v1, "wifi_static_gateway"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public setDefaultIp(Ljava/lang/String;)Z
    .registers 4
    .parameter "ipAddr"

    .prologue
    .line 1384
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1385
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1386
    const/4 v0, 0x0

    .line 1392
    :cond_a
    :goto_a
    return v0

    .line 1388
    :cond_b
    const/4 v0, 0x0

    .line 1389
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1390
    const-string v1, "wifi_static_ip"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public setDefaultPrimaryDNS(Ljava/lang/String;)Z
    .registers 4
    .parameter "ipAddr"

    .prologue
    .line 1430
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1431
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1432
    const/4 v0, 0x0

    .line 1438
    :cond_a
    :goto_a
    return v0

    .line 1434
    :cond_b
    const/4 v0, 0x0

    .line 1435
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1436
    const-string v1, "wifi_static_dns1"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public setDefaultSecondaryDNS(Ljava/lang/String;)Z
    .registers 4
    .parameter "ipAddr"

    .prologue
    .line 1453
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1454
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1455
    const/4 v0, 0x0

    .line 1461
    :cond_a
    :goto_a
    return v0

    .line 1457
    :cond_b
    const/4 v0, 0x0

    .line 1458
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1459
    const-string v1, "wifi_static_dns2"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public setDefaultSubnetMask(Ljava/lang/String;)Z
    .registers 4
    .parameter "ipAddr"

    .prologue
    .line 1476
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1477
    const/4 v0, 0x0

    .line 1478
    .local v0, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1479
    const/4 v1, 0x0

    .line 1484
    :goto_b
    return v1

    .line 1481
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1482
    const-string v1, "wifi_static_netmask"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_18
    move v1, v0

    .line 1484
    goto :goto_b
.end method

.method public setMinimumRequiredSecurity(I)Z
    .registers 18
    .parameter "secType"

    .prologue
    .line 1700
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v1

    .line 1703
    .local v1, callingUid:I
    if-ltz p1, :cond_15

    const/4 v13, 0x7

    move/from16 v0, p1

    if-gt v0, v13, :cond_15

    const/4 v13, 0x4

    move/from16 v0, p1

    if-eq v0, v13, :cond_15

    const/4 v13, 0x3

    move/from16 v0, p1

    if-ne v0, v13, :cond_17

    .line 1705
    :cond_15
    const/4 v8, 0x0

    .line 1743
    :goto_16
    return v8

    .line 1708
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v4

    .line 1710
    .local v4, lastSec:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "WIFI"

    const-string v15, "minimumRequiredSecurity"

    move/from16 v0, p1

    invoke-virtual {v13, v1, v14, v15, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    .line 1713
    .local v8, ret:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "WIFI"

    const-string v15, "minimumRequiredSecurity"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1715
    .local v12, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 1716
    .local v7, newSec:I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3a
    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1717
    .local v11, value:I
    if-le v11, v7, :cond_3a

    .line 1718
    move v7, v11

    goto :goto_3a

    .line 1725
    .end local v11           #value:I
    :cond_4e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1726
    .local v9, token:J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v13

    if-eqz v13, :cond_97

    .line 1727
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 1728
    .local v5, listWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_64
    :goto_64
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_97

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 1729
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1730
    .local v6, netId:I
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(II)Z

    move-result v13

    if-nez v13, :cond_80

    .line 1731
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/WifiPolicy;->asyncDisableNetwork(I)V

    goto :goto_64

    .line 1732
    :cond_80
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(II)Z

    move-result v13

    if-nez v13, :cond_64

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(II)Z

    move-result v13

    if-eqz v13, :cond_64

    .line 1734
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/android/server/enterprise/WifiPolicy;->asyncEnableNetwork(IZ)V

    goto :goto_64

    .line 1738
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #listWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v6           #netId:I
    :cond_97
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1741
    const-string v13, "MINIMUM_SECURITY_LEVEL"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    goto/16 :goto_16
.end method

.method public setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 740
    const-string v1, "anonymous_identity"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 741
    .local v0, index:I
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 779
    const-string v1, "ca_cert"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 780
    .local v0, index:I
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    .line 781
    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 783
    :goto_14
    return v1

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keystore://CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    goto :goto_14
.end method

.method public setNetworkClientCertification(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 764
    const-string v1, "client_cert"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 765
    .local v0, index:I
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    .line 766
    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 768
    :goto_14
    return v1

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keystore://USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    goto :goto_14
.end method

.method public setNetworkDHCPEnabled(Ljava/lang/String;Z)Z
    .registers 7
    .parameter "ssid"
    .parameter "enable"

    .prologue
    .line 1228
    if-nez p1, :cond_4

    .line 1229
    const/4 v2, 0x0

    .line 1240
    :goto_3
    return v2

    .line 1232
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission(Ljava/lang/String;)I

    move-result v0

    .line 1234
    .local v0, callingUid:I
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1235
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x1

    .line 1236
    .local v2, ret:Z
    if-eqz p2, :cond_1b

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_11
    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 1237
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 1238
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_3

    .line 1236
    :cond_1b
    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_11
.end method

.method public setNetworkGateway(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1305
    const-string v0, "networkStaticGateway"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 726
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_11

    .line 727
    const-string v1, "WifiPolicyService"

    const-string v2, "Identity value excedes maximum length (32)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v1, 0x0

    .line 731
    :goto_10
    return v1

    .line 730
    :cond_11
    const-string v1, "identity"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 731
    .local v0, index:I
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    goto :goto_10
.end method

.method public setNetworkIp(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1297
    const-string v0, "networkStaticIp"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "ssid"
    .parameter "value"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 321
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 323
    .local v0, callingUid:I
    if-nez p2, :cond_b

    move v3, v4

    .line 393
    :cond_a
    :goto_a
    return v3

    .line 327
    :cond_b
    const-string v5, "FAST"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    const-string v5, "LEAP"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1b
    move v3, v4

    .line 328
    goto :goto_a

    .line 331
    :cond_1d
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 332
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v3, 0x1

    .line 333
    .local v3, ret:Z
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 335
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->clear()V

    .line 336
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->clear()V

    .line 337
    const-string v5, "NONE"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 338
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 359
    :cond_3d
    :goto_3d
    const-string v4, "EAP"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 360
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 365
    :cond_4a
    const/4 v4, -0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->removeNetworkConfiguration(Ljava/lang/String;)Z

    move-result v3

    .line 367
    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNetworkLinkSecurity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    and-int/2addr v3, v4

    .line 370
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 371
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    .line 380
    :cond_7b
    const-string v4, "NONE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10e

    .line 381
    const/4 v2, 0x0

    .local v2, i:I
    :goto_84
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_10e

    .line 382
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_95

    .line 383
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v2

    .line 381
    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    .line 339
    .end local v2           #i:I
    :cond_98
    const-string v5, "WEP"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 340
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 341
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 342
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_3d

    .line 343
    :cond_b0
    const-string v4, "PSK"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_be

    .line 344
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_3d

    .line 345
    :cond_be
    const-string v4, "EAP"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 346
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 347
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 348
    const-string v4, "PEAP"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 349
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v5, "PEAP"

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 350
    :cond_e3
    const-string v4, "TTLS"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 351
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v5, "TTLS"

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 352
    :cond_f4
    const-string v4, "TLS"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_105

    .line 353
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v5, "TLS"

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 355
    :cond_105
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v5, "PEAP"

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 388
    :cond_10e
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 391
    const-string v4, "ENTERPRISE_SSIDS"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method public setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 613
    .local v0, callingUid:I
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_10

    .line 614
    :cond_e
    const/4 v2, 0x0

    .line 628
    :cond_f
    :goto_f
    return v2

    .line 617
    :cond_10
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 618
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x1

    .line 619
    .local v2, ret:Z
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_f

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-le v3, v4, :cond_f

    .line 620
    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {p2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 621
    iput-object p2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 625
    :goto_2c
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 626
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_f

    .line 623
    :cond_34
    invoke-static {p2}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2c
.end method

.method public setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 712
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_11

    .line 713
    const-string v1, "WifiPolicyService"

    const-string v2, "Password excedes maximum length (32)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/4 v1, 0x0

    .line 717
    :goto_10
    return v1

    .line 716
    :cond_11
    const-string v1, "password"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 717
    .local v0, index:I
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    goto :goto_10
.end method

.method public setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 750
    if-eqz p2, :cond_20

    .line 751
    const-string v1, "phase2"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 752
    .local v0, index:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 754
    .end local v0           #index:I
    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public setNetworkPrimaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1313
    const-string v0, "networkStaticPrimaryDns"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 794
    const-string v1, "private_key"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 795
    .local v0, index:I
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    .line 796
    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 798
    :goto_14
    return v1

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keystore://USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    goto :goto_14
.end method

.method public setNetworkSSID(Ljava/lang/String;)Z
    .registers 15
    .parameter "ssid"

    .prologue
    const/4 v10, 0x0

    .line 204
    const/4 v6, 0x0

    .line 206
    .local v6, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 208
    .local v0, callingUid:I
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x20

    if-le v11, v12, :cond_18

    .line 209
    :cond_10
    const-string v11, "WifiPolicyService"

    const-string v12, "SSID is invalid or excedes maximum length (32)"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_17
    :goto_17
    return v10

    .line 214
    :cond_18
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 215
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 216
    .local v4, lastSSID:Ljava/lang/String;
    if-eqz v4, :cond_2c

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 217
    const/4 v10, 0x1

    goto :goto_17

    .line 221
    :cond_2c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 222
    .local v7, token:J
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v1

    .line 223
    .local v1, checkEnterprise:Z
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    if-nez v1, :cond_17

    .line 228
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 229
    const/4 v11, -0x1

    iput v11, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 231
    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4f

    .line 232
    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v10}, Ljava/util/BitSet;->set(I)V

    .line 234
    :cond_4f
    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    .line 237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 238
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v10

    if-eqz v10, :cond_9b

    .line 239
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 240
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_67
    :goto_67
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 241
    .local v9, wifi:Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_87

    if-eqz v4, :cond_67

    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_67

    .line 243
    :cond_87
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v11, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_67

    .line 246
    .end local v9           #wifi:Landroid/net/wifi/WifiConfiguration;
    :cond_8f
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 247
    if-eqz v4, :cond_a6

    .line 248
    invoke-static {v4}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    .line 254
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_9b
    :goto_9b
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    const-string v10, "ENTERPRISE_SSIDS"

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    move v10, v6

    .line 259
    goto/16 :goto_17

    .line 250
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_a6
    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_9b
.end method

.method public setNetworkSecondaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1321
    const-string v0, "networkStaticSecondaryDns"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkSubnetMask(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1329
    const-string v0, "networkStaticSubnetMask"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 516
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 526
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 536
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 546
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKeyId(Ljava/lang/String;I)Z
    .registers 7
    .parameter "ssid"
    .parameter "keyId"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 442
    .local v0, callingUid:I
    const/4 v3, 0x1

    if-lt p2, v3, :cond_a

    const/4 v3, 0x4

    if-le p2, v3, :cond_c

    .line 443
    :cond_a
    const/4 v2, 0x0

    .line 457
    :goto_b
    return v2

    .line 446
    :cond_c
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 448
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_20

    .line 451
    add-int/lit8 v3, p2, -0x1

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 452
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 453
    .local v2, ret:Z
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_b

    .line 455
    .end local v2           #ret:Z
    :cond_20
    const/4 v2, 0x0

    .restart local v2       #ret:Z
    goto :goto_b
.end method

.method public setPasswordHidden(Z)Z
    .registers 6
    .parameter "value"

    .prologue
    .line 1857
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1858
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "passwordHidden"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setPromptCredentialsEnabled(Z)Z
    .registers 7
    .parameter "enable"

    .prologue
    .line 1668
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1669
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "promptCredentials"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1673
    .local v1, ret:Z
    const-string v2, "PROMPT_CREDENTIALS_ENABLED"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1675
    return v1
.end method

.method public setTlsCertificateSecurityLevel(I)Z
    .registers 9
    .parameter "level"

    .prologue
    .line 1778
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1780
    .local v0, callingUid:I
    if-ltz p1, :cond_9

    const/4 v4, 0x1

    if-le p1, v4, :cond_b

    .line 1781
    :cond_9
    const/4 v1, 0x0

    .line 1789
    :goto_a
    return v1

    .line 1784
    :cond_b
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "tlsCertificateSecurityLevel"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 1787
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1788
    .local v2, token:J
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a
.end method

.method public setWifi(Z)Z
    .registers 10
    .parameter "enable"

    .prologue
    const/4 v7, 0x0

    .line 1508
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1509
    .local v0, adminUid:I
    const/4 v1, 0x1

    .line 1510
    .local v1, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1512
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1516
    const-string v4, "WIFI_ALLOWED"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1518
    if-eqz p1, :cond_2b

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/WifiPolicy;->isWifiAllowed(Z)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1519
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1524
    :goto_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1526
    return v1

    .line 1521
    :cond_2b
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_27
.end method

.method public setWifiAllowed(Z)Z
    .registers 9
    .parameter "enable"

    .prologue
    .line 1537
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1538
    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1540
    .local v1, ret:Z
    if-nez p1, :cond_24

    .line 1541
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v4, :cond_16

    .line 1542
    const/4 v4, 0x0

    .line 1552
    :goto_15
    return v4

    .line 1544
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1545
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v4

    and-int/2addr v1, v4

    .line 1546
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1550
    .end local v2           #token:J
    :cond_24
    const-string v4, "WIFI_ALLOWED"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    move v4, v1

    .line 1552
    goto :goto_15
.end method

.method public setWifiProfile(Landroid/app/enterprise/WifiAdminProfile;)Z
    .registers 12
    .parameter "profile"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 905
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 906
    const/4 v1, 0x1

    .line 908
    .local v1, ret:Z
    if-nez p1, :cond_a

    .line 1000
    :goto_9
    return v5

    .line 911
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 912
    .local v3, token:J
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    .line 913
    .local v0, isEnterprise:Z
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 917
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    if-eqz v6, :cond_b5

    .line 918
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v2, v6, v5

    .line 919
    .local v2, sec:Ljava/lang/String;
    const-string v6, "PSK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    if-nez v6, :cond_39

    .line 920
    const-string v6, "WifiPolicyService"

    const-string v7, "PSK not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 923
    :cond_39
    const-string v6, "WEP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 924
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-lt v6, v8, :cond_49

    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-le v6, v9, :cond_51

    .line 925
    :cond_49
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKeyId invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 928
    :cond_51
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-ne v6, v8, :cond_69

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    if-eqz v6, :cond_61

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_69

    .line 930
    :cond_61
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey1 not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 933
    :cond_69
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_82

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    if-eqz v6, :cond_7a

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_82

    .line 935
    :cond_7a
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey2 not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 938
    :cond_82
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9c

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    if-eqz v6, :cond_93

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 940
    :cond_93
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey3 not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 943
    :cond_9c
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-ne v6, v9, :cond_b5

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    if-eqz v6, :cond_ac

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 945
    :cond_ac
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey4 not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 952
    .end local v2           #sec:Ljava/lang/String;
    :cond_b5
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    if-eqz v6, :cond_17c

    if-nez v0, :cond_17c

    .line 953
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkSSID(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 957
    :cond_c2
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    if-eqz v5, :cond_cf

    .line 958
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 960
    :cond_cf
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    if-eqz v5, :cond_dc

    .line 961
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 963
    :cond_dc
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    if-eqz v5, :cond_e9

    .line 964
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 966
    :cond_e9
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    if-eqz v5, :cond_f6

    .line 967
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 969
    :cond_f6
    iget v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_104

    .line 970
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKeyId(Ljava/lang/String;I)Z

    move-result v5

    and-int/2addr v1, v5

    .line 972
    :cond_104
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    if-eqz v5, :cond_111

    .line 973
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 975
    :cond_111
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    if-eqz v5, :cond_11e

    .line 976
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 978
    :cond_11e
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    if-eqz v5, :cond_12b

    .line 979
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 981
    :cond_12b
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    if-eqz v5, :cond_138

    .line 982
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 984
    :cond_138
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    if-eqz v5, :cond_145

    .line 985
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkClientCertification(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 987
    :cond_145
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    if-eqz v5, :cond_152

    .line 988
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 990
    :cond_152
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    if-eqz v5, :cond_15f

    .line 991
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 993
    :cond_15f
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    if-eqz v5, :cond_16c

    .line 994
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 996
    :cond_16c
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    if-eqz v5, :cond_179

    .line 997
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_179
    move v5, v1

    .line 1000
    goto/16 :goto_9

    .line 954
    :cond_17c
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    if-nez v6, :cond_c2

    goto/16 :goto_9
.end method

.method public systemReady()V
    .registers 2

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadWifiManager()V

    .line 116
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/WifiPolicyCache;

    .line 117
    return-void
.end method
