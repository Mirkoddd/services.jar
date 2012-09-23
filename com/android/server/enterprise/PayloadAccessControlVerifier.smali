.class public Lcom/android/server/enterprise/PayloadAccessControlVerifier;
.super Ljava/lang/Object;
.source "PayloadAccessControlVerifier.java"


# static fields
.field private static final CLASSES_FILE:Ljava/lang/String; = "classes.dex"

.field private static final MANIFEST_FILE:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final PUBLIC_CERTIFCATE:Ljava/lang/String; = "/system/etc/permissions/test.x509.pem"

.field private static final RESOURCES_FILE:Ljava/lang/String; = "resources.arsc"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFileData(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 14
    .parameter "apkPath"
    .parameter "fileName"

    .prologue
    .line 193
    const/4 v3, 0x0

    .line 195
    .local v3, ipJarFile:Ljava/util/jar/JarFile;
    const/4 v5, 0x0

    .line 199
    .local v5, is:Ljava/io/InputStream;
    :try_start_2
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_6e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_51

    .line 201
    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .local v4, ipJarFile:Ljava/util/jar/JarFile;
    :try_start_7
    invoke-virtual {v4, p1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v6

    .line 203
    .local v6, je:Ljava/util/jar/JarEntry;
    invoke-virtual {v6}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v9

    long-to-int v8, v9

    .line 205
    .local v8, total_size:I
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v4, v6}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 209
    new-array v0, v8, [B

    .line 211
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 213
    .local v1, count:I
    const/4 v7, 0x0

    .line 215
    .local v7, read_size:I
    :goto_34
    sub-int v9, v8, v1

    invoke-virtual {v5, v0, v1, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_3f

    .line 217
    add-int/2addr v1, v7

    goto :goto_34

    .line 223
    :cond_3f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 225
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_bc
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_45} :catch_bf

    .line 240
    if-eqz v5, :cond_4a

    .line 241
    :try_start_47
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_a6

    .line 252
    :cond_4a
    :goto_4a
    if-eqz v4, :cond_4f

    .line 253
    :try_start_4c
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_b1

    :cond_4f
    :goto_4f
    move-object v3, v4

    .line 264
    .end local v0           #buf:[B
    .end local v1           #count:I
    .end local v4           #ipJarFile:Ljava/util/jar/JarFile;
    .end local v6           #je:Ljava/util/jar/JarEntry;
    .end local v7           #read_size:I
    .end local v8           #total_size:I
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    :goto_50
    return-object v0

    .line 229
    :catch_51
    move-exception v2

    .line 231
    .local v2, e:Ljava/lang/Exception;
    :goto_52
    :try_start_52
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 233
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Check private key"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_52 .. :try_end_62} :catchall_6e

    .line 240
    if-eqz v5, :cond_67

    .line 241
    :try_start_64
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_90

    .line 252
    :cond_67
    :goto_67
    if-eqz v3, :cond_6c

    .line 253
    :try_start_69
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_9b

    .line 264
    :cond_6c
    :goto_6c
    const/4 v0, 0x0

    goto :goto_50

    .line 239
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_6e
    move-exception v9

    .line 240
    :goto_6f
    if-eqz v5, :cond_74

    .line 241
    :try_start_71
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_7a

    .line 252
    :cond_74
    :goto_74
    if-eqz v3, :cond_79

    .line 253
    :try_start_76
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_85

    .line 239
    :cond_79
    :goto_79
    throw v9

    .line 244
    :catch_7a
    move-exception v2

    .line 246
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_74

    .line 256
    .end local v2           #e:Ljava/lang/Exception;
    :catch_85
    move-exception v2

    .line 258
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_79

    .line 244
    :catch_90
    move-exception v2

    .line 246
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_67

    .line 256
    :catch_9b
    move-exception v2

    .line 258
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_6c

    .line 244
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v0       #buf:[B
    .restart local v1       #count:I
    .restart local v4       #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v6       #je:Ljava/util/jar/JarEntry;
    .restart local v7       #read_size:I
    .restart local v8       #total_size:I
    :catch_a6
    move-exception v2

    .line 246
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_4a

    .line 256
    .end local v2           #e:Ljava/lang/Exception;
    :catch_b1
    move-exception v2

    .line 258
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_4f

    .line 239
    .end local v0           #buf:[B
    .end local v1           #count:I
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #je:Ljava/util/jar/JarEntry;
    .end local v7           #read_size:I
    .end local v8           #total_size:I
    :catchall_bc
    move-exception v9

    move-object v3, v4

    .end local v4           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    goto :goto_6f

    .line 229
    .end local v3           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v4       #ipJarFile:Ljava/util/jar/JarFile;
    :catch_bf
    move-exception v2

    move-object v3, v4

    .end local v4           #ipJarFile:Ljava/util/jar/JarFile;
    .restart local v3       #ipJarFile:Ljava/util/jar/JarFile;
    goto :goto_52
.end method

.method private static joinBytes([B[B[B)[B
    .registers 8
    .parameter "bytes1"
    .parameter "bytes2"
    .parameter "bytes3"

    .prologue
    const/4 v4, 0x0

    .line 153
    const/4 v1, 0x0

    .line 155
    .local v1, outBytes:[B
    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    array-length v3, p2

    add-int v0, v2, v3

    .line 159
    .local v0, len:I
    new-array v1, v0, [B

    .line 161
    array-length v2, p0

    invoke-static {p0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    array-length v3, p2

    invoke-static {p2, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    return-object v1
.end method

.method private static printBytes([B)V
    .registers 9
    .parameter "byteArray"

    .prologue
    .line 177
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .local v2, byteString:Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_16

    aget-byte v1, v0, v3

    .line 181
    .local v1, b:B
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 185
    .end local v1           #b:B
    :cond_16
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private static readPublicKey()Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/permissions/test.x509.pem"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 63
    .local v1, input:Ljava/io/FileInputStream;
    :try_start_c
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 65
    .local v0, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 69
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 65
    return-object v2

    .line 69
    .end local v0           #cf:Ljava/security/cert/CertificateFactory;
    :catchall_1c
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v2
.end method

.method private static verify([B[B)Z
    .registers 8
    .parameter "data"
    .parameter "inSignature"

    .prologue
    .line 87
    const/4 v2, 0x0

    .line 95
    .local v2, ret:Z
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/PayloadAccessControlVerifier;->readPublicKey()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 99
    .local v0, certificate:Ljava/security/cert/Certificate;
    const-string v4, "SHA1withRSA"

    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 101
    .local v3, verify:Ljava/security/Signature;
    invoke-virtual {v3, v0}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 103
    invoke-virtual {v3, p0}, Ljava/security/Signature;->update([B)V

    .line 105
    invoke-virtual {v3, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    .line 107
    if-eqz v2, :cond_1f

    .line 109
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Signature Verify SUCCESS"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    .end local v0           #certificate:Ljava/security/cert/Certificate;
    .end local v3           #verify:Ljava/security/Signature;
    :goto_1e
    return v2

    .line 113
    .restart local v0       #certificate:Ljava/security/cert/Certificate;
    .restart local v3       #verify:Ljava/security/Signature;
    :cond_1f
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Signature Verify FAILURE"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_26} :catch_27
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_26} :catch_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_26} :catch_31
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_26} :catch_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_3b

    goto :goto_1e

    .line 121
    .end local v0           #certificate:Ljava/security/cert/Certificate;
    .end local v3           #verify:Ljava/security/Signature;
    :catch_27
    move-exception v1

    .line 123
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    .line 125
    .end local v1           #e:Ljava/io/IOException;
    :catch_2c
    move-exception v1

    .line 127
    .local v1, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1e

    .line 129
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_31
    move-exception v1

    .line 131
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1e

    .line 133
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_36
    move-exception v1

    .line 135
    .local v1, e:Ljava/security/SignatureException;
    invoke-virtual {v1}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_1e

    .line 137
    .end local v1           #e:Ljava/security/SignatureException;
    :catch_3b
    move-exception v1

    .line 139
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method public static declared-synchronized verifyPayload(Ljava/lang/String;[B)Z
    .registers 13
    .parameter "apkPath"
    .parameter "payload"

    .prologue
    const/4 v7, 0x0

    .line 276
    const-class v8, Lcom/android/server/enterprise/PayloadAccessControlVerifier;

    monitor-enter v8

    :try_start_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    .line 280
    .local v3, extractedb64Signature:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v3, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 286
    .local v2, extractedSignature:[B
    const-string v9, "AndroidManifest.xml"

    invoke-static {p0, v9}, Lcom/android/server/enterprise/PayloadAccessControlVerifier;->getFileData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 288
    .local v4, manifestData:[B
    const-string v9, "classes.dex"

    invoke-static {p0, v9}, Lcom/android/server/enterprise/PayloadAccessControlVerifier;->getFileData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 290
    .local v0, classesData:[B
    const-string v9, "resources.arsc"

    invoke-static {p0, v9}, Lcom/android/server/enterprise/PayloadAccessControlVerifier;->getFileData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 292
    .local v5, rsrcData:[B
    if-eqz v2, :cond_28

    if-eqz v4, :cond_28

    if-eqz v0, :cond_28

    if-nez v5, :cond_31

    .line 294
    :cond_28
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Verification FAILED"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_51
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2f} :catch_4c

    .line 324
    .end local v0           #classesData:[B
    .end local v2           #extractedSignature:[B
    .end local v3           #extractedb64Signature:Ljava/lang/String;
    .end local v4           #manifestData:[B
    .end local v5           #rsrcData:[B
    :goto_2f
    monitor-exit v8

    return v7

    .line 298
    .restart local v0       #classesData:[B
    .restart local v2       #extractedSignature:[B
    .restart local v3       #extractedb64Signature:Ljava/lang/String;
    .restart local v4       #manifestData:[B
    .restart local v5       #rsrcData:[B
    :cond_31
    :try_start_31
    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/PayloadAccessControlVerifier;->joinBytes([B[B[B)[B

    move-result-object v6

    .line 304
    .local v6, totalData:[B
    invoke-static {v6, v2}, Lcom/android/server/enterprise/PayloadAccessControlVerifier;->verify([B[B)Z

    move-result v9

    if-eqz v9, :cond_44

    .line 306
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Verification SUCCESS"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    const/4 v7, 0x1

    goto :goto_2f

    .line 314
    :cond_44
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Verification FAILED"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_31 .. :try_end_4b} :catchall_51
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4b} :catch_4c

    goto :goto_2f

    .line 320
    .end local v0           #classesData:[B
    .end local v2           #extractedSignature:[B
    .end local v3           #extractedb64Signature:Ljava/lang/String;
    .end local v4           #manifestData:[B
    .end local v5           #rsrcData:[B
    .end local v6           #totalData:[B
    :catch_4c
    move-exception v1

    .line 322
    .local v1, e:Ljava/lang/Exception;
    :try_start_4d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_2f

    .line 276
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_51
    move-exception v7

    monitor-exit v8

    throw v7
.end method
