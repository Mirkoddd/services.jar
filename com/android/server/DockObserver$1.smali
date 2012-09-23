.class Lcom/android/server/DockObserver$1;
.super Landroid/os/Handler;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method constructor <init>(Lcom/android/server/DockObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    .line 150
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_1cc

    .line 242
    :goto_5
    return-void

    .line 152
    :pswitch_6
    monitor-enter p0

    .line 153
    :try_start_7
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Dock state changed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v12}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 157
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v10, "device_provisioned"

    const/4 v11, 0x0

    invoke-static {v2, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_5c

    .line 159
    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v10

    const/16 v11, 0x9

    if-eq v10, v11, :cond_5c

    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)I

    move-result v10

    const/16 v11, 0x9

    if-eq v10, v11, :cond_5c

    .line 160
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Device not provisioned, skipping dock broadcast"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    monitor-exit p0

    goto :goto_5

    .line 239
    .end local v2           #cr:Landroid/content/ContentResolver;
    :catchall_59
    move-exception v10

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_7 .. :try_end_5b} :catchall_59

    throw v10

    .line 165
    .restart local v2       #cr:Landroid/content/ContentResolver;
    :cond_5c
    :try_start_5c
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.DOCK_EVENT"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v3, intent:Landroid/content/Intent;
    const/high16 v10, 0x2000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    const-string v10, "android.intent.extra.DOCK_STATE"

    iget-object v11, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v11}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    invoke-static {}, Landroid/server/BluetoothService;->readDockBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_86

    .line 172
    const-string v10, "android.bluetooth.device.extra.DEVICE"

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    :cond_86
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->IsShutDownStarted()Z

    move-result v10

    if-nez v10, :cond_114

    .line 180
    const-string v10, "dock_sounds_enabled"

    const/4 v11, 0x1

    invoke-static {v2, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1c1

    .line 183
    const/4 v9, 0x0

    .line 184
    .local v9, whichSound:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v10

    if-nez v10, :cond_123

    .line 185
    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_c4

    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_c4

    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_c4

    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)I

    move-result v10

    const/16 v11, 0x9

    if-ne v10, v11, :cond_117

    .line 189
    :cond_c4
    const-string v9, "desk_undock_sound"

    .line 205
    :cond_c6
    :goto_c6
    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "audio"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 206
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 208
    .local v4, ringerMode:I
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "whichSound is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-eqz v9, :cond_10b

    .line 211
    const/4 v10, 0x1

    if-ne v4, v10, :cond_159

    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v10

    const/16 v11, 0x9

    if-ne v10, v11, :cond_159

    .line 213
    new-instance v8, Landroid/os/Vibrator;

    invoke-direct {v8}, Landroid/os/Vibrator;-><init>()V

    .line 214
    .local v8, vibrator:Landroid/os/Vibrator;
    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v10, v11}, Landroid/os/Vibrator;->vibrate(J)V

    .line 237
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v4           #ringerMode:I
    .end local v8           #vibrator:Landroid/os/Vibrator;
    .end local v9           #whichSound:Ljava/lang/String;
    :cond_10b
    :goto_10b
    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 239
    :cond_114
    monitor-exit p0

    goto/16 :goto_5

    .line 190
    .restart local v9       #whichSound:Ljava/lang/String;
    :cond_117
    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_c6

    .line 191
    const-string v9, "car_undock_sound"

    goto :goto_c6

    .line 194
    :cond_123
    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_148

    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_148

    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_148

    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v10

    const/16 v11, 0x9

    if-ne v10, v11, :cond_14c

    .line 198
    :cond_148
    const-string v9, "desk_dock_sound"

    goto/16 :goto_c6

    .line 199
    :cond_14c
    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_c6

    .line 200
    const-string v9, "car_dock_sound"

    goto/16 :goto_c6

    .line 216
    .restart local v1       #audioManager:Landroid/media/AudioManager;
    .restart local v4       #ringerMode:I
    :cond_159
    invoke-static {v2, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, soundPath:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "soundPath is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-eqz v6, :cond_10b

    .line 219
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 220
    .local v7, soundUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "soundUri is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    if-eqz v7, :cond_10b

    .line 222
    iget-object v10, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v7}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v5

    .line 223
    .local v5, sfx:Landroid/media/Ringtone;
    if-eqz v5, :cond_10b

    .line 224
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 225
    invoke-virtual {v5}, Landroid/media/Ringtone;->play()V

    goto/16 :goto_10b

    .line 234
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v4           #ringerMode:I
    .end local v5           #sfx:Landroid/media/Ringtone;
    .end local v6           #soundPath:Ljava/lang/String;
    .end local v7           #soundUri:Landroid/net/Uri;
    .end local v9           #whichSound:Ljava/lang/String;
    :cond_1c1
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string v11, "DOCK_SOUNDS_ENALBED is not"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ca
    .catchall {:try_start_5c .. :try_end_1ca} :catchall_59

    goto/16 :goto_10b

    .line 150
    :pswitch_data_1cc
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
