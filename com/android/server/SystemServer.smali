.class public Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field public static ENABLE_PACKAGE_PREFETCH:Z = false

.field public static final FACTORY_TEST_HIGH_LEVEL:I = 0x2

.field public static final FACTORY_TEST_LOW_LEVEL:I = 0x1

.field public static final FACTORY_TEST_OFF:I = 0x0

.field static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field static timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1088
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/SystemServer;->ENABLE_PACKAGE_PREFETCH:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1078
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native init1([Ljava/lang/String;)V
.end method

.method public static final init2()V
    .registers 3

    .prologue
    .line 1150
    const-string v1, "SystemServer"

    const-string v2, "Entered the Android system server!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    new-instance v0, Lcom/android/server/SecServerThread;

    invoke-direct {v0}, Lcom/android/server/SecServerThread;-><init>()V

    .line 1152
    .local v0, thr:Ljava/lang/Thread;
    const-string v1, "android.server.ServerThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1154
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8
    .parameter "args"

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    .line 1102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_18

    .line 1108
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 1113
    :cond_18
    sget-boolean v0, Lcom/android/server/SystemServer;->ENABLE_PACKAGE_PREFETCH:Z

    if-eqz v0, :cond_31

    .line 1114
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1115
    .local v6, cryptState:Ljava/lang/String;
    const-string v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1116
    const-string v0, "SystemServer"

    const-string v1, "!@Detected encryption in progress - only parsing core apps"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    .end local v6           #cryptState:Ljava/lang/String;
    :cond_31
    :goto_31
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1128
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 1129
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/server/SystemServer;->timer:Ljava/util/Timer;

    .line 1130
    sget-object v0, Lcom/android/server/SystemServer;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1}, Lcom/android/server/SystemServer$1;-><init>()V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1139
    :cond_4c
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 1143
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 1145
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1146
    invoke-static {p0}, Lcom/android/server/SystemServer;->init1([Ljava/lang/String;)V

    .line 1147
    return-void

    .line 1117
    .restart local v6       #cryptState:Ljava/lang/String;
    :cond_66
    const-string v0, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1118
    const-string v0, "SystemServer"

    const-string v1, "!@Device encrypted - only parsing core apps"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 1122
    :cond_76
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->prefetch()V

    goto :goto_31
.end method
