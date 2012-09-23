.class public Lcom/android/server/NotificationPlayer;
.super Ljava/lang/Object;
.source "NotificationPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NotificationPlayer$CmdThread;,
        Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;,
        Lcom/android/server/NotificationPlayer$Command;
    }
.end annotation


# static fields
.field private static final PLAY:I = 0x1

.field private static final STOP:I = 0x2

.field private static final mDebug:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCmdQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/NotificationPlayer$Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompletionHandlingLock:Ljava/lang/Object;

.field private mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

.field private mLooper:Landroid/os/Looper;

.field private mMotionEnabled:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mState:I

.field private mTag:Ljava/lang/String;

.field private mThread:Lcom/android/server/NotificationPlayer$CmdThread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "tag"

    .prologue
    .line 261
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 247
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    .line 254
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/NotificationPlayer;->mState:I

    .line 362
    new-instance v0, Lcom/android/server/NotificationPlayer$1;

    invoke-direct {v0, p0}, Lcom/android/server/NotificationPlayer$1;-><init>(Lcom/android/server/NotificationPlayer;)V

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 262
    if-eqz p1, :cond_20

    .line 263
    iput-object p1, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    .line 267
    :goto_1f
    return-void

    .line 265
    :cond_20
    const-string v0, "NotificationPlayer"

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    goto :goto_1f
.end method

.method static synthetic access$000(Lcom/android/server/NotificationPlayer;)Landroid/os/Looper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/NotificationPlayer;Landroid/os/Looper;)Landroid/os/Looper;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/NotificationPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/NotificationPlayer;->register()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/NotificationPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/NotificationPlayer;->unregister()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/NotificationPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/NotificationPlayer;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/NotificationPlayer;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/NotificationPlayer;Lcom/android/server/NotificationPlayer$Command;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/NotificationPlayer;->startSound(Lcom/android/server/NotificationPlayer$Command;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/NotificationPlayer;Lcom/android/server/NotificationPlayer$CmdThread;)Lcom/android/server/NotificationPlayer$CmdThread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/NotificationPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/NotificationPlayer;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_9

    .line 349
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 351
    :cond_9
    return-void
.end method

.method private enqueueLocked(Lcom/android/server/NotificationPlayer$Command;)V
    .registers 3
    .parameter "cmd"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    if-nez v0, :cond_18

    .line 317
    invoke-direct {p0}, Lcom/android/server/NotificationPlayer;->acquireWakeLock()V

    .line 318
    new-instance v0, Lcom/android/server/NotificationPlayer$CmdThread;

    invoke-direct {v0, p0}, Lcom/android/server/NotificationPlayer$CmdThread;-><init>(Lcom/android/server/NotificationPlayer;)V

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    .line 319
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    invoke-virtual {v0}, Lcom/android/server/NotificationPlayer$CmdThread;->start()V

    .line 321
    :cond_18
    return-void
.end method

.method private register()V
    .registers 3

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/android/server/NotificationPlayer;->mMotionEnabled:Z

    if-eqz v0, :cond_16

    .line 388
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_16

    .line 389
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;)V

    .line 390
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    const-string v1, "register"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_16
    return-void
.end method

.method private releaseWakeLock()V
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_9

    .line 355
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 357
    :cond_9
    return-void
.end method

.method private startSound(Lcom/android/server/NotificationPlayer$Command;)V
    .registers 9
    .parameter "cmd"

    .prologue
    .line 143
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_63

    .line 147
    :try_start_3
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v5, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v3, v5, :cond_1a

    .line 149
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 151
    :cond_1a
    new-instance v3, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    invoke-direct {v3, p0, p1}, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;-><init>(Lcom/android/server/NotificationPlayer;Lcom/android/server/NotificationPlayer$Command;)V

    iput-object v3, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    .line 152
    iget-object v5, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    monitor-enter v5
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_60

    .line 153
    :try_start_24
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    invoke-virtual {v3}, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->start()V

    .line 154
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 155
    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_5d

    .line 156
    :try_start_2f
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_60

    .line 159
    :try_start_30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/server/NotificationPlayer$Command;->requestTime:J

    sub-long v0, v3, v5

    .line 160
    .local v0, delay:J
    const-wide/16 v3, 0x3e8

    cmp-long v3, v0, v3

    if-lez v3, :cond_5c

    .line 161
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notification sound delayed by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "msecs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_5c} :catch_63

    .line 167
    .end local v0           #delay:J
    :cond_5c
    :goto_5c
    return-void

    .line 155
    :catchall_5d
    move-exception v3

    :try_start_5e
    monitor-exit v5
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    :try_start_5f
    throw v3

    .line 156
    :catchall_60
    move-exception v3

    monitor-exit v4
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_60

    :try_start_62
    throw v3
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_63} :catch_63

    .line 164
    :catch_63
    move-exception v2

    .line 165
    .local v2, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error loading sound for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c
.end method

.method private unregister()V
    .registers 3

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/android/server/NotificationPlayer;->mMotionEnabled:Z

    if-eqz v0, :cond_16

    .line 397
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_16

    .line 398
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 399
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    const-string v1, "unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_16
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5
    .parameter "mp"

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_a

    .line 227
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 230
    :cond_a
    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 231
    :try_start_d
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_25

    .line 232
    iget-object v2, p0, Lcom/android/server/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_2d

    .line 233
    :try_start_18
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_21

    .line 234
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 236
    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    .line 237
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_2a

    .line 239
    :cond_25
    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_2d

    .line 241
    invoke-direct {p0}, Lcom/android/server/NotificationPlayer;->unregister()V

    .line 242
    return-void

    .line 237
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v0

    .line 239
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;ZI)V
    .registers 9
    .parameter "context"
    .parameter "uri"
    .parameter "looping"
    .parameter "stream"

    .prologue
    const/4 v3, 0x1

    .line 283
    new-instance v0, Lcom/android/server/NotificationPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/NotificationPlayer$Command;-><init>(Lcom/android/server/NotificationPlayer$1;)V

    .line 284
    .local v0, cmd:Lcom/android/server/NotificationPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/NotificationPlayer$Command;->requestTime:J

    .line 285
    iput v3, v0, Lcom/android/server/NotificationPlayer$Command;->code:I

    .line 286
    iput-object p1, v0, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    .line 287
    iput-object p2, v0, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    .line 288
    iput-boolean p3, v0, Lcom/android/server/NotificationPlayer$Command;->looping:Z

    .line 289
    iput p4, v0, Lcom/android/server/NotificationPlayer$Command;->stream:I

    .line 290
    iget-object v2, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 291
    :try_start_1a
    invoke-direct {p0, v0}, Lcom/android/server/NotificationPlayer;->enqueueLocked(Lcom/android/server/NotificationPlayer$Command;)V

    .line 292
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/NotificationPlayer;->mState:I

    .line 293
    monitor-exit v2

    .line 294
    return-void

    .line 293
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    throw v1
.end method

.method public setMotionEnabled(Landroid/content/Context;Z)V
    .registers 4
    .parameter "context"
    .parameter "motionEnabled"

    .prologue
    .line 375
    iput-boolean p2, p0, Lcom/android/server/NotificationPlayer;->mMotionEnabled:Z

    .line 376
    if-eqz p2, :cond_13

    .line 377
    iget-object v0, p0, Lcom/android/server/NotificationPlayer;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_12

    .line 378
    const-string v0, "motion_recognition"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 384
    :cond_12
    :goto_12
    return-void

    .line 382
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NotificationPlayer;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    goto :goto_12
.end method

.method public setUsesWakeLock(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    if-eqz v1, :cond_2f

    .line 340
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assertion failed mWakeLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :cond_2f
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 344
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 345
    return-void
.end method

.method public stop()V
    .registers 6

    .prologue
    const/4 v3, 0x2

    .line 301
    iget-object v2, p0, Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 304
    :try_start_4
    iget v1, p0, Lcom/android/server/NotificationPlayer;->mState:I

    if-eq v1, v3, :cond_1d

    .line 305
    new-instance v0, Lcom/android/server/NotificationPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/NotificationPlayer$Command;-><init>(Lcom/android/server/NotificationPlayer$1;)V

    .line 306
    .local v0, cmd:Lcom/android/server/NotificationPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/NotificationPlayer$Command;->requestTime:J

    .line 307
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/NotificationPlayer$Command;->code:I

    .line 308
    invoke-direct {p0, v0}, Lcom/android/server/NotificationPlayer;->enqueueLocked(Lcom/android/server/NotificationPlayer$Command;)V

    .line 309
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/NotificationPlayer;->mState:I

    .line 311
    .end local v0           #cmd:Lcom/android/server/NotificationPlayer$Command;
    :cond_1d
    monitor-exit v2

    .line 312
    return-void

    .line 311
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v1
.end method
