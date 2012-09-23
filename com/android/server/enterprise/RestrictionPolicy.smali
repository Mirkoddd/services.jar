.class public Lcom/android/server/enterprise/RestrictionPolicy;
.super Landroid/app/enterprise/IRestrictionPolicy$Stub;
.source "RestrictionPolicy.java"


# static fields
.field private static final BROADCAST_DELAY:I = 0x1388

.field private static final MESSAGE_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RestrictionPolicy"

.field private static final USB_MODE_NONE:I = 0x5

.field private static final UsbProperty:Ljava/lang/String; = "persist.service.usb.setting"

.field private static mHomekeyPolicySet:I


# instance fields
.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mHandler:Landroid/os/Handler;

.field private mNetworkPolicyService:Landroid/net/INetworkPolicyManager;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "ctx"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;-><init>()V

    .line 86
    new-instance v1, Lcom/android/server/enterprise/RestrictionPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/RestrictionPolicy$1;-><init>(Lcom/android/server/enterprise/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 95
    new-instance v1, Lcom/android/server/enterprise/RestrictionPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/RestrictionPolicy$2;-><init>(Lcom/android/server/enterprise/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 246
    new-instance v1, Lcom/android/server/enterprise/RestrictionPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/RestrictionPolicy$3;-><init>(Lcom/android/server/enterprise/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    .line 66
    iput-object p1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 67
    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v0, filterBoot:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/RestrictionPolicy;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/RestrictionPolicy;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateUSBMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/RestrictionPolicy;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/RestrictionPolicy;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private disableNFC()V
    .registers 5

    .prologue
    .line 808
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 810
    .local v2, token:J
    :try_start_4
    invoke-static {}, Landroid/nfc/NfcAdapter;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 811
    .local v1, nfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_f

    .line 815
    .end local v1           #nfcAdapter:Landroid/nfc/NfcAdapter;
    :goto_b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 816
    return-void

    .line 812
    :catch_f
    move-exception v0

    .line 813
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method private enforceHwPermission()I
    .registers 3

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_HW_CONTROL"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceLocationPermission()I
    .registers 3

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceRestrictionPermission()I
    .registers 3

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_RESTRICTION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceTetheringPermission()I
    .registers 3

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_RESTRICTION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 131
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 133
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private matchRegex([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "tetherableRegexs"
    .parameter "iface"

    .prologue
    .line 290
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_12

    aget-object v3, v0, v1

    .line 291
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 292
    const/4 v4, 0x1

    .line 294
    .end local v3           #regex:Ljava/lang/String;
    :goto_e
    return v4

    .line 290
    .restart local v3       #regex:Ljava/lang/String;
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 294
    .end local v3           #regex:Ljava/lang/String;
    :cond_12
    const/4 v4, 0x0

    goto :goto_e
.end method

.method private updateCameraState()V
    .registers 7

    .prologue
    .line 1337
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1339
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1341
    .local v2, token:J
    :try_start_e
    const-string v5, "sys.secpolicy.camera.disabled"

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_1e

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_27

    :cond_1e
    const-string v4, "1"

    :goto_20
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_23} :catch_2a

    .line 1348
    :goto_23
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1349
    return-void

    .line 1341
    :cond_27
    :try_start_27
    const-string v4, "0"
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_29} :catch_2a

    goto :goto_20

    .line 1345
    :catch_2a
    move-exception v1

    .line 1346
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "RestrictionPolicy"

    const-string v5, "updateCameraState error"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private updateHomeKeyPolicySet()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 1279
    const/4 v1, 0x0

    .line 1281
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "homeKeyEnabled"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1284
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1285
    .local v2, value:Z
    if-nez v2, :cond_10

    .line 1286
    const/4 v1, 0x1

    .line 1290
    .end local v2           #value:Z
    :cond_23
    if-ne v1, v5, :cond_43

    move v4, v5

    :goto_26
    sput v4, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    .line 1291
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHomeKeyPolicySet():mHomekeyPolicySet:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    return-void

    .line 1290
    :cond_43
    const/4 v4, 0x0

    goto :goto_26
.end method

.method private updateUSBMode()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1164
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 1167
    iget-object v0, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1171
    :cond_21
    return-void
.end method


# virtual methods
.method public allowFactoryReset(Z)Z
    .registers 7
    .parameter "allow"

    .prologue
    .line 1248
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1249
    .local v0, callingUid:I
    const/4 v1, 0x0

    .line 1251
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "factoryresetallowed"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1254
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowFactoryReset():set :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    return v1
.end method

.method public allowSettingsChanges(Z)Z
    .registers 18
    .parameter "allow"

    .prologue
    .line 899
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v2

    .line 900
    .local v2, callingUid:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "RESTRICTION"

    const-string v15, "allowSettingsChanges"

    move/from16 v0, p1

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 903
    .local v8, ret:Z
    if-eqz v8, :cond_87

    .line 904
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 905
    .local v11, token:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v14, "activity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 907
    .local v1, am:Landroid/app/ActivityManager;
    const/16 v13, 0xc

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v7

    .line 909
    .local v7, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const-string v9, "com.android.settings"

    .line 910
    .local v9, settingsPkg:Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_76

    .line 911
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_76

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 912
    .local v10, task:Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v5, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 913
    .local v5, origInt:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 914
    .local v3, cmp:Landroid/content/ComponentName;
    if-eqz v3, :cond_37

    .line 915
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 916
    .local v6, packageName:Ljava/lang/String;
    const-string v13, "RestrictionPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "packageName "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    if-eqz v6, :cond_37

    const-string v13, "com.android.settings"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_37

    .line 920
    const-string v13, "com.android.settings"

    invoke-virtual {v1, v13}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 926
    .end local v3           #cmp:Landroid/content/ComponentName;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #origInt:Landroid/content/Intent;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v10           #task:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_76
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "edm.intent.action.allow.settings"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 928
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 930
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v7           #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v9           #settingsPkg:Ljava/lang/String;
    .end local v11           #token:J
    :cond_87
    return v8
.end method

.method public getSDCardState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 995
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBackgroundDataEnabled()Z
    .registers 8

    .prologue
    .line 1227
    const/4 v1, 0x1

    .line 1228
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "backgroundDataEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1229
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

    .line 1230
    .local v2, value:Z
    if-nez v2, :cond_f

    .line 1231
    move v1, v2

    .line 1235
    .end local v2           #value:Z
    :cond_22
    return v1
.end method

.method public isBackupAllowed(Z)Z
    .registers 10
    .parameter "showMsg"

    .prologue
    .line 772
    const/4 v2, 0x1

    .line 773
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "backupEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 776
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

    .line 777
    .local v3, value:Z
    if-nez v3, :cond_f

    .line 778
    move v2, v3

    .line 782
    .end local v3           #value:Z
    :cond_22
    if-eqz p1, :cond_40

    if-nez v2, :cond_40

    .line 783
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 784
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401d2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 788
    .end local v0           #i:Landroid/content/Intent;
    :cond_40
    return v2
.end method

.method public isBluetoothTetheringEnabled()Z
    .registers 8

    .prologue
    .line 451
    const/4 v1, 0x1

    .line 452
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "bluetoothTetheringEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 455
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

    .line 456
    .local v2, value:Z
    if-nez v2, :cond_f

    .line 457
    move v1, v2

    .line 461
    .end local v2           #value:Z
    :cond_22
    return v1
.end method

.method public isCameraEnabled(Z)Z
    .registers 10
    .parameter "showMsg"

    .prologue
    .line 203
    const/4 v2, 0x1

    .line 204
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "cameraEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 207
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

    .line 208
    .local v3, value:Z
    if-nez v3, :cond_f

    .line 209
    move v2, v3

    .line 213
    .end local v3           #value:Z
    :cond_22
    if-eqz p1, :cond_40

    if-nez v2, :cond_40

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401ce

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 219
    .end local v0           #i:Landroid/content/Intent;
    :cond_40
    return v2
.end method

.method public isCellularDataAllowed()Z
    .registers 8

    .prologue
    .line 878
    const/4 v1, 0x1

    .line 879
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "cellularDataEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 882
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

    .line 883
    .local v2, value:Z
    if-nez v2, :cond_f

    .line 884
    move v1, v2

    .line 888
    .end local v2           #value:Z
    :cond_22
    return v1
.end method

.method public isClipboardAllowed(Z)Z
    .registers 10
    .parameter "showMsg"

    .prologue
    .line 1039
    const/4 v2, 0x1

    .line 1040
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "clipboardEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1043
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

    .line 1044
    .local v3, value:Z
    if-nez v3, :cond_f

    .line 1045
    move v2, v3

    .line 1049
    .end local v3           #value:Z
    :cond_22
    if-eqz p1, :cond_40

    if-nez v2, :cond_40

    .line 1050
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1051
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401d3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1056
    .end local v0           #i:Landroid/content/Intent;
    :cond_40
    return v2
.end method

.method public isFactoryResetAllowed()Z
    .registers 8

    .prologue
    .line 1264
    const/4 v1, 0x1

    .line 1265
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "factoryresetallowed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1268
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

    .line 1269
    .local v2, value:Z
    if-nez v2, :cond_f

    .line 1270
    move v1, v2

    .line 1274
    .end local v2           #value:Z
    :cond_22
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFactoryResetAllowed():ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    return v1
.end method

.method public isHomeKeyEnabled()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1325
    const/4 v0, 0x1

    .line 1327
    .local v0, ret:Z
    sget v2, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 1328
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateHomeKeyPolicySet()V

    .line 1330
    :cond_a
    sget v2, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    if-ne v2, v1, :cond_28

    const/4 v0, 0x0

    .line 1332
    :goto_f
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHomeKeyEnabled :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    return v0

    :cond_28
    move v0, v1

    .line 1330
    goto :goto_f
.end method

.method public isMicrophoneEnabled(Z)Z
    .registers 11
    .parameter "showMsg"

    .prologue
    .line 267
    const/4 v2, 0x1

    .line 268
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "microphoneEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 271
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

    .line 272
    .local v3, value:Z
    if-nez v3, :cond_f

    .line 273
    move v2, v3

    .line 277
    .end local v3           #value:Z
    :cond_22
    if-eqz p1, :cond_4e

    if-nez v2, :cond_4e

    .line 278
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401cf

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 282
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 284
    .end local v0           #i:Landroid/content/Intent;
    :cond_4e
    return v2
.end method

.method public isMockLocationEnabled()Z
    .registers 8

    .prologue
    .line 716
    const/4 v1, 0x1

    .line 717
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "mockLocationEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 720
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

    .line 721
    .local v2, value:Z
    if-nez v2, :cond_f

    .line 722
    move v1, v2

    .line 726
    .end local v2           #value:Z
    :cond_22
    return v1
.end method

.method public isNFCEnabled()Z
    .registers 8

    .prologue
    .line 823
    const/4 v1, 0x1

    .line 824
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "nfcEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 827
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

    .line 828
    .local v2, value:Z
    if-nez v2, :cond_f

    .line 829
    move v1, v2

    .line 833
    .end local v2           #value:Z
    :cond_22
    return v1
.end method

.method public isNonMarketAppAllowed()Z
    .registers 8

    .prologue
    .line 1174
    const-string v4, "RestrictionPolicy"

    const-string v5, "MiscPolicy.isNonMarketAppAllowed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "allowNonMarketApp"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1178
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v2, 0x1

    .line 1179
    .local v2, ret:Z
    if-eqz v1, :cond_34

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_34

    .line 1180
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1181
    .local v3, value:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1182
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1187
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #value:Ljava/lang/Boolean;
    :cond_34
    return v2
.end method

.method public isScreenCaptureEnabled(Z)Z
    .registers 10
    .parameter "showMsg"

    .prologue
    .line 555
    const/4 v2, 0x1

    .line 556
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "screenCaptureEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 559
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

    .line 560
    .local v3, value:Z
    if-nez v3, :cond_f

    .line 561
    move v2, v3

    .line 565
    .end local v3           #value:Z
    :cond_22
    if-eqz p1, :cond_40

    if-nez v2, :cond_40

    .line 566
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401d0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 572
    .end local v0           #i:Landroid/content/Intent;
    :cond_40
    return v2
.end method

.method public isSdCardEnabled()Z
    .registers 8

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getSDCardState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    .line 1004
    const/4 v1, 0x0

    .line 1016
    :cond_7
    :goto_7
    return v1

    .line 1006
    :cond_8
    const/4 v1, 0x1

    .line 1007
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "sdCardEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1010
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1011
    .local v2, value:Z
    if-nez v2, :cond_17

    .line 1012
    move v1, v2

    .line 1013
    goto :goto_7
.end method

.method public isSettingsChangesAllowed(Z)Z
    .registers 10
    .parameter "showMsg"

    .prologue
    .line 941
    const/4 v2, 0x1

    .line 942
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "allowSettingsChanges"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 943
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

    .line 944
    .local v3, value:Z
    if-nez v3, :cond_f

    .line 945
    move v2, v3

    .line 949
    .end local v3           #value:Z
    :cond_22
    if-eqz p1, :cond_40

    if-nez v2, :cond_40

    .line 950
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 951
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401d7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 954
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 956
    .end local v0           #i:Landroid/content/Intent;
    :cond_40
    return v2
.end method

.method public isTetheringEnabled()Z
    .registers 5

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isUsbTetheringEnabled()Z

    move-result v0

    .line 317
    .local v0, ret1:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v1

    .line 318
    .local v1, ret2:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->isBluetoothTetheringEnabled()Z

    move-result v2

    .line 319
    .local v2, ret3:Z
    if-nez v0, :cond_12

    if-nez v1, :cond_12

    if-eqz v2, :cond_14

    :cond_12
    const/4 v3, 0x1

    :goto_13
    return v3

    :cond_14
    const/4 v3, 0x0

    goto :goto_13
.end method

.method public isUsbDebuggingEnabled()Z
    .registers 8

    .prologue
    .line 608
    const/4 v1, 0x1

    .line 609
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "usbDebuggingEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 612
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

    .line 613
    .local v2, value:Z
    if-nez v2, :cond_f

    .line 614
    move v1, v2

    .line 618
    .end local v2           #value:Z
    :cond_22
    return v1
.end method

.method public isUsbKiesAvailable(Z)Z
    .registers 3
    .parameter "showMsg"

    .prologue
    .line 1087
    const/4 v0, 0x0

    return v0
.end method

.method public isUsbMassStorageEnabled(Z)Z
    .registers 10
    .parameter "showMsg"

    .prologue
    .line 662
    const/4 v2, 0x1

    .line 663
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "massStorageEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 666
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

    .line 667
    .local v3, value:Z
    if-nez v3, :cond_f

    .line 668
    move v2, v3

    .line 672
    .end local v3           #value:Z
    :cond_22
    if-eqz p1, :cond_40

    if-nez v2, :cond_40

    .line 673
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401cd

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 679
    .end local v0           #i:Landroid/content/Intent;
    :cond_40
    return v2
.end method

.method public isUsbMediaPlayerAvailable(Z)Z
    .registers 10
    .parameter "showMsg"

    .prologue
    .line 1121
    const/4 v2, 0x1

    .line 1122
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "usbMediaPlayerEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1125
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

    .line 1126
    .local v3, value:Z
    if-nez v3, :cond_f

    .line 1127
    move v2, v3

    .line 1131
    .end local v3           #value:Z
    :cond_22
    if-eqz p1, :cond_40

    if-nez v2, :cond_40

    .line 1132
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1133
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401d5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1136
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1138
    .end local v0           #i:Landroid/content/Intent;
    :cond_40
    return v2
.end method

.method public isUsbTetheringEnabled()Z
    .registers 8

    .prologue
    .line 356
    const/4 v1, 0x1

    .line 357
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "usbTetheringEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 360
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

    .line 361
    .local v2, value:Z
    if-nez v2, :cond_f

    .line 362
    move v1, v2

    .line 366
    .end local v2           #value:Z
    :cond_22
    return v1
.end method

.method public isWifiTetheringEnabled()Z
    .registers 8

    .prologue
    .line 405
    const/4 v1, 0x1

    .line 406
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "wifiTetheringEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 409
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

    .line 410
    .local v2, value:Z
    if-nez v2, :cond_f

    .line 411
    move v1, v2

    .line 415
    .end local v2           #value:Z
    :cond_22
    return v1
.end method

.method onAdminRemoved()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    .line 76
    const-string v3, "screenCaptureEnabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_4a

    move v0, v1

    :goto_19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/data/system/enterprise.conf"

    invoke-static {v3, v0, v4}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateCameraState()V

    .line 81
    const-string v0, "microphoneEnabled"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v4

    if-eqz v4, :cond_4c

    :goto_3c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/system/enterprise.conf"

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    return-void

    :cond_4a
    move v0, v2

    .line 76
    goto :goto_19

    :cond_4c
    move v1, v2

    .line 81
    goto :goto_3c
.end method

.method public setAllowNonMarketApps(Z)Z
    .registers 9
    .parameter "allow"

    .prologue
    .line 1061
    const-string v4, "RestrictionPolicy"

    const-string v5, "MiscPolicy.setAllowNonMarketApps"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1063
    .local v0, callingUid:I
    const/4 v1, 0x1

    .line 1064
    .local v1, ret:Z
    if-nez p1, :cond_22

    .line 1065
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1066
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "install_non_market_apps"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 1068
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1070
    .end local v2           #token:J
    :cond_22
    if-eqz v1, :cond_2f

    .line 1071
    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "allowNonMarketApp"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    and-int/2addr v1, v4

    .line 1074
    :cond_2f
    return v1
.end method

.method public setBackgroundData(Z)Z
    .registers 10
    .parameter "enable"

    .prologue
    .line 1198
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1199
    .local v0, callingUid:I
    const/4 v2, 0x0

    .line 1200
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1202
    .local v3, token:J
    :try_start_9
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "backgroundDataEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    and-int/2addr v2, v5

    .line 1204
    if-nez p1, :cond_34

    .line 1205
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "background_data"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1207
    const-string v5, "netpolicy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mNetworkPolicyService:Landroid/net/INetworkPolicyManager;

    .line 1209
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mNetworkPolicyService:Landroid/net/INetworkPolicyManager;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_34} :catch_51

    .line 1211
    :cond_34
    const/4 v2, 0x1

    .line 1216
    :goto_35
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setBackgroundData : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1218
    return v2

    .line 1212
    :catch_51
    move-exception v1

    .line 1213
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_35
.end method

.method public setBackup(Z)Z
    .registers 11
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    .line 737
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v1

    .line 738
    .local v1, callingUid:I
    const/4 v3, 0x1

    .line 739
    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 742
    .local v4, token:J
    if-nez p1, :cond_2a

    .line 743
    :try_start_c
    const-string v7, "backup"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 746
    .local v0, backupManager:Landroid/app/backup/IBackupManager;
    if-nez v0, :cond_20

    .line 747
    const-string v7, "RestrictionPolicy"

    const-string v8, "Failed to get BackupManager"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    .end local v0           #backupManager:Landroid/app/backup/IBackupManager;
    :goto_1f
    return v6

    .line 750
    .restart local v0       #backupManager:Landroid/app/backup/IBackupManager;
    :cond_20
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 751
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_53

    .line 753
    .end local v0           #backupManager:Landroid/app/backup/IBackupManager;
    :cond_2a
    const/4 v3, 0x1

    .line 758
    :goto_2b
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "backupEnabled"

    invoke-virtual {v6, v1, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    and-int/2addr v3, v6

    .line 761
    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBackup: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v3

    .line 763
    goto :goto_1f

    .line 754
    :catch_53
    move-exception v2

    .line 755
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 756
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b
.end method

.method public setBluetoothTethering(Z)Z
    .registers 10
    .parameter "enable"

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceTetheringPermission()I

    move-result v0

    .line 426
    .local v0, callingUid:I
    const/4 v2, 0x0

    .line 427
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 430
    .local v3, token:J
    if-nez p1, :cond_11

    .line 431
    :try_start_b
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 433
    :cond_11
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "bluetoothTetheringEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 437
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setBluetoothTethering : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_33} :catch_37

    .line 441
    :goto_33
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 442
    return v2

    .line 438
    :catch_37
    move-exception v1

    .line 439
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "RestrictionPolicy"

    const-string v6, "is EDMStorageProvider running?"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public setCamera(Z)Z
    .registers 8
    .parameter "enable"

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 182
    .local v0, callingUid:I
    :try_start_4
    iget-object v3, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "RESTRICTION"

    const-string v5, "cameraEnabled"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 185
    .local v2, ret:Z
    if-eqz v2, :cond_13

    .line 186
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateCameraState()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_14

    .line 192
    .end local v2           #ret:Z
    :cond_13
    :goto_13
    return v2

    .line 189
    :catch_14
    move-exception v1

    .line 190
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "RestrictionPolicy"

    const-string v4, "is EDMStorageProvider running?"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public setCellularData(Z)Z
    .registers 11
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    .line 844
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 845
    .local v0, callingUid:I
    const/4 v3, 0x1

    .line 846
    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 849
    .local v4, token:J
    if-nez p1, :cond_2a

    .line 850
    :try_start_c
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 852
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_20

    .line 853
    const-string v7, "RestrictionPolicy"

    const-string v8, "Failed to get Connectivity Manager"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    :goto_1f
    return v6

    .line 856
    .restart local v1       #connectivityManager:Landroid/net/ConnectivityManager;
    :cond_20
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 857
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_53

    .line 859
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    :cond_2a
    const/4 v3, 0x1

    .line 864
    :goto_2b
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "cellularDataEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    and-int/2addr v3, v6

    .line 867
    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCellularData: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v3

    .line 869
    goto :goto_1f

    .line 860
    :catch_53
    move-exception v2

    .line 861
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 862
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b
.end method

.method public setClipboardEnabled(Z)Z
    .registers 6
    .parameter "enable"

    .prologue
    .line 1027
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1028
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string v3, "clipboardEnabled"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setEnableNFC(Z)Z
    .registers 6
    .parameter "enable"

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 799
    .local v0, callingUid:I
    if-nez p1, :cond_9

    .line 800
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->disableNFC()V

    .line 802
    :cond_9
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "RESTRICTION"

    const-string v3, "nfcEnabled"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setHomeKeyState(Z)Z
    .registers 7
    .parameter "enable"

    .prologue
    .line 1308
    const/4 v1, 0x1

    .line 1309
    .local v1, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1310
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "homeKeyEnabled"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1313
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateHomeKeyPolicySet()V

    .line 1314
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHomeKeyState:ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mHomekeyPolicySet:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/enterprise/RestrictionPolicy;->mHomekeyPolicySet:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    return v1
.end method

.method public setMicrophoneState(Z)Z
    .registers 8
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 231
    .local v0, callingUid:I
    iget-object v3, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "RESTRICTION"

    const-string v5, "microphoneEnabled"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 234
    .local v1, ret:Z
    if-eqz v1, :cond_32

    .line 235
    const-string v3, "microphoneEnabled"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v2, 0x1

    :cond_25
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/data/system/enterprise.conf"

    invoke-static {v3, v2, v4}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 240
    :cond_32
    return v1
.end method

.method public setMockLocation(Z)Z
    .registers 10
    .parameter "enable"

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceLocationPermission()I

    move-result v0

    .line 690
    .local v0, callingUid:I
    const/4 v2, 0x1

    .line 691
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 693
    .local v3, token:J
    if-nez p1, :cond_17

    .line 694
    :try_start_b
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mock_location"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_3f

    .line 697
    :cond_17
    const/4 v2, 0x1

    .line 702
    :goto_18
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "mockLocationEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    and-int/2addr v2, v5

    .line 705
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMockLocationState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 707
    return v2

    .line 698
    :catch_3f
    move-exception v1

    .line 699
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 700
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public setScreenCapture(Z)Z
    .registers 16
    .parameter "enable"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 470
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 471
    .local v0, callingUid:I
    const/4 v5, 0x0

    .line 472
    .local v5, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 476
    .local v6, token:J
    :try_start_c
    iget-object v11, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v12, "RESTRICTION"

    const-string v13, "screenCaptureEnabled"

    invoke-virtual {v11, v0, v12, v13, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 478
    const-string v11, "RestrictionPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setScreenCapture : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    if-eqz v5, :cond_97

    .line 482
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v2

    .line 484
    .local v2, current:Z
    const-string v11, "screenCaptureEnabled"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v2, :cond_45

    move v10, v8

    :cond_45
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "/data/system/enterprise.conf"

    invoke-static {v11, v10, v12}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 487
    iget-object v10, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_57} :catch_a6

    move-result-object v4

    .line 490
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_58
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.app.screencapture"

    const-string v11, "com.sec.android.app.screencapture.ScreenCaptureService"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .local v1, comName:Landroid/content/ComponentName;
    if-eqz v2, :cond_9b

    move v10, v8

    :goto_64
    const/4 v11, 0x0

    invoke-virtual {v4, v1, v10, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_68} :catch_9d

    .line 503
    .end local v1           #comName:Landroid/content/ComponentName;
    :goto_68
    :try_start_68
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.diotek.screen_capture"

    const-string v11, "com.diotek.screen_capture.CaptureService"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    .restart local v1       #comName:Landroid/content/ComponentName;
    if-eqz v2, :cond_af

    move v10, v8

    :goto_74
    const/4 v11, 0x0

    invoke-virtual {v4, v1, v10, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_78} :catch_b1

    .line 517
    .end local v1           #comName:Landroid/content/ComponentName;
    :goto_78
    :try_start_78
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.diotek.screen_capture2"

    const-string v11, "com.sec.android.app.screencapture.capture.CaptureService"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    .restart local v1       #comName:Landroid/content/ComponentName;
    if-eqz v2, :cond_ba

    move v10, v8

    :goto_84
    const/4 v11, 0x0

    invoke-virtual {v4, v1, v10, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_88} :catch_bc

    .line 528
    .end local v1           #comName:Landroid/content/ComponentName;
    :goto_88
    :try_start_88
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.android.systemui"

    const-string v11, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    .restart local v1       #comName:Landroid/content/ComponentName;
    if-eqz v2, :cond_c5

    :goto_93
    const/4 v9, 0x0

    invoke-virtual {v4, v1, v8, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_97} :catch_c7

    .line 545
    .end local v1           #comName:Landroid/content/ComponentName;
    .end local v2           #current:Z
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_97
    :goto_97
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 546
    return v5

    .restart local v1       #comName:Landroid/content/ComponentName;
    .restart local v2       #current:Z
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_9b
    move v10, v9

    .line 493
    goto :goto_64

    .line 498
    .end local v1           #comName:Landroid/content/ComponentName;
    :catch_9d
    move-exception v3

    .line 499
    .local v3, e:Ljava/lang/Exception;
    :try_start_9e
    const-string v10, "RestrictionPolicy"

    const-string v11, "is component enabled?"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a5} :catch_a6

    goto :goto_68

    .line 542
    .end local v2           #current:Z
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :catch_a6
    move-exception v3

    .line 543
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "RestrictionPolicy"

    const-string v9, "setScreenCapture error"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #comName:Landroid/content/ComponentName;
    .restart local v2       #current:Z
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_af
    move v10, v9

    .line 507
    goto :goto_74

    .line 512
    .end local v1           #comName:Landroid/content/ComponentName;
    :catch_b1
    move-exception v3

    .line 513
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_b2
    const-string v10, "RestrictionPolicy"

    const-string v11, "is component enabled?"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #comName:Landroid/content/ComponentName;
    :cond_ba
    move v10, v9

    .line 520
    goto :goto_84

    .line 523
    .end local v1           #comName:Landroid/content/ComponentName;
    :catch_bc
    move-exception v3

    .line 524
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v10, "RestrictionPolicy"

    const-string v11, "is component enabled?"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #comName:Landroid/content/ComponentName;
    :cond_c5
    move v8, v9

    .line 531
    goto :goto_93

    .line 536
    .end local v1           #comName:Landroid/content/ComponentName;
    :catch_c7
    move-exception v3

    .line 537
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "RestrictionPolicy"

    const-string v9, "is component enabled?"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_cf} :catch_a6

    goto :goto_97
.end method

.method public setSdCardState(Z)Z
    .registers 11
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 965
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceHwPermission()I

    move-result v0

    .line 966
    .local v0, callingUid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->getSDCardState()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c

    .line 986
    :goto_b
    return v3

    .line 969
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 970
    .local v4, token:J
    const/4 v3, 0x1

    .line 971
    .local v3, ret:Z
    const-string v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 973
    .local v2, mountService:Landroid/os/storage/IMountService;
    :try_start_1b
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "sdCardEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    and-int/2addr v3, v6

    .line 976
    if-nez p1, :cond_33

    .line 977
    const-string v6, "/mnt/sdcard/external_sd"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v2, v6, v7, v8}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2f} :catch_39

    .line 985
    :goto_2f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b

    .line 979
    :cond_33
    :try_start_33
    const-string v6, "/mnt/sdcard/external_sd"

    invoke-interface {v2, v6}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_39

    goto :goto_2f

    .line 982
    :catch_39
    move-exception v1

    .line 983
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_2f
.end method

.method public setTethering(Z)Z
    .registers 6
    .parameter "enable"

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->setUsbTethering(Z)Z

    move-result v0

    .line 305
    .local v0, ret1:Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->setWifiTethering(Z)Z

    move-result v1

    .line 306
    .local v1, ret2:Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/RestrictionPolicy;->setBluetoothTethering(Z)Z

    move-result v2

    .line 307
    .local v2, ret3:Z
    if-eqz v0, :cond_14

    if-eqz v1, :cond_14

    if-eqz v2, :cond_14

    const/4 v3, 0x1

    :goto_13
    return v3

    :cond_14
    const/4 v3, 0x0

    goto :goto_13
.end method

.method public setUsbDebuggingEnabled(Z)Z
    .registers 10
    .parameter "enable"

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 583
    .local v0, callingUid:I
    const/4 v2, 0x1

    .line 584
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 586
    .local v3, token:J
    if-nez p1, :cond_17

    .line 587
    :try_start_b
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adb_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_3f

    .line 590
    :cond_17
    const/4 v2, 0x1

    .line 594
    :goto_18
    iget-object v5, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "usbDebuggingEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    and-int/2addr v2, v5

    .line 597
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUSBDebugging : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    return v2

    .line 591
    :catch_3f
    move-exception v1

    .line 592
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public setUsbKiesAvailability(Z)Z
    .registers 4
    .parameter "allow"

    .prologue
    .line 1079
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1081
    .local v0, callingUid:I
    const/4 v1, 0x0

    return v1
.end method

.method public setUsbMassStorage(Z)Z
    .registers 11
    .parameter "enable"

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 629
    .local v0, callingUid:I
    const/4 v2, 0x1

    .line 630
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 631
    .local v4, token:J
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "massStorageEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    and-int/2addr v2, v6

    .line 635
    if-nez p1, :cond_37

    .line 636
    :try_start_16
    iget-object v6, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 638
    .local v3, storageManager:Landroid/os/storage/StorageManager;
    if-nez v3, :cond_2b

    .line 639
    const-string v6, "RestrictionPolicy"

    const-string v7, "Failed to get StorageManager"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v6, 0x0

    .line 653
    .end local v3           #storageManager:Landroid/os/storage/StorageManager;
    :goto_2a
    return v6

    .line 643
    .restart local v3       #storageManager:Landroid/os/storage/StorageManager;
    :cond_2b
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 644
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    .line 645
    :cond_34
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->updateUSBMode()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_37} :catch_3d

    .line 647
    .end local v3           #storageManager:Landroid/os/storage/StorageManager;
    :cond_37
    const/4 v2, 0x1

    .line 652
    :goto_38
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    .line 653
    goto :goto_2a

    .line 648
    :catch_3d
    move-exception v1

    .line 649
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 650
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38
.end method

.method public setUsbMediaPlayerAvailability(Z)Z
    .registers 12
    .parameter "allow"

    .prologue
    .line 1092
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceRestrictionPermission()I

    move-result v0

    .line 1093
    .local v0, callingUid:I
    const/4 v4, 0x1

    .line 1094
    .local v4, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1095
    .local v5, token:J
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "RESTRICTION"

    const-string v9, "usbMediaPlayerEnabled"

    invoke-virtual {v7, v0, v8, v9, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    and-int/2addr v4, v7

    .line 1099
    if-nez p1, :cond_44

    .line 1101
    :try_start_16
    new-instance v2, Landroid/content/Intent;

    const-string v7, "edm.intent.action.disable.mtp"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1102
    .local v2, intent1:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1103
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1105
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1106
    .local v3, intent2:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1107
    const-string v7, "mtp"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1108
    const-string v7, "ptp"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1109
    iget-object v7, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_44} :catch_60

    .line 1114
    .end local v2           #intent1:Landroid/content/Intent;
    .end local v3           #intent2:Landroid/content/Intent;
    :cond_44
    :goto_44
    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setUSBMediaPlayerAvailability: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1116
    return v4

    .line 1111
    :catch_60
    move-exception v1

    .line 1112
    .local v1, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_44
.end method

.method public setUsbTethering(Z)Z
    .registers 15
    .parameter "enable"

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceTetheringPermission()I

    move-result v1

    .line 330
    .local v1, callingUid:I
    const/4 v6, 0x1

    .local v6, ret1:Z
    const/4 v7, 0x1

    .line 331
    .local v7, ret2:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 332
    .local v8, token:J
    if-nez p1, :cond_34

    .line 334
    iget-object v10, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 336
    .local v5, mConnManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1c
    if-ge v2, v4, :cond_34

    aget-object v3, v0, v2

    .line 337
    .local v3, iface:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v3}, Lcom/android/server/enterprise/RestrictionPolicy;->matchRegex([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 338
    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_31

    .line 339
    const/4 v6, 0x0

    .line 336
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 343
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #iface:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #mConnManager:Landroid/net/ConnectivityManager;
    :cond_34
    iget-object v10, p0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "RESTRICTION"

    const-string v12, "usbTetheringEnabled"

    invoke-virtual {v10, v1, v11, v12, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 346
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 347
    if-eqz v6, :cond_47

    if-eqz v7, :cond_47

    const/4 v10, 0x1

    :goto_46
    return v10

    :cond_47
    const/4 v10, 0x0

    goto :goto_46
.end method

.method public setWifiTethering(Z)Z
    .registers 18
    .parameter "enable"

    .prologue
    .line 376
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/RestrictionPolicy;->enforceTetheringPermission()I

    move-result v2

    .line 377
    .local v2, callingUid:I
    const/4 v8, 0x1

    .local v8, ret1:Z
    const/4 v9, 0x1

    .local v9, ret2:Z
    const/4 v10, 0x1

    .line 378
    .local v10, ret3:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 379
    .local v11, token:J
    if-nez p1, :cond_4b

    .line 380
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v14, "connectivity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 382
    .local v6, mConnManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1f
    if-ge v3, v5, :cond_39

    aget-object v4, v1, v3

    .line 383
    .local v4, iface:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/android/server/enterprise/RestrictionPolicy;->matchRegex([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_36

    .line 384
    invoke-virtual {v6, v4}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_36

    .line 385
    const/4 v8, 0x0

    .line 382
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 388
    .end local v4           #iface:Ljava/lang/String;
    :cond_39
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 390
    .local v7, mWifiManager:Landroid/net/wifi/WifiManager;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v9

    .line 392
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #mConnManager:Landroid/net/ConnectivityManager;
    .end local v7           #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "RESTRICTION"

    const-string v15, "wifiTetheringEnabled"

    move/from16 v0, p1

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 395
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 396
    if-eqz v8, :cond_62

    if-eqz v9, :cond_62

    const/4 v13, 0x1

    :goto_61
    return v13

    :cond_62
    const/4 v13, 0x0

    goto :goto_61
.end method
