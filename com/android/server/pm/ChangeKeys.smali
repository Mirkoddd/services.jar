.class public final Lcom/android/server/pm/ChangeKeys;
.super Ljava/lang/Object;
.source "ChangeKeys.java"


# static fields
.field private static FLAG_FILE:Ljava/lang/String; = null

.field private static PUBLIC_KEYS_FILE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ChangeKeys"

.field private static TRIGGER_FILE:Ljava/lang/String;

.field private static sNewKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOldKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    .line 24
    const-string v0, "/system/etc/need_to_change_keys"

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->TRIGGER_FILE:Ljava/lang/String;

    .line 25
    const-string v0, "/system/etc/public.keys"

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->PUBLIC_KEYS_FILE:Ljava/lang/String;

    .line 26
    const-string v0, "/data/system/changed_flag"

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->FLAG_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteFile(Ljava/lang/String;)Z
    .registers 5
    .parameter "name"

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_31

    .line 82
    const-string v1, "ChangeKeys"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fail!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2f
    const/4 v1, 0x0

    :goto_30
    return v1

    .line 85
    :cond_31
    const/4 v1, 0x1

    goto :goto_30
.end method

.method private static deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .parameter "sb"
    .parameter "startStr"
    .parameter "endStr"

    .prologue
    const/4 v9, 0x1

    const/4 v11, -0x1

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 30
    .local v8, startIdx:I
    if-eq v8, v11, :cond_61

    .line 31
    invoke-virtual {p0, p2, v8}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 32
    .local v4, endIdx:I
    const-string v10, "key="

    invoke-virtual {p0, v10, v8}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 34
    .local v5, key:I
    if-eq v5, v11, :cond_6b

    if-ge v5, v4, :cond_6b

    .line 36
    const-string v10, "<cert index="

    invoke-virtual {p0, v10, v8}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 37
    .local v2, certStart:I
    if-eq v2, v11, :cond_63

    .line 38
    const-string v10, "\" />"

    invoke-virtual {p0, v10, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 40
    .local v1, certEnd:I
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v2, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, cert:Ljava/lang/String;
    const-string v10, "\" />"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v2, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, certkey:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v8, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 46
    .local v7, newCertIdx:I
    if-eq v7, v11, :cond_5a

    .line 47
    const-string v10, "\" />"

    invoke-virtual {p0, v10, v7}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 48
    .local v6, newCertEndIdx:I
    const-string v10, "\" />"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v6

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v7, v10, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    .end local v0           #cert:Ljava/lang/String;
    .end local v1           #certEnd:I
    .end local v2           #certStart:I
    .end local v3           #certkey:Ljava/lang/String;
    .end local v4           #endIdx:I
    .end local v5           #key:I
    .end local v6           #newCertEndIdx:I
    .end local v7           #newCertIdx:I
    :goto_59
    return v9

    .line 52
    .restart local v0       #cert:Ljava/lang/String;
    .restart local v1       #certEnd:I
    .restart local v2       #certStart:I
    .restart local v3       #certkey:Ljava/lang/String;
    .restart local v4       #endIdx:I
    .restart local v5       #key:I
    .restart local v7       #newCertIdx:I
    :cond_5a
    const-string v9, "ChangeKeys"

    const-string v10, "Can\'t find new cert element. Error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v0           #cert:Ljava/lang/String;
    .end local v1           #certEnd:I
    .end local v2           #certStart:I
    .end local v3           #certkey:Ljava/lang/String;
    .end local v4           #endIdx:I
    .end local v5           #key:I
    .end local v7           #newCertIdx:I
    :cond_61
    :goto_61
    const/4 v9, 0x0

    goto :goto_59

    .line 54
    .restart local v2       #certStart:I
    .restart local v4       #endIdx:I
    .restart local v5       #key:I
    :cond_63
    const-string v9, "ChangeKeys"

    const-string v10, "Can\'t find cert element. Error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 58
    .end local v2           #certStart:I
    :cond_6b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v8, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_59
.end method

.method private static deletePermission(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 4
    .parameter "sb"
    .parameter "str"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, startIdx:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 76
    :cond_11
    return-void
.end method

.method public static process()Z
    .registers 32

    .prologue
    .line 93
    new-instance v28, Ljava/io/File;

    sget-object v29, Lcom/android/server/pm/ChangeKeys;->TRIGGER_FILE:Ljava/lang/String;

    invoke-direct/range {v28 .. v29}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v28, triggerFile:Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_30

    .line 95
    const-string v29, "ChangeKeys"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "ChangeKeys : no "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/android/server/pm/ChangeKeys;->TRIGGER_FILE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ": ignore to run changekeys."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/16 v29, 0x0

    .line 276
    :cond_2f
    :goto_2f
    return v29

    .line 99
    :cond_30
    new-instance v10, Ljava/io/File;

    sget-object v29, Lcom/android/server/pm/ChangeKeys;->FLAG_FILE:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v10, flagFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_49

    .line 103
    const-string v29, "ChangeKeys"

    const-string v30, "Already did ChangeKeys before."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/16 v29, 0x0

    goto :goto_2f

    .line 109
    :cond_49
    :try_start_49
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_4c} :catch_a5
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_ac

    .line 118
    const-string v3, "packages.xml"

    .line 119
    .local v3, PACKAGES_XML_FILE_NAME:Ljava/lang/String;
    const-string v5, "/data/system/"

    .line 120
    .local v5, basePath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 121
    .local v7, changed:Z
    new-instance v23, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v23, packagesXmlFile:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_95

    .line 124
    const-string v5, "/dbdata/system/"

    .line 125
    new-instance v23, Ljava/io/File;

    .end local v23           #packagesXmlFile:Ljava/io/File;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v23       #packagesXmlFile:Ljava/io/File;
    :cond_95
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_b4

    .line 129
    const-string v29, "ChangeKeys"

    const-string v30, "ChangeKeys : there is no packages.xml."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/16 v29, 0x0

    goto :goto_2f

    .line 110
    .end local v3           #PACKAGES_XML_FILE_NAME:Ljava/lang/String;
    .end local v5           #basePath:Ljava/lang/String;
    .end local v7           #changed:Z
    .end local v23           #packagesXmlFile:Ljava/io/File;
    :catch_a5
    move-exception v8

    .line 111
    .local v8, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 112
    const/16 v29, 0x0

    goto :goto_2f

    .line 113
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_ac
    move-exception v8

    .line 114
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 115
    const/16 v29, 0x0

    goto/16 :goto_2f

    .line 137
    .end local v8           #e:Ljava/io/IOException;
    .restart local v3       #PACKAGES_XML_FILE_NAME:Ljava/lang/String;
    .restart local v5       #basePath:Ljava/lang/String;
    .restart local v7       #changed:Z
    .restart local v23       #packagesXmlFile:Ljava/io/File;
    :cond_b4
    new-instance v15, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".journal"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v15, journalFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".bak"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v4, backupFile:Ljava/io/File;
    move-object/from16 v0, v23

    invoke-static {v0, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v29

    if-nez v29, :cond_10e

    .line 140
    const-string v29, "ChangeKeys"

    const-string v30, "ChangeKeys : error on backup packages.xml to packages.xml.bak."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 142
    const/16 v29, 0x0

    goto/16 :goto_2f

    .line 149
    :cond_10e
    new-instance v24, Ljava/io/File;

    sget-object v29, Lcom/android/server/pm/ChangeKeys;->PUBLIC_KEYS_FILE:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v24, publicKeysFile:Ljava/io/File;
    const/16 v18, 0x0

    .line 152
    .local v18, keyIn:Ljava/io/BufferedReader;
    :try_start_11b
    new-instance v19, Ljava/io/BufferedReader;

    new-instance v29, Ljava/io/FileReader;

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12d
    .catchall {:try_start_11b .. :try_end_12d} :catchall_19d
    .catch Ljava/io/FileNotFoundException; {:try_start_11b .. :try_end_12d} :catch_419
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_12d} :catch_18d

    .line 155
    .end local v18           #keyIn:Ljava/io/BufferedReader;
    .local v19, keyIn:Ljava/io/BufferedReader;
    const/16 v17, 0x0

    .line 156
    .local v17, keyIdx:I
    :cond_12f
    :goto_12f
    :try_start_12f
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, key:Ljava/lang/String;
    if-eqz v16, :cond_1a4

    .line 157
    const-string v29, "#"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_12f

    .line 160
    rem-int/lit8 v29, v17, 0x2

    if-nez v29, :cond_151

    .line 161
    sget-object v29, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :goto_14e
    add-int/lit8 v17, v17, 0x1

    goto :goto_12f

    .line 163
    :cond_151
    sget-object v29, Lcom/android/server/pm/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15a
    .catchall {:try_start_12f .. :try_end_15a} :catchall_40f
    .catch Ljava/io/FileNotFoundException; {:try_start_12f .. :try_end_15a} :catch_15b
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_15a} :catch_414

    goto :goto_14e

    .line 167
    .end local v16           #key:Ljava/lang/String;
    :catch_15b
    move-exception v9

    move-object/from16 v18, v19

    .line 169
    .end local v17           #keyIdx:I
    .end local v19           #keyIn:Ljava/io/BufferedReader;
    .local v9, e1:Ljava/io/FileNotFoundException;
    .restart local v18       #keyIn:Ljava/io/BufferedReader;
    :goto_15e
    :try_start_15e
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 170
    const-string v29, "ChangeKeys"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "ChangeKeys : no "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/android/server/pm/ChangeKeys;->PUBLIC_KEYS_FILE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ": ignore to run changekeys."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_181
    .catchall {:try_start_15e .. :try_end_181} :catchall_19d

    .line 171
    const/16 v29, 0x0

    .line 179
    if-eqz v18, :cond_2f

    .line 181
    :try_start_185
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_188} :catch_18a

    goto/16 :goto_2f

    .line 182
    .end local v9           #e1:Ljava/io/FileNotFoundException;
    :catch_18a
    move-exception v30

    goto/16 :goto_2f

    .line 172
    :catch_18d
    move-exception v8

    .line 174
    .restart local v8       #e:Ljava/io/IOException;
    :goto_18e
    :try_start_18e
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 175
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_194
    .catchall {:try_start_18e .. :try_end_194} :catchall_19d

    .line 176
    const/16 v29, 0x0

    .line 179
    if-eqz v18, :cond_2f

    .line 181
    :try_start_198
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_19b} :catch_18a

    goto/16 :goto_2f

    .line 179
    .end local v8           #e:Ljava/io/IOException;
    :catchall_19d
    move-exception v29

    :goto_19e
    if-eqz v18, :cond_1a3

    .line 181
    :try_start_1a0
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_1a3} :catch_3cb

    .line 179
    :cond_1a3
    :goto_1a3
    throw v29

    .end local v18           #keyIn:Ljava/io/BufferedReader;
    .restart local v16       #key:Ljava/lang/String;
    .restart local v17       #keyIdx:I
    .restart local v19       #keyIn:Ljava/io/BufferedReader;
    :cond_1a4
    if-eqz v19, :cond_1a9

    .line 181
    :try_start_1a6
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1a9} :catch_3ce

    .line 188
    :cond_1a9
    :goto_1a9
    sget-object v29, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    sget-object v30, Lcom/android/server/pm/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1c6

    .line 189
    const-string v29, "ChangeKeys"

    const-string v30, "ChangeKeys : mismatch count of keys"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/16 v29, 0x0

    goto/16 :goto_2f

    .line 196
    :cond_1c6
    const/4 v13, 0x0

    .line 197
    .local v13, in:Ljava/io/InputStreamReader;
    const/16 v21, 0x0

    .line 198
    .local v21, out:Ljava/io/FileOutputStream;
    const/16 v26, 0x0

    .line 200
    .local v26, sout:Ljava/io/OutputStreamWriter;
    :try_start_1cb
    new-instance v14, Ljava/io/InputStreamReader;

    new-instance v29, Ljava/io/FileInputStream;

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v30, "utf-8"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v14, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1df
    .catchall {:try_start_1cb .. :try_end_1df} :catchall_3a0
    .catch Ljava/io/FileNotFoundException; {:try_start_1cb .. :try_end_1df} :catch_406
    .catch Ljava/io/IOException; {:try_start_1cb .. :try_end_1df} :catch_3f9

    .line 203
    .end local v13           #in:Ljava/io/InputStreamReader;
    .local v14, in:Ljava/io/InputStreamReader;
    const/16 v29, 0x1000

    :try_start_1e1
    move/from16 v0, v29

    new-array v6, v0, [C

    .line 204
    .local v6, buf:[C
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    .line 205
    .local v25, sb:Ljava/lang/StringBuffer;
    :goto_1ea
    invoke-virtual {v14, v6}, Ljava/io/InputStreamReader;->read([C)I

    move-result v20

    .local v20, nread:I
    const/16 v29, -0x1

    move/from16 v0, v20

    move/from16 v1, v29

    if-eq v0, v1, :cond_237

    .line 206
    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_201
    .catchall {:try_start_1e1 .. :try_end_201} :catchall_3ea
    .catch Ljava/io/FileNotFoundException; {:try_start_1e1 .. :try_end_201} :catch_202
    .catch Ljava/io/IOException; {:try_start_1e1 .. :try_end_201} :catch_3fc

    goto :goto_1ea

    .line 250
    .end local v6           #buf:[C
    .end local v16           #key:Ljava/lang/String;
    .end local v20           #nread:I
    .end local v25           #sb:Ljava/lang/StringBuffer;
    :catch_202
    move-exception v8

    move-object v13, v14

    .line 251
    .end local v14           #in:Ljava/io/InputStreamReader;
    .local v8, e:Ljava/io/FileNotFoundException;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    :goto_204
    :try_start_204
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_207
    .catchall {:try_start_204 .. :try_end_207} :catchall_3a0

    .line 252
    const/16 v29, 0x0

    .line 258
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v30

    if-nez v30, :cond_216

    .line 259
    const-string v30, "ChangeKeys"

    const-string v31, "journalFile delete fail!!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_216
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v30

    if-nez v30, :cond_223

    .line 261
    const-string v30, "ChangeKeys"

    const-string v31, "backupFile delete fail!!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_223
    if-eqz v13, :cond_228

    .line 264
    :try_start_225
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_228
    .catch Ljava/io/IOException; {:try_start_225 .. :try_end_228} :catch_3d7

    .line 266
    :cond_228
    :goto_228
    if-eqz v21, :cond_22d

    .line 268
    :try_start_22a
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_22d
    .catch Ljava/io/IOException; {:try_start_22a .. :try_end_22d} :catch_3da

    .line 270
    :cond_22d
    :goto_22d
    if-eqz v26, :cond_2f

    .line 272
    :try_start_22f
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_232
    .catch Ljava/io/IOException; {:try_start_22f .. :try_end_232} :catch_234

    goto/16 :goto_2f

    .line 273
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_234
    move-exception v30

    goto/16 :goto_2f

    .line 208
    .end local v13           #in:Ljava/io/InputStreamReader;
    .restart local v6       #buf:[C
    .restart local v14       #in:Ljava/io/InputStreamReader;
    .restart local v16       #key:Ljava/lang/String;
    .restart local v20       #nread:I
    .restart local v25       #sb:Ljava/lang/StringBuffer;
    :cond_237
    :try_start_237
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V

    .line 210
    const/4 v11, 0x0

    .local v11, i:I
    :goto_23b
    sget-object v29, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v11, v0, :cond_276

    .line 211
    sget-object v29, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #key:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 212
    .restart local v16       #key:Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 213
    .local v12, idx:I
    if-ltz v12, :cond_273

    .line 214
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v29

    add-int v30, v12, v29

    sget-object v29, Lcom/android/server/pm/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v25

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v12, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    const/4 v7, 0x1

    .line 210
    :cond_273
    add-int/lit8 v11, v11, 0x1

    goto :goto_23b

    .line 219
    .end local v12           #idx:I
    :cond_276
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v0, v7, :cond_2dc

    .line 220
    const-string v29, "<package name=\"com.sec.android.app.samsungapps\""

    const-string v30, "</package>"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 221
    const-string v29, "<updated-package name=\"com.sec.android.app.samsungapps\""

    const-string v30, "</updated-package>"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    const-string v29, "<package name=\"com.sec.android.app.samsungapps.una\""

    const-string v30, "</package>"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 223
    const-string v29, "<updated-package name=\"com.sec.android.app.samsungapps.una\""

    const-string v30, "</updated-package>"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 224
    const-string v29, "<item name=\"com.sec.android.provider.una.astore.permission.READ\" package=\"com.sec.android.app.samsungapps.una\" />"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/pm/ChangeKeys;->deletePermission(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 225
    const-string v29, "<item name=\"com.sec.android.provider.una.astore.permission.WRITE\" package=\"com.sec.android.app.samsungapps.una\" />"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/pm/ChangeKeys;->deletePermission(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 226
    const-string v29, "/data/app/com.sec.android.app.samsungapps-1.apk"

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_2cf

    .line 227
    const-string v29, "/data/app/com.sec.android.app.samsungapps-2.apk"

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    .line 228
    :cond_2cf
    const-string v29, "/data/app/com.sec.android.app.samsungapps.una-1.apk"

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_2dc

    .line 229
    const-string v29, "/data/app/com.sec.android.app.samsungapps.una-2.apk"

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    .line 232
    :cond_2dc
    new-instance v22, Ljava/io/FileOutputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2e3
    .catchall {:try_start_237 .. :try_end_2e3} :catchall_3ea
    .catch Ljava/io/FileNotFoundException; {:try_start_237 .. :try_end_2e3} :catch_202
    .catch Ljava/io/IOException; {:try_start_237 .. :try_end_2e3} :catch_3fc

    .line 233
    .end local v21           #out:Ljava/io/FileOutputStream;
    .local v22, out:Ljava/io/FileOutputStream;
    :try_start_2e3
    new-instance v27, Ljava/io/OutputStreamWriter;

    const-string v29, "utf-8"

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2f0
    .catchall {:try_start_2e3 .. :try_end_2f0} :catchall_3ed
    .catch Ljava/io/FileNotFoundException; {:try_start_2e3 .. :try_end_2f0} :catch_409
    .catch Ljava/io/IOException; {:try_start_2e3 .. :try_end_2f0} :catch_400

    .line 234
    .end local v26           #sout:Ljava/io/OutputStreamWriter;
    .local v27, sout:Ljava/io/OutputStreamWriter;
    :try_start_2f0
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/FileDescriptor;->sync()V

    .line 236
    invoke-virtual/range {v27 .. v27}, Ljava/io/OutputStreamWriter;->close()V

    .line 238
    move-object/from16 v0, v23

    invoke-static {v15, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v29

    if-nez v29, :cond_349

    .line 239
    const-string v29, "ChangeKeys"

    const-string v30, "ChangeKeys : failed to copy packages.xml.journal to packages.xml."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 241
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_31c
    .catchall {:try_start_2f0 .. :try_end_31c} :catchall_3f2
    .catch Ljava/io/FileNotFoundException; {:try_start_2f0 .. :try_end_31c} :catch_357
    .catch Ljava/io/IOException; {:try_start_2f0 .. :try_end_31c} :catch_367

    .line 258
    :goto_31c
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v29

    if-nez v29, :cond_329

    .line 259
    const-string v29, "ChangeKeys"

    const-string v30, "journalFile delete fail!!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_329
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v29

    if-nez v29, :cond_336

    .line 261
    const-string v29, "ChangeKeys"

    const-string v30, "backupFile delete fail!!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_336
    if-eqz v14, :cond_33b

    .line 264
    :try_start_338
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_33b
    .catch Ljava/io/IOException; {:try_start_338 .. :try_end_33b} :catch_3e1

    .line 266
    :cond_33b
    :goto_33b
    if-eqz v22, :cond_340

    .line 268
    :try_start_33d
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V
    :try_end_340
    .catch Ljava/io/IOException; {:try_start_33d .. :try_end_340} :catch_3e4

    .line 270
    :cond_340
    :goto_340
    if-eqz v27, :cond_345

    .line 272
    :try_start_342
    invoke-virtual/range {v27 .. v27}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_345
    .catch Ljava/io/IOException; {:try_start_342 .. :try_end_345} :catch_3e7

    .line 276
    :cond_345
    :goto_345
    const/16 v29, 0x1

    goto/16 :goto_2f

    .line 244
    :cond_349
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v0, v7, :cond_35f

    .line 245
    :try_start_34f
    const-string v29, "ChangeKeys"

    const-string v30, "ChangeKeys : succeed in changing keys."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31c

    .line 250
    :catch_357
    move-exception v8

    move-object/from16 v26, v27

    .end local v27           #sout:Ljava/io/OutputStreamWriter;
    .restart local v26       #sout:Ljava/io/OutputStreamWriter;
    move-object/from16 v21, v22

    .end local v22           #out:Ljava/io/FileOutputStream;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14           #in:Ljava/io/InputStreamReader;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    goto/16 :goto_204

    .line 247
    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v21           #out:Ljava/io/FileOutputStream;
    .end local v26           #sout:Ljava/io/OutputStreamWriter;
    .restart local v14       #in:Ljava/io/InputStreamReader;
    .restart local v22       #out:Ljava/io/FileOutputStream;
    .restart local v27       #sout:Ljava/io/OutputStreamWriter;
    :cond_35f
    const-string v29, "ChangeKeys"

    const-string v30, "ChangeKeys: success process, but there is no old keys."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_366
    .catchall {:try_start_34f .. :try_end_366} :catchall_3f2
    .catch Ljava/io/FileNotFoundException; {:try_start_34f .. :try_end_366} :catch_357
    .catch Ljava/io/IOException; {:try_start_34f .. :try_end_366} :catch_367

    goto :goto_31c

    .line 253
    :catch_367
    move-exception v8

    move-object/from16 v26, v27

    .end local v27           #sout:Ljava/io/OutputStreamWriter;
    .restart local v26       #sout:Ljava/io/OutputStreamWriter;
    move-object/from16 v21, v22

    .end local v22           #out:Ljava/io/FileOutputStream;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 254
    .end local v6           #buf:[C
    .end local v11           #i:I
    .end local v14           #in:Ljava/io/InputStreamReader;
    .end local v16           #key:Ljava/lang/String;
    .end local v20           #nread:I
    .end local v25           #sb:Ljava/lang/StringBuffer;
    .local v8, e:Ljava/io/IOException;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    :goto_36d
    :try_start_36d
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 255
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_373
    .catchall {:try_start_36d .. :try_end_373} :catchall_3a0

    .line 256
    const/16 v29, 0x0

    .line 258
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v30

    if-nez v30, :cond_382

    .line 259
    const-string v30, "ChangeKeys"

    const-string v31, "journalFile delete fail!!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_382
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v30

    if-nez v30, :cond_38f

    .line 261
    const-string v30, "ChangeKeys"

    const-string v31, "backupFile delete fail!!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_38f
    if-eqz v13, :cond_394

    .line 264
    :try_start_391
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_394
    .catch Ljava/io/IOException; {:try_start_391 .. :try_end_394} :catch_3dd

    .line 266
    :cond_394
    :goto_394
    if-eqz v21, :cond_399

    .line 268
    :try_start_396
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_399
    .catch Ljava/io/IOException; {:try_start_396 .. :try_end_399} :catch_3df

    .line 270
    :cond_399
    :goto_399
    if-eqz v26, :cond_2f

    .line 272
    :try_start_39b
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_39e
    .catch Ljava/io/IOException; {:try_start_39b .. :try_end_39e} :catch_234

    goto/16 :goto_2f

    .line 258
    .end local v8           #e:Ljava/io/IOException;
    :catchall_3a0
    move-exception v29

    :goto_3a1
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v30

    if-nez v30, :cond_3ae

    .line 259
    const-string v30, "ChangeKeys"

    const-string v31, "journalFile delete fail!!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_3ae
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v30

    if-nez v30, :cond_3bb

    .line 261
    const-string v30, "ChangeKeys"

    const-string v31, "backupFile delete fail!!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_3bb
    if-eqz v13, :cond_3c0

    .line 264
    :try_start_3bd
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_3c0
    .catch Ljava/io/IOException; {:try_start_3bd .. :try_end_3c0} :catch_3d1

    .line 266
    :cond_3c0
    :goto_3c0
    if-eqz v21, :cond_3c5

    .line 268
    :try_start_3c2
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c5
    .catch Ljava/io/IOException; {:try_start_3c2 .. :try_end_3c5} :catch_3d3

    .line 270
    :cond_3c5
    :goto_3c5
    if-eqz v26, :cond_3ca

    .line 272
    :try_start_3c7
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3ca
    .catch Ljava/io/IOException; {:try_start_3c7 .. :try_end_3ca} :catch_3d5

    .line 258
    :cond_3ca
    :goto_3ca
    throw v29

    .line 182
    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v17           #keyIdx:I
    .end local v19           #keyIn:Ljava/io/BufferedReader;
    .end local v21           #out:Ljava/io/FileOutputStream;
    .end local v26           #sout:Ljava/io/OutputStreamWriter;
    .restart local v18       #keyIn:Ljava/io/BufferedReader;
    :catch_3cb
    move-exception v30

    goto/16 :goto_1a3

    .end local v18           #keyIn:Ljava/io/BufferedReader;
    .restart local v16       #key:Ljava/lang/String;
    .restart local v17       #keyIdx:I
    .restart local v19       #keyIn:Ljava/io/BufferedReader;
    :catch_3ce
    move-exception v29

    goto/16 :goto_1a9

    .line 265
    .end local v16           #key:Ljava/lang/String;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    .restart local v26       #sout:Ljava/io/OutputStreamWriter;
    :catch_3d1
    move-exception v30

    goto :goto_3c0

    .line 269
    :catch_3d3
    move-exception v30

    goto :goto_3c5

    .line 273
    :catch_3d5
    move-exception v30

    goto :goto_3ca

    .line 265
    .local v8, e:Ljava/io/FileNotFoundException;
    :catch_3d7
    move-exception v30

    goto/16 :goto_228

    .line 269
    :catch_3da
    move-exception v30

    goto/16 :goto_22d

    .line 265
    .local v8, e:Ljava/io/IOException;
    :catch_3dd
    move-exception v30

    goto :goto_394

    .line 269
    :catch_3df
    move-exception v30

    goto :goto_399

    .line 265
    .end local v8           #e:Ljava/io/IOException;
    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v21           #out:Ljava/io/FileOutputStream;
    .end local v26           #sout:Ljava/io/OutputStreamWriter;
    .restart local v6       #buf:[C
    .restart local v11       #i:I
    .restart local v14       #in:Ljava/io/InputStreamReader;
    .restart local v16       #key:Ljava/lang/String;
    .restart local v20       #nread:I
    .restart local v22       #out:Ljava/io/FileOutputStream;
    .restart local v25       #sb:Ljava/lang/StringBuffer;
    .restart local v27       #sout:Ljava/io/OutputStreamWriter;
    :catch_3e1
    move-exception v29

    goto/16 :goto_33b

    .line 269
    :catch_3e4
    move-exception v29

    goto/16 :goto_340

    .line 273
    :catch_3e7
    move-exception v29

    goto/16 :goto_345

    .line 258
    .end local v6           #buf:[C
    .end local v11           #i:I
    .end local v16           #key:Ljava/lang/String;
    .end local v20           #nread:I
    .end local v22           #out:Ljava/io/FileOutputStream;
    .end local v25           #sb:Ljava/lang/StringBuffer;
    .end local v27           #sout:Ljava/io/OutputStreamWriter;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    .restart local v26       #sout:Ljava/io/OutputStreamWriter;
    :catchall_3ea
    move-exception v29

    move-object v13, v14

    .end local v14           #in:Ljava/io/InputStreamReader;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    goto :goto_3a1

    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v21           #out:Ljava/io/FileOutputStream;
    .restart local v6       #buf:[C
    .restart local v11       #i:I
    .restart local v14       #in:Ljava/io/InputStreamReader;
    .restart local v16       #key:Ljava/lang/String;
    .restart local v20       #nread:I
    .restart local v22       #out:Ljava/io/FileOutputStream;
    .restart local v25       #sb:Ljava/lang/StringBuffer;
    :catchall_3ed
    move-exception v29

    move-object/from16 v21, v22

    .end local v22           #out:Ljava/io/FileOutputStream;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14           #in:Ljava/io/InputStreamReader;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    goto :goto_3a1

    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v21           #out:Ljava/io/FileOutputStream;
    .end local v26           #sout:Ljava/io/OutputStreamWriter;
    .restart local v14       #in:Ljava/io/InputStreamReader;
    .restart local v22       #out:Ljava/io/FileOutputStream;
    .restart local v27       #sout:Ljava/io/OutputStreamWriter;
    :catchall_3f2
    move-exception v29

    move-object/from16 v26, v27

    .end local v27           #sout:Ljava/io/OutputStreamWriter;
    .restart local v26       #sout:Ljava/io/OutputStreamWriter;
    move-object/from16 v21, v22

    .end local v22           #out:Ljava/io/FileOutputStream;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14           #in:Ljava/io/InputStreamReader;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    goto :goto_3a1

    .line 253
    .end local v6           #buf:[C
    .end local v11           #i:I
    .end local v20           #nread:I
    .end local v25           #sb:Ljava/lang/StringBuffer;
    :catch_3f9
    move-exception v8

    goto/16 :goto_36d

    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v16           #key:Ljava/lang/String;
    .restart local v14       #in:Ljava/io/InputStreamReader;
    :catch_3fc
    move-exception v8

    move-object v13, v14

    .end local v14           #in:Ljava/io/InputStreamReader;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    goto/16 :goto_36d

    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v21           #out:Ljava/io/FileOutputStream;
    .restart local v6       #buf:[C
    .restart local v11       #i:I
    .restart local v14       #in:Ljava/io/InputStreamReader;
    .restart local v16       #key:Ljava/lang/String;
    .restart local v20       #nread:I
    .restart local v22       #out:Ljava/io/FileOutputStream;
    .restart local v25       #sb:Ljava/lang/StringBuffer;
    :catch_400
    move-exception v8

    move-object/from16 v21, v22

    .end local v22           #out:Ljava/io/FileOutputStream;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14           #in:Ljava/io/InputStreamReader;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    goto/16 :goto_36d

    .line 250
    .end local v6           #buf:[C
    .end local v11           #i:I
    .end local v20           #nread:I
    .end local v25           #sb:Ljava/lang/StringBuffer;
    :catch_406
    move-exception v8

    goto/16 :goto_204

    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v21           #out:Ljava/io/FileOutputStream;
    .restart local v6       #buf:[C
    .restart local v11       #i:I
    .restart local v14       #in:Ljava/io/InputStreamReader;
    .restart local v20       #nread:I
    .restart local v22       #out:Ljava/io/FileOutputStream;
    .restart local v25       #sb:Ljava/lang/StringBuffer;
    :catch_409
    move-exception v8

    move-object/from16 v21, v22

    .end local v22           #out:Ljava/io/FileOutputStream;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14           #in:Ljava/io/InputStreamReader;
    .restart local v13       #in:Ljava/io/InputStreamReader;
    goto/16 :goto_204

    .line 179
    .end local v6           #buf:[C
    .end local v11           #i:I
    .end local v13           #in:Ljava/io/InputStreamReader;
    .end local v16           #key:Ljava/lang/String;
    .end local v20           #nread:I
    .end local v21           #out:Ljava/io/FileOutputStream;
    .end local v25           #sb:Ljava/lang/StringBuffer;
    .end local v26           #sout:Ljava/io/OutputStreamWriter;
    :catchall_40f
    move-exception v29

    move-object/from16 v18, v19

    .end local v19           #keyIn:Ljava/io/BufferedReader;
    .restart local v18       #keyIn:Ljava/io/BufferedReader;
    goto/16 :goto_19e

    .line 172
    .end local v18           #keyIn:Ljava/io/BufferedReader;
    .restart local v19       #keyIn:Ljava/io/BufferedReader;
    :catch_414
    move-exception v8

    move-object/from16 v18, v19

    .end local v19           #keyIn:Ljava/io/BufferedReader;
    .restart local v18       #keyIn:Ljava/io/BufferedReader;
    goto/16 :goto_18e

    .line 167
    .end local v17           #keyIdx:I
    :catch_419
    move-exception v9

    goto/16 :goto_15e
.end method
