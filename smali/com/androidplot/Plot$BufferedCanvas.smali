.class Lcom/androidplot/Plot$BufferedCanvas;
.super Ljava/lang/Object;
.source "Plot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/Plot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferedCanvas"
.end annotation


# instance fields
.field private volatile bgBuffer:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private volatile fgBuffer:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->canvas:Landroid/graphics/Canvas;

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidplot/Plot$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/androidplot/Plot$1;

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/androidplot/Plot$BufferedCanvas;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->fgBuffer:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public declared-synchronized getCanvas()Landroid/graphics/Canvas;
    .locals 2

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->bgBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/androidplot/Plot$BufferedCanvas;->bgBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 241
    iget-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->canvas:Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->bgBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    iput-object v1, p0, Lcom/androidplot/Plot$BufferedCanvas;->bgBuffer:Landroid/graphics/Bitmap;

    .line 227
    iget-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->fgBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 228
    iput-object v1, p0, Lcom/androidplot/Plot$BufferedCanvas;->fgBuffer:Landroid/graphics/Bitmap;

    .line 229
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 230
    return-void
.end method

.method public declared-synchronized resize(II)V
    .locals 1
    .param p1, "h"    # I
    .param p2, "w"    # I

    .prologue
    .line 214
    monitor-enter p0

    if-lez p2, :cond_0

    if-gtz p1, :cond_1

    .line 215
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->bgBuffer:Landroid/graphics/Bitmap;

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->fgBuffer:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :goto_0
    monitor-exit p0

    return-void

    .line 218
    :cond_1
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->bgBuffer:Landroid/graphics/Bitmap;

    .line 219
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->fgBuffer:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized swap()V
    .locals 2

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->bgBuffer:Landroid/graphics/Bitmap;

    .line 209
    .local v0, "tmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/androidplot/Plot$BufferedCanvas;->fgBuffer:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/androidplot/Plot$BufferedCanvas;->bgBuffer:Landroid/graphics/Bitmap;

    .line 210
    iput-object v0, p0, Lcom/androidplot/Plot$BufferedCanvas;->fgBuffer:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 208
    .end local v0    # "tmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
