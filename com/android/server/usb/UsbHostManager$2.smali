.class Lcom/android/server/usb/UsbHostManager$2;
.super Landroid/os/UEventObserver;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostManager;)V
    .registers 2
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 19
    .parameter "event"

    .prologue
    .line 437
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USB HOST UEVENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v1, "ACTION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 440
    .local v9, action:Ljava/lang/String;
    const-string v1, "DEVPATH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 441
    .local v10, devPath:Ljava/lang/String;
    const-string v1, "STATE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 442
    .local v14, state:Ljava/lang/String;
    const-string v1, "SWITCH_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 443
    .local v13, name:Ljava/lang/String;
    const-string v1, "SWITCH_STATE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 448
    .local v15, switchState:Ljava/lang/String;
    const-string v1, "add"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 449
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    #calls: Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V
    invoke-static {v1}, Lcom/android/server/usb/UsbHostManager;->access$200(Lcom/android/server/usb/UsbHostManager;)V

    .line 452
    :cond_55
    const-string v1, "remove"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 453
    const/4 v12, 0x0

    .local v12, i:I
    :goto_5e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    #getter for: Lcom/android/server/usb/UsbHostManager;->nNotiCount:I
    invoke-static {v1}, Lcom/android/server/usb/UsbHostManager;->access$300(Lcom/android/server/usb/UsbHostManager;)I

    move-result v1

    if-ge v12, v1, :cond_83

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x108008a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/String;

    const-string v16, "Unknown"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v1 .. v8}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 453
    add-int/lit8 v12, v12, 0x1

    goto :goto_5e

    .line 456
    :cond_83
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/usb/UsbHostManager;->nNotiCount:I
    invoke-static {v1, v2}, Lcom/android/server/usb/UsbHostManager;->access$302(Lcom/android/server/usb/UsbHostManager;I)I

    .line 459
    .end local v12           #i:I
    :cond_8b
    const-string v1, "change"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    if-eqz v14, :cond_cd

    const-string v1, "/devices/virtual/host_notify"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 461
    :try_start_9d
    const-string v1, "ADD"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    #calls: Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V
    invoke-static {v1}, Lcom/android/server/usb/UsbHostManager;->access$200(Lcom/android/server/usb/UsbHostManager;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    const v2, 0x10405f1

    const/4 v3, 0x0

    const v4, 0x1080547

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/String;

    const-string v16, "Cable"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v1 .. v8}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbHostManager;->RemoveCableNotification()V

    .line 503
    :cond_cd
    :goto_cd
    return-void

    .line 469
    :cond_ce
    const-string v1, "REMOVE"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 470
    const-wide/16 v1, 0xfa0

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    const v2, 0x10405f2

    const/4 v3, 0x0

    const v4, 0x1080547

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/String;

    const-string v16, "Cable"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v1 .. v8}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbHostManager;->RemoveCableNotification()V
    :try_end_fc
    .catch Ljava/lang/NumberFormatException; {:try_start_9d .. :try_end_fc} :catch_fd

    goto :goto_cd

    .line 499
    :catch_fd
    move-exception v11

    .line 500
    .local v11, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse state or devPath from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    .line 477
    .end local v11           #e:Ljava/lang/NumberFormatException;
    :cond_11b
    :try_start_11b
    const-string v1, "OVERCURRENT"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_147

    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    const v2, 0x10405ee

    const v3, 0x10405ef

    const v4, 0x108008a

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/String;

    const-string v16, "OVERCURRENT"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v1 .. v8}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostManager;->access$308(Lcom/android/server/usb/UsbHostManager;)I

    goto :goto_cd

    .line 484
    :cond_147
    const-string v1, "UNKNOWN"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_172

    .line 485
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    const v2, 0x10405f0

    const/4 v3, 0x0

    const v4, 0x108008a

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/String;

    const-string v16, "UNKNOWN"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v1 .. v8}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostManager;->access$308(Lcom/android/server/usb/UsbHostManager;)I

    goto/16 :goto_cd

    .line 491
    :cond_172
    const-string v1, "LOWBATT"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    const v2, 0x10403b1

    const/4 v3, 0x0

    const v4, 0x108008a

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/String;

    const-string v16, "LOWBATT"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/server/usb/UsbHostManager;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    invoke-static/range {v1 .. v8}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$2;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostManager;->access$308(Lcom/android/server/usb/UsbHostManager;)I
    :try_end_19b
    .catch Ljava/lang/NumberFormatException; {:try_start_11b .. :try_end_19b} :catch_fd

    goto/16 :goto_cd
.end method
