.class public abstract Lcom/androidplot/ui/widget/Widget;
.super Ljava/lang/Object;
.source "Widget.java"

# interfaces
.implements Lcom/androidplot/ui/BoxModelable;
.implements Lcom/androidplot/ui/Resizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/ui/widget/Widget$Rotation;
    }
.end annotation


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private borderPaint:Landroid/graphics/Paint;

.field private boxModel:Lcom/androidplot/ui/BoxModel;

.field private clippingEnabled:Z

.field private isVisible:Z

.field private layoutManager:Lcom/androidplot/ui/LayoutManager;

.field private plotDimensions:Lcom/androidplot/util/DisplayDimensions;

.field private positionMetrics:Lcom/androidplot/ui/PositionMetrics;

.field private rotation:Lcom/androidplot/ui/widget/Widget$Rotation;

.field private size:Lcom/androidplot/ui/Size;

.field private widgetDimensions:Lcom/androidplot/util/DisplayDimensions;


# direct methods
.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;)V
    .locals 2
    .param p1, "layoutManager"    # Lcom/androidplot/ui/LayoutManager;
    .param p2, "size"    # Lcom/androidplot/ui/Size;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/androidplot/ui/widget/Widget;->clippingEnabled:Z

    .line 36
    new-instance v1, Lcom/androidplot/ui/BoxModel;

    invoke-direct {v1}, Lcom/androidplot/ui/BoxModel;-><init>()V

    iput-object v1, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    .line 38
    new-instance v1, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v1}, Lcom/androidplot/util/DisplayDimensions;-><init>()V

    iput-object v1, p0, Lcom/androidplot/ui/widget/Widget;->plotDimensions:Lcom/androidplot/util/DisplayDimensions;

    .line 39
    new-instance v1, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v1}, Lcom/androidplot/util/DisplayDimensions;-><init>()V

    iput-object v1, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/androidplot/ui/widget/Widget;->isVisible:Z

    .line 44
    sget-object v1, Lcom/androidplot/ui/widget/Widget$Rotation;->NONE:Lcom/androidplot/ui/widget/Widget$Rotation;

    iput-object v1, p0, Lcom/androidplot/ui/widget/Widget;->rotation:Lcom/androidplot/ui/widget/Widget$Rotation;

    .line 58
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    .line 59
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    .line 60
    .local v0, "oldSize":Lcom/androidplot/ui/Size;
    invoke-virtual {p0, p2}, Lcom/androidplot/ui/widget/Widget;->setSize(Lcom/androidplot/ui/Size;)V

    .line 61
    invoke-virtual {p0, v0, p2}, Lcom/androidplot/ui/widget/Widget;->onMetricsChanged(Lcom/androidplot/ui/Size;Lcom/androidplot/ui/Size;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/SizeMetric;Lcom/androidplot/ui/SizeMetric;)V
    .locals 1
    .param p1, "layoutManager"    # Lcom/androidplot/ui/LayoutManager;
    .param p2, "heightMetric"    # Lcom/androidplot/ui/SizeMetric;
    .param p3, "widthMetric"    # Lcom/androidplot/ui/SizeMetric;

    .prologue
    .line 54
    new-instance v0, Lcom/androidplot/ui/Size;

    invoke-direct {v0, p2, p3}, Lcom/androidplot/ui/Size;-><init>(Lcom/androidplot/ui/SizeMetric;Lcom/androidplot/ui/SizeMetric;)V

    invoke-direct {p0, p1, v0}, Lcom/androidplot/ui/widget/Widget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;)V

    .line 55
    return-void
.end method

.method public static getAnchorCoordinates(FFFFLcom/androidplot/ui/Anchor;)Landroid/graphics/PointF;
    .locals 3
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "anchor"    # Lcom/androidplot/ui/Anchor;

    .prologue
    .line 347
    new-instance v0, Landroid/graphics/RectF;

    add-float v1, p0, p2

    add-float v2, p1, p3

    invoke-direct {v0, p0, p1, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v0, p4}, Lcom/androidplot/ui/widget/Widget;->getAnchorCoordinates(Landroid/graphics/RectF;Lcom/androidplot/ui/Anchor;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public static getAnchorCoordinates(Landroid/graphics/RectF;Lcom/androidplot/ui/Anchor;)Landroid/graphics/PointF;
    .locals 3
    .param p0, "widgetRect"    # Landroid/graphics/RectF;
    .param p1, "anchor"    # Lcom/androidplot/ui/Anchor;

    .prologue
    .line 342
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 343
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/androidplot/ui/widget/Widget;->getAnchorOffset(FFLcom/androidplot/ui/Anchor;)Landroid/graphics/PointF;

    move-result-object v1

    .line 342
    invoke-static {v0, v1}, Lcom/androidplot/util/PixelUtils;->add(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public static getAnchorOffset(FFLcom/androidplot/ui/Anchor;)Landroid/graphics/PointF;
    .locals 5
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "anchor"    # Lcom/androidplot/ui/Anchor;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 307
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 308
    .local v0, "point":Landroid/graphics/PointF;
    sget-object v1, Lcom/androidplot/ui/widget/Widget$1;->$SwitchMap$com$androidplot$ui$Anchor:[I

    invoke-virtual {p2}, Lcom/androidplot/ui/Anchor;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 336
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported anchor location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :pswitch_0
    div-float v1, p1, v3

    invoke-virtual {v0, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 338
    :goto_0
    :pswitch_1
    return-object v0

    .line 315
    :pswitch_2
    invoke-virtual {v0, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 318
    :pswitch_3
    invoke-virtual {v0, p0, v4}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 321
    :pswitch_4
    invoke-virtual {v0, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 324
    :pswitch_5
    div-float v1, p1, v3

    invoke-virtual {v0, p0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 327
    :pswitch_6
    div-float v1, p0, v3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 330
    :pswitch_7
    div-float v1, p0, v3

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 333
    :pswitch_8
    div-float v1, p0, v3

    div-float v2, p1, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected applyRotation(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 367
    const/4 v4, 0x0

    .line 368
    .local v4, "rotationDegs":F
    iget-object v5, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v5, v5, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 369
    .local v0, "cx":F
    iget-object v5, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v5, v5, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 370
    .local v1, "cy":F
    iget-object v5, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v5, v5, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v2, v5, v6

    .line 371
    .local v2, "halfHeight":F
    iget-object v5, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v5, v5, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v3, v5, v6

    .line 372
    .local v3, "halfWidth":F
    sget-object v5, Lcom/androidplot/ui/widget/Widget$1;->$SwitchMap$com$androidplot$ui$widget$Widget$Rotation:[I

    iget-object v6, p0, Lcom/androidplot/ui/widget/Widget;->rotation:Lcom/androidplot/ui/widget/Widget$Rotation;

    invoke-virtual {v6}, Lcom/androidplot/ui/widget/Widget$Rotation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 395
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Not yet implemented."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 374
    :pswitch_0
    const/high16 v4, 0x42b40000    # 90.0f

    .line 375
    new-instance p2, Landroid/graphics/RectF;

    .end local p2    # "rect":Landroid/graphics/RectF;
    sub-float v5, v0, v2

    sub-float v6, v1, v3

    add-float v7, v0, v2

    add-float v8, v1, v3

    invoke-direct {p2, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 398
    .restart local p2    # "rect":Landroid/graphics/RectF;
    :goto_0
    :pswitch_1
    iget-object v5, p0, Lcom/androidplot/ui/widget/Widget;->rotation:Lcom/androidplot/ui/widget/Widget$Rotation;

    sget-object v6, Lcom/androidplot/ui/widget/Widget$Rotation;->NONE:Lcom/androidplot/ui/widget/Widget$Rotation;

    if-eq v5, v6, :cond_0

    .line 399
    invoke-virtual {p1, v4, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 401
    :cond_0
    return-object p2

    .line 382
    :pswitch_2
    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 383
    new-instance p2, Landroid/graphics/RectF;

    .end local p2    # "rect":Landroid/graphics/RectF;
    sub-float v5, v0, v2

    sub-float v6, v1, v3

    add-float v7, v0, v2

    add-float v8, v1, v3

    invoke-direct {p2, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 388
    .restart local p2    # "rect":Landroid/graphics/RectF;
    goto :goto_0

    .line 390
    :pswitch_3
    const/high16 v4, 0x43340000    # 180.0f

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public containsPoint(Landroid/graphics/PointF;)Z
    .locals 3
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method protected abstract doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/exception/PlotRenderException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/Widget;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/androidplot/ui/widget/Widget;->backgroundPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v1, v1, Lcom/androidplot/util/DisplayDimensions;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v1}, Lcom/androidplot/ui/widget/Widget;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 355
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 356
    iget-object v1, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v1, v1, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v1}, Lcom/androidplot/ui/widget/Widget;->applyRotation(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 357
    .local v0, "paddedRect":Landroid/graphics/RectF;
    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/widget/Widget;->doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 358
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 360
    iget-object v1, p0, Lcom/androidplot/ui/widget/Widget;->borderPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    .line 361
    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/widget/Widget;->drawBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 364
    .end local v0    # "paddedRect":Landroid/graphics/RectF;
    :cond_1
    return-void
.end method

.method protected drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "widgetRect"    # Landroid/graphics/RectF;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 410
    return-void
.end method

.method protected drawBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paddedRect"    # Landroid/graphics/RectF;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 406
    return-void
.end method

.method public getAnchor()Lcom/androidplot/ui/Anchor;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/Widget;->getPositionMetrics()Lcom/androidplot/ui/PositionMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/PositionMetrics;->getAnchor()Lcom/androidplot/ui/Anchor;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->backgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getBorderPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->borderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getElementCoordinates(FFLandroid/graphics/RectF;Lcom/androidplot/ui/PositionMetrics;)Landroid/graphics/PointF;
    .locals 5
    .param p1, "height"    # F
    .param p2, "width"    # F
    .param p3, "viewRect"    # Landroid/graphics/RectF;
    .param p4, "metrics"    # Lcom/androidplot/ui/PositionMetrics;

    .prologue
    .line 300
    invoke-virtual {p4}, Lcom/androidplot/ui/PositionMetrics;->getXPositionMetric()Lcom/androidplot/ui/HorizontalPosition;

    move-result-object v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/androidplot/ui/HorizontalPosition;->getPixelValue(F)F

    move-result v3

    iget v4, p3, Landroid/graphics/RectF;->left:F

    add-float v1, v3, v4

    .line 301
    .local v1, "x":F
    invoke-virtual {p4}, Lcom/androidplot/ui/PositionMetrics;->getYPositionMetric()Lcom/androidplot/ui/VerticalPosition;

    move-result-object v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/androidplot/ui/VerticalPosition;->getPixelValue(F)F

    move-result v3

    iget v4, p3, Landroid/graphics/RectF;->top:F

    add-float v2, v3, v4

    .line 302
    .local v2, "y":F
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 303
    .local v0, "point":Landroid/graphics/PointF;
    invoke-virtual {p4}, Lcom/androidplot/ui/PositionMetrics;->getAnchor()Lcom/androidplot/ui/Anchor;

    move-result-object v3

    invoke-static {p2, p1, v3}, Lcom/androidplot/ui/widget/Widget;->getAnchorOffset(FFLcom/androidplot/ui/Anchor;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/androidplot/util/PixelUtils;->sub(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    return-object v3
.end method

.method public getHeightMetric()Lcom/androidplot/ui/SizeMetric;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Lcom/androidplot/ui/Size;->getHeight()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    return-object v0
.end method

.method public getHeightPix(F)F
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 166
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Lcom/androidplot/ui/Size;->getHeight()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/SizeMetric;->getPixelValue(F)F

    move-result v0

    return v0
.end method

.method public getMarginBottom()F
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginBottom()F

    move-result v0

    return v0
.end method

.method public getMarginLeft()F
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginLeft()F

    move-result v0

    return v0
.end method

.method public getMarginRight()F
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginRight()F

    move-result v0

    return v0
.end method

.method public getMarginTop()F
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginTop()F

    move-result v0

    return v0
.end method

.method public getMarginatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1
    .param p1, "widgetRect"    # Landroid/graphics/RectF;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->getMarginatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getPaddedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1
    .param p1, "widgetMarginRect"    # Landroid/graphics/RectF;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->getPaddedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getPaddingBottom()F
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingBottom()F

    move-result v0

    return v0
.end method

.method public getPaddingLeft()F
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingLeft()F

    move-result v0

    return v0
.end method

.method public getPaddingRight()F
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingRight()F

    move-result v0

    return v0
.end method

.method public getPaddingTop()F
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingTop()F

    move-result v0

    return v0
.end method

.method public getPositionMetrics()Lcom/androidplot/ui/PositionMetrics;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->positionMetrics:Lcom/androidplot/ui/PositionMetrics;

    return-object v0
.end method

.method public getRotation()Lcom/androidplot/ui/widget/Widget$Rotation;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->rotation:Lcom/androidplot/ui/widget/Widget$Rotation;

    return-object v0
.end method

.method public getSize()Lcom/androidplot/ui/Size;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    return-object v0
.end method

.method public getWidgetDimensions()Lcom/androidplot/util/DisplayDimensions;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;

    return-object v0
.end method

.method public getWidthMetric()Lcom/androidplot/ui/SizeMetric;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Lcom/androidplot/ui/Size;->getWidth()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    return-object v0
.end method

.method public getWidthPix(F)F
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 162
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Lcom/androidplot/ui/Size;->getWidth()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/SizeMetric;->getPixelValue(F)F

    move-result v0

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/Widget;->clippingEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/Widget;->isVisible:Z

    return v0
.end method

.method public declared-synchronized layout(Lcom/androidplot/util/DisplayDimensions;)V
    .locals 1
    .param p1, "plotDimensions"    # Lcom/androidplot/util/DisplayDimensions;

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->plotDimensions:Lcom/androidplot/util/DisplayDimensions;

    .line 296
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/Widget;->refreshLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onMetricsChanged(Lcom/androidplot/ui/Size;Lcom/androidplot/ui/Size;)V
    .locals 0
    .param p1, "oldSize"    # Lcom/androidplot/ui/Size;
    .param p2, "newSize"    # Lcom/androidplot/ui/Size;

    .prologue
    .line 109
    return-void
.end method

.method public onPostInit()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "horizontalPositioning"    # Lcom/androidplot/ui/HorizontalPositioning;
    .param p3, "y"    # F
    .param p4, "verticalPositioning"    # Lcom/androidplot/ui/VerticalPositioning;

    .prologue
    .line 86
    sget-object v5, Lcom/androidplot/ui/Anchor;->LEFT_TOP:Lcom/androidplot/ui/Anchor;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/ui/widget/Widget;->position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V

    .line 87
    return-void
.end method

.method public position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "horizontalPositioning"    # Lcom/androidplot/ui/HorizontalPositioning;
    .param p3, "y"    # F
    .param p4, "verticalPositioning"    # Lcom/androidplot/ui/VerticalPositioning;
    .param p5, "anchor"    # Lcom/androidplot/ui/Anchor;

    .prologue
    .line 98
    new-instance v0, Lcom/androidplot/ui/PositionMetrics;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/androidplot/ui/PositionMetrics;-><init>(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V

    invoke-virtual {p0, v0}, Lcom/androidplot/ui/widget/Widget;->setPositionMetrics(Lcom/androidplot/ui/PositionMetrics;)V

    .line 99
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/androidplot/ui/LayoutManager;->addToTop(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public declared-synchronized refreshLayout()V
    .locals 10

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/androidplot/ui/widget/Widget;->positionMetrics:Lcom/androidplot/ui/PositionMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    .line 291
    :goto_0
    monitor-exit p0

    return-void

    .line 280
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/androidplot/ui/widget/Widget;->plotDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v6, v6, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/androidplot/ui/widget/Widget;->getWidthPix(F)F

    move-result v2

    .line 281
    .local v2, "elementWidth":F
    iget-object v6, p0, Lcom/androidplot/ui/widget/Widget;->plotDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v6, v6, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/androidplot/ui/widget/Widget;->getHeightPix(F)F

    move-result v1

    .line 282
    .local v1, "elementHeight":F
    iget-object v6, p0, Lcom/androidplot/ui/widget/Widget;->plotDimensions:Lcom/androidplot/util/DisplayDimensions;

    iget-object v6, v6, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/androidplot/ui/widget/Widget;->positionMetrics:Lcom/androidplot/ui/PositionMetrics;

    invoke-virtual {p0, v1, v2, v6, v7}, Lcom/androidplot/ui/widget/Widget;->getElementCoordinates(FFLandroid/graphics/RectF;Lcom/androidplot/ui/PositionMetrics;)Landroid/graphics/PointF;

    move-result-object v0

    .line 285
    .local v0, "coords":Landroid/graphics/PointF;
    new-instance v5, Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget v8, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v2

    iget v9, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v1

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 287
    .local v5, "widgetRect":Landroid/graphics/RectF;
    invoke-virtual {p0, v5}, Lcom/androidplot/ui/widget/Widget;->getMarginatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    .line 288
    .local v3, "marginatedWidgetRect":Landroid/graphics/RectF;
    invoke-virtual {p0, v3}, Lcom/androidplot/ui/widget/Widget;->getPaddedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    .line 289
    .local v4, "paddedWidgetRect":Landroid/graphics/RectF;
    new-instance v6, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v6, v5, v3, v4}, Lcom/androidplot/util/DisplayDimensions;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    iput-object v6, p0, Lcom/androidplot/ui/widget/Widget;->widgetDimensions:Lcom/androidplot/util/DisplayDimensions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    .end local v0    # "coords":Landroid/graphics/PointF;
    .end local v1    # "elementHeight":F
    .end local v2    # "elementWidth":F
    .end local v3    # "marginatedWidgetRect":Landroid/graphics/RectF;
    .end local v4    # "paddedWidgetRect":Landroid/graphics/RectF;
    .end local v5    # "widgetRect":Landroid/graphics/RectF;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public setAnchor(Lcom/androidplot/ui/Anchor;)V
    .locals 1
    .param p1, "anchor"    # Lcom/androidplot/ui/Anchor;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/Widget;->getPositionMetrics()Lcom/androidplot/ui/PositionMetrics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/PositionMetrics;->setAnchor(Lcom/androidplot/ui/Anchor;)V

    .line 74
    return-void
.end method

.method public setBackgroundPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "backgroundPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->backgroundPaint:Landroid/graphics/Paint;

    .line 432
    return-void
.end method

.method public setBorderPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "borderPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->borderPaint:Landroid/graphics/Paint;

    .line 424
    return-void
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "clippingEnabled"    # Z

    .prologue
    .line 439
    iput-boolean p1, p0, Lcom/androidplot/ui/widget/Widget;->clippingEnabled:Z

    .line 440
    return-void
.end method

.method public setHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .prologue
    .line 146
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Lcom/androidplot/ui/Size;->getHeight()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/SizeMetric;->setValue(F)V

    .line 147
    return-void
.end method

.method public setHeight(FLcom/androidplot/ui/SizeMode;)V
    .locals 1
    .param p1, "height"    # F
    .param p2, "layoutType"    # Lcom/androidplot/ui/SizeMode;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Lcom/androidplot/ui/Size;->getHeight()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/ui/SizeMetric;->set(FLjava/lang/Enum;)V

    .line 151
    return-void
.end method

.method public setMarginBottom(F)V
    .locals 1
    .param p1, "marginBottom"    # F

    .prologue
    .line 250
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginBottom(F)V

    .line 251
    return-void
.end method

.method public setMarginLeft(F)V
    .locals 1
    .param p1, "marginLeft"    # F

    .prologue
    .line 260
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginLeft(F)V

    .line 261
    return-void
.end method

.method public setMarginRight(F)V
    .locals 1
    .param p1, "marginRight"    # F

    .prologue
    .line 179
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginRight(F)V

    .line 180
    return-void
.end method

.method public setMarginTop(F)V
    .locals 1
    .param p1, "marginTop"    # F

    .prologue
    .line 199
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginTop(F)V

    .line 200
    return-void
.end method

.method public setMargins(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 184
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/androidplot/ui/BoxModel;->setMargins(FFFF)V

    .line 185
    return-void
.end method

.method public setPadding(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 189
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/androidplot/ui/BoxModel;->setPadding(FFFF)V

    .line 190
    return-void
.end method

.method public setPaddingBottom(F)V
    .locals 1
    .param p1, "paddingBottom"    # F

    .prologue
    .line 244
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingBottom(F)V

    .line 245
    return-void
.end method

.method public setPaddingLeft(F)V
    .locals 1
    .param p1, "paddingLeft"    # F

    .prologue
    .line 214
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingLeft(F)V

    .line 215
    return-void
.end method

.method public setPaddingRight(F)V
    .locals 1
    .param p1, "paddingRight"    # F

    .prologue
    .line 234
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingRight(F)V

    .line 235
    return-void
.end method

.method public setPaddingTop(F)V
    .locals 1
    .param p1, "paddingTop"    # F

    .prologue
    .line 224
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingTop(F)V

    .line 225
    return-void
.end method

.method public setPositionMetrics(Lcom/androidplot/ui/PositionMetrics;)V
    .locals 0
    .param p1, "positionMetrics"    # Lcom/androidplot/ui/PositionMetrics;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->positionMetrics:Lcom/androidplot/ui/PositionMetrics;

    .line 456
    return-void
.end method

.method public setRotation(Lcom/androidplot/ui/widget/Widget$Rotation;)V
    .locals 0
    .param p1, "rotation"    # Lcom/androidplot/ui/widget/Widget$Rotation;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->rotation:Lcom/androidplot/ui/widget/Widget$Rotation;

    .line 464
    return-void
.end method

.method public setSize(Lcom/androidplot/ui/Size;)V
    .locals 0
    .param p1, "size"    # Lcom/androidplot/ui/Size;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    .line 130
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 447
    iput-boolean p1, p0, Lcom/androidplot/ui/widget/Widget;->isVisible:Z

    .line 448
    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 138
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Lcom/androidplot/ui/Size;->getWidth()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/SizeMetric;->setValue(F)V

    .line 139
    return-void
.end method

.method public setWidth(FLcom/androidplot/ui/SizeMode;)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "layoutType"    # Lcom/androidplot/ui/SizeMode;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/androidplot/ui/widget/Widget;->size:Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Lcom/androidplot/ui/Size;->getWidth()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/ui/SizeMetric;->set(FLjava/lang/Enum;)V

    .line 143
    return-void
.end method
