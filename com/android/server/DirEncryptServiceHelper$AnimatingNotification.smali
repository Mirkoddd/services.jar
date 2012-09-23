.class Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatingNotification"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLevel:I

.field private mStop:Z

.field final synthetic this$0:Lcom/android/server/DirEncryptServiceHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mLevel:I

    .line 191
    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    .line 192
    return-void
.end method


# virtual methods
.method public isInProgress()Z
    .registers 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public run()V
    .registers 6

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    #getter for: Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->access$400(Lcom/android/server/DirEncryptServiceHelper;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 211
    :try_start_7
    iget v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mLevel:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_3e

    .line 212
    iget v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mLevel:I

    .line 216
    :goto_12
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->access$500()Landroid/app/Notification;

    move-result-object v1

    iget v3, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mLevel:I

    iput v3, v1, Landroid/app/Notification;->iconLevel:I

    .line 219
    iget-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    if-nez v1, :cond_3c

    .line 221
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 222
    .local v0, nm:Landroid/app/NotificationManager;
    sget v1, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->access$500()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 224
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    #getter for: Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->access$200(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_3c
    monitor-exit v2

    .line 227
    return-void

    .line 214
    :cond_3e
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mLevel:I

    goto :goto_12

    .line 226
    :catchall_42
    move-exception v1

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public start()V
    .registers 2

    .prologue
    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 200
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 196
    return-void
.end method
