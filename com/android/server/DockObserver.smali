.class Lcom/android/server/DockObserver;
.super Landroid/os/UEventObserver;
.source "DockObserver.java"


# static fields
.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final LOG:Z

.field private static final MSG_DOCK_STATE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final VIBRATION_DURATION:I

.field private final mContext:Landroid/content/Context;

.field private mDockState:I

.field private final mHandler:Landroid/os/Handler;

.field private mPowerManager:Lcom/android/server/PowerManagerService;

.field private mPreviousDockState:I

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-class v0, Lcom/android/server/DockObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    .registers 4
    .parameter "context"
    .parameter "pm"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 56
    iput v0, p0, Lcom/android/server/DockObserver;->mDockState:I

    .line 57
    iput v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 65
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/DockObserver;->VIBRATION_DURATION:I

    .line 147
    new-instance v0, Lcom/android/server/DockObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/server/DockObserver;->mPowerManager:Lcom/android/server/PowerManagerService;

    .line 70
    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    .line 72
    const-string v0, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {p0, v0}, Lcom/android/server/DockObserver;->startObserving(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/DockObserver;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/server/DockObserver;->mDockState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/DockObserver;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DockObserver;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return v0
.end method

.method private final init()V
    .registers 8

    .prologue
    const/16 v5, 0x400

    .line 111
    new-array v0, v5, [C

    .line 113
    .local v0, buffer:[C
    const/4 v2, 0x0

    .line 115
    .local v2, file:Ljava/io/FileReader;
    :try_start_5
    new-instance v3, Ljava/io/FileReader;

    const-string v5, "/sys/class/switch/dock/state"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_c} :catch_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_40

    .line 116
    .end local v2           #file:Ljava/io/FileReader;
    .local v3, file:Ljava/io/FileReader;
    const/4 v5, 0x0

    const/16 v6, 0x400

    :try_start_f
    invoke-virtual {v3, v0, v5, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 118
    .local v4, len:I
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v5, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_59
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_29} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_29} :catch_5c

    .line 124
    if-eqz v3, :cond_2e

    .line 126
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_57

    :cond_2e
    :goto_2e
    move-object v2, v3

    .line 131
    .end local v3           #file:Ljava/io/FileReader;
    .end local v4           #len:I
    .restart local v2       #file:Ljava/io/FileReader;
    :cond_2f
    :goto_2f
    return-void

    .line 119
    :catch_30
    move-exception v1

    .line 120
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_31
    :try_start_31
    sget-object v5, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v6, "This kernel does not have dock station support"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_4e

    .line 124
    if-eqz v2, :cond_2f

    .line 126
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_2f

    .line 127
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_3e
    move-exception v5

    goto :goto_2f

    .line 121
    :catch_40
    move-exception v1

    .line 122
    .local v1, e:Ljava/lang/Exception;
    :goto_41
    :try_start_41
    sget-object v5, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4e

    .line 124
    if-eqz v2, :cond_2f

    .line 126
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_3e

    goto :goto_2f

    .line 124
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_4e
    move-exception v5

    :goto_4f
    if-eqz v2, :cond_54

    .line 126
    :try_start_51
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    .line 124
    :cond_54
    :goto_54
    throw v5

    .line 127
    :catch_55
    move-exception v6

    goto :goto_54

    .end local v2           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    .restart local v4       #len:I
    :catch_57
    move-exception v5

    goto :goto_2e

    .line 124
    .end local v4           #len:I
    :catchall_59
    move-exception v5

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    goto :goto_4f

    .line 121
    .end local v2           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    :catch_5c
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    goto :goto_41

    .line 119
    .end local v2           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    :catch_5f
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    goto :goto_31
.end method

.method private final update()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 145
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 9
    .parameter "event"

    .prologue
    .line 78
    sget-object v2, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dock UEVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    monitor-enter p0

    .line 83
    :try_start_1d
    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, newState:I
    iget v2, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eq v1, v2, :cond_43

    .line 85
    iget v2, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 86
    iput v1, p0, Lcom/android/server/DockObserver;->mDockState:I

    .line 87
    iget-boolean v2, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v2, :cond_43

    .line 98
    iget-object v2, p0, Lcom/android/server/DockObserver;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/PowerManagerService;->userActivityWithForce(JZZ)V

    .line 101
    invoke-direct {p0}, Lcom/android/server/DockObserver;->update()V
    :try_end_43
    .catchall {:try_start_1d .. :try_end_43} :catchall_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_43} :catch_45

    .line 107
    .end local v1           #newState:I
    :cond_43
    :goto_43
    :try_start_43
    monitor-exit p0

    .line 108
    return-void

    .line 104
    :catch_45
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse switch state from event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 107
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catchall_5f
    move-exception v2

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_43 .. :try_end_61} :catchall_5f

    throw v2
.end method

.method systemReady()V
    .registers 2

    .prologue
    .line 134
    monitor-enter p0

    .line 136
    :try_start_1
    iget v0, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eqz v0, :cond_8

    .line 137
    invoke-direct {p0}, Lcom/android/server/DockObserver;->update()V

    .line 139
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 140
    monitor-exit p0

    .line 141
    return-void

    .line 140
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method
