.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 106
    const-string v0, "ro.secdirenc"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 1070
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1071
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1073
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1075
    return-void
.end method


# virtual methods
.method public SecServices(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 114
    const-string v0, "SystemServer"

    const-string v1, "it\'s dummy method."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 109
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    return-void
.end method

.method public run()V
    .registers 125

    .prologue
    .line 119
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 122
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 124
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 127
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 128
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 132
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v99

    .line 134
    .local v99, shutdownAction:Ljava/lang/String;
    if-eqz v99, :cond_68

    invoke-virtual/range {v99 .. v99}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_68

    .line 135
    const/4 v3, 0x0

    move-object/from16 v0, v99

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_73e

    const/16 v95, 0x1

    .line 138
    .local v95, reboot:Z
    :goto_35
    invoke-virtual/range {v99 .. v99}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_742

    .line 139
    const/4 v3, 0x1

    invoke-virtual/range {v99 .. v99}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v99

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v94

    .line 144
    .local v94, reason:Ljava/lang/String;
    :goto_47
    const-string v3, "shutdownlogger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IShutdownLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IShutdownLogger;

    move-result-object v98

    .line 145
    .local v98, service:Landroid/app/IShutdownLogger;
    new-instance v102, Landroid/app/ShutdownLoggerManager;

    move-object/from16 v0, v102

    move-object/from16 v1, v98

    invoke-direct {v0, v1}, Landroid/app/ShutdownLoggerManager;-><init>(Landroid/app/IShutdownLogger;)V

    .line 146
    .local v102, slm:Landroid/app/ShutdownLoggerManager;
    const-string v3, "ServerThread.run()"

    move-object/from16 v0, v102

    invoke-virtual {v0, v3}, Landroid/app/ShutdownLoggerManager;->appendLog(Ljava/lang/String;)V

    .line 147
    move/from16 v0, v95

    move-object/from16 v1, v94

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 151
    .end local v94           #reason:Ljava/lang/String;
    .end local v95           #reboot:Z
    .end local v98           #service:Landroid/app/IShutdownLogger;
    .end local v102           #slm:Landroid/app/ShutdownLoggerManager;
    :cond_68
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 152
    .local v70, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v70

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_746

    const/16 v69, 0x0

    .line 155
    .local v69, factoryTest:I
    :goto_7a
    const/16 v76, 0x0

    .line 156
    .local v76, lights:Lcom/android/server/LightsService;
    const/16 v93, 0x0

    .line 157
    .local v93, power:Lcom/android/server/PowerManagerService;
    const/16 v45, 0x0

    .line 158
    .local v45, battery:Lcom/android/server/BatteryService;
    const/16 v39, 0x0

    .line 159
    .local v39, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 160
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 161
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v84, 0x0

    .line 162
    .local v84, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v53, 0x0

    .line 163
    .local v53, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v121, 0x0

    .line 164
    .local v121, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v119, 0x0

    .line 165
    .local v119, wifi:Lcom/android/server/WifiService;
    const/16 v92, 0x0

    .line 166
    .local v92, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 167
    .local v4, context:Landroid/content/Context;
    const/16 v123, 0x0

    .line 168
    .local v123, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v47, 0x0

    .line 169
    .local v47, bluetooth:Landroid/server/BluetoothService;
    const/16 v49, 0x0

    .line 170
    .local v49, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v43, 0x0

    .line 171
    .local v43, avrcp:Landroid/server/AvrcpStubService;
    const/16 v64, 0x0

    .line 172
    .local v64, dock:Lcom/android/server/DockObserver;
    const/16 v105, 0x0

    .line 173
    .local v105, thermistor:Lcom/android/server/ThermistorObserver;
    const/16 v114, 0x0

    .line 174
    .local v114, usb:Lcom/android/server/usb/UsbService;
    const/16 v112, 0x0

    .line 175
    .local v112, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v96, 0x0

    .line 176
    .local v96, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v107, 0x0

    .line 177
    .local v107, throttle:Lcom/android/server/ThrottleService;
    const/16 v86, 0x0

    .line 179
    .local v86, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v61, 0x0

    .line 180
    .local v61, dEncService:Lcom/android/server/DirEncryptService;
    const/16 v100, 0x0

    .line 182
    .local v100, shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    const/16 v59, 0x0

    .line 186
    .local v59, custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :try_start_ab
    const-string v3, "SystemServer"

    const-string v9, "Entropy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyService;

    invoke-direct {v9}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 189
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_c8
    .catch Ljava/lang/RuntimeException; {:try_start_ab .. :try_end_c8} :catch_adf

    .line 191
    .end local v93           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_c8
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 193
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static/range {v69 .. v69}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 255
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 258
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 260
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 263
    .local v58, cryptState:Ljava/lang/String;
    const/16 v90, 0x0

    .line 264
    .local v90, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74c

    .line 265
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/16 v90, 0x1

    .line 272
    :cond_10e
    :goto_10e
    if-eqz v69, :cond_761

    const/4 v3, 0x1

    :goto_111
    move/from16 v0, v90

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_116
    .catch Ljava/lang/RuntimeException; {:try_start_c8 .. :try_end_116} :catch_770

    move-result-object v92

    .line 275
    const/16 v71, 0x0

    .line 277
    .local v71, firstBoot:Z
    :try_start_119
    invoke-interface/range {v92 .. v92}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_11c
    .catch Landroid/os/RemoteException; {:try_start_119 .. :try_end_11c} :catch_a7c
    .catch Ljava/lang/RuntimeException; {:try_start_119 .. :try_end_11c} :catch_770

    move-result v71

    .line 281
    :goto_11d
    :try_start_11d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 283
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_128
    .catch Ljava/lang/RuntimeException; {:try_start_11d .. :try_end_128} :catch_770

    .line 287
    :try_start_128
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v3, "account"

    new-instance v9, Landroid/accounts/AccountManagerService;

    invoke-direct {v9, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_139
    .catch Ljava/lang/Throwable; {:try_start_128 .. :try_end_139} :catch_764
    .catch Ljava/lang/RuntimeException; {:try_start_128 .. :try_end_139} :catch_770

    .line 294
    :goto_139
    :try_start_139
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v3, 0x1

    move/from16 v0, v69

    if-ne v0, v3, :cond_787

    const/4 v3, 0x1

    :goto_146
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 299
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 302
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v77, Lcom/android/server/LightsService;

    move-object/from16 v0, v77

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_161
    .catch Ljava/lang/RuntimeException; {:try_start_139 .. :try_end_161} :catch_770

    .line 305
    .end local v76           #lights:Lcom/android/server/LightsService;
    .local v77, lights:Lcom/android/server/LightsService;
    :try_start_161
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v77

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_16f
    .catch Ljava/lang/RuntimeException; {:try_start_161 .. :try_end_16f} :catch_ae8

    .line 307
    .end local v45           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_16f
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 309
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v3, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 313
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v77

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 315
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_19a
    .catch Ljava/lang/RuntimeException; {:try_start_16f .. :try_end_19a} :catch_af1

    .line 317
    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_19a
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 319
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 323
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v3, 0x1

    move/from16 v0, v69

    if-eq v0, v3, :cond_78a

    const/4 v3, 0x1

    move v9, v3

    :goto_1bf
    if-nez v71, :cond_78e

    const/4 v3, 0x1

    :goto_1c2
    invoke-static {v4, v6, v9, v3}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v123

    .line 327
    const-string v3, "window"

    move-object/from16 v0, v123

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 329
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v123

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 334
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_791

    .line 335
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1eb
    .catch Ljava/lang/RuntimeException; {:try_start_19a .. :try_end_1eb} :catch_79f

    :goto_1eb
    move-object/from16 v76, v77

    .line 368
    .end local v58           #cryptState:Ljava/lang/String;
    .end local v71           #firstBoot:Z
    .end local v77           #lights:Lcom/android/server/LightsService;
    .end local v90           #onlyCore:Z
    .restart local v76       #lights:Lcom/android/server/LightsService;
    :goto_1ed
    :try_start_1ed
    const-string v3, "SystemServer"

    const-string v9, "ShutdownLogger Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v101, Lcom/android/server/ShutdownLoggerService;

    invoke-direct/range {v101 .. v101}, Lcom/android/server/ShutdownLoggerService;-><init>()V
    :try_end_1f9
    .catch Ljava/lang/Throwable; {:try_start_1ed .. :try_end_1f9} :catch_7eb

    .line 370
    .end local v100           #shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    .local v101, shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    :try_start_1f9
    const-string v3, "shutdownlogger"

    move-object/from16 v0, v101

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_200
    .catch Ljava/lang/Throwable; {:try_start_1f9 .. :try_end_200} :catch_ada

    move-object/from16 v100, v101

    .line 378
    .end local v101           #shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    .restart local v100       #shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    :goto_202
    const/16 v62, 0x0

    .line 380
    .local v62, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v67, 0x0

    .line 382
    .local v67, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v103, 0x0

    .line 383
    .local v103, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v73, 0x0

    .line 384
    .local v73, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v40, 0x0

    .line 385
    .local v40, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v88, 0x0

    .line 386
    .local v88, notification:Lcom/android/server/NotificationManagerService;
    const/16 v117, 0x0

    .line 387
    .local v117, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v78, 0x0

    .line 388
    .local v78, location:Lcom/android/server/LocationManagerService;
    const/16 v56, 0x0

    .line 389
    .local v56, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v109, 0x0

    .line 392
    .local v109, tsms:Lcom/android/server/TextServicesManagerService;
    const/4 v3, 0x1

    move/from16 v0, v69

    if-eq v0, v3, :cond_243

    .line 394
    :try_start_21b
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance v74, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v74

    invoke-direct {v0, v4}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V
    :try_end_229
    .catch Ljava/lang/Throwable; {:try_start_21b .. :try_end_229} :catch_7f7

    .line 396
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .local v74, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_229
    const-string v3, "input_method"

    move-object/from16 v0, v74

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_230
    .catch Ljava/lang/Throwable; {:try_start_229 .. :try_end_230} :catch_ad5

    move-object/from16 v73, v74

    .line 402
    .end local v74           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_232
    :try_start_232
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_243
    .catch Ljava/lang/Throwable; {:try_start_232 .. :try_end_243} :catch_803

    .line 413
    :cond_243
    :goto_243
    :try_start_243
    const-string v3, "SystemServer"

    const-string v9, "CustomeFrequencyManagerService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v60, Lcom/android/server/CustomFrequencyManagerService;

    move-object/from16 v0, v60

    invoke-direct {v0, v4}, Lcom/android/server/CustomFrequencyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_251
    .catch Ljava/lang/Throwable; {:try_start_243 .. :try_end_251} :catch_80f

    .line 415
    .end local v59           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .local v60, custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :try_start_251
    const-string v3, "CustomFrequencyManagerService"

    move-object/from16 v0, v60

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_258
    .catch Ljava/lang/Throwable; {:try_start_251 .. :try_end_258} :catch_ad0

    move-object/from16 v59, v60

    .line 422
    .end local v60           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v59       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :goto_25a
    :try_start_25a
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_25d
    .catch Ljava/lang/Throwable; {:try_start_25a .. :try_end_25d} :catch_81b

    .line 428
    :goto_25d
    :try_start_25d
    invoke-interface/range {v92 .. v92}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_260
    .catch Ljava/lang/Throwable; {:try_start_25d .. :try_end_260} :catch_827

    .line 434
    :goto_260
    :try_start_260
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104048f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_273
    .catch Landroid/os/RemoteException; {:try_start_260 .. :try_end_273} :catch_acd

    .line 441
    :goto_273
    const/4 v3, 0x1

    move/from16 v0, v69

    if-eq v0, v3, :cond_b13

    .line 443
    :try_start_278
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v63, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_286
    .catch Ljava/lang/Throwable; {:try_start_278 .. :try_end_286} :catch_833

    .line 445
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v63, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_286
    const-string v3, "device_policy"

    move-object/from16 v0, v63

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28d
    .catch Ljava/lang/Throwable; {:try_start_286 .. :try_end_28d} :catch_ac8

    move-object/from16 v62, v63

    .line 451
    .end local v63           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_28f
    :try_start_28f
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v68, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v92

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v3, v0

    move-object/from16 v0, v68

    invoke-direct {v0, v4, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    :try_end_2a2
    .catch Ljava/lang/Throwable; {:try_start_28f .. :try_end_2a2} :catch_83f

    .line 453
    .end local v67           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v68, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_2a2
    const-string v3, "enterprise_policy"

    move-object/from16 v0, v68

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 454
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b0
    .catch Ljava/lang/Throwable; {:try_start_2a2 .. :try_end_2b0} :catch_ac3

    move-object/from16 v67, v68

    .line 460
    .end local v68           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v67       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :goto_2b2
    :try_start_2b2
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v104, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v104

    move-object/from16 v1, v123

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_2c2
    .catch Ljava/lang/Throwable; {:try_start_2b2 .. :try_end_2c2} :catch_84b

    .line 462
    .end local v103           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v104, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_2c2
    const-string v3, "statusbar"

    move-object/from16 v0, v104

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c9
    .catch Ljava/lang/Throwable; {:try_start_2c2 .. :try_end_2c9} :catch_abe

    move-object/from16 v103, v104

    .line 468
    .end local v104           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v103       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_2cb
    :try_start_2cb
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2dc
    .catch Ljava/lang/Throwable; {:try_start_2cb .. :try_end_2dc} :catch_857

    .line 479
    :goto_2dc
    :try_start_2dc
    const-string v3, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v3, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v4}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2ed
    .catch Ljava/lang/Throwable; {:try_start_2dc .. :try_end_2ed} :catch_863

    .line 487
    :goto_2ed
    :try_start_2ed
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 489
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2fd
    .catch Ljava/lang/Throwable; {:try_start_2ed .. :try_end_2fd} :catch_86f

    .line 495
    :goto_2fd
    :try_start_2fd
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v110, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v110

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_30b
    .catch Ljava/lang/Throwable; {:try_start_2fd .. :try_end_30b} :catch_87b

    .line 497
    .end local v109           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v110, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_30b
    const-string v3, "textservices"

    move-object/from16 v0, v110

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_312
    .catch Ljava/lang/Throwable; {:try_start_30b .. :try_end_312} :catch_ab9

    move-object/from16 v109, v110

    .line 503
    .end local v110           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v109       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_314
    :try_start_314
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v85, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v85

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_322
    .catch Ljava/lang/Throwable; {:try_start_314 .. :try_end_322} :catch_887

    .line 505
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v85, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_322
    const-string v3, "netstats"

    move-object/from16 v0, v85

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_329
    .catch Ljava/lang/Throwable; {:try_start_322 .. :try_end_329} :catch_ab4

    move-object/from16 v12, v85

    .line 511
    .end local v85           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_32b
    :try_start_32b
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_33d
    .catch Ljava/lang/Throwable; {:try_start_32b .. :try_end_33d} :catch_893

    .line 515
    .end local v84           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_33d
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_342
    .catch Ljava/lang/Throwable; {:try_start_33d .. :try_end_342} :catch_ab1

    .line 521
    :goto_342
    :try_start_342
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v122, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v122

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_350
    .catch Ljava/lang/Throwable; {:try_start_342 .. :try_end_350} :catch_8a1

    .line 523
    .end local v121           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v122, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_350
    const-string v3, "wifip2p"

    move-object/from16 v0, v122

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_357
    .catch Ljava/lang/Throwable; {:try_start_350 .. :try_end_357} :catch_aac

    move-object/from16 v121, v122

    .line 529
    .end local v122           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v121       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_359
    :try_start_359
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    new-instance v120, Lcom/android/server/WifiService;

    move-object/from16 v0, v120

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_367
    .catch Ljava/lang/Throwable; {:try_start_359 .. :try_end_367} :catch_8ad

    .line 531
    .end local v119           #wifi:Lcom/android/server/WifiService;
    .local v120, wifi:Lcom/android/server/WifiService;
    :try_start_367
    const-string v3, "wifi"

    move-object/from16 v0, v120

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36e
    .catch Ljava/lang/Throwable; {:try_start_367 .. :try_end_36e} :catch_aa7

    move-object/from16 v119, v120

    .line 537
    .end local v120           #wifi:Lcom/android/server/WifiService;
    .restart local v119       #wifi:Lcom/android/server/WifiService;
    :goto_370
    :try_start_370
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v54, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v54

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_37e
    .catch Ljava/lang/Throwable; {:try_start_370 .. :try_end_37e} :catch_8b9

    .line 540
    .end local v53           #connectivity:Lcom/android/server/ConnectivityService;
    .local v54, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_37e
    const-string v3, "connectivity"

    move-object/from16 v0, v54

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 541
    move-object/from16 v0, v54

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 542
    move-object/from16 v0, v54

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 549
    invoke-virtual/range {v121 .. v121}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_392
    .catch Ljava/lang/Throwable; {:try_start_37e .. :try_end_392} :catch_aa2

    move-object/from16 v53, v54

    .line 555
    .end local v54           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v53       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_394
    :try_start_394
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    new-instance v108, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v108

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_3a2
    .catch Ljava/lang/Throwable; {:try_start_394 .. :try_end_3a2} :catch_8c5

    .line 557
    .end local v107           #throttle:Lcom/android/server/ThrottleService;
    .local v108, throttle:Lcom/android/server/ThrottleService;
    :try_start_3a2
    const-string v3, "throttle"

    move-object/from16 v0, v108

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a9
    .catch Ljava/lang/Throwable; {:try_start_3a2 .. :try_end_3a9} :catch_a9d

    move-object/from16 v107, v108

    .line 568
    .end local v108           #throttle:Lcom/android/server/ThrottleService;
    .restart local v107       #throttle:Lcom/android/server/ThrottleService;
    :goto_3ab
    :try_start_3ab
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const-string v3, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3bc
    .catch Ljava/lang/Throwable; {:try_start_3ab .. :try_end_3bc} :catch_8d1

    .line 575
    :goto_3bc
    :try_start_3bc
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v89, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v89

    move-object/from16 v1, v103

    move-object/from16 v2, v76

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_3ce
    .catch Ljava/lang/Throwable; {:try_start_3bc .. :try_end_3ce} :catch_8dd

    .line 577
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .local v89, notification:Lcom/android/server/NotificationManagerService;
    :try_start_3ce
    const-string v3, "notification"

    move-object/from16 v0, v89

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 578
    move-object/from16 v0, v89

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_3da
    .catch Ljava/lang/Throwable; {:try_start_3ce .. :try_end_3da} :catch_a98

    move-object/from16 v88, v89

    .line 584
    .end local v89           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    :goto_3dc
    :try_start_3dc
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3ed
    .catch Ljava/lang/Throwable; {:try_start_3dc .. :try_end_3ed} :catch_8e9

    .line 592
    :goto_3ed
    :try_start_3ed
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v79, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v79

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3fb
    .catch Ljava/lang/Throwable; {:try_start_3ed .. :try_end_3fb} :catch_8f5

    .line 594
    .end local v78           #location:Lcom/android/server/LocationManagerService;
    .local v79, location:Lcom/android/server/LocationManagerService;
    :try_start_3fb
    const-string v3, "location"

    move-object/from16 v0, v79

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_402
    .catch Ljava/lang/Throwable; {:try_start_3fb .. :try_end_402} :catch_a93

    move-object/from16 v78, v79

    .line 600
    .end local v79           #location:Lcom/android/server/LocationManagerService;
    .restart local v78       #location:Lcom/android/server/LocationManagerService;
    :goto_404
    new-instance v61, Lcom/android/server/DirEncryptService;

    .end local v61           #dEncService:Lcom/android/server/DirEncryptService;
    move-object/from16 v0, v61

    invoke-direct {v0, v4}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V

    .line 602
    .restart local v61       #dEncService:Lcom/android/server/DirEncryptService;
    :try_start_40b
    sget-boolean v3, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v3, :cond_416

    .line 603
    const-string v3, "DirEncryptService"

    move-object/from16 v0, v61

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_416
    .catch Ljava/lang/Throwable; {:try_start_40b .. :try_end_416} :catch_901

    .line 609
    :cond_416
    :goto_416
    if-eqz v61, :cond_422

    .line 610
    const-string v3, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-virtual/range {v61 .. v61}, Lcom/android/server/DirEncryptService;->systemReady()V

    .line 616
    :cond_422
    :try_start_422
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v57, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v57

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_430
    .catch Ljava/lang/Throwable; {:try_start_422 .. :try_end_430} :catch_90f

    .line 618
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v57, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_430
    const-string v3, "country_detector"

    move-object/from16 v0, v57

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_437
    .catch Ljava/lang/Throwable; {:try_start_430 .. :try_end_437} :catch_a8e

    move-object/from16 v56, v57

    .line 624
    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_439
    :try_start_439
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44a
    .catch Ljava/lang/Throwable; {:try_start_439 .. :try_end_44a} :catch_91b

    .line 632
    :goto_44a
    :try_start_44a
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_462
    .catch Ljava/lang/Throwable; {:try_start_44a .. :try_end_462} :catch_927

    .line 640
    :goto_462
    :try_start_462
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v118, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v118

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_470
    .catch Ljava/lang/Throwable; {:try_start_462 .. :try_end_470} :catch_933

    .line 642
    .end local v117           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v118, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_470
    const-string v3, "wallpaper"

    move-object/from16 v0, v118

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_477
    .catch Ljava/lang/Throwable; {:try_start_470 .. :try_end_477} :catch_a89

    move-object/from16 v117, v118

    .line 648
    .end local v118           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v117       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_479
    :try_start_479
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48a
    .catch Ljava/lang/Throwable; {:try_start_479 .. :try_end_48a} :catch_93f

    .line 655
    :goto_48a
    :try_start_48a
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v65, Lcom/android/server/DockObserver;

    move-object/from16 v0, v65

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_498
    .catch Ljava/lang/Throwable; {:try_start_48a .. :try_end_498} :catch_94b

    .end local v64           #dock:Lcom/android/server/DockObserver;
    .local v65, dock:Lcom/android/server/DockObserver;
    move-object/from16 v64, v65

    .line 663
    .end local v65           #dock:Lcom/android/server/DockObserver;
    .restart local v64       #dock:Lcom/android/server/DockObserver;
    :goto_49a
    :try_start_49a
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_4a6
    .catch Ljava/lang/Throwable; {:try_start_49a .. :try_end_4a6} :catch_957

    .line 671
    :goto_4a6
    :try_start_4a6
    const-string v3, "SystemServer"

    const-string v9, "Thermistor Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    new-instance v106, Lcom/android/server/ThermistorObserver;

    move-object/from16 v0, v106

    invoke-direct {v0, v4, v6}, Lcom/android/server/ThermistorObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_4b4
    .catch Ljava/lang/Throwable; {:try_start_4a6 .. :try_end_4b4} :catch_963

    .end local v105           #thermistor:Lcom/android/server/ThermistorObserver;
    .local v106, thermistor:Lcom/android/server/ThermistorObserver;
    move-object/from16 v105, v106

    .line 679
    .end local v106           #thermistor:Lcom/android/server/ThermistorObserver;
    .restart local v105       #thermistor:Lcom/android/server/ThermistorObserver;
    :goto_4b6
    :try_start_4b6
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v115, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v115

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_4c4
    .catch Ljava/lang/Throwable; {:try_start_4b6 .. :try_end_4c4} :catch_96f

    .line 682
    .end local v114           #usb:Lcom/android/server/usb/UsbService;
    .local v115, usb:Lcom/android/server/usb/UsbService;
    :try_start_4c4
    const-string v3, "usb"

    move-object/from16 v0, v115

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4cb
    .catch Ljava/lang/Throwable; {:try_start_4c4 .. :try_end_4cb} :catch_a84

    move-object/from16 v114, v115

    .line 688
    .end local v115           #usb:Lcom/android/server/usb/UsbService;
    .restart local v114       #usb:Lcom/android/server/usb/UsbService;
    :goto_4cd
    :try_start_4cd
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    new-instance v113, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v113

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4db
    .catch Ljava/lang/Throwable; {:try_start_4cd .. :try_end_4db} :catch_97b

    .end local v112           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v113, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v112, v113

    .line 696
    .end local v113           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v112       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_4dd
    :try_start_4dd
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4ee
    .catch Ljava/lang/Throwable; {:try_start_4dd .. :try_end_4ee} :catch_987

    .line 704
    :goto_4ee
    :try_start_4ee
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    new-instance v41, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4fc
    .catch Ljava/lang/Throwable; {:try_start_4ee .. :try_end_4fc} :catch_993

    .line 706
    .end local v40           #appWidget:Lcom/android/server/AppWidgetService;
    .local v41, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4fc
    const-string v3, "appwidget"

    move-object/from16 v0, v41

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_503
    .catch Ljava/lang/Throwable; {:try_start_4fc .. :try_end_503} :catch_a7f

    move-object/from16 v40, v41

    .line 712
    .end local v41           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v40       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_505
    :try_start_505
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    new-instance v97, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v97

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_513
    .catch Ljava/lang/Throwable; {:try_start_505 .. :try_end_513} :catch_99f

    .end local v96           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v97, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v96, v97

    .line 719
    .end local v97           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v96       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_515
    :try_start_515
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_526
    .catch Ljava/lang/Throwable; {:try_start_515 .. :try_end_526} :catch_9ab

    .line 725
    :goto_526
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/ServerThread;->SecServices(Landroid/content/Context;)V

    .line 732
    :try_start_52b
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53c
    .catch Ljava/lang/Throwable; {:try_start_52b .. :try_end_53c} :catch_9b7

    .line 740
    :goto_53c
    :try_start_53c
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v87, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v87

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_54a
    .catch Ljava/lang/Throwable; {:try_start_53c .. :try_end_54a} :catch_9c3

    .end local v86           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v87, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v86, v87

    .line 746
    .end local v87           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v86       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_54c
    :try_start_54c
    const-string v3, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v3, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v4}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55d
    .catch Ljava/lang/Throwable; {:try_start_54c .. :try_end_55d} :catch_9cf

    .line 767
    :goto_55d
    :try_start_55d
    const-string v3, "SystemServer"

    const-string v9, "Starting Tvout Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/16 v111, 0x0

    .line 769
    .local v111, tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "com.android.server.TvoutService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v111

    .line 770
    if-nez v111, :cond_9db

    .line 771
    const-string v3, "SystemServer"

    const-string v9, "Tvout Service not exist"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_575
    .catch Ljava/lang/Throwable; {:try_start_55d .. :try_end_575} :catch_a09

    .line 785
    .end local v111           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_575
    const/16 v46, 0x0

    .line 802
    .local v46, bisIRDAEnabled:Z
    if-eqz v46, :cond_58e

    .line 804
    :try_start_579
    const-string v3, "SystemServer"

    const-string v9, "bisIRDAEnabled is true!! So enable the IRDA service!!"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    new-instance v75, Landroid/app/IrdaService;

    move-object/from16 v0, v75

    invoke-direct {v0, v4}, Landroid/app/IrdaService;-><init>(Landroid/content/Context;)V

    .line 806
    .local v75, irda:Landroid/app/IrdaService;
    const-string v3, "irda"

    move-object/from16 v0, v75

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58e
    .catch Ljava/lang/Throwable; {:try_start_579 .. :try_end_58e} :catch_a15

    .line 812
    .end local v75           #irda:Landroid/app/IrdaService;
    :cond_58e
    :goto_58e
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v91

    .line 813
    .local v91, packageMgr:Landroid/content/pm/PackageManager;
    const-string v3, "com.sec.feature.minimode"

    move-object/from16 v0, v91

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_663

    .line 815
    :try_start_59c
    const-string v3, "SystemServer"

    const-string v9, "MiniModeAppManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const-string v81, "/data/dalvik-cache/system@framework@minimode.jar@classes.dex"

    .line 818
    .local v81, minimodeFrameworkDexPath:Ljava/lang/String;
    const-string v83, "/data/dalvik-cache/minimode.dex"

    .line 820
    .local v83, minimodeGenDexPath:Ljava/lang/String;
    new-instance v72, Landroid/os/FileUtils$FileStatus;

    invoke-direct/range {v72 .. v72}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .line 821
    .local v72, fs:Landroid/os/FileUtils$FileStatus;
    move-object/from16 v0, v81

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v3

    if-eqz v3, :cond_62a

    .line 822
    const-string v3, "SystemServer"

    const-string v9, "This escaping dexopt of minimode.jar is only for eng build"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v81

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v83

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_62a

    .line 824
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v83

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is copied from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v81

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    new-instance v82, Ljava/io/File;

    invoke-direct/range {v82 .. v83}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 826
    .local v82, minimodeGenDexFile:Ljava/io/File;
    move-object/from16 v0, v72

    iget-wide v9, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    move-object/from16 v0, v82

    invoke-virtual {v0, v9, v10}, Ljava/io/File;->setLastModified(J)Z

    move-result v3

    if-eqz v3, :cond_62a

    .line 827
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastModfied time of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v83

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v72

    iget-wide v10, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    .end local v82           #minimodeGenDexFile:Ljava/io/File;
    :cond_62a
    new-instance v51, Ldalvik/system/DexClassLoader;

    const-string v3, "/system/framework/minimode.jar"

    const-string v9, "/data/dalvik-cache/"

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object/from16 v0, v51

    invoke-direct {v0, v3, v9, v10, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 835
    .local v51, cl:Ljava/lang/ClassLoader;
    const-string v3, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v37

    .line 836
    .local v37, MiniModeAppManagerServiceClass:Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v3, v9

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v38

    .line 838
    .local v38, MiniModeAppManagerServiceContructor:Ljava/lang/reflect/Constructor;
    const-string v9, "mini_mode_app_manager"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v3, v10

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v9, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_663
    .catch Ljava/lang/Throwable; {:try_start_59c .. :try_end_663} :catch_a21

    .line 848
    .end local v37           #MiniModeAppManagerServiceClass:Ljava/lang/Class;
    .end local v38           #MiniModeAppManagerServiceContructor:Ljava/lang/reflect/Constructor;
    .end local v51           #cl:Ljava/lang/ClassLoader;
    .end local v72           #fs:Landroid/os/FileUtils$FileStatus;
    .end local v81           #minimodeFrameworkDexPath:Ljava/lang/String;
    .end local v83           #minimodeGenDexPath:Ljava/lang/String;
    :cond_663
    :goto_663
    :try_start_663
    const-string v3, "SystemServer"

    const-string v9, "FM_RADIO_SERVICE"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const-string v3, "FMPlayer"

    new-instance v9, Lcom/android/server/FMRadioService;

    invoke-direct {v9, v4}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 850
    const-string v3, "SystemServer"

    const-string v9, "[FMPlayer]FMRadio service added .."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67b
    .catch Ljava/lang/Throwable; {:try_start_663 .. :try_end_67b} :catch_a2d

    .line 857
    :goto_67b
    :try_start_67b
    const-string v3, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-string v3, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v4}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_68c
    .catch Ljava/lang/Throwable; {:try_start_67b .. :try_end_68c} :catch_a39

    .line 867
    .end local v46           #bisIRDAEnabled:Z
    .end local v91           #packageMgr:Landroid/content/pm/PackageManager;
    :goto_68c
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v28

    .line 868
    .local v28, safeMode:Z
    if-eqz v28, :cond_a43

    .line 869
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 871
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 873
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 881
    :goto_6a3
    if-eqz v62, :cond_6a8

    .line 883
    :try_start_6a5
    invoke-virtual/range {v62 .. v62}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_6a8
    .catch Ljava/lang/Throwable; {:try_start_6a5 .. :try_end_6a8} :catch_a4c

    .line 889
    :cond_6a8
    :goto_6a8
    if-eqz v67, :cond_6b4

    .line 890
    invoke-virtual/range {v67 .. v67}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 891
    const-string v3, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_6b4
    if-eqz v88, :cond_6b9

    .line 897
    :try_start_6b6
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_6b9
    .catch Ljava/lang/Throwable; {:try_start_6b6 .. :try_end_6b9} :catch_a58

    .line 904
    :cond_6b9
    :goto_6b9
    :try_start_6b9
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_6bc
    .catch Ljava/lang/Throwable; {:try_start_6b9 .. :try_end_6bc} :catch_a64

    .line 909
    :goto_6bc
    if-eqz v28, :cond_6c5

    .line 910
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 916
    :cond_6c5
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v52

    .line 917
    .local v52, config:Landroid/content/res/Configuration;
    new-instance v80, Landroid/util/DisplayMetrics;

    invoke-direct/range {v80 .. v80}, Landroid/util/DisplayMetrics;-><init>()V

    .line 918
    .local v80, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v116

    check-cast v116, Landroid/view/WindowManager;

    .line 919
    .local v116, w:Landroid/view/WindowManager;
    invoke-interface/range {v116 .. v116}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v80

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 920
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v52

    move-object/from16 v1, v80

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 922
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 924
    :try_start_6ed
    invoke-interface/range {v92 .. v92}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_6f0
    .catch Ljava/lang/Throwable; {:try_start_6ed .. :try_end_6f0} :catch_a70

    .line 930
    :goto_6f0
    move-object/from16 v16, v4

    .line 931
    .local v16, contextF:Landroid/content/Context;
    move-object/from16 v17, v5

    .line 932
    .local v17, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v18, v13

    .line 933
    .local v18, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v19, v12

    .line 934
    .local v19, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v20, v8

    .line 935
    .local v20, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v21, v53

    .line 936
    .local v21, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v22, v64

    .line 937
    .local v22, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v23, v105

    .line 938
    .local v23, thermistorF:Lcom/android/server/ThermistorObserver;
    move-object/from16 v24, v114

    .line 939
    .local v24, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v34, v107

    .line 940
    .local v34, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v25, v112

    .line 941
    .local v25, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v27, v40

    .line 942
    .local v27, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v29, v117

    .line 943
    .local v29, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v30, v73

    .line 944
    .local v30, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v26, v96

    .line 945
    .local v26, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v32, v78

    .line 946
    .local v32, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v33, v56

    .line 947
    .local v33, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v35, v86

    .line 948
    .local v35, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v36, v109

    .line 949
    .local v36, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v31, v103

    .line 956
    .local v31, statusBarF:Lcom/android/server/StatusBarManagerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$2;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v36}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/ThermistorObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/TextServicesManagerService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1061
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_733

    .line 1062
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_733
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1066
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    return-void

    .line 135
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #contextF:Landroid/content/Context;
    .end local v17           #batteryF:Lcom/android/server/BatteryService;
    .end local v18           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v19           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v20           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v21           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v22           #dockF:Lcom/android/server/DockObserver;
    .end local v23           #thermistorF:Lcom/android/server/ThermistorObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v34           #throttleF:Lcom/android/server/ThrottleService;
    .end local v35           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v36           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v40           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v43           #avrcp:Landroid/server/AvrcpStubService;
    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v52           #config:Landroid/content/res/Configuration;
    .end local v53           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v59           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .end local v61           #dEncService:Lcom/android/server/DirEncryptService;
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v64           #dock:Lcom/android/server/DockObserver;
    .end local v67           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v69           #factoryTest:I
    .end local v70           #factoryTestStr:Ljava/lang/String;
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .end local v78           #location:Lcom/android/server/LocationManagerService;
    .end local v80           #metrics:Landroid/util/DisplayMetrics;
    .end local v86           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .end local v92           #pm:Landroid/content/pm/IPackageManager;
    .end local v96           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v100           #shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    .end local v103           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v105           #thermistor:Lcom/android/server/ThermistorObserver;
    .end local v107           #throttle:Lcom/android/server/ThrottleService;
    .end local v109           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v112           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v114           #usb:Lcom/android/server/usb/UsbService;
    .end local v116           #w:Landroid/view/WindowManager;
    .end local v117           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v119           #wifi:Lcom/android/server/WifiService;
    .end local v121           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v123           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_73e
    const/16 v95, 0x0

    goto/16 :goto_35

    .line 141
    .restart local v95       #reboot:Z
    :cond_742
    const/16 v94, 0x0

    .restart local v94       #reason:Ljava/lang/String;
    goto/16 :goto_47

    .line 152
    .end local v94           #reason:Ljava/lang/String;
    .end local v95           #reboot:Z
    .restart local v70       #factoryTestStr:Ljava/lang/String;
    :cond_746
    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    goto/16 :goto_7a

    .line 267
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v43       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v53       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v58       #cryptState:Ljava/lang/String;
    .restart local v59       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v61       #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v64       #dock:Lcom/android/server/DockObserver;
    .restart local v69       #factoryTest:I
    .restart local v76       #lights:Lcom/android/server/LightsService;
    .restart local v84       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v86       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v90       #onlyCore:Z
    .restart local v92       #pm:Landroid/content/pm/IPackageManager;
    .restart local v96       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v100       #shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    .restart local v105       #thermistor:Lcom/android/server/ThermistorObserver;
    .restart local v107       #throttle:Lcom/android/server/ThrottleService;
    .restart local v112       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v114       #usb:Lcom/android/server/usb/UsbService;
    .restart local v119       #wifi:Lcom/android/server/WifiService;
    .restart local v121       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v123       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_74c
    :try_start_74c
    const-string v3, "1"

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 268
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/16 v90, 0x1

    goto/16 :goto_10e

    .line 272
    :cond_761
    const/4 v3, 0x0

    goto/16 :goto_111

    .line 290
    .restart local v71       #firstBoot:Z
    :catch_764
    move-exception v66

    .line 291
    .local v66, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76e
    .catch Ljava/lang/RuntimeException; {:try_start_74c .. :try_end_76e} :catch_770

    goto/16 :goto_139

    .line 363
    .end local v58           #cryptState:Ljava/lang/String;
    .end local v66           #e:Ljava/lang/Throwable;
    .end local v71           #firstBoot:Z
    .end local v90           #onlyCore:Z
    :catch_770
    move-exception v66

    move-object/from16 v7, v39

    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v45

    .line 364
    .end local v45           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v66, e:Ljava/lang/RuntimeException;
    :goto_775
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1ed

    .line 295
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v66           #e:Ljava/lang/RuntimeException;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v58       #cryptState:Ljava/lang/String;
    .restart local v71       #firstBoot:Z
    .restart local v90       #onlyCore:Z
    :cond_787
    const/4 v3, 0x0

    goto/16 :goto_146

    .line 324
    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v45           #battery:Lcom/android/server/BatteryService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    :cond_78a
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_1bf

    :cond_78e
    const/4 v3, 0x0

    goto/16 :goto_1c2

    .line 336
    :cond_791
    const/4 v3, 0x1

    move/from16 v0, v69

    if-ne v0, v3, :cond_7a3

    .line 337
    :try_start_796
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1eb

    .line 363
    :catch_79f
    move-exception v66

    move-object/from16 v76, v77

    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    goto :goto_775

    .line 339
    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    :cond_7a3
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v48, Landroid/server/BluetoothService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_7b1
    .catch Ljava/lang/RuntimeException; {:try_start_796 .. :try_end_7b1} :catch_79f

    .line 341
    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .local v48, bluetooth:Landroid/server/BluetoothService;
    :try_start_7b1
    const-string v3, "bluetooth"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 342
    invoke-virtual/range {v48 .. v48}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 343
    new-instance v50, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v50

    move-object/from16 v1, v48

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_7c4
    .catch Ljava/lang/RuntimeException; {:try_start_7b1 .. :try_end_7c4} :catch_af8

    .line 344
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v50, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_7c4
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 346
    const-string v3, "SystemServer"

    const-string v9, "AvrcpStubService -->"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v44, Landroid/server/AvrcpStubService;

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Landroid/server/AvrcpStubService;-><init>(Landroid/content/Context;)V
    :try_end_7d9
    .catch Ljava/lang/RuntimeException; {:try_start_7c4 .. :try_end_7d9} :catch_aff

    .line 348
    .end local v43           #avrcp:Landroid/server/AvrcpStubService;
    .local v44, avrcp:Landroid/server/AvrcpStubService;
    :try_start_7d9
    const-string v3, "bluetooth_avrcp"

    move-object/from16 v0, v44

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 349
    invoke-virtual/range {v48 .. v48}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_7e3
    .catch Ljava/lang/RuntimeException; {:try_start_7d9 .. :try_end_7e3} :catch_b08

    move-object/from16 v43, v44

    .end local v44           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v43       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v49, v50

    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_1eb

    .line 372
    .end local v58           #cryptState:Ljava/lang/String;
    .end local v71           #firstBoot:Z
    .end local v77           #lights:Lcom/android/server/LightsService;
    .end local v90           #onlyCore:Z
    .restart local v76       #lights:Lcom/android/server/LightsService;
    :catch_7eb
    move-exception v66

    .line 373
    .local v66, e:Ljava/lang/Throwable;
    :goto_7ec
    const-string v3, "SystemServer"

    const-string v9, "Failure starting ShutdownloggerService"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_202

    .line 397
    .end local v66           #e:Ljava/lang/Throwable;
    .restart local v40       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v67       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v78       #location:Lcom/android/server/LocationManagerService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v103       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v109       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v117       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_7f7
    move-exception v66

    .line 398
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_7f8
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_232

    .line 405
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_803
    move-exception v66

    .line 406
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_243

    .line 416
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_80f
    move-exception v66

    .line 417
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_810
    const-string v3, "SystemServer"

    const-string v9, "Failure starting CustomFrequencyManagerService Service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25a

    .line 423
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_81b
    move-exception v66

    .line 424
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25d

    .line 429
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_827
    move-exception v66

    .line 430
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_260

    .line 446
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_833
    move-exception v66

    .line 447
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_834
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28f

    .line 455
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_83f
    move-exception v66

    .line 456
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_840
    const-string v3, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b2

    .line 463
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_84b
    move-exception v66

    .line 464
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_84c
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2cb

    .line 471
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_857
    move-exception v66

    .line 472
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2dc

    .line 482
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_863
    move-exception v66

    .line 483
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2ed

    .line 490
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_86f
    move-exception v66

    .line 491
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2fd

    .line 498
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_87b
    move-exception v66

    .line 499
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_87c
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_314

    .line 506
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_887
    move-exception v66

    .line 507
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_888
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32b

    .line 516
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_893
    move-exception v66

    move-object/from16 v8, v84

    .line 517
    .end local v84           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_896
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_342

    .line 524
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_8a1
    move-exception v66

    .line 525
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_8a2
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_359

    .line 532
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_8ad
    move-exception v66

    .line 533
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_8ae
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_370

    .line 550
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_8b9
    move-exception v66

    .line 551
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_8ba
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_394

    .line 559
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_8c5
    move-exception v66

    .line 560
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_8c6
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3ab

    .line 570
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_8d1
    move-exception v66

    .line 571
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3bc

    .line 579
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_8dd
    move-exception v66

    .line 580
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_8de
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3dc

    .line 587
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_8e9
    move-exception v66

    .line 588
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3ed

    .line 595
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_8f5
    move-exception v66

    .line 596
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_8f6
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_404

    .line 605
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_901
    move-exception v66

    .line 606
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 607
    const/16 v61, 0x0

    goto/16 :goto_416

    .line 619
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_90f
    move-exception v66

    .line 620
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_910
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_439

    .line 627
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_91b
    move-exception v66

    .line 628
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44a

    .line 635
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_927
    move-exception v66

    .line 636
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_462

    .line 643
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_933
    move-exception v66

    .line 644
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_934
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_479

    .line 650
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_93f
    move-exception v66

    .line 651
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48a

    .line 658
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_94b
    move-exception v66

    .line 659
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49a

    .line 666
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_957
    move-exception v66

    .line 667
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a6

    .line 674
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_963
    move-exception v66

    .line 675
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting ThermistorObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b6

    .line 683
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_96f
    move-exception v66

    .line 684
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_970
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4cd

    .line 691
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_97b
    move-exception v66

    .line 692
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4dd

    .line 699
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_987
    move-exception v66

    .line 700
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4ee

    .line 707
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_993
    move-exception v66

    .line 708
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_994
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_505

    .line 714
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_99f
    move-exception v66

    .line 715
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_515

    .line 721
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_9ab
    move-exception v66

    .line 722
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_526

    .line 735
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_9b7
    move-exception v66

    .line 736
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_53c

    .line 742
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_9c3
    move-exception v66

    .line 743
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54c

    .line 748
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_9cf
    move-exception v66

    .line 749
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_55d

    .line 773
    .end local v66           #e:Ljava/lang/Throwable;
    .restart local v111       #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_9db
    :try_start_9db
    const-string v3, "SystemServer"

    const-string v9, "Tvout Service exist"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    move-object/from16 v42, v0

    .line 775
    .local v42, arg:[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v42, v3

    .line 777
    move-object/from16 v0, v111

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v55

    .line 778
    .local v55, constructor:Ljava/lang/reflect/Constructor;
    const-string v9, "tvoutservice"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v3, v10

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v9, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a07
    .catch Ljava/lang/Throwable; {:try_start_9db .. :try_end_a07} :catch_a09

    goto/16 :goto_575

    .line 780
    .end local v42           #arg:[Ljava/lang/Class;
    .end local v55           #constructor:Ljava/lang/reflect/Constructor;
    .end local v111           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_a09
    move-exception v66

    .line 781
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Tvout Service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_575

    .line 807
    .end local v66           #e:Ljava/lang/Throwable;
    .restart local v46       #bisIRDAEnabled:Z
    :catch_a15
    move-exception v66

    .line 808
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting IRDA Service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_58e

    .line 841
    .end local v66           #e:Ljava/lang/Throwable;
    .restart local v91       #packageMgr:Landroid/content/pm/PackageManager;
    :catch_a21
    move-exception v66

    .line 842
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_663

    .line 851
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_a2d
    move-exception v66

    .line 852
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting RadioService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_67b

    .line 859
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_a39
    move-exception v66

    .line 860
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_68c

    .line 876
    .end local v46           #bisIRDAEnabled:Z
    .end local v66           #e:Ljava/lang/Throwable;
    .end local v91           #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v28       #safeMode:Z
    :cond_a43
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_6a3

    .line 884
    :catch_a4c
    move-exception v66

    .line 885
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6a8

    .line 898
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_a58
    move-exception v66

    .line 899
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6b9

    .line 905
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_a64
    move-exception v66

    .line 906
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6bc

    .line 925
    .end local v66           #e:Ljava/lang/Throwable;
    .restart local v52       #config:Landroid/content/res/Configuration;
    .restart local v80       #metrics:Landroid/util/DisplayMetrics;
    .restart local v116       #w:Landroid/view/WindowManager;
    :catch_a70
    move-exception v66

    .line 926
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6f0

    .line 278
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v28           #safeMode:Z
    .end local v40           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v52           #config:Landroid/content/res/Configuration;
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v66           #e:Ljava/lang/Throwable;
    .end local v67           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v78           #location:Lcom/android/server/LocationManagerService;
    .end local v80           #metrics:Landroid/util/DisplayMetrics;
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .end local v103           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v109           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v116           #w:Landroid/view/WindowManager;
    .end local v117           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v58       #cryptState:Ljava/lang/String;
    .restart local v71       #firstBoot:Z
    .restart local v84       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v90       #onlyCore:Z
    :catch_a7c
    move-exception v3

    goto/16 :goto_11d

    .line 707
    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v45           #battery:Lcom/android/server/BatteryService;
    .end local v58           #cryptState:Ljava/lang/String;
    .end local v71           #firstBoot:Z
    .end local v84           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v90           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v41       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v67       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v78       #location:Lcom/android/server/LocationManagerService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v103       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v109       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v117       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_a7f
    move-exception v66

    move-object/from16 v40, v41

    .end local v41           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v40       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_994

    .line 683
    .end local v114           #usb:Lcom/android/server/usb/UsbService;
    .restart local v115       #usb:Lcom/android/server/usb/UsbService;
    :catch_a84
    move-exception v66

    move-object/from16 v114, v115

    .end local v115           #usb:Lcom/android/server/usb/UsbService;
    .restart local v114       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_970

    .line 643
    .end local v117           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v118       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_a89
    move-exception v66

    move-object/from16 v117, v118

    .end local v118           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v117       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_934

    .line 619
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v57       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_a8e
    move-exception v66

    move-object/from16 v56, v57

    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_910

    .line 595
    .end local v78           #location:Lcom/android/server/LocationManagerService;
    .restart local v79       #location:Lcom/android/server/LocationManagerService;
    :catch_a93
    move-exception v66

    move-object/from16 v78, v79

    .end local v79           #location:Lcom/android/server/LocationManagerService;
    .restart local v78       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_8f6

    .line 579
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v89       #notification:Lcom/android/server/NotificationManagerService;
    :catch_a98
    move-exception v66

    move-object/from16 v88, v89

    .end local v89           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_8de

    .line 559
    .end local v107           #throttle:Lcom/android/server/ThrottleService;
    .restart local v108       #throttle:Lcom/android/server/ThrottleService;
    :catch_a9d
    move-exception v66

    move-object/from16 v107, v108

    .end local v108           #throttle:Lcom/android/server/ThrottleService;
    .restart local v107       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_8c6

    .line 550
    .end local v53           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v54       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_aa2
    move-exception v66

    move-object/from16 v53, v54

    .end local v54           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v53       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_8ba

    .line 532
    .end local v119           #wifi:Lcom/android/server/WifiService;
    .restart local v120       #wifi:Lcom/android/server/WifiService;
    :catch_aa7
    move-exception v66

    move-object/from16 v119, v120

    .end local v120           #wifi:Lcom/android/server/WifiService;
    .restart local v119       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_8ae

    .line 524
    .end local v121           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v122       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_aac
    move-exception v66

    move-object/from16 v121, v122

    .end local v122           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v121       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_8a2

    .line 516
    :catch_ab1
    move-exception v66

    goto/16 :goto_896

    .line 506
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v84       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v85       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_ab4
    move-exception v66

    move-object/from16 v12, v85

    .end local v85           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_888

    .line 498
    .end local v109           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v110       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_ab9
    move-exception v66

    move-object/from16 v109, v110

    .end local v110           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v109       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_87c

    .line 463
    .end local v103           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v104       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_abe
    move-exception v66

    move-object/from16 v103, v104

    .end local v104           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v103       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_84c

    .line 455
    .end local v67           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v68       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_ac3
    move-exception v66

    move-object/from16 v67, v68

    .end local v68           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v67       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_840

    .line 446
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v63       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_ac8
    move-exception v66

    move-object/from16 v62, v63

    .end local v63           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_834

    .line 438
    :catch_acd
    move-exception v3

    goto/16 :goto_273

    .line 416
    .end local v59           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v60       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :catch_ad0
    move-exception v66

    move-object/from16 v59, v60

    .end local v60           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v59       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    goto/16 :goto_810

    .line 397
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v74       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_ad5
    move-exception v66

    move-object/from16 v73, v74

    .end local v74           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_7f8

    .line 372
    .end local v40           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v67           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v78           #location:Lcom/android/server/LocationManagerService;
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .end local v100           #shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    .end local v103           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v109           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v117           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v101       #shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    :catch_ada
    move-exception v66

    move-object/from16 v100, v101

    .end local v101           #shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    .restart local v100       #shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    goto/16 :goto_7ec

    .line 363
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v93       #power:Lcom/android/server/PowerManagerService;
    :catch_adf
    move-exception v66

    move-object/from16 v7, v39

    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v45

    .end local v45           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v93

    .end local v93           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_775

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v58       #cryptState:Ljava/lang/String;
    .restart local v71       #firstBoot:Z
    .restart local v77       #lights:Lcom/android/server/LightsService;
    .restart local v90       #onlyCore:Z
    :catch_ae8
    move-exception v66

    move-object/from16 v7, v39

    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v45

    .end local v45           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v76, v77

    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_775

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    :catch_af1
    move-exception v66

    move-object/from16 v7, v39

    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v76, v77

    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_775

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    :catch_af8
    move-exception v66

    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v76, v77

    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_775

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    :catch_aff
    move-exception v66

    move-object/from16 v49, v50

    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v76, v77

    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_775

    .end local v43           #avrcp:Landroid/server/AvrcpStubService;
    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v44       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    :catch_b08
    move-exception v66

    move-object/from16 v43, v44

    .end local v44           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v43       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v49, v50

    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v76, v77

    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_775

    .end local v58           #cryptState:Ljava/lang/String;
    .end local v71           #firstBoot:Z
    .end local v90           #onlyCore:Z
    .restart local v40       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v67       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v78       #location:Lcom/android/server/LocationManagerService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v103       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v109       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v117       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_b13
    move-object/from16 v8, v84

    .end local v84           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_68c
.end method
