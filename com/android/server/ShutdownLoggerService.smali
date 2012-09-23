.class public Lcom/android/server/ShutdownLoggerService;
.super Landroid/app/IShutdownLogger$Stub;
.source "ShutdownLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ShutdownLoggerService$RuntimeExecutor;
    }
.end annotation


# static fields
.field private static final MAX_LOG_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ShutdownLogger"

.field private static final autoTestFile:Ljava/lang/String; = "/mnt/.lfs/debug_level.inf"

.field private static final shutdownCallStack:Ljava/lang/String; = "/data/log/dumpstate_shutdown.txt"

.field private static final shutdownTimeLogFile:Ljava/lang/String; = "/data/log/off.p"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/IShutdownLogger$Stub;-><init>()V

    .line 331
    return-void
.end method

.method public static __recordShutdownTime()V
    .registers 19

    .prologue
    .line 137
    new-instance v14, Ljava/io/File;

    const-string v17, "/data/log/off.p"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v14, logFile:Ljava/io/File;
    const/4 v6, 0x0

    .line 139
    .local v6, fr:Ljava/io/FileReader;
    const/4 v12, 0x0

    .line 140
    .local v12, lnr:Ljava/io/LineNumberReader;
    const/4 v3, 0x0

    .line 141
    .local v3, count:I
    const/4 v4, -0x1

    .line 142
    .local v4, endIndex:I
    const/16 v17, 0x14

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    .line 143
    .local v15, logs:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_14
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ge v10, v0, :cond_21

    .line 144
    const/16 v17, 0x0

    aput-object v17, v15, v10

    .line 143
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 147
    :cond_21
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_70

    .line 149
    :try_start_27
    new-instance v7, Ljava/io/FileReader;

    const-string v17, "/data/log/off.p"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_d1
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_30} :catch_bd

    .line 150
    .end local v6           #fr:Ljava/io/FileReader;
    .local v7, fr:Ljava/io/FileReader;
    :try_start_30
    new-instance v13, Ljava/io/LineNumberReader;

    invoke-direct {v13, v7}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_13a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_35} :catch_141

    .line 151
    .end local v12           #lnr:Ljava/io/LineNumberReader;
    .local v13, lnr:Ljava/io/LineNumberReader;
    :try_start_35
    const-string v11, ""

    .line 152
    .local v11, lineRead:Ljava/lang/String;
    :goto_37
    invoke-virtual {v13}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_64

    .line 153
    const-string v17, "END"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_48

    .line 154
    move v4, v3

    .line 156
    :cond_48
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v3

    .line 157
    add-int/lit8 v17, v3, 0x1

    rem-int/lit8 v3, v17, 0x14
    :try_end_63
    .catchall {:try_start_35 .. :try_end_63} :catchall_13d
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_63} :catch_145

    goto :goto_37

    .line 163
    :cond_64
    if-eqz v13, :cond_69

    .line 164
    :try_start_66
    invoke-virtual {v13}, Ljava/io/LineNumberReader;->close()V

    .line 166
    :cond_69
    if-eqz v7, :cond_6e

    .line 167
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6e} :catch_126

    :cond_6e
    :goto_6e
    move-object v12, v13

    .end local v13           #lnr:Ljava/io/LineNumberReader;
    .restart local v12       #lnr:Ljava/io/LineNumberReader;
    move-object v6, v7

    .line 176
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v11           #lineRead:Ljava/lang/String;
    .restart local v6       #fr:Ljava/io/FileReader;
    :cond_70
    :goto_70
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_77

    .line 177
    move v4, v3

    .line 181
    :cond_77
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/ShutdownLoggerService;->getCurrentTime()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v4

    .line 182
    add-int/lit8 v17, v4, 0x1

    rem-int/lit8 v4, v17, 0x14

    .line 183
    const-string v17, "END\n"

    aput-object v17, v15, v4

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, bw:Ljava/io/BufferedWriter;
    const/4 v8, 0x0

    .line 189
    .local v8, fw:Ljava/io/FileWriter;
    :try_start_9a
    new-instance v9, Ljava/io/FileWriter;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v9, v14, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_a3
    .catchall {:try_start_9a .. :try_end_a3} :catchall_10b
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a3} :catch_f7

    .line 190
    .end local v8           #fw:Ljava/io/FileWriter;
    .local v9, fw:Ljava/io/FileWriter;
    :try_start_a3
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_a8
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_12c
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a8} :catch_133

    .line 191
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .local v2, bw:Ljava/io/BufferedWriter;
    const/4 v10, 0x0

    :goto_a9
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ge v10, v0, :cond_dd

    .line 192
    :try_start_af
    aget-object v17, v15, v10

    if-eqz v17, :cond_ba

    .line 193
    aget-object v17, v15, v10

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_af .. :try_end_ba} :catchall_12f
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_ba} :catch_136

    .line 191
    :cond_ba
    add-int/lit8 v10, v10, 0x1

    goto :goto_a9

    .line 159
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    :catch_bd
    move-exception v5

    .line 160
    .local v5, ex:Ljava/lang/Exception;
    :goto_be
    :try_start_be
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_d1

    .line 163
    if-eqz v12, :cond_c6

    .line 164
    :try_start_c3
    invoke-virtual {v12}, Ljava/io/LineNumberReader;->close()V

    .line 166
    :cond_c6
    if-eqz v6, :cond_70

    .line 167
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_cb} :catch_cc

    goto :goto_70

    .line 170
    :catch_cc
    move-exception v5

    .line 171
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_70

    .line 162
    .end local v5           #ex:Ljava/lang/Exception;
    :catchall_d1
    move-exception v17

    .line 163
    :goto_d2
    if-eqz v12, :cond_d7

    .line 164
    :try_start_d4
    invoke-virtual {v12}, Ljava/io/LineNumberReader;->close()V

    .line 166
    :cond_d7
    if-eqz v6, :cond_dc

    .line 167
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_dc} :catch_117

    .line 162
    :cond_dc
    :goto_dc
    throw v17

    .line 200
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    :cond_dd
    if-eqz v2, :cond_e2

    .line 201
    :try_start_df
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 203
    :cond_e2
    if-eqz v9, :cond_e7

    .line 204
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e7} :catch_121

    :cond_e7
    :goto_e7
    move-object v8, v9

    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v8       #fw:Ljava/io/FileWriter;
    move-object v1, v2

    .line 211
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :cond_e9
    :goto_e9
    new-instance v16, Ljava/lang/Thread;

    new-instance v17, Lcom/android/server/ShutdownLoggerService$1;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/ShutdownLoggerService$1;-><init>()V

    invoke-direct/range {v16 .. v17}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 223
    .local v16, thread:Ljava/lang/Thread;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    .line 224
    return-void

    .line 196
    .end local v16           #thread:Ljava/lang/Thread;
    :catch_f7
    move-exception v5

    .line 197
    .restart local v5       #ex:Ljava/lang/Exception;
    :goto_f8
    :try_start_f8
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_10b

    .line 200
    if-eqz v1, :cond_100

    .line 201
    :try_start_fd
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 203
    :cond_100
    if-eqz v8, :cond_e9

    .line 204
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_105} :catch_106

    goto :goto_e9

    .line 206
    :catch_106
    move-exception v5

    .line 207
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e9

    .line 199
    .end local v5           #ex:Ljava/lang/Exception;
    :catchall_10b
    move-exception v17

    .line 200
    :goto_10c
    if-eqz v1, :cond_111

    .line 201
    :try_start_10e
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 203
    :cond_111
    if-eqz v8, :cond_116

    .line 204
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_116} :catch_11c

    .line 199
    :cond_116
    :goto_116
    throw v17

    .line 170
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v8           #fw:Ljava/io/FileWriter;
    :catch_117
    move-exception v5

    .line 171
    .restart local v5       #ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_dc

    .line 206
    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    .restart local v8       #fw:Ljava/io/FileWriter;
    :catch_11c
    move-exception v5

    .line 207
    .restart local v5       #ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_116

    .line 206
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v8           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    :catch_121
    move-exception v5

    .line 207
    .restart local v5       #ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e7

    .line 170
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v6           #fr:Ljava/io/FileReader;
    .end local v9           #fw:Ljava/io/FileWriter;
    .end local v12           #lnr:Ljava/io/LineNumberReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v11       #lineRead:Ljava/lang/String;
    .restart local v13       #lnr:Ljava/io/LineNumberReader;
    :catch_126
    move-exception v5

    .line 171
    .restart local v5       #ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6e

    .line 199
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v11           #lineRead:Ljava/lang/String;
    .end local v13           #lnr:Ljava/io/LineNumberReader;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #fr:Ljava/io/FileReader;
    .restart local v9       #fw:Ljava/io/FileWriter;
    .restart local v12       #lnr:Ljava/io/LineNumberReader;
    :catchall_12c
    move-exception v17

    move-object v8, v9

    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v8       #fw:Ljava/io/FileWriter;
    goto :goto_10c

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v8           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    :catchall_12f
    move-exception v17

    move-object v8, v9

    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v8       #fw:Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    goto :goto_10c

    .line 196
    .end local v8           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    :catch_133
    move-exception v5

    move-object v8, v9

    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v8       #fw:Ljava/io/FileWriter;
    goto :goto_f8

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v8           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    :catch_136
    move-exception v5

    move-object v8, v9

    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v8       #fw:Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    goto :goto_f8

    .line 162
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v6           #fr:Ljava/io/FileReader;
    .end local v8           #fw:Ljava/io/FileWriter;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_13a
    move-exception v17

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_d2

    .end local v6           #fr:Ljava/io/FileReader;
    .end local v12           #lnr:Ljava/io/LineNumberReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v13       #lnr:Ljava/io/LineNumberReader;
    :catchall_13d
    move-exception v17

    move-object v12, v13

    .end local v13           #lnr:Ljava/io/LineNumberReader;
    .restart local v12       #lnr:Ljava/io/LineNumberReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_d2

    .line 159
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_141
    move-exception v5

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto/16 :goto_be

    .end local v6           #fr:Ljava/io/FileReader;
    .end local v12           #lnr:Ljava/io/LineNumberReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v13       #lnr:Ljava/io/LineNumberReader;
    :catch_145
    move-exception v5

    move-object v12, v13

    .end local v13           #lnr:Ljava/io/LineNumberReader;
    .restart local v12       #lnr:Ljava/io/LineNumberReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto/16 :goto_be
.end method

.method public static appendLogByHandler(Ljava/lang/String;)V
    .registers 20
    .parameter "methodName"

    .prologue
    .line 227
    new-instance v15, Ljava/io/File;

    const-string v17, "/data/log/dumpstate_shutdown.txt"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v15, logFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 229
    .local v4, count:I
    const/4 v5, -0x1

    .line 230
    .local v5, endIndex:I
    const/16 v17, 0x14

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 231
    .local v16, logs:[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_14
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ge v11, v0, :cond_21

    .line 232
    const/16 v17, 0x0

    aput-object v17, v16, v11

    .line 231
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    .line 235
    :cond_21
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_73

    .line 236
    const/4 v7, 0x0

    .line 237
    .local v7, fr:Ljava/io/FileReader;
    const/4 v13, 0x0

    .line 239
    .local v13, lnr:Ljava/io/LineNumberReader;
    :try_start_29
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_ec
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_62

    .line 240
    .end local v7           #fr:Ljava/io/FileReader;
    .local v8, fr:Ljava/io/FileReader;
    :try_start_2e
    new-instance v14, Ljava/io/LineNumberReader;

    invoke-direct {v14, v8}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_239
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_242

    .line 241
    .end local v13           #lnr:Ljava/io/LineNumberReader;
    .local v14, lnr:Ljava/io/LineNumberReader;
    :try_start_33
    const-string v12, ""

    .line 242
    .local v12, lineRead:Ljava/lang/String;
    :goto_35
    invoke-virtual {v14}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1ee

    .line 243
    const-string v17, "END"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_46

    .line 244
    move v5, v4

    .line 246
    :cond_46
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v4

    .line 247
    add-int/lit8 v17, v4, 0x1

    rem-int/lit8 v4, v17, 0x14
    :try_end_61
    .catchall {:try_start_33 .. :try_end_61} :catchall_23d
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_61} :catch_246

    goto :goto_35

    .line 249
    .end local v8           #fr:Ljava/io/FileReader;
    .end local v12           #lineRead:Ljava/lang/String;
    .end local v14           #lnr:Ljava/io/LineNumberReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v13       #lnr:Ljava/io/LineNumberReader;
    :catch_62
    move-exception v6

    .line 250
    .local v6, ex:Ljava/lang/Exception;
    :goto_63
    :try_start_63
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_ec

    .line 253
    if-eqz v13, :cond_6b

    .line 254
    :try_start_68
    invoke-virtual {v13}, Ljava/io/LineNumberReader;->close()V

    .line 256
    :cond_6b
    if-eqz v7, :cond_70

    .line 257
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 259
    :cond_70
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_73} :catch_236

    .line 266
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v13           #lnr:Ljava/io/LineNumberReader;
    :cond_73
    :goto_73
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_7a

    .line 267
    move v5, v4

    .line 270
    :cond_7a
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/ShutdownLoggerService;->getCurrentTime()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ==> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v5

    .line 271
    add-int/lit8 v17, v5, 0x1

    rem-int/lit8 v5, v17, 0x14

    .line 272
    const-string v17, "END\n"

    aput-object v17, v16, v5

    .line 275
    :try_start_a9
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    move-result v17

    if-nez v17, :cond_b6

    .line 276
    const-string v17, "ShutdownLogger"

    const-string v18, "Errors in creating logFile"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_b6
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v17

    if-nez v17, :cond_cb

    .line 280
    const-string v17, "ShutdownLogger"

    const-string v18, "Errors in setReadable"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_a9 .. :try_end_cb} :catchall_149
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_cb} :catch_fb

    .line 289
    :cond_cb
    const/4 v2, 0x0

    .line 290
    .local v2, bw:Ljava/io/BufferedWriter;
    const/4 v9, 0x0

    .line 292
    .local v9, fw:Ljava/io/FileWriter;
    :try_start_cd
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v15}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_d2
    .catchall {:try_start_cd .. :try_end_d2} :catchall_1cd
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d2} :catch_1bb

    .line 293
    .end local v9           #fw:Ljava/io/FileWriter;
    .local v10, fw:Ljava/io/FileWriter;
    :try_start_d2
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_d7
    .catchall {:try_start_d2 .. :try_end_d7} :catchall_203
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d7} :catch_20a

    .line 294
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .local v3, bw:Ljava/io/BufferedWriter;
    const/4 v11, 0x0

    :goto_d8
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ge v11, v0, :cond_1de

    .line 295
    :try_start_de
    aget-object v17, v16, v11

    if-eqz v17, :cond_e9

    .line 296
    aget-object v17, v16, v11

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_e9
    .catchall {:try_start_de .. :try_end_e9} :catchall_206
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e9} :catch_20d

    .line 294
    :cond_e9
    add-int/lit8 v11, v11, 0x1

    goto :goto_d8

    .line 252
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v13       #lnr:Ljava/io/LineNumberReader;
    :catchall_ec
    move-exception v17

    .line 253
    :goto_ed
    if-eqz v13, :cond_f2

    .line 254
    :try_start_ef
    invoke-virtual {v13}, Ljava/io/LineNumberReader;->close()V

    .line 256
    :cond_f2
    if-eqz v7, :cond_f7

    .line 257
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 259
    :cond_f7
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_fa} :catch_13e

    .line 252
    :goto_fa
    throw v17

    .line 286
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v13           #lnr:Ljava/io/LineNumberReader;
    :catch_fb
    move-exception v6

    .line 287
    .restart local v6       #ex:Ljava/lang/Exception;
    :try_start_fc
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ff
    .catchall {:try_start_fc .. :try_end_ff} :catchall_149

    .line 289
    const/4 v2, 0x0

    .line 290
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    const/4 v9, 0x0

    .line 292
    .restart local v9       #fw:Ljava/io/FileWriter;
    :try_start_101
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v15}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_106
    .catchall {:try_start_101 .. :try_end_106} :catchall_198
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_106} :catch_12f

    .line 293
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :try_start_106
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_10b
    .catchall {:try_start_106 .. :try_end_10b} :catchall_211
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_10b} :catch_21b

    .line 294
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    const/4 v11, 0x0

    :goto_10c
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ge v11, v0, :cond_1a9

    .line 295
    :try_start_112
    aget-object v17, v16, v11

    if-eqz v17, :cond_11d

    .line 296
    aget-object v17, v16, v11

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_11d
    .catchall {:try_start_112 .. :try_end_11d} :catchall_214
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_11d} :catch_21f

    .line 294
    :cond_11d
    add-int/lit8 v11, v11, 0x1

    goto :goto_10c

    .line 299
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    :catch_120
    move-exception v6

    .line 300
    .restart local v6       #ex:Ljava/lang/Exception;
    :goto_121
    :try_start_121
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_124
    .catchall {:try_start_121 .. :try_end_124} :catchall_170

    .line 303
    if-eqz v2, :cond_129

    .line 304
    :try_start_126
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 306
    :cond_129
    if-eqz v9, :cond_12e

    .line 307
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_12e} :catch_16b

    .line 289
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_12e
    :goto_12e
    throw v17

    .line 299
    .restart local v6       #ex:Ljava/lang/Exception;
    :catch_12f
    move-exception v6

    .line 300
    :goto_130
    :try_start_130
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_133
    .catchall {:try_start_130 .. :try_end_133} :catchall_198

    .line 303
    if-eqz v2, :cond_138

    .line 304
    :try_start_135
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 306
    :cond_138
    if-eqz v9, :cond_13d

    .line 307
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_13d} :catch_218

    .line 329
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_13d
    :goto_13d
    return-void

    .line 260
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v13       #lnr:Ljava/io/LineNumberReader;
    :catch_13e
    move-exception v6

    .line 261
    .restart local v6       #ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_fa

    .line 260
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v13           #lnr:Ljava/io/LineNumberReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    .restart local v12       #lineRead:Ljava/lang/String;
    .restart local v14       #lnr:Ljava/io/LineNumberReader;
    :catch_143
    move-exception v6

    .line 261
    .end local v8           #fr:Ljava/io/FileReader;
    .end local v12           #lineRead:Ljava/lang/String;
    .end local v14           #lnr:Ljava/io/LineNumberReader;
    .restart local v6       #ex:Ljava/lang/Exception;
    :goto_144
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_73

    .line 289
    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_149
    move-exception v17

    const/4 v2, 0x0

    .line 290
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    const/4 v9, 0x0

    .line 292
    .restart local v9       #fw:Ljava/io/FileWriter;
    :try_start_14c
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v15}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_151
    .catchall {:try_start_14c .. :try_end_151} :catchall_170
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_151} :catch_120

    .line 293
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :try_start_151
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_156
    .catchall {:try_start_151 .. :try_end_156} :catchall_224
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_156} :catch_22d

    .line 294
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    const/4 v11, 0x0

    :goto_157
    const/16 v18, 0x14

    move/from16 v0, v18

    if-ge v11, v0, :cond_181

    .line 295
    :try_start_15d
    aget-object v18, v16, v11

    if-eqz v18, :cond_168

    .line 296
    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_168
    .catchall {:try_start_15d .. :try_end_168} :catchall_228
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_168} :catch_231

    .line 294
    :cond_168
    add-int/lit8 v11, v11, 0x1

    goto :goto_157

    .line 309
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #ex:Ljava/lang/Exception;
    .restart local v9       #fw:Ljava/io/FileWriter;
    :catch_16b
    move-exception v6

    .line 310
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12e

    .line 302
    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_170
    move-exception v17

    .line 303
    :goto_171
    if-eqz v2, :cond_176

    .line 304
    :try_start_173
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 306
    :cond_176
    if-eqz v9, :cond_17b

    .line 307
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_17b} :catch_17c

    .line 302
    :cond_17b
    :goto_17b
    throw v17

    .line 309
    :catch_17c
    move-exception v6

    .line 310
    .restart local v6       #ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17b

    .line 303
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :cond_181
    if-eqz v3, :cond_186

    .line 304
    :try_start_183
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 306
    :cond_186
    if-eqz v10, :cond_18b

    .line 307
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_18b} :catch_18e

    :cond_18b
    :goto_18b
    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    move-object v2, v3

    .line 312
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto :goto_12e

    .line 309
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catch_18e
    move-exception v6

    .line 310
    .restart local v6       #ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18b

    .line 309
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    :catch_193
    move-exception v6

    .line 310
    :goto_194
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13d

    .line 302
    :catchall_198
    move-exception v17

    .line 303
    :goto_199
    if-eqz v2, :cond_19e

    .line 304
    :try_start_19b
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 306
    :cond_19e
    if-eqz v9, :cond_1a3

    .line 307
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1a3} :catch_1a4

    .line 302
    :cond_1a3
    :goto_1a3
    throw v17

    .line 309
    :catch_1a4
    move-exception v6

    .line 310
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a3

    .line 303
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :cond_1a9
    if-eqz v3, :cond_1ae

    .line 304
    :try_start_1ab
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 306
    :cond_1ae
    if-eqz v10, :cond_1b3

    .line 307
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1b3} :catch_1b6

    .end local v6           #ex:Ljava/lang/Exception;
    :cond_1b3
    :goto_1b3
    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    move-object v2, v3

    .line 312
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto :goto_13d

    .line 309
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #ex:Ljava/lang/Exception;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catch_1b6
    move-exception v6

    .line 310
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b3

    .line 299
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    :catch_1bb
    move-exception v6

    .line 300
    .restart local v6       #ex:Ljava/lang/Exception;
    :goto_1bc
    :try_start_1bc
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1bf
    .catchall {:try_start_1bc .. :try_end_1bf} :catchall_1cd

    .line 303
    if-eqz v2, :cond_1c4

    .line 304
    :try_start_1c1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_1c4} :catch_193

    .line 306
    :cond_1c4
    if-eqz v9, :cond_13d

    .line 307
    :try_start_1c6
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1c9} :catch_1cb

    goto/16 :goto_13d

    .line 309
    :catch_1cb
    move-exception v6

    goto :goto_194

    .line 302
    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_1cd
    move-exception v17

    .line 303
    :goto_1ce
    if-eqz v2, :cond_1d3

    .line 304
    :try_start_1d0
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 306
    :cond_1d3
    if-eqz v9, :cond_1d8

    .line 307
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_1d8} :catch_1d9

    .line 302
    :cond_1d8
    :goto_1d8
    throw v17

    .line 309
    :catch_1d9
    move-exception v6

    .line 310
    .restart local v6       #ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d8

    .line 303
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :cond_1de
    if-eqz v3, :cond_1e3

    .line 304
    :try_start_1e0
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 306
    :cond_1e3
    if-eqz v10, :cond_1b3

    .line 307
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_1e8
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1e8} :catch_1e9

    goto :goto_1b3

    .line 309
    :catch_1e9
    move-exception v6

    .line 310
    .restart local v6       #ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b3

    .line 253
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v8       #fr:Ljava/io/FileReader;
    .restart local v12       #lineRead:Ljava/lang/String;
    .restart local v14       #lnr:Ljava/io/LineNumberReader;
    :cond_1ee
    if-eqz v14, :cond_1f3

    .line 254
    :try_start_1f0
    invoke-virtual {v14}, Ljava/io/LineNumberReader;->close()V
    :try_end_1f3
    .catch Ljava/lang/Exception; {:try_start_1f0 .. :try_end_1f3} :catch_143

    .line 256
    :cond_1f3
    if-eqz v8, :cond_1f8

    .line 257
    :try_start_1f5
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_1f8
    .catch Ljava/lang/Exception; {:try_start_1f5 .. :try_end_1f8} :catch_200

    .line 259
    :cond_1f8
    :try_start_1f8
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_1fb} :catch_1fd

    goto/16 :goto_73

    .line 260
    :catch_1fd
    move-exception v6

    goto/16 :goto_144

    :catch_200
    move-exception v6

    goto/16 :goto_144

    .line 302
    .end local v8           #fr:Ljava/io/FileReader;
    .end local v12           #lineRead:Ljava/lang/String;
    .end local v14           #lnr:Ljava/io/LineNumberReader;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catchall_203
    move-exception v17

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    goto :goto_1ce

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catchall_206
    move-exception v17

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto :goto_1ce

    .line 299
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catch_20a
    move-exception v6

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    goto :goto_1bc

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catch_20d
    move-exception v6

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto :goto_1bc

    .line 302
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v6       #ex:Ljava/lang/Exception;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catchall_211
    move-exception v17

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    goto :goto_199

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catchall_214
    move-exception v17

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto :goto_199

    .line 309
    :catch_218
    move-exception v6

    goto/16 :goto_194

    .line 299
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catch_21b
    move-exception v6

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    goto/16 :goto_130

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catch_21f
    move-exception v6

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_130

    .line 302
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catchall_224
    move-exception v17

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    goto/16 :goto_171

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catchall_228
    move-exception v17

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_171

    .line 299
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catch_22d
    move-exception v6

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    goto/16 :goto_121

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #fw:Ljava/io/FileWriter;
    :catch_231
    move-exception v6

    move-object v9, v10

    .end local v10           #fw:Ljava/io/FileWriter;
    .restart local v9       #fw:Ljava/io/FileWriter;
    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_121

    .line 260
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v9           #fw:Ljava/io/FileWriter;
    .restart local v6       #ex:Ljava/lang/Exception;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v13       #lnr:Ljava/io/LineNumberReader;
    :catch_236
    move-exception v6

    goto/16 :goto_144

    .line 252
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catchall_239
    move-exception v17

    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto/16 :goto_ed

    .end local v7           #fr:Ljava/io/FileReader;
    .end local v13           #lnr:Ljava/io/LineNumberReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    .restart local v14       #lnr:Ljava/io/LineNumberReader;
    :catchall_23d
    move-exception v17

    move-object v13, v14

    .end local v14           #lnr:Ljava/io/LineNumberReader;
    .restart local v13       #lnr:Ljava/io/LineNumberReader;
    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto/16 :goto_ed

    .line 249
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_242
    move-exception v6

    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto/16 :goto_63

    .end local v7           #fr:Ljava/io/FileReader;
    .end local v13           #lnr:Ljava/io/LineNumberReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    .restart local v14       #lnr:Ljava/io/LineNumberReader;
    :catch_246
    move-exception v6

    move-object v13, v14

    .end local v14           #lnr:Ljava/io/LineNumberReader;
    .restart local v13       #lnr:Ljava/io/LineNumberReader;
    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto/16 :goto_63
.end method

.method private static getCurrentTime()Ljava/lang/String;
    .registers 3

    .prologue
    .line 131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 132
    .local v0, c:Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getFileName()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v5, 0x1

    .line 106
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v2, path:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 109
    .local v1, filename:Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 110
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 112
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "ShutdownCallStack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v5, :cond_98

    const-string v3, "PM"

    :goto_70
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 112
    :cond_98
    const-string v3, "AM"

    goto :goto_70
.end method

.method private static isDoingAutoTest()Z
    .registers 7

    .prologue
    .line 76
    const/4 v3, 0x0

    .line 77
    .local v3, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 79
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_2
    new-instance v4, Ljava/io/FileReader;

    const-string v6, "/mnt/.lfs/debug_level.inf"

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_35

    .line 80
    .end local v3           #fr:Ljava/io/FileReader;
    .local v4, fr:Ljava/io/FileReader;
    :try_start_9
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_6b

    .line 81
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, readString:Ljava/lang/String;
    const-string v6, "DAUT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_67
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_6e

    move-result v6

    if-eqz v6, :cond_27

    .line 84
    const/4 v6, 0x1

    .line 90
    if-eqz v1, :cond_20

    .line 91
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 93
    :cond_20
    if-eqz v4, :cond_25

    .line 94
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_5a

    :cond_25
    :goto_25
    move-object v0, v1

    .line 100
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v5           #readString:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_26
    return v6

    .line 90
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    .restart local v5       #readString:Ljava/lang/String;
    :cond_27
    if-eqz v1, :cond_2c

    .line 91
    :try_start_29
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 93
    :cond_2c
    if-eqz v4, :cond_31

    .line 94
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_31} :catch_5f

    :cond_31
    :goto_31
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 100
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v5           #readString:Ljava/lang/String;
    .restart local v3       #fr:Ljava/io/FileReader;
    :cond_33
    :goto_33
    const/4 v6, 0x0

    goto :goto_26

    .line 86
    :catch_35
    move-exception v2

    .line 87
    .local v2, ex:Ljava/lang/Exception;
    :goto_36
    :try_start_36
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_49

    .line 90
    if-eqz v0, :cond_3e

    .line 91
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 93
    :cond_3e
    if-eqz v3, :cond_33

    .line 94
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_43} :catch_44

    goto :goto_33

    .line 96
    :catch_44
    move-exception v2

    .line 97
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33

    .line 89
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_49
    move-exception v6

    .line 90
    :goto_4a
    if-eqz v0, :cond_4f

    .line 91
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 93
    :cond_4f
    if-eqz v3, :cond_54

    .line 94
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_54} :catch_55

    .line 89
    :cond_54
    :goto_54
    throw v6

    .line 96
    :catch_55
    move-exception v2

    .line 97
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54

    .line 96
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    .restart local v5       #readString:Ljava/lang/String;
    :catch_5a
    move-exception v2

    .line 97
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25

    .line 96
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_5f
    move-exception v2

    .line 97
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31

    .line 89
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v5           #readString:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catchall_64
    move-exception v6

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_4a

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catchall_67
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_4a

    .line 86
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catch_6b
    move-exception v2

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_36

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catch_6e
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_36
.end method


# virtual methods
.method public appendLog(Ljava/lang/String;)V
    .registers 2
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p1}, Lcom/android/server/ShutdownLoggerService;->appendLogByHandler(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public recordShutdownTime()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    return-void
.end method
