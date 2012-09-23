.class Lcom/android/server/wm/StrictModeFlash;
.super Ljava/lang/Object;
.source "StrictModeFlash.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StrictModeFlash"


# instance fields
.field mDrawNeeded:Z

.field mLastDH:I

.field mLastDW:I

.field mSurface:Landroid/view/Surface;

.field final mThickness:I


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V
    .registers 15
    .parameter "display"
    .parameter "session"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/wm/StrictModeFlash;->mThickness:I

    .line 42
    :try_start_9
    new-instance v0, Landroid/view/Surface;

    const/4 v2, 0x0

    const-string v3, "StrictModeFlash"

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, -0x3

    const/4 v8, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;
    :try_end_19
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_9 .. :try_end_19} :catch_29

    .line 47
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    const v1, 0xf6950

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setLayer(I)V

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v10, v10}, Landroid/view/Surface;->setPosition(II)V

    .line 49
    iput-boolean v11, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 50
    :goto_28
    return-void

    .line 43
    :catch_29
    move-exception v9

    .line 44
    .local v9, e:Landroid/view/Surface$OutOfResourcesException;
    goto :goto_28
.end method

.method private drawIfNeeded()V
    .registers 10

    .prologue
    const/16 v8, 0x14

    const/high16 v7, -0x1

    const/4 v6, 0x0

    .line 53
    iget-boolean v4, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    if-nez v4, :cond_a

    .line 89
    :cond_9
    :goto_9
    return-void

    .line 56
    :cond_a
    iput-boolean v6, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 57
    iget v3, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 58
    .local v3, dw:I
    iget v1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 60
    .local v1, dh:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 61
    .local v2, dirty:Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 63
    .local v0, c:Landroid/graphics/Canvas;
    :try_start_16
    iget-object v4, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1b} :catch_6d
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_16 .. :try_end_1b} :catch_6b

    move-result-object v0

    .line 67
    :goto_1c
    if-eqz v0, :cond_9

    .line 71
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 72
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 76
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v3, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 77
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 79
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 80
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 82
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v3, -0x14

    invoke-direct {v4, v5, v6, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 83
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 85
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v1, -0x14

    invoke-direct {v4, v6, v5, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 86
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 88
    iget-object v4, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_9

    .line 65
    :catch_6b
    move-exception v4

    goto :goto_1c

    .line 64
    :catch_6d
    move-exception v4

    goto :goto_1c
.end method


# virtual methods
.method positionSurface(II)V
    .registers 4
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    if-ne v0, p1, :cond_9

    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    if-ne v0, p2, :cond_9

    .line 113
    :goto_8
    return-void

    .line 109
    :cond_9
    iput p1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 110
    iput p2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1, p2}, Landroid/view/Surface;->setSize(II)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    goto :goto_8
.end method

.method public setVisibility(Z)V
    .registers 3
    .parameter "on"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_5

    .line 103
    :goto_4
    return-void

    .line 97
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/StrictModeFlash;->drawIfNeeded()V

    .line 98
    if-eqz p1, :cond_10

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->show()V

    goto :goto_4

    .line 101
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->hide()V

    goto :goto_4
.end method
