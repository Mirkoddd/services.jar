.class Lcom/android/server/ServerThread$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ServerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServerThread;

.field final synthetic val$appWidgetF:Lcom/android/server/AppWidgetService;

.field final synthetic val$batteryF:Lcom/android/server/BatteryService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$contextF:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$dockF:Lcom/android/server/DockObserver;

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$recognitionF:Lcom/android/server/RecognitionManagerService;

.field final synthetic val$safeMode:Z

.field final synthetic val$statusBarF:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

.field final synthetic val$thermistorF:Lcom/android/server/ThermistorObserver;

.field final synthetic val$throttleF:Lcom/android/server/ThrottleService;

.field final synthetic val$uiModeF:Lcom/android/server/UiModeManagerService;

.field final synthetic val$usbF:Lcom/android/server/usb/UsbService;

.field final synthetic val$wallpaperF:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ServerThread;Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/ThermistorObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/TextServicesManagerService;)V
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 956
    iput-object p1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    iput-object p2, p0, Lcom/android/server/ServerThread$2;->val$contextF:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/ServerThread$2;->val$batteryF:Lcom/android/server/BatteryService;

    iput-object p4, p0, Lcom/android/server/ServerThread$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p5, p0, Lcom/android/server/ServerThread$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p6, p0, Lcom/android/server/ServerThread$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p7, p0, Lcom/android/server/ServerThread$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p8, p0, Lcom/android/server/ServerThread$2;->val$dockF:Lcom/android/server/DockObserver;

    iput-object p9, p0, Lcom/android/server/ServerThread$2;->val$thermistorF:Lcom/android/server/ThermistorObserver;

    iput-object p10, p0, Lcom/android/server/ServerThread$2;->val$usbF:Lcom/android/server/usb/UsbService;

    iput-object p11, p0, Lcom/android/server/ServerThread$2;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    iput-object p12, p0, Lcom/android/server/ServerThread$2;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    iput-object p13, p0, Lcom/android/server/ServerThread$2;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    iput-boolean p14, p0, Lcom/android/server/ServerThread$2;->val$safeMode:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$locationF:Lcom/android/server/LocationManagerService;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$throttleF:Lcom/android/server/ThrottleService;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/server/ServerThread$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 958
    const-string v1, "SystemServer"

    const-string v2, "Making services ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$contextF:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ServerThread;->startSystemUi(Landroid/content/Context;)V

    .line 962
    :try_start_c
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$batteryF:Lcom/android/server/BatteryService;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$batteryF:Lcom/android/server/BatteryService;

    invoke-virtual {v1}, Lcom/android/server/BatteryService;->systemReady()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_c1

    .line 967
    :cond_15
    :goto_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v1}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1e} :catch_cb

    .line 972
    :cond_1e
    :goto_1e
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_27} :catch_d5

    .line 977
    :cond_27
    :goto_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_30} :catch_df

    .line 982
    :cond_30
    :goto_30
    :try_start_30
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_39} :catch_e9

    .line 987
    :cond_39
    :goto_39
    :try_start_39
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$dockF:Lcom/android/server/DockObserver;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$dockF:Lcom/android/server/DockObserver;

    invoke-virtual {v1}, Lcom/android/server/DockObserver;->systemReady()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_42} :catch_f3

    .line 992
    :cond_42
    :goto_42
    :try_start_42
    const-string v1, "SystemServer"

    const-string v2, "thermistor systemReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$thermistorF:Lcom/android/server/ThermistorObserver;

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$thermistorF:Lcom/android/server/ThermistorObserver;

    invoke-virtual {v1}, Lcom/android/server/ThermistorObserver;->systemReady()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_52} :catch_fd

    .line 998
    :cond_52
    :goto_52
    :try_start_52
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$usbF:Lcom/android/server/usb/UsbService;

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$usbF:Lcom/android/server/usb/UsbService;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbService;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_5b} :catch_107

    .line 1003
    :cond_5b
    :goto_5b
    :try_start_5b
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1}, Lcom/android/server/UiModeManagerService;->systemReady()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_64} :catch_111

    .line 1008
    :cond_64
    :goto_64
    :try_start_64
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v1}, Lcom/android/server/RecognitionManagerService;->systemReady()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6d} :catch_11b

    .line 1012
    :cond_6d
    :goto_6d
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/Watchdog;->start()V

    .line 1018
    :try_start_74
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    iget-boolean v2, p0, Lcom/android/server/ServerThread$2;->val$safeMode:Z

    invoke-virtual {v1, v2}, Lcom/android/server/AppWidgetService;->systemReady(Z)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_7f} :catch_125

    .line 1023
    :cond_7f
    :goto_7f
    :try_start_7f
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService;->systemReady()V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_88} :catch_12f

    .line 1028
    :cond_88
    :goto_88
    :try_start_88
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/ServerThread$2;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/InputMethodManagerService;->systemReady(Lcom/android/server/StatusBarManagerService;)V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_93} :catch_139

    .line 1033
    :cond_93
    :goto_93
    :try_start_93
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->systemReady()V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_9c} :catch_143

    .line 1038
    :cond_9c
    :goto_9c
    :try_start_9c
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v1, :cond_a5

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v1}, Lcom/android/server/CountryDetectorService;->systemReady()V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_a5} :catch_14d

    .line 1043
    :cond_a5
    :goto_a5
    :try_start_a5
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$throttleF:Lcom/android/server/ThrottleService;

    if-eqz v1, :cond_ae

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$throttleF:Lcom/android/server/ThrottleService;

    invoke-virtual {v1}, Lcom/android/server/ThrottleService;->systemReady()V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_ae} :catch_157

    .line 1048
    :cond_ae
    :goto_ae
    :try_start_ae
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v1}, Lcom/android/server/NetworkTimeUpdateService;->systemReady()V
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b7} :catch_161

    .line 1053
    :cond_b7
    :goto_b7
    :try_start_b7
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    if-eqz v1, :cond_c0

    iget-object v1, p0, Lcom/android/server/ServerThread$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService;->systemReady()V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_c0} :catch_16b

    .line 1057
    :cond_c0
    :goto_c0
    return-void

    .line 963
    :catch_c1
    move-exception v0

    .line 964
    .local v0, e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Battery Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 968
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_cb
    move-exception v0

    .line 969
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Network Managment Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 973
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_d5
    move-exception v0

    .line 974
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Network Stats Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 978
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_df
    move-exception v0

    .line 979
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Network Policy Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 983
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_e9
    move-exception v0

    .line 984
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Connectivity Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 988
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_f3
    move-exception v0

    .line 989
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Dock Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 994
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_fd
    move-exception v0

    .line 995
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making thermistorF systemReady"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 999
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_107
    move-exception v0

    .line 1000
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making USB Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5b

    .line 1004
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_111
    move-exception v0

    .line 1005
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making UI Mode Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_64

    .line 1009
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_11b
    move-exception v0

    .line 1010
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Recognition Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6d

    .line 1019
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_125
    move-exception v0

    .line 1020
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making App Widget Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7f

    .line 1024
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_12f
    move-exception v0

    .line 1025
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Wallpaper Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_88

    .line 1029
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_139
    move-exception v0

    .line 1030
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Input Method Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_93

    .line 1034
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_143
    move-exception v0

    .line 1035
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Location Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9c

    .line 1039
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_14d
    move-exception v0

    .line 1040
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Country Detector Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a5

    .line 1044
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_157
    move-exception v0

    .line 1045
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Throttle Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ae

    .line 1049
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_161
    move-exception v0

    .line 1050
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Network Time Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b7

    .line 1054
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_16b
    move-exception v0

    .line 1055
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Text Services Manager Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c0
.end method
