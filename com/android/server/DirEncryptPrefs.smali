.class Lcom/android/server/DirEncryptPrefs;
.super Ljava/lang/Object;
.source "DirEncryptPrefs.java"


# static fields
.field private static final CRYPT_PREFERENCES_FILE:Ljava/lang/String; = "DirEncryption.Pref"

.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "DirEncryptPrefs"

.field private static sPreferences:Lcom/android/server/DirEncryptPrefs;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/DirEncryptPrefs;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;
    .registers 3
    .parameter "context"

    .prologue
    .line 38
    const-class v1, Lcom/android/server/DirEncryptPrefs;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;

    if-nez v0, :cond_e

    .line 39
    new-instance v0, Lcom/android/server/DirEncryptPrefs;

    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptPrefs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;

    .line 41
    :cond_e
    sget-object v0, Lcom/android/server/DirEncryptPrefs;->sPreferences:Lcom/android/server/DirEncryptPrefs;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 26
    const-string v0, "DirEncryptPrefs"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method private static logE(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 30
    const-string v0, "DirEncryptPrefs"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method


# virtual methods
.method public clearPrefs()V
    .registers 4

    .prologue
    .line 54
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/"

    const-string v2, "DirEncryption.Pref"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 58
    :cond_12
    return-void
.end method

.method public haveEncPrefs()Z
    .registers 4

    .prologue
    .line 45
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/"

    const-string v2, "DirEncryption.Pref"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 47
    const/4 v1, 0x1

    .line 50
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .registers 10

    .prologue
    .line 61
    new-instance v3, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 63
    .local v3, policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    new-instance v2, Ljava/io/File;

    const-string v7, "/data/system/"

    const-string v8, "DirEncryption.Pref"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_21

    .line 65
    :cond_1a
    const-string v7, "unable to get enc properties"

    invoke-static {v7}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    move-object v4, v3

    .line 86
    .end local v3           #policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .local v4, policies:Ljava/lang/Object;
    :goto_20
    return-object v4

    .line 69
    .end local v4           #policies:Ljava/lang/Object;
    .restart local v3       #policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_21
    const/4 v5, 0x0

    .line 71
    .local v5, reader:Ljava/io/FileReader;
    :try_start_22
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_52
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_43

    .line 72
    .end local v5           #reader:Ljava/io/FileReader;
    .local v6, reader:Ljava/io/FileReader;
    :try_start_27
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v0, v7, [C

    .line 74
    .local v0, buf:[C
    invoke-virtual {v6, v0}, Ljava/io/FileReader;->read([C)I

    .line 76
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v7}, Landroid/dirEncryption/SDCardEncryptionPolicies;->unflattenFromString(Ljava/lang/String;)Landroid/dirEncryption/SDCardEncryptionPolicies;
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_59
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_39} :catch_5c

    move-result-object v3

    .line 82
    :try_start_3a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_40

    move-object v5, v6

    .end local v0           #buf:[C
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :goto_3e
    move-object v4, v3

    .line 86
    .restart local v4       #policies:Ljava/lang/Object;
    goto :goto_20

    .line 83
    .end local v4           #policies:Ljava/lang/Object;
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v0       #buf:[C
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_40
    move-exception v7

    move-object v5, v6

    .line 84
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_3e

    .line 77
    .end local v0           #buf:[C
    :catch_43
    move-exception v1

    .line 78
    .local v1, e:Ljava/io/IOException;
    :goto_44
    :try_start_44
    const-string v7, "IOException:: unable to get enc properties"

    invoke-static {v7}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_52

    .line 82
    :try_start_4c
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_3e

    .line 83
    :catch_50
    move-exception v7

    goto :goto_3e

    .line 81
    .end local v1           #e:Ljava/io/IOException;
    :catchall_52
    move-exception v7

    .line 82
    :goto_53
    :try_start_53
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    .line 83
    :goto_56
    throw v7

    :catch_57
    move-exception v8

    goto :goto_56

    .line 81
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catchall_59
    move-exception v7

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_53

    .line 77
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_5c
    move-exception v1

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_44
.end method

.method public savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z
    .registers 9
    .parameter "policies"

    .prologue
    .line 91
    const/4 v2, 0x1

    .line 92
    .local v2, result:Z
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/system/"

    const-string v6, "DirEncryption.Pref"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v1, f:Ljava/io/File;
    const/4 v3, 0x0

    .line 96
    .local v3, writer:Ljava/io/FileWriter;
    :try_start_b
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_14

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 99
    :cond_14
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_3d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_2c

    .line 100
    .end local v3           #writer:Ljava/io/FileWriter;
    .local v4, writer:Ljava/io/FileWriter;
    :try_start_19
    invoke-virtual {p1}, Landroid/dirEncryption/SDCardEncryptionPolicies;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_45
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_23} :catch_48

    .line 108
    :try_start_23
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_28

    move-object v3, v4

    .line 113
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :goto_27
    return v2

    .line 109
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_28
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    move-object v3, v4

    .line 112
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_27

    .line 102
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2c
    move-exception v0

    .line 103
    .local v0, e:Ljava/io/IOException;
    :goto_2d
    const/4 v2, 0x0

    .line 104
    :try_start_2e
    const-string v5, "IOException:: unable to save enc properties"

    invoke-static {v5}, Lcom/android/server/DirEncryptPrefs;->logE(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_3d

    .line 108
    :try_start_36
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_27

    .line 109
    :catch_3a
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 112
    goto :goto_27

    .line 107
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_3d
    move-exception v5

    .line 108
    :goto_3e
    :try_start_3e
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    .line 111
    :goto_41
    throw v5

    .line 109
    :catch_42
    move-exception v0

    .line 110
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_41

    .line 107
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catchall_45
    move-exception v5

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_3e

    .line 102
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_48
    move-exception v0

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_2d
.end method
