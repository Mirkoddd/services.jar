.class public Lcom/android/server/CustomFrequencyManagerService;
.super Landroid/os/ICustomFrequencyManager$Stub;
.source "CustomFrequencyManagerService.java"


# static fields
.field private static final BUS_DEFAULT_FREQUENCY:I = 0x1

.field private static final BUS_MAX_FREQUENCY:I = 0x3

.field private static final DEBUG:Z = true

.field private static final GPU_DEFAULT_FREQUENCY:I = 0x0

.field private static final GPU_LOCK:Ljava/lang/Object; = null

.field private static final GPU_MAX_FREQUENCY:I = 0x1

.field private static final GPU_PATH:Ljava/lang/String; = "/sys/power/gpu_lock"

.field private static final GPU_TABLE_PATH:Ljava/lang/String; = ""

.field private static final SYSBUS_LOCK:Ljava/lang/Object; = null

.field private static final SYSBUS_PATH:Ljava/lang/String; = "sys/devices/system/cpu/cpufreq/busfreq_level_lock"

.field private static final SYSBUS_TABLE_PATH:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "CustomFrequencyManagerService"

.field private static final TESTING:Z = true

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static countOfGPULock:I

.field private static countOfSysBusLock:I


# instance fields
.field mContext:Landroid/content/Context;

.field private mSupportedGPUFrequency:[I

.field private mSupportedSysBusFrequency:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/CustomFrequencyManagerService;->GPU_LOCK:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/CustomFrequencyManagerService;->SYSBUS_LOCK:Ljava/lang/Object;

    .line 72
    sput v1, Lcom/android/server/CustomFrequencyManagerService;->countOfGPULock:I

    .line 73
    sput v1, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Landroid/os/ICustomFrequencyManager$Stub;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    .line 53
    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    .line 55
    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 77
    iput-object p1, p0, Lcom/android/server/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->verifyDefaultCondition()V

    .line 79
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->initSupportedGPUFrequency()V

    .line 80
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->initSupportedSysBusFrequency()V

    .line 81
    return-void
.end method

.method private initSupportedGPUFrequency()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "initSupportedGPUFrequency"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    if-nez v0, :cond_21

    .line 118
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "Initializing testing frequencies for GPU"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    .line 121
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aput v3, v0, v2

    .line 122
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aput v2, v0, v3

    .line 156
    :cond_21
    return-void
.end method

.method private initSupportedSysBusFrequency()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "initSupportedSysBusFrequency"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    if-nez v0, :cond_2b

    .line 165
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "Initializing testing frequencies for system bus"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    .line 168
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    aput v5, v0, v2

    .line 169
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    aput v4, v0, v3

    .line 170
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    aput v3, v0, v4

    .line 171
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    aput v2, v0, v5

    .line 206
    :cond_2b
    return-void
.end method

.method private modifyGPUToValue(I)V
    .registers 7
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/power/gpu_lock"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_33

    .line 229
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_8
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 231
    const-string v2, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### modifyGPUToValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3a

    .line 234
    if-eqz v1, :cond_32

    .line 235
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 237
    :cond_32
    return-void

    .line 234
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    :catchall_33
    move-exception v2

    :goto_34
    if-eqz v0, :cond_39

    .line 235
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 234
    :cond_39
    throw v2

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_3a
    move-exception v2

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_34
.end method

.method private modifySysBusToValue(I)V
    .registers 8
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 260
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "sys/devices/system/cpu/cpufreq/busfreq_level_lock"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_53
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_8} :catch_34

    .line 261
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_8
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 263
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$$$ modifySysBusToValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_5a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_2d} :catch_5d

    .line 267
    if-eqz v2, :cond_32

    .line 268
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_32
    move-object v1, v2

    .line 270
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_33
    :goto_33
    return-void

    .line 264
    :catch_34
    move-exception v0

    .line 265
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_35
    :try_start_35
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedEncodingException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_53

    .line 267
    if-eqz v1, :cond_33

    .line 268
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_33

    .line 267
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_53
    move-exception v3

    :goto_54
    if-eqz v1, :cond_59

    .line 268
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 267
    :cond_59
    throw v3

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_5a
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_54

    .line 264
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_5d
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_35
.end method

.method private revertGPUToDefault()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 242
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/power/gpu_lock"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_8} :catch_24

    .line 243
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_9
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 245
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "### revertGPUToDefault : 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_4a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_1d} :catch_4d

    .line 251
    if-eqz v2, :cond_22

    .line 252
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_22
    move-object v1, v2

    .line 254
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_23
    :goto_23
    return-void

    .line 248
    :catch_24
    move-exception v0

    .line 249
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_25
    :try_start_25
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedEncodingException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_43

    .line 251
    if-eqz v1, :cond_23

    .line 252
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_23

    .line 251
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_43
    move-exception v3

    :goto_44
    if-eqz v1, :cond_49

    .line 252
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 251
    :cond_49
    throw v3

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_4a
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_44

    .line 248
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4d
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_25
.end method

.method private revertSysBusToDefault()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    const/4 v1, 0x0

    .line 276
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "sys/devices/system/cpu/cpufreq/busfreq_level_lock"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_5d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_8} :catch_24

    .line 277
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x1

    :try_start_9
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 279
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "$$$ revertSysBusToDefault : 1"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_98
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_1d} :catch_9b

    .line 284
    if-eqz v2, :cond_22

    .line 286
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_7e

    :cond_22
    :goto_22
    move-object v1, v2

    .line 291
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_23
    :goto_23
    return-void

    .line 281
    :catch_24
    move-exception v0

    .line 282
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_25
    :try_start_25
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedEncodingException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_5d

    .line 284
    if-eqz v1, :cond_23

    .line 286
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_23

    .line 287
    :catch_43
    move-exception v0

    .line 288
    .local v0, e:Ljava/io/IOException;
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "revertSysBusToDefault : IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 284
    .end local v0           #e:Ljava/io/IOException;
    :catchall_5d
    move-exception v3

    :goto_5e
    if-eqz v1, :cond_63

    .line 286
    :try_start_60
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    .line 284
    :cond_63
    :goto_63
    throw v3

    .line 287
    :catch_64
    move-exception v0

    .line 288
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "revertSysBusToDefault : IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 287
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_7e
    move-exception v0

    .line 288
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "revertSysBusToDefault : IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 284
    .end local v0           #e:Ljava/io/IOException;
    :catchall_98
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_5e

    .line 281
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_9b
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_25
.end method

.method private verifyDefaultCondition()V
    .registers 9

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/power/gpu_lock"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_7c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_43

    .line 88
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, currentValue:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 90
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertGPUToDefault()V

    .line 93
    :cond_1f
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "sys/devices/system/cpu/cpufreq/busfreq_level_lock"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_b7

    .line 95
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 96
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 97
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertSysBusToDefault()V
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_7c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3d} :catch_43

    .line 102
    :cond_3d
    if-eqz v0, :cond_42

    .line 104
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_9d

    .line 109
    .end local v2           #currentValue:Ljava/lang/String;
    :cond_42
    :goto_42
    return-void

    .line 99
    :catch_43
    move-exception v3

    .line 100
    .local v3, e:Ljava/lang/Exception;
    :goto_44
    :try_start_44
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyDefaultCondition : Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_44 .. :try_end_5c} :catchall_7c

    .line 102
    if-eqz v0, :cond_42

    .line 104
    :try_start_5e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_42

    .line 105
    :catch_62
    move-exception v3

    .line 106
    .local v3, e:Ljava/io/IOException;
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyDefaultCondition : IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_78
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 102
    .end local v3           #e:Ljava/io/IOException;
    :catchall_7c
    move-exception v4

    :goto_7d
    if-eqz v0, :cond_82

    .line 104
    :try_start_7f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    .line 102
    :cond_82
    :goto_82
    throw v4

    .line 105
    :catch_83
    move-exception v3

    .line 106
    .restart local v3       #e:Ljava/io/IOException;
    const-string v5, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "verifyDefaultCondition : IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 105
    .end local v3           #e:Ljava/io/IOException;
    .restart local v2       #currentValue:Ljava/lang/String;
    :catch_9d
    move-exception v3

    .line 106
    .restart local v3       #e:Ljava/io/IOException;
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyDefaultCondition : IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_78

    .line 102
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #currentValue:Ljava/lang/String;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catchall_b4
    move-exception v4

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_7d

    .line 99
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_b7
    move-exception v3

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_44
.end method


# virtual methods
.method public checkGPUFrequencyRange(I)Z
    .registers 4
    .parameter "value"

    .prologue
    .line 209
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 210
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_e

    .line 211
    const/4 v1, 0x1

    .line 213
    :goto_d
    return v1

    .line 209
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public checkSysBusFrequencyRange(I)Z
    .registers 4
    .parameter "value"

    .prologue
    .line 217
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 218
    iget-object v1, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_e

    .line 219
    const/4 v1, 0x1

    .line 221
    :goto_d
    return v1

    .line 217
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 221
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public getSupportedGPUFrequency()[I
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public getSupportedSysBusFrequency()[I
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    return-object v0
.end method

.method public releaseGPU()V
    .registers 6

    .prologue
    .line 326
    sget-object v2, Lcom/android/server/CustomFrequencyManagerService;->GPU_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 328
    :try_start_3
    sget v1, Lcom/android/server/CustomFrequencyManagerService;->countOfGPULock:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/CustomFrequencyManagerService;->countOfGPULock:I

    .line 330
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseGPU -> count of GPU locks :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/CustomFrequencyManagerService;->countOfGPULock:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sget v1, Lcom/android/server/CustomFrequencyManagerService;->countOfGPULock:I

    if-nez v1, :cond_31

    .line 334
    const-string v1, "CustomFrequencyManagerService"

    const-string v3, "count of GPU locks 0, requesting revertGPUToDefault"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertGPUToDefault()V
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_50
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_31} :catch_33
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_31} :catch_53

    .line 346
    :cond_31
    :goto_31
    :try_start_31
    monitor-exit v2

    .line 347
    return-void

    .line 339
    :catch_33
    move-exception v0

    .line 340
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseGPULock: FileNotFoundException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_31

    .line 346
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_50
    move-exception v1

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_31 .. :try_end_52} :catchall_50

    throw v1

    .line 342
    :catch_53
    move-exception v0

    .line 343
    .local v0, e:Ljava/io/IOException;
    :try_start_54
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseGPULock: IOException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_54 .. :try_end_6f} :catchall_50

    goto :goto_31
.end method

.method public releaseSysBus()V
    .registers 6

    .prologue
    .line 374
    sget-object v2, Lcom/android/server/CustomFrequencyManagerService;->SYSBUS_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 376
    :try_start_3
    sget v1, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    .line 378
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseSysBus -> count of System Bus locks :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    sget v1, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    if-nez v1, :cond_31

    .line 382
    const-string v1, "CustomFrequencyManagerService"

    const-string v3, "count of System Bus locks 0, requesting revertSysBusToDefault"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-direct {p0}, Lcom/android/server/CustomFrequencyManagerService;->revertSysBusToDefault()V
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_50
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_31} :catch_33
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_31} :catch_53

    .line 394
    :cond_31
    :goto_31
    :try_start_31
    monitor-exit v2

    .line 395
    return-void

    .line 387
    :catch_33
    move-exception v0

    .line 388
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseSysBus: FileNotFoundException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_31

    .line 394
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_50
    move-exception v1

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_31 .. :try_end_52} :catchall_50

    throw v1

    .line 390
    :catch_53
    move-exception v0

    .line 391
    .local v0, e:Ljava/io/IOException;
    :try_start_54
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseSysBus: IOException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_54 .. :try_end_6f} :catchall_50

    goto :goto_31
.end method

.method public requestGPU(I)V
    .registers 7
    .parameter "frequency"

    .prologue
    .line 303
    sget-object v2, Lcom/android/server/CustomFrequencyManagerService;->GPU_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 304
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->checkGPUFrequencyRange(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4b

    move-result v1

    if-eqz v1, :cond_6b

    .line 306
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->modifyGPUToValue(I)V

    .line 307
    sget v1, Lcom/android/server/CustomFrequencyManagerService;->countOfGPULock:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/CustomFrequencyManagerService;->countOfGPULock:I

    .line 309
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGPU -> count of GPU locks :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/CustomFrequencyManagerService;->countOfGPULock:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_2c} :catch_2e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2c} :catch_4e

    .line 321
    :goto_2c
    :try_start_2c
    monitor-exit v2

    .line 323
    return-void

    .line 311
    :catch_2e
    move-exception v0

    .line 312
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGPU: FileNotFoundException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2c

    .line 321
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_4b
    move-exception v1

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_2c .. :try_end_4d} :catchall_4b

    throw v1

    .line 314
    :catch_4e
    move-exception v0

    .line 315
    .local v0, e:Ljava/io/IOException;
    :try_start_4f
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGPU: IOException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    .line 319
    .end local v0           #e:Ljava/io/IOException;
    :cond_6b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "GPU Frequency value is not in the permitted range"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_73
    .catchall {:try_start_4f .. :try_end_73} :catchall_4b
.end method

.method public requestSysBus(I)V
    .registers 7
    .parameter "frequency"

    .prologue
    .line 350
    sget-object v2, Lcom/android/server/CustomFrequencyManagerService;->SYSBUS_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 351
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->checkSysBusFrequencyRange(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4b

    move-result v1

    if-eqz v1, :cond_6b

    .line 353
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/CustomFrequencyManagerService;->modifySysBusToValue(I)V

    .line 354
    sget v1, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    .line 356
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSysBus -> count of System Bus locks :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/CustomFrequencyManagerService;->countOfSysBusLock:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_2c} :catch_2e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2c} :catch_4e

    .line 369
    :goto_2c
    :try_start_2c
    monitor-exit v2

    .line 371
    return-void

    .line 359
    :catch_2e
    move-exception v0

    .line 360
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSysBus: FileNotFoundException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2c

    .line 369
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_4b
    move-exception v1

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_2c .. :try_end_4d} :catchall_4b

    throw v1

    .line 362
    :catch_4e
    move-exception v0

    .line 363
    .local v0, e:Ljava/io/IOException;
    :try_start_4f
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSysBus: IOException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    .line 367
    .end local v0           #e:Ljava/io/IOException;
    :cond_6b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "SysBus Frequency value is not in the permitted range"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_73
    .catchall {:try_start_4f .. :try_end_73} :catchall_4b
.end method
