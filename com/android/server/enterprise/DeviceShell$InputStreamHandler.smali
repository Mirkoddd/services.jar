.class Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
.super Ljava/lang/Thread;
.source "DeviceShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/DeviceShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputStreamHandler"
.end annotation


# instance fields
.field output:Ljava/lang/StringBuffer;

.field private final sink:Z

.field private final stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Z)V
    .registers 3
    .parameter "stream"
    .parameter "sink"

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 217
    iput-boolean p2, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->sink:Z

    .line 218
    iput-object p1, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->stream:Ljava/io/InputStream;

    .line 219
    invoke-virtual {p0}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->start()V

    .line 220
    return-void
.end method


# virtual methods
.method public getOutput()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->output:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 7

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 226
    .local v0, b:Ljava/io/BufferedReader;
    :try_start_1
    iget-boolean v4, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->sink:Z

    if-eqz v4, :cond_14

    .line 227
    :cond_5
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->stream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_5a

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 241
    :goto_e
    if-eqz v0, :cond_13

    .line 242
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_55

    .line 247
    :cond_13
    :goto_13
    return-void

    .line 230
    :cond_14
    :try_start_14
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->output:Ljava/lang/StringBuffer;

    .line 231
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->stream:Ljava/io/InputStream;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_27} :catch_5a

    .line 233
    .end local v0           #b:Ljava/io/BufferedReader;
    .local v1, b:Ljava/io/BufferedReader;
    :goto_27
    :try_start_27
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_5c

    .line 234
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->output:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_57
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_38} :catch_39

    goto :goto_27

    .line 237
    .end local v3           #s:Ljava/lang/String;
    :catch_39
    move-exception v2

    move-object v0, v1

    .line 238
    .end local v1           #b:Ljava/io/BufferedReader;
    .restart local v0       #b:Ljava/io/BufferedReader;
    .local v2, e:Ljava/lang/Exception;
    :goto_3b
    :try_start_3b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_49

    .line 241
    if-eqz v0, :cond_13

    .line 242
    :try_start_40
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_13

    .line 243
    :catch_44
    move-exception v2

    .line 244
    :goto_45
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .line 240
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_49
    move-exception v4

    .line 241
    :goto_4a
    if-eqz v0, :cond_4f

    .line 242
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50

    .line 240
    :cond_4f
    :goto_4f
    throw v4

    .line 243
    :catch_50
    move-exception v2

    .line 244
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4f

    .line 243
    .end local v2           #e:Ljava/lang/Exception;
    :catch_55
    move-exception v2

    goto :goto_45

    .line 240
    .end local v0           #b:Ljava/io/BufferedReader;
    .restart local v1       #b:Ljava/io/BufferedReader;
    :catchall_57
    move-exception v4

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedReader;
    .restart local v0       #b:Ljava/io/BufferedReader;
    goto :goto_4a

    .line 237
    :catch_5a
    move-exception v2

    goto :goto_3b

    .end local v0           #b:Ljava/io/BufferedReader;
    .restart local v1       #b:Ljava/io/BufferedReader;
    .restart local v3       #s:Ljava/lang/String;
    :cond_5c
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedReader;
    .restart local v0       #b:Ljava/io/BufferedReader;
    goto :goto_e
.end method
