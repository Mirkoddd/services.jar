.class public Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.super Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;
.source "EnterpriseDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EnterpriseDeviceManagerService"


# instance fields
.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationPolicy:Lcom/android/server/enterprise/ApplicationPolicy;

.field private mBluetoothPolicy:Lcom/android/server/enterprise/BluetoothPolicy;

.field final mContext:Landroid/content/Context;

.field final mDPM:Landroid/app/admin/DevicePolicyManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field final mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

.field final mPMS:Landroid/content/pm/IPackageManager;

.field private mPasswordPolicy:Lcom/android/server/enterprise/PasswordPolicy;

.field private mRestrictionPolicy:Lcom/android/server/enterprise/RestrictionPolicy;

.field private mWifiPolicy:Lcom/android/server/enterprise/WifiPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .registers 7
    .parameter "context"
    .parameter "pms"

    .prologue
    .line 673
    invoke-direct {p0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;-><init>()V

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    .line 674
    iput-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 675
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    .line 676
    const-string v1, "device_policy"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 677
    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    .line 678
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 679
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->handleDowngrade()V

    .line 680
    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 682
    :try_start_38
    new-instance v1, Lcom/android/server/enterprise/ApplicationPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/ApplicationPolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mApplicationPolicy:Lcom/android/server/enterprise/ApplicationPolicy;

    .line 683
    const-string v1, "application_policy"

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mApplicationPolicy:Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 686
    const-string v1, "device_info"

    new-instance v2, Lcom/android/server/enterprise/DeviceInfo;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/DeviceInfo;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 689
    const-string v1, "eas_account_policy"

    new-instance v2, Lcom/android/server/enterprise/ExchangeAccountPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/ExchangeAccountPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 691
    const-string v1, "email_account_policy"

    new-instance v2, Lcom/android/server/enterprise/EmailAccountPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 693
    const-string v1, "location_policy"

    new-instance v2, Lcom/android/server/enterprise/LocationPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/LocationPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 695
    const-string v1, "misc_policy"

    new-instance v2, Lcom/android/server/enterprise/MiscPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/MiscPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 696
    new-instance v1, Lcom/android/server/enterprise/RestrictionPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/RestrictionPolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mRestrictionPolicy:Lcom/android/server/enterprise/RestrictionPolicy;

    .line 697
    const-string v1, "restriction_policy"

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mRestrictionPolicy:Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 698
    new-instance v1, Lcom/android/server/enterprise/PasswordPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/PasswordPolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPasswordPolicy:Lcom/android/server/enterprise/PasswordPolicy;

    .line 699
    const-string v1, "password_policy"

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPasswordPolicy:Lcom/android/server/enterprise/PasswordPolicy;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 700
    const-string v1, "security_policy"

    new-instance v2, Lcom/android/server/enterprise/SecurityPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/SecurityPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 702
    const-string v1, "roaming_policy"

    new-instance v2, Lcom/android/server/enterprise/RoamingPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/RoamingPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 704
    new-instance v1, Lcom/android/server/enterprise/WifiPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/WifiPolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mWifiPolicy:Lcom/android/server/enterprise/WifiPolicy;

    .line 705
    const-string v1, "wifi_policy"

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mWifiPolicy:Lcom/android/server/enterprise/WifiPolicy;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 706
    new-instance v1, Lcom/android/server/enterprise/BluetoothPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/BluetoothPolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mBluetoothPolicy:Lcom/android/server/enterprise/BluetoothPolicy;

    .line 707
    const-string v1, "bluetooth_policy"

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mBluetoothPolicy:Lcom/android/server/enterprise/BluetoothPolicy;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 708
    const-string v1, "firewall_policy"

    new-instance v2, Lcom/android/server/enterprise/FirewallPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/FirewallPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 710
    const-string v1, "vpn_policy"

    new-instance v2, Lcom/android/server/enterprise/VpnInfoPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/VpnInfoPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 711
    const-string v1, "enterprise_vpn_policy"

    new-instance v2, Lcom/android/server/enterprise/EnterpriseVpnPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/EnterpriseVpnPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 713
    const-string v1, "apn_settings_policy"

    new-instance v2, Lcom/android/server/enterprise/ApnSettingsPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/ApnSettingsPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 715
    const-string v1, "phone_restriction_policy"

    new-instance v2, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 717
    const-string v1, "browser_policy"

    new-instance v2, Lcom/android/server/enterprise/BrowserPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/BrowserPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 721
    const-string v1, "date_time_policy"

    new-instance v2, Lcom/android/server/enterprise/DateTimePolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/DateTimePolicy;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 723
    const-string v1, "remoteinjection"

    new-instance v2, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13c
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_13c} :catch_13d

    .line 728
    :goto_13c
    return-void

    .line 725
    :catch_13d
    move-exception v0

    .line 726
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure creating Policy services"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13c
.end method

.method private checkIfMigrationNeeded(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 5
    .parameter "db"

    .prologue
    const/4 v0, 0x1

    .line 779
    const-string v1, "DmAppInfo"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 818
    :cond_9
    :goto_9
    return v0

    .line 782
    :cond_a
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camera_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 784
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "microphone_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 786
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 788
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 790
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_wap_push_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 793
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_data_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 795
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_auto_sync_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 801
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_b8

    .line 802
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_tether_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 804
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_tether_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 807
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_debugging_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 810
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_tether_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 813
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_capture_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 818
    :cond_b8
    const/4 v0, 0x0

    goto/16 :goto_9
.end method

.method private enforceSystemUser()V
    .registers 3

    .prologue
    .line 598
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 599
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_12
    return-void
.end method

.method private findAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .registers 9
    .parameter "adminName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 413
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 414
    .local v2, resolveIntent:Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 415
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 417
    .local v1, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_36

    .line 418
    :cond_1d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 422
    :cond_36
    :try_start_36
    new-instance v4, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4, v6, v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_44
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_44} :catch_46
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_44} :catch_49

    move-object v3, v4

    .line 428
    :goto_45
    return-object v3

    .line 423
    :catch_46
    move-exception v0

    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    move-object v3, v5

    .line 425
    goto :goto_45

    .line 426
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_49
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    move-object v3, v5

    .line 428
    goto :goto_45
.end method

.method private getActiveAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .registers 5
    .parameter "adminReceiver"

    .prologue
    .line 171
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 172
    .local v0, auxAdm:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 176
    .end local v0           #auxAdm:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private handleDowngrade()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 647
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "handleDowngrade: Checking Downgrade..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v1, 0x0

    .line 649
    .local v1, edmDB:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "enterprise.db"

    .line 651
    .local v2, edmDBPath:Ljava/lang/String;
    :try_start_b
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_43

    move-result-object v1

    .line 658
    :goto_13
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 659
    .local v3, oldVersion:I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 661
    const/4 v4, 0x3

    if-le v3, v4, :cond_42

    .line 662
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Current Platform Version is older than the previous DB version"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Deleting EDM Databases - enterprise.db and dmapprmgr.db"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/enterprise.db"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 665
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/dmappmgr.db"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 666
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    .line 668
    :cond_42
    return-void

    .line 653
    .end local v3           #oldVersion:I
    :catch_43
    move-exception v0

    .line 655
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not open or create databse"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 7
    .parameter "db"
    .parameter "table"

    .prologue
    .line 764
    const/4 v1, 0x0

    .line 765
    .local v1, exists:Z
    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 767
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT 1 FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE 1=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_2d

    .line 768
    const/4 v1, 0x1

    .line 774
    :cond_2c
    :goto_2c
    return v1

    .line 769
    :catch_2d
    move-exception v0

    .line 770
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 771
    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTableExists EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method private loadActiveAdmins()V
    .registers 12

    .prologue
    .line 437
    monitor-enter p0

    .line 438
    :try_start_1
    const-string v8, "EnterpriseDeviceManagerService"

    const-string v9, "loadActiveAdmins"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "ADMIN"

    const-string v10, "adminUid"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 441
    .local v7, uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 442
    .local v6, storedUid:I
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "ADMIN"

    const-string v10, "adminName"

    invoke-virtual {v8, v6, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, pkgName:Ljava/lang/String;
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_62

    move-result-object v1

    .line 447
    .local v1, compName:Landroid/content/ComponentName;
    :try_start_34
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 448
    .local v0, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_9b

    .line 449
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 450
    .local v2, currentUid:I
    if-ne v2, v6, :cond_6b

    .line 451
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 452
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_34 .. :try_end_5a} :catchall_62
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_5a} :catch_5b

    goto :goto_16

    .line 507
    .end local v0           #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v2           #currentUid:I
    :catch_5b
    move-exception v3

    .line 509
    .local v3, e:Ljava/lang/RuntimeException;
    :try_start_5c
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->removeAdminFromDatabase(I)Z

    goto :goto_16

    .line 515
    .end local v1           #compName:Landroid/content/ComponentName;
    .end local v3           #e:Ljava/lang/RuntimeException;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #pkgName:Ljava/lang/String;
    .end local v6           #storedUid:I
    .end local v7           #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_62
    move-exception v8

    monitor-exit p0
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_62

    throw v8

    .line 459
    .restart local v0       #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v1       #compName:Landroid/content/ComponentName;
    .restart local v2       #currentUid:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #pkgName:Ljava/lang/String;
    .restart local v6       #storedUid:I
    .restart local v7       #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_65
    :try_start_65
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->removeAdminFromDatabase(I)Z

    goto :goto_16

    .line 469
    :cond_6b
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "ADMIN"

    const-string v10, "adminUid"

    invoke-virtual {v8, v6, v9, v10, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_94

    .line 476
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_8e

    .line 477
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 484
    :cond_8e
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v8, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->removeAdminFromDatabase(I)Z

    goto :goto_16

    .line 494
    :cond_94
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->removeAdminFromDatabase(I)Z

    goto/16 :goto_16

    .line 502
    .end local v2           #currentUid:I
    :cond_9b
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->removeAdminFromDatabase(I)Z
    :try_end_a0
    .catchall {:try_start_65 .. :try_end_a0} :catchall_62
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_a0} :catch_5b

    goto/16 :goto_16

    .line 515
    .end local v0           #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v1           #compName:Landroid/content/ComponentName;
    .end local v5           #pkgName:Ljava/lang/String;
    .end local v6           #storedUid:I
    :cond_a2
    :try_start_a2
    monitor-exit p0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_62

    .line 516
    return-void
.end method

.method private migrateFromV1()V
    .registers 24

    .prologue
    .line 942
    const/4 v10, 0x0

    .line 944
    .local v10, dmappmgrDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v20, "EnterpriseDeviceManagerService"

    const-string v21, "Check for migration from 1.0"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "MDM1.0To2.1MigrationChecked"

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 948
    .local v16, migrationChecked:Ljava/lang/String;
    if-eqz v16, :cond_2f

    const-string v20, "true"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2f

    .line 949
    const-string v20, "EnterpriseDeviceManagerService"

    const-string v21, "Migration from 1.0 already done"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_29d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_8c

    .line 1038
    if-eqz v10, :cond_2e

    .line 1039
    :goto_2b
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1043
    .end local v16           #migrationChecked:Ljava/lang/String;
    :cond_2e
    :goto_2e
    return-void

    .line 953
    .restart local v16       #migrationChecked:Ljava/lang/String;
    :cond_2f
    :try_start_2f
    const-string v11, "dmappmgr.db"
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_29d
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_31} :catch_8c

    .line 955
    .local v11, dmappmgrDBPath:Ljava/lang/String;
    :try_start_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_44
    .catchall {:try_start_31 .. :try_end_44} :catchall_29d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_44} :catch_70

    move-result-object v10

    .line 961
    :goto_45
    :try_start_45
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkIfMigrationNeeded(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v20

    if-nez v20, :cond_c4

    .line 962
    const-string v20, "EnterpriseDeviceManagerService"

    const-string v21, "No need to migrate"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 964
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "MDM1.0To2.1MigrationChecked"

    const-string v22, "true"

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1038
    if-eqz v10, :cond_2e

    goto :goto_2b

    .line 957
    :catch_70
    move-exception v12

    .line 958
    .local v12, e:Ljava/lang/Exception;
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "create or open dmappmgr EX: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_45 .. :try_end_8b} :catchall_29d
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_8b} :catch_8c

    goto :goto_45

    .line 1031
    .end local v11           #dmappmgrDBPath:Ljava/lang/String;
    .end local v12           #e:Ljava/lang/Exception;
    .end local v16           #migrationChecked:Ljava/lang/String;
    :catch_8c
    move-exception v12

    .line 1032
    .restart local v12       #e:Ljava/lang/Exception;
    :try_start_8d
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Migration v1 to v2.1 EX: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V
    :try_end_b0
    .catchall {:try_start_8d .. :try_end_b0} :catchall_29d

    .line 1038
    if-eqz v10, :cond_b5

    .line 1039
    .end local v12           #e:Ljava/lang/Exception;
    :goto_b2
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1042
    :cond_b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "MDM1.0To2.1MigrationChecked"

    const-string v22, "true"

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2e

    .line 969
    .restart local v11       #dmappmgrDBPath:Ljava/lang/String;
    .restart local v16       #migrationChecked:Ljava/lang/String;
    :cond_c4
    :try_start_c4
    const-string v20, "EnterpriseDeviceManagerService"

    const-string v21, "migrateFromV1"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    new-instance v21, Landroid/content/Intent;

    const-string v22, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x80

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 976
    .local v7, avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v7, :cond_178

    const/4 v9, 0x0

    .line 977
    .local v9, count:I
    :goto_e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v4

    .line 978
    .local v4, activeAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 979
    .local v5, activeEdmAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    const/4 v15, 0x0

    .local v15, i:I
    :goto_f5
    if-ge v15, v9, :cond_17e

    .line 980
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 981
    .local v17, ri:Landroid/content/pm/ResolveInfo;
    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    .local v8, cn:Landroid/content/ComponentName;
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_174

    .line 984
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Active Admin : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    new-instance v13, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 986
    .local v13, edai:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v13}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->parseRequestedPermissions()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_174

    .line 987
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Enterprise Admin : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    .end local v13           #edai:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_174
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_f5

    .line 976
    .end local v4           #activeAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v5           #activeEdmAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    .end local v8           #cn:Landroid/content/ComponentName;
    .end local v9           #count:I
    .end local v15           #i:I
    .end local v17           #ri:Landroid/content/pm/ResolveInfo;
    :cond_178
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    goto/16 :goto_e5

    .line 993
    .restart local v4       #activeAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v5       #activeEdmAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    .restart local v9       #count:I
    .restart local v15       #i:I
    :cond_17e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_19e

    .line 994
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "MDM1.0To2.1MigrationChecked"

    const-string v22, "true"

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1038
    if-eqz v10, :cond_2e

    goto/16 :goto_2b

    .line 997
    :cond_19e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1c4

    .line 999
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "MDM1.0To2.1MigrationChecked"

    const-string v22, "true"

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1038
    if-eqz v10, :cond_2e

    goto/16 :goto_2b

    .line 1002
    :cond_1c4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_274

    .line 1004
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 1005
    .local v6, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    .line 1006
    .local v18, uid:I
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Start migration for : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 1013
    .local v19, values:Landroid/content/ContentValues;
    const-string v20, "adminUid"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1014
    const-string v20, "adminName"

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const-string v20, "canRemove"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v21, v0

    const-string v22, "ADMIN"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_25d
    .catchall {:try_start_c4 .. :try_end_25d} :catchall_29d
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_25d} :catch_8c

    .line 1022
    :try_start_25d
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateFromV1Setting(I)Z

    .line 1023
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateFromV1DmAppInfo(Landroid/database/sqlite/SQLiteDatabase;I)Z

    .line 1024
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V
    :try_end_274
    .catchall {:try_start_25d .. :try_end_274} :catchall_29d
    .catch Ljava/lang/Exception; {:try_start_25d .. :try_end_274} :catch_278

    .line 1038
    .end local v6           #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v18           #uid:I
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_274
    :goto_274
    if-eqz v10, :cond_b5

    goto/16 :goto_b2

    .line 1025
    .restart local v6       #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v18       #uid:I
    .restart local v19       #values:Landroid/content/ContentValues;
    :catch_278
    move-exception v14

    .line 1026
    .local v14, ex:Ljava/lang/Exception;
    :try_start_279
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Setting Migration EX: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V
    :try_end_29c
    .catchall {:try_start_279 .. :try_end_29c} :catchall_29d
    .catch Ljava/lang/Exception; {:try_start_279 .. :try_end_29c} :catch_8c

    goto :goto_274

    .line 1038
    .end local v4           #activeAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v5           #activeEdmAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    .end local v6           #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v7           #avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9           #count:I
    .end local v11           #dmappmgrDBPath:Ljava/lang/String;
    .end local v14           #ex:Ljava/lang/Exception;
    .end local v15           #i:I
    .end local v16           #migrationChecked:Ljava/lang/String;
    .end local v18           #uid:I
    .end local v19           #values:Landroid/content/ContentValues;
    :catchall_29d
    move-exception v20

    if-eqz v10, :cond_2a3

    .line 1039
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1038
    :cond_2a3
    throw v20
.end method

.method private migrateFromV1DmAppInfo(Landroid/database/sqlite/SQLiteDatabase;I)Z
    .registers 19
    .parameter "dmappmgrDB"
    .parameter "uid"

    .prologue
    .line 907
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 908
    const-string v2, "DmAppInfo"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 909
    .local v9, c:Landroid/database/Cursor;
    :goto_11
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 910
    const-string v1, "pkgname"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 911
    .local v13, pkgname:Ljava/lang/String;
    const-string v1, "installcount"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 912
    .local v12, installCount:I
    const-string v1, "uninstallcount"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 913
    .local v15, uninstallCount:I
    const-string v1, "controlstate"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 915
    .local v14, state:I
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 916
    .local v11, cv:Landroid/content/ContentValues;
    const-string v1, "packageName"

    invoke-virtual {v11, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v1, "adminUid"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v1, "applicationInstallationCount"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 919
    const-string v1, "applicationUninstallationCount"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 920
    const/4 v10, 0x0

    .line 921
    .local v10, controlState:I
    const/4 v1, 0x1

    and-int/lit8 v2, v14, 0x1

    if-ne v1, v2, :cond_6c

    .line 922
    or-int/lit8 v10, v10, 0x2

    .line 924
    :cond_6c
    const/4 v1, 0x4

    and-int/lit8 v2, v14, 0x4

    if-ne v1, v2, :cond_73

    .line 925
    or-int/lit8 v10, v10, 0x1

    .line 927
    :cond_73
    const/4 v1, 0x2

    and-int/lit8 v2, v14, 0x2

    if-ne v1, v2, :cond_7a

    .line 928
    or-int/lit8 v10, v10, 0x4

    .line 930
    :cond_7a
    const-string v1, "controlState"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 931
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION"

    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    goto :goto_11

    .line 933
    .end local v10           #controlState:I
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v12           #installCount:I
    .end local v13           #pkgname:Ljava/lang/String;
    .end local v14           #state:I
    .end local v15           #uninstallCount:I
    :cond_8d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 934
    const-string v1, "DROP TABLE DmAppInfo;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 935
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 936
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 938
    const/4 v1, 0x1

    return v1
.end method

.method private migrateFromV1Setting(I)Z
    .registers 10
    .parameter "uid"

    .prologue
    const/16 v7, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 829
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "camera_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 830
    .local v0, value:I
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "cameraEnabled"

    if-ne v0, v2, :cond_1b1

    move v1, v2

    :goto_19
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 832
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "microphone_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 833
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "microphoneEnabled"

    if-ne v0, v2, :cond_1b4

    move v1, v2

    :goto_31
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 835
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 836
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    if-ne v0, v2, :cond_1b7

    move v1, v2

    :goto_49
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 838
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bluetooth_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 839
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "bluetoothEnabled"

    if-ne v0, v2, :cond_1ba

    move v1, v2

    :goto_61
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 841
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "roaming_wap_push_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 843
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string v6, "roamingPushEnabled"

    if-ne v0, v2, :cond_1bd

    move v1, v2

    :goto_79
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 845
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "roaming_data_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 846
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string v6, "roamingDataEnabled"

    if-ne v0, v2, :cond_1c0

    move v1, v2

    :goto_91
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 848
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "roaming_auto_sync_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 850
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string v6, "roamingSyncEnabled"

    if-ne v0, v2, :cond_1c3

    move v1, v2

    :goto_a9
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 855
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v7, :cond_128

    .line 856
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "usb_tether_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 857
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "usbTetheringEnabled"

    if-ne v0, v2, :cond_1c6

    move v1, v2

    :goto_c5
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 860
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_tether_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 861
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "wifiTetheringEnabled"

    if-ne v0, v2, :cond_1c9

    move v1, v2

    :goto_dd
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 864
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "usb_debugging_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 866
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "usbDebuggingEnabled"

    if-ne v0, v2, :cond_1cc

    move v1, v2

    :goto_f5
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 869
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bluetooth_tether_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 871
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "bluetoothTetheringEnabled"

    if-ne v0, v2, :cond_1cf

    move v1, v2

    :goto_10d
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 874
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "screen_capture_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 876
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "RESTRICTION"

    const-string v5, "screenCaptureEnabled"

    if-ne v0, v2, :cond_125

    move v3, v2

    :cond_125
    invoke-virtual {v1, p1, v4, v5, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 884
    :cond_128
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "camera_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 885
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "microphone_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 886
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 887
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "bluetooth_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 888
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "roaming_wap_push_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 889
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "roaming_data_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 890
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "roaming_auto_sync_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 894
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v7, :cond_1b0

    .line 895
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "usb_tether_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 896
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_tether_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 897
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "usb_debugging_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 898
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "bluetooth_tether_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 899
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "screen_capture_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 902
    :cond_1b0
    return v2

    :cond_1b1
    move v1, v3

    .line 830
    goto/16 :goto_19

    :cond_1b4
    move v1, v3

    .line 833
    goto/16 :goto_31

    :cond_1b7
    move v1, v3

    .line 836
    goto/16 :goto_49

    :cond_1ba
    move v1, v3

    .line 839
    goto/16 :goto_61

    :cond_1bd
    move v1, v3

    .line 843
    goto/16 :goto_79

    :cond_1c0
    move v1, v3

    .line 846
    goto/16 :goto_91

    :cond_1c3
    move v1, v3

    .line 850
    goto/16 :goto_a9

    :cond_1c6
    move v1, v3

    .line 857
    goto/16 :goto_c5

    :cond_1c9
    move v1, v3

    .line 861
    goto/16 :goto_dd

    :cond_1cc
    move v1, v3

    .line 866
    goto/16 :goto_f5

    :cond_1cf
    move v1, v3

    .line 871
    goto/16 :goto_10d
.end method

.method private sendMigrationIntent(Z)V
    .registers 6
    .parameter "result"

    .prologue
    .line 757
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.sec.ENTERPRISE_MIGRATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 758
    .local v0, i:Landroid/content/Intent;
    const-string v1, "currentVersion"

    new-instance v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSdkVer()Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    const-string v1, "migrationResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 761
    return-void
.end method

.method private splitBytes([B[B[B[B)V
    .registers 9
    .parameter "b64Dec"
    .parameter "sMF"
    .parameter "sDex"
    .parameter "sRsrc"

    .prologue
    const/16 v3, 0x100

    .line 606
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, v3, :cond_c

    .line 607
    aget-byte v2, p1, v0

    aput-byte v2, p2, v0

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 609
    :cond_c
    const/4 v1, 0x0

    .local v1, j:I
    :goto_d
    if-ge v1, v3, :cond_18

    .line 610
    aget-byte v2, p1, v0

    aput-byte v2, p3, v1

    .line 609
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 612
    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-ge v1, v3, :cond_24

    .line 613
    aget-byte v2, p1, v0

    aput-byte v2, p4, v1

    .line 612
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 615
    :cond_24
    return-void
.end method


# virtual methods
.method public enforceActiveAdminPermission(Ljava/lang/String;)V
    .registers 10
    .parameter "reqPermission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, exceptionItem:Ljava/lang/SecurityException;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 126
    .local v4, uid:I
    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_a

    .line 168
    :goto_9
    return-void

    .line 130
    :cond_a
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 132
    .local v0, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_31

    .line 133
    new-instance v2, Ljava/lang/SecurityException;

    .end local v2           #exceptionItem:Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No active admin owned by uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 134
    .restart local v2       #exceptionItem:Ljava/lang/SecurityException;
    throw v2

    .line 136
    :cond_31
    const/4 v3, 0x0

    .line 139
    .local v3, permissionGranted:Z
    if-eqz p1, :cond_3e

    :try_start_34
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3e

    .line 141
    or-int/lit8 v3, v3, 0x1

    .line 143
    .end local v3           #permissionGranted:Z
    :cond_3e
    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is permission granted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_56} :catch_71

    .line 158
    :goto_56
    if-nez v3, :cond_7a

    .line 159
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin  does not have "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 153
    :catch_71
    move-exception v1

    .line 155
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "could not check calling permission"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 167
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7a
    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "enforceActiveAdminDualPermission >>>"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public getActiveAdminComponent()Landroid/content/ComponentName;
    .registers 4

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 181
    .local v0, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_17

    .line 182
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 184
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getActiveAdmins()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    monitor-enter p0

    .line 526
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 527
    .local v0, N:I
    if-gtz v0, :cond_c

    .line 528
    const/4 v2, 0x0

    monitor-exit p0

    .line 534
    :goto_b
    return-object v2

    .line 530
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 531
    .local v2, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_26

    .line 532
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 534
    :cond_26
    monitor-exit p0

    goto :goto_b

    .line 535
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_28
    move-exception v3

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v3
.end method

.method public getAdminRemovable()Z
    .registers 7

    .prologue
    .line 566
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 567
    .local v0, callingUid:I
    const/4 v2, 0x1

    .line 569
    .local v2, ret:Z
    :try_start_5
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "ADMIN"

    const-string v5, "canRemove"

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_10

    move-result v2

    .line 575
    :goto_f
    return v2

    .line 571
    :catch_10
    move-exception v1

    .line 573
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "Admin not in database, something went wrong"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .registers 4
    .parameter "comp"
    .parameter "result"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 540
    return-void
.end method

.method public hasAnyActiveAdmin()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 732
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    if-nez v1, :cond_6

    .line 740
    :cond_5
    :goto_5
    return v0

    .line 736
    :cond_6
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 740
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .registers 4
    .parameter "adminReceiver"
    .parameter "policyId"

    .prologue
    .line 189
    const/16 v0, 0x15

    if-ge p2, v0, :cond_b

    .line 190
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 192
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "adminReceiver"

    .prologue
    .line 519
    monitor-enter p0

    .line 520
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 521
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public isAdminRemovable(Landroid/content/ComponentName;)Z
    .registers 9
    .parameter "adminReceiver"

    .prologue
    .line 1047
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 1048
    .local v0, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_1f

    .line 1049
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad admin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1051
    :cond_1f
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1052
    .local v3, uid:I
    const/4 v2, 0x1

    .line 1054
    .local v2, ret:Z
    :try_start_28
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "ADMIN"

    const-string v6, "canRemove"

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_33

    move-result v2

    .line 1060
    :goto_32
    return v2

    .line 1056
    :catch_33
    move-exception v1

    .line 1058
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Admin not in database, something went wrong"

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    .line 744
    monitor-enter p0

    .line 745
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 747
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_26

    .line 748
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 749
    const/4 v2, 0x1

    monitor-exit p0

    .line 752
    :goto_22
    return v2

    .line 747
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 752
    :cond_26
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_22

    .line 753
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_29
    move-exception v2

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .registers 14
    .parameter "adminReceiver"

    .prologue
    .line 239
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "removeActiveAdmin"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    monitor-enter p0

    .line 243
    :try_start_8
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, p1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_1e
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_d} :catch_15

    .line 248
    :goto_d
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 249
    .local v0, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_21

    .line 250
    monitor-exit p0

    .line 324
    :goto_14
    return-void

    .line 244
    .end local v0           #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :catch_15
    move-exception v3

    .line 246
    .local v3, e:Ljava/lang/SecurityException;
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "could not remove activie admin , permisson not granted"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 323
    .end local v3           #e:Ljava/lang/SecurityException;
    :catchall_1e
    move-exception v9

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_1e

    throw v9

    .line 252
    .restart local v0       #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_21
    :try_start_21
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 253
    .local v8, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    if-eq v8, v9, :cond_38

    .line 256
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BIND_DEVICE_ADMIN"

    const-string v11, "Only system or itself can remove an EDM admin"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_1e

    .line 261
    :cond_38
    const/4 v1, 0x1

    .line 263
    .local v1, canRemove:Z
    :try_start_39
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "ADMIN"

    const-string v11, "canRemove"

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_1e
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_39 .. :try_end_42} :catch_47

    move-result v1

    .line 271
    if-nez v1, :cond_51

    .line 272
    :try_start_45
    monitor-exit p0

    goto :goto_14

    .line 265
    :catch_47
    move-exception v3

    .line 267
    .local v3, e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Admin not in database, something went wrong"

    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    monitor-exit p0

    goto :goto_14

    .line 276
    .end local v3           #e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    :cond_51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 278
    .local v5, ident:J
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "firewallService remove admin"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v9, "firewall_policy"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/enterprise/IFirewallPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IFirewallPolicy;
    :try_end_65
    .catchall {:try_start_45 .. :try_end_65} :catchall_1e

    move-result-object v4

    .line 282
    .local v4, firewallService:Landroid/app/enterprise/IFirewallPolicy;
    if-eqz v4, :cond_6b

    .line 283
    :try_start_68
    invoke-interface {v4, v8}, Landroid/app/enterprise/IFirewallPolicy;->removeAdmin(I)Z

    .line 285
    :cond_6b
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mWifiPolicy:Lcom/android/server/enterprise/WifiPolicy;

    if-eqz v9, :cond_74

    .line 286
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mWifiPolicy:Lcom/android/server/enterprise/WifiPolicy;

    invoke-virtual {v9}, Lcom/android/server/enterprise/WifiPolicy;->onAdminRemoved()V
    :try_end_74
    .catchall {:try_start_68 .. :try_end_74} :catchall_1e
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_74} :catch_c6

    .line 293
    :cond_74
    :goto_74
    :try_start_74
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 294
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->removeAdminFromDatabase(I)Z
    :try_end_87
    .catchall {:try_start_74 .. :try_end_87} :catchall_1e

    .line 298
    :try_start_87
    const-string v9, "phone_restriction_policy"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPhoneRestrictionPolicy;

    move-result-object v7

    .line 300
    .local v7, phone:Landroid/app/enterprise/IPhoneRestrictionPolicy;
    if-eqz v7, :cond_96

    .line 301
    invoke-interface {v7}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->updateDataLimitState()V

    .line 303
    :cond_96
    const-string v9, "device_info"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/enterprise/IDeviceInfo$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDeviceInfo;

    move-result-object v2

    .line 305
    .local v2, device:Landroid/app/enterprise/IDeviceInfo;
    if-eqz v2, :cond_a5

    .line 306
    invoke-interface {v2}, Landroid/app/enterprise/IDeviceInfo;->updateDataUsageState()V

    .line 308
    :cond_a5
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mApplicationPolicy:Lcom/android/server/enterprise/ApplicationPolicy;

    if-eqz v9, :cond_ae

    .line 309
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mApplicationPolicy:Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-virtual {v9}, Lcom/android/server/enterprise/ApplicationPolicy;->onAdminRemoved()V

    .line 311
    :cond_ae
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mRestrictionPolicy:Lcom/android/server/enterprise/RestrictionPolicy;

    if-eqz v9, :cond_b7

    .line 312
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mRestrictionPolicy:Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-virtual {v9}, Lcom/android/server/enterprise/RestrictionPolicy;->onAdminRemoved()V

    .line 314
    :cond_b7
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mBluetoothPolicy:Lcom/android/server/enterprise/BluetoothPolicy;

    if-eqz v9, :cond_c0

    .line 315
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mBluetoothPolicy:Lcom/android/server/enterprise/BluetoothPolicy;

    invoke-virtual {v9}, Lcom/android/server/enterprise/BluetoothPolicy;->onAdminRemoved()V
    :try_end_c0
    .catchall {:try_start_87 .. :try_end_c0} :catchall_1e
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_c0} :catch_cf

    .line 321
    .end local v2           #device:Landroid/app/enterprise/IDeviceInfo;
    .end local v7           #phone:Landroid/app/enterprise/IPhoneRestrictionPolicy;
    :cond_c0
    :goto_c0
    :try_start_c0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    monitor-exit p0

    goto/16 :goto_14

    .line 288
    :catch_c6
    move-exception v3

    .line 289
    .local v3, e:Landroid/os/RemoteException;
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "firewallService remove admin failed"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 317
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_cf
    move-exception v3

    .line 318
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Failed updating Data Usage State"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_c0 .. :try_end_d7} :catchall_1e

    goto :goto_c0
.end method

.method public removeActiveAdminFromDpm(Landroid/content/ComponentName;)V
    .registers 14
    .parameter "adminReceiver"

    .prologue
    .line 327
    monitor-enter p0

    .line 328
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 329
    .local v0, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_9

    .line 330
    monitor-exit p0

    .line 409
    :goto_8
    return-void

    .line 332
    :cond_9
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 333
    .local v8, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    if-eq v8, v9, :cond_20

    .line 336
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BIND_DEVICE_ADMIN"

    const-string v11, "Only system or itself can remove an EDM admin"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_2f

    .line 341
    :cond_20
    const/4 v1, 0x1

    .line 343
    .local v1, canRemove:Z
    :try_start_21
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "ADMIN"

    const-string v11, "canRemove"

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2f
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_21 .. :try_end_2a} :catch_32

    move-result v1

    .line 351
    if-nez v1, :cond_3c

    .line 352
    :try_start_2d
    monitor-exit p0

    goto :goto_8

    .line 408
    .end local v0           #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v1           #canRemove:Z
    .end local v8           #uid:I
    :catchall_2f
    move-exception v9

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_2f

    throw v9

    .line 345
    .restart local v0       #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v1       #canRemove:Z
    .restart local v8       #uid:I
    :catch_32
    move-exception v3

    .line 347
    .local v3, e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    :try_start_33
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Admin not in database, something went wrong"

    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    monitor-exit p0

    goto :goto_8

    .line 356
    .end local v3           #e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    :cond_3c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 358
    .local v5, ident:J
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "firewallService remove admin"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v9, "firewall_policy"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/enterprise/IFirewallPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IFirewallPolicy;
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_2f

    move-result-object v4

    .line 362
    .local v4, firewallService:Landroid/app/enterprise/IFirewallPolicy;
    if-eqz v4, :cond_56

    .line 363
    :try_start_53
    invoke-interface {v4, v8}, Landroid/app/enterprise/IFirewallPolicy;->removeAdmin(I)Z
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_2f
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_56} :catch_ba

    .line 370
    :cond_56
    :goto_56
    :try_start_56
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 371
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->removeAdminFromDatabase(I)Z
    :try_end_69
    .catchall {:try_start_56 .. :try_end_69} :catchall_2f

    .line 376
    :try_start_69
    const-string v9, "phone_restriction_policy"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPhoneRestrictionPolicy;

    move-result-object v7

    .line 378
    .local v7, phone:Landroid/app/enterprise/IPhoneRestrictionPolicy;
    if-eqz v7, :cond_78

    .line 379
    invoke-interface {v7}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->updateDataLimitState()V

    .line 381
    :cond_78
    const-string v9, "device_info"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/enterprise/IDeviceInfo$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDeviceInfo;

    move-result-object v2

    .line 383
    .local v2, device:Landroid/app/enterprise/IDeviceInfo;
    if-eqz v2, :cond_87

    .line 384
    invoke-interface {v2}, Landroid/app/enterprise/IDeviceInfo;->updateDataUsageState()V

    .line 386
    :cond_87
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mApplicationPolicy:Lcom/android/server/enterprise/ApplicationPolicy;

    if-eqz v9, :cond_90

    .line 387
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mApplicationPolicy:Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-virtual {v9}, Lcom/android/server/enterprise/ApplicationPolicy;->onAdminRemoved()V

    .line 389
    :cond_90
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPasswordPolicy:Lcom/android/server/enterprise/PasswordPolicy;

    if-eqz v9, :cond_99

    .line 390
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPasswordPolicy:Lcom/android/server/enterprise/PasswordPolicy;

    invoke-virtual {v9}, Lcom/android/server/enterprise/PasswordPolicy;->updateCache()V

    .line 392
    :cond_99
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mRestrictionPolicy:Lcom/android/server/enterprise/RestrictionPolicy;

    if-eqz v9, :cond_a2

    .line 393
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mRestrictionPolicy:Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-virtual {v9}, Lcom/android/server/enterprise/RestrictionPolicy;->onAdminRemoved()V

    .line 395
    :cond_a2
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mBluetoothPolicy:Lcom/android/server/enterprise/BluetoothPolicy;

    if-eqz v9, :cond_ab

    .line 396
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mBluetoothPolicy:Lcom/android/server/enterprise/BluetoothPolicy;

    invoke-virtual {v9}, Lcom/android/server/enterprise/BluetoothPolicy;->onAdminRemoved()V

    .line 398
    :cond_ab
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mWifiPolicy:Lcom/android/server/enterprise/WifiPolicy;

    if-eqz v9, :cond_b4

    .line 399
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mWifiPolicy:Lcom/android/server/enterprise/WifiPolicy;

    invoke-virtual {v9}, Lcom/android/server/enterprise/WifiPolicy;->onAdminRemoved()V
    :try_end_b4
    .catchall {:try_start_69 .. :try_end_b4} :catchall_2f
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_b4} :catch_c3

    .line 407
    .end local v2           #device:Landroid/app/enterprise/IDeviceInfo;
    .end local v7           #phone:Landroid/app/enterprise/IPhoneRestrictionPolicy;
    :cond_b4
    :goto_b4
    :try_start_b4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 408
    monitor-exit p0

    goto/16 :goto_8

    .line 365
    :catch_ba
    move-exception v3

    .line 366
    .local v3, e:Landroid/os/RemoteException;
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "firewallService remove admin failed"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 401
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_c3
    move-exception v3

    .line 404
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Failed updating Data Usage State"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_b4 .. :try_end_cb} :catchall_2f

    goto :goto_b4
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .registers 12
    .parameter "adminReceiver"
    .parameter "refreshing"

    .prologue
    .line 199
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 201
    .local v0, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_27

    .line 202
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad admin: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 204
    :cond_27
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 205
    .local v4, uid:I
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 206
    .local v1, compName:Landroid/content/ComponentName;
    monitor-enter p0

    .line 207
    :try_start_34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_4d

    move-result-wide v2

    .line 209
    .local v2, ident:J
    if-nez p2, :cond_50

    :try_start_3a
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v6

    if-eqz v6, :cond_50

    .line 210
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Admin is already added"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_48

    .line 232
    :catchall_48
    move-exception v6

    :try_start_49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 234
    .end local v2           #ident:J
    :catchall_4d
    move-exception v6

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_4d

    throw v6

    .line 213
    .restart local v2       #ident:J
    :cond_50
    if-nez p2, :cond_9a

    .line 215
    :try_start_52
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 219
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "adminUid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    const-string v6, "adminName"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v6, "canRemove"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 224
    const-string v6, "canRemove"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 225
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v8, "ADMIN"

    invoke-virtual {v6, v7, v8, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 230
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_9a
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_9f
    .catchall {:try_start_52 .. :try_end_9f} :catchall_48

    .line 232
    :try_start_9f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 234
    monitor-exit p0
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_4d

    .line 235
    return-void
.end method

.method public setAdminRemovable(Z)Z
    .registers 7
    .parameter "removable"

    .prologue
    .line 550
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 552
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_20

    .line 553
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Admin is not active"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 555
    :cond_20
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "ADMIN"

    const-string v4, "canRemove"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 557
    .local v1, result:Z
    return v1
.end method

.method public submitEnterprisePayload([B)Z
    .registers 15
    .parameter "payload"

    .prologue
    .line 618
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 619
    .local v8, uid:I
    const/4 v9, 0x0

    .line 620
    .local v9, verified:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 622
    .local v4, ident:J
    :try_start_9
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 624
    .local v0, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_4d

    .line 625
    new-instance v10, Ljava/lang/SecurityException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No active admin owned by uid"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_7b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_30} :catch_30

    .line 637
    .end local v0           #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :catch_30
    move-exception v2

    .line 639
    .local v2, e:Ljava/lang/Exception;
    :try_start_31
    const-string v10, "EnterpriseDeviceManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "could not retrieve admin info"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_31 .. :try_end_49} :catchall_7b

    .line 641
    .end local v2           #e:Ljava/lang/Exception;
    :cond_49
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 643
    return v9

    .line 628
    .restart local v0       #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_4d
    :try_start_4d
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 629
    .local v1, apkPath:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/server/enterprise/PayloadAccessControlVerifier;->verifyPayload(Ljava/lang/String;[B)Z

    move-result v9

    .line 631
    if-eqz v9, :cond_49

    .line 632
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->parseRequestedPermissions()Ljava/util/ArrayList;

    move-result-object v7

    .line 633
    .local v7, perms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_63
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 634
    .local v6, p:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-interface {v10, v11, v6}, Landroid/content/pm/IPackageManager;->updateExternalPermissions(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_4d .. :try_end_7a} :catchall_7b
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_7a} :catch_30

    goto :goto_63

    .line 641
    .end local v0           #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v1           #apkPath:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #p:Ljava/lang/String;
    .end local v7           #perms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_7b
    move-exception v10

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 587
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateFromV1()V

    .line 589
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->loadActiveAdmins()V

    .line 590
    monitor-enter p0

    .line 591
    :try_start_e
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mApplicationPolicy:Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/ApplicationPolicy;->systemReady()V

    .line 592
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPasswordPolicy:Lcom/android/server/enterprise/PasswordPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/PasswordPolicy;->updateCache()V

    .line 593
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mWifiPolicy:Lcom/android/server/enterprise/WifiPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy;->systemReady()V

    .line 594
    monitor-exit p0

    .line 595
    return-void

    .line 594
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_1f

    throw v0
.end method
