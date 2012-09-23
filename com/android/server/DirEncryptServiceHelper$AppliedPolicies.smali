.class public final Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppliedPolicies"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 294
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPoliciesApplied()Z
    .registers 5

    .prologue
    .line 325
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .local v1, policy:Ljava/io/File;
    const/4 v2, 0x0

    .line 328
    .local v2, result:Z
    :try_start_a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_10

    move-result v2

    move v3, v2

    .line 333
    :goto_f
    return v3

    .line 329
    :catch_10
    move-exception v0

    .line 330
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_f
.end method

.method public static setPoliciesApplied()Z
    .registers 5

    .prologue
    .line 296
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .local v1, policy:Ljava/io/File;
    const/4 v2, 0x1

    .line 299
    .local v2, result:Z
    :try_start_a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 300
    const/4 v2, 0x1

    :goto_11
    move v3, v2

    .line 307
    :goto_12
    return v3

    .line 302
    :cond_13
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_18

    move-result v2

    goto :goto_11

    .line 304
    :catch_18
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_12
.end method

.method public static setPoliciesRemoved()Z
    .registers 5

    .prologue
    .line 311
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .local v1, policy:Ljava/io/File;
    const/4 v2, 0x1

    .line 314
    .local v2, result:Z
    :try_start_a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 315
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_16

    move-result v2

    :cond_14
    move v3, v2

    .line 321
    :goto_15
    return v3

    .line 317
    :catch_16
    move-exception v0

    .line 318
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_15
.end method
