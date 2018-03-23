.class public Lcom/androidplot/xy/PanZoom;
.super Ljava/lang/Object;
.source "PanZoom.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/PanZoom$Zoom;,
        Lcom/androidplot/xy/PanZoom$Pan;,
        Lcom/androidplot/xy/PanZoom$DragState;
    }
.end annotation


# static fields
.field protected static final FIRST_FINGER:I = 0x0

.field protected static final MIN_DIST_2_FING:F = 5.0f

.field protected static final SECOND_FINGER:I = 0x1


# instance fields
.field private delegate:Landroid/view/View$OnTouchListener;

.field private dragState:Lcom/androidplot/xy/PanZoom$DragState;

.field protected fingersRect:Landroid/graphics/RectF;

.field private firstFingerPos:Landroid/graphics/PointF;

.field private isEnabled:Z

.field private pan:Lcom/androidplot/xy/PanZoom$Pan;

.field private plot:Lcom/androidplot/xy/XYPlot;

.field private zoom:Lcom/androidplot/xy/PanZoom$Zoom;


# direct methods
.method protected constructor <init>(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/PanZoom$Pan;Lcom/androidplot/xy/PanZoom$Zoom;)V
    .locals 1
    .param p1, "plot"    # Lcom/androidplot/xy/XYPlot;
    .param p2, "pan"    # Lcom/androidplot/xy/PanZoom$Pan;
    .param p3, "zoom"    # Lcom/androidplot/xy/PanZoom$Zoom;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidplot/xy/PanZoom;->isEnabled:Z

    .line 30
    sget-object v0, Lcom/androidplot/xy/PanZoom$DragState;->NONE:Lcom/androidplot/xy/PanZoom$DragState;

    iput-object v0, p0, Lcom/androidplot/xy/PanZoom;->dragState:Lcom/androidplot/xy/PanZoom$DragState;

    .line 81
    iput-object p1, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    .line 82
    iput-object p2, p0, Lcom/androidplot/xy/PanZoom;->pan:Lcom/androidplot/xy/PanZoom$Pan;

    .line 83
    iput-object p3, p0, Lcom/androidplot/xy/PanZoom;->zoom:Lcom/androidplot/xy/PanZoom$Zoom;

    .line 84
    return-void
.end method

.method public static attach(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/xy/PanZoom;
    .locals 2
    .param p0, "plot"    # Lcom/androidplot/xy/XYPlot;

    .prologue
    .line 94
    sget-object v0, Lcom/androidplot/xy/PanZoom$Pan;->BOTH:Lcom/androidplot/xy/PanZoom$Pan;

    sget-object v1, Lcom/androidplot/xy/PanZoom$Zoom;->SCALE:Lcom/androidplot/xy/PanZoom$Zoom;

    invoke-static {p0, v0, v1}, Lcom/androidplot/xy/PanZoom;->attach(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/PanZoom$Pan;Lcom/androidplot/xy/PanZoom$Zoom;)Lcom/androidplot/xy/PanZoom;

    move-result-object v0

    return-object v0
.end method

.method public static attach(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/PanZoom$Pan;Lcom/androidplot/xy/PanZoom$Zoom;)Lcom/androidplot/xy/PanZoom;
    .locals 1
    .param p0, "plot"    # Lcom/androidplot/xy/XYPlot;
    .param p1, "pan"    # Lcom/androidplot/xy/PanZoom$Pan;
    .param p2, "zoom"    # Lcom/androidplot/xy/PanZoom$Zoom;

    .prologue
    .line 98
    new-instance v0, Lcom/androidplot/xy/PanZoom;

    invoke-direct {v0, p0, p1, p2}, Lcom/androidplot/xy/PanZoom;-><init>(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/PanZoom$Pan;Lcom/androidplot/xy/PanZoom$Zoom;)V

    .line 99
    .local v0, "pz":Lcom/androidplot/xy/PanZoom;
    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYPlot;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    return-object v0
.end method


# virtual methods
.method protected calculatePan(Landroid/graphics/PointF;Lcom/androidplot/Region;Z)V
    .locals 5
    .param p1, "oldFirstFinger"    # Landroid/graphics/PointF;
    .param p2, "bounds"    # Lcom/androidplot/Region;
    .param p3, "horizontal"    # Z

    .prologue
    .line 207
    if-eqz p3, :cond_2

    .line 208
    iget-object v2, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/androidplot/Region;->setMinMax(Lcom/androidplot/Region;)V

    .line 209
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/androidplot/xy/PanZoom;->firstFingerPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    .line 210
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {p2}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v1, v2, v3

    .line 217
    .local v1, "offset":F
    :goto_0
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 218
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 221
    invoke-virtual {p2}, Lcom/androidplot/Region;->length()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 224
    .local v0, "diff":F
    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/Region;->isDefined()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v3}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 227
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    add-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 229
    :cond_0
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v3}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 231
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 243
    :cond_1
    :goto_1
    return-void

    .line 212
    .end local v0    # "diff":F
    .end local v1    # "offset":F
    :cond_2
    iget-object v2, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getyRegion()Lcom/androidplot/Region;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/androidplot/Region;->setMinMax(Lcom/androidplot/Region;)V

    .line 213
    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/androidplot/xy/PanZoom;->firstFingerPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    neg-float v2, v2

    .line 214
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {p2}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v1, v2, v3

    .restart local v1    # "offset":F
    goto/16 :goto_0

    .line 233
    .restart local v0    # "diff":F
    :cond_3
    iget-object v2, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getyRegion()Lcom/androidplot/Region;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/Region;->isDefined()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v3}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 235
    iget-object v2, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 236
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    add-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 238
    :cond_4
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v3}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 240
    invoke-virtual {p2}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    goto/16 :goto_1
.end method

.method protected calculateZoom(Landroid/graphics/RectF;FZ)V
    .locals 8
    .param p1, "newRect"    # Landroid/graphics/RectF;
    .param p2, "scale"    # F
    .param p3, "isHorizontal"    # Z

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 325
    iget-object v6, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v6}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    .line 326
    .local v0, "bounds":Lcom/androidplot/xy/RectRegion;
    if-eqz p3, :cond_2

    .line 327
    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 328
    .local v1, "calcMax":F
    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    sub-float v5, v1, v6

    .line 334
    .local v5, "span":F
    :goto_0
    div-float v6, v5, v7

    sub-float v3, v1, v6

    .line 335
    .local v3, "midPoint":F
    mul-float v6, v5, p2

    div-float v4, v6, v7

    .line 337
    .local v4, "offset":F
    if-eqz p3, :cond_3

    .line 338
    iget-object v6, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v6}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    .line 339
    .local v2, "limits":Lcom/androidplot/xy/RectRegion;
    sub-float v6, v3, v4

    iput v6, p1, Landroid/graphics/RectF;->left:F

    .line 340
    add-float v6, v3, v4

    iput v6, p1, Landroid/graphics/RectF;->right:F

    .line 341
    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->isFullyDefined()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 342
    iget v6, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 343
    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    iput v6, p1, Landroid/graphics/RectF;->left:F

    .line 345
    :cond_0
    iget v6, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 346
    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    iput v6, p1, Landroid/graphics/RectF;->right:F

    .line 362
    :cond_1
    :goto_1
    return-void

    .line 330
    .end local v1    # "calcMax":F
    .end local v2    # "limits":Lcom/androidplot/xy/RectRegion;
    .end local v3    # "midPoint":F
    .end local v4    # "offset":F
    .end local v5    # "span":F
    :cond_2
    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 331
    .restart local v1    # "calcMax":F
    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    sub-float v5, v1, v6

    .restart local v5    # "span":F
    goto :goto_0

    .line 350
    .restart local v3    # "midPoint":F
    .restart local v4    # "offset":F
    :cond_3
    iget-object v6, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v6}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    .line 351
    .restart local v2    # "limits":Lcom/androidplot/xy/RectRegion;
    sub-float v6, v3, v4

    iput v6, p1, Landroid/graphics/RectF;->top:F

    .line 352
    add-float v6, v3, v4

    iput v6, p1, Landroid/graphics/RectF;->bottom:F

    .line 353
    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->isFullyDefined()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 354
    iget v6, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 355
    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    iput v6, p1, Landroid/graphics/RectF;->top:F

    .line 357
    :cond_4
    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 358
    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    iput v6, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1
.end method

.method protected fingerDistance(FFFF)Landroid/graphics/RectF;
    .locals 5
    .param p1, "firstFingerX"    # F
    .param p2, "firstFingerY"    # F
    .param p3, "secondFingerX"    # F
    .param p4, "secondFingerY"    # F

    .prologue
    .line 162
    cmpl-float v4, p1, p3

    if-lez v4, :cond_0

    move v1, p3

    .line 163
    .local v1, "left":F
    :goto_0
    cmpl-float v4, p1, p3

    if-lez v4, :cond_1

    move v2, p1

    .line 164
    .local v2, "right":F
    :goto_1
    cmpl-float v4, p2, p4

    if-lez v4, :cond_2

    move v3, p4

    .line 165
    .local v3, "top":F
    :goto_2
    cmpl-float v4, p2, p4

    if-lez v4, :cond_3

    move v0, p2

    .line 166
    .local v0, "bottom":F
    :goto_3
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4

    .end local v0    # "bottom":F
    .end local v1    # "left":F
    .end local v2    # "right":F
    .end local v3    # "top":F
    :cond_0
    move v1, p1

    .line 162
    goto :goto_0

    .restart local v1    # "left":F
    :cond_1
    move v2, p3

    .line 163
    goto :goto_1

    .restart local v2    # "right":F
    :cond_2
    move v3, p2

    .line 164
    goto :goto_2

    .restart local v3    # "top":F
    :cond_3
    move v0, p4

    .line 165
    goto :goto_3
.end method

.method protected fingerDistance(Landroid/view/MotionEvent;)Landroid/graphics/RectF;
    .locals 4
    .param p1, "evt"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 175
    .line 176
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 177
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 178
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 179
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 175
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/androidplot/xy/PanZoom;->fingerDistance(FFFF)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->delegate:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method protected getFingersRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->fingersRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPan()Lcom/androidplot/xy/PanZoom$Pan;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->pan:Lcom/androidplot/xy/PanZoom$Pan;

    return-object v0
.end method

.method public getZoom()Lcom/androidplot/xy/PanZoom$Zoom;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom;->zoom:Lcom/androidplot/xy/PanZoom$Zoom;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/androidplot/xy/PanZoom;->isEnabled:Z

    return v0
.end method

.method protected isValidScale(F)Z
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 246
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p1

    const-wide v2, -0x40af9db22d0e5604L    # -0.001

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    float-to-double v0, p1

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 247
    :cond_0
    const/4 v0, 0x0

    .line 249
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "isConsumed":Z
    iget-object v1, p0, Lcom/androidplot/xy/PanZoom;->delegate:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/androidplot/xy/PanZoom;->delegate:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 150
    :cond_1
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 120
    :pswitch_1
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/androidplot/xy/PanZoom;->firstFingerPos:Landroid/graphics/PointF;

    .line 121
    sget-object v1, Lcom/androidplot/xy/PanZoom$DragState;->ONE_FINGER:Lcom/androidplot/xy/PanZoom$DragState;

    iput-object v1, p0, Lcom/androidplot/xy/PanZoom;->dragState:Lcom/androidplot/xy/PanZoom$DragState;

    goto :goto_0

    .line 125
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/PanZoom;->fingerDistance(Landroid/view/MotionEvent;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/androidplot/xy/PanZoom;->setFingersRect(Landroid/graphics/RectF;)V

    .line 127
    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->getFingersRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->getFingersRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, -0x3f600000    # -5.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 128
    :cond_2
    sget-object v1, Lcom/androidplot/xy/PanZoom$DragState;->TWO_FINGERS:Lcom/androidplot/xy/PanZoom$DragState;

    iput-object v1, p0, Lcom/androidplot/xy/PanZoom;->dragState:Lcom/androidplot/xy/PanZoom$DragState;

    goto :goto_0

    .line 133
    :pswitch_3
    sget-object v1, Lcom/androidplot/xy/PanZoom$DragState;->NONE:Lcom/androidplot/xy/PanZoom$DragState;

    iput-object v1, p0, Lcom/androidplot/xy/PanZoom;->dragState:Lcom/androidplot/xy/PanZoom$DragState;

    goto :goto_0

    .line 137
    :pswitch_4
    iget-object v1, p0, Lcom/androidplot/xy/PanZoom;->dragState:Lcom/androidplot/xy/PanZoom$DragState;

    sget-object v2, Lcom/androidplot/xy/PanZoom$DragState;->ONE_FINGER:Lcom/androidplot/xy/PanZoom$DragState;

    if-ne v1, v2, :cond_3

    .line 138
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/PanZoom;->pan(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/androidplot/xy/PanZoom;->dragState:Lcom/androidplot/xy/PanZoom$DragState;

    sget-object v2, Lcom/androidplot/xy/PanZoom$DragState;->TWO_FINGERS:Lcom/androidplot/xy/PanZoom$DragState;

    if-ne v1, v2, :cond_1

    .line 140
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/PanZoom;->zoom(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 145
    :pswitch_5
    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->reset()V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected pan(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 183
    iget-object v2, p0, Lcom/androidplot/xy/PanZoom;->pan:Lcom/androidplot/xy/PanZoom$Pan;

    sget-object v3, Lcom/androidplot/xy/PanZoom$Pan;->NONE:Lcom/androidplot/xy/PanZoom$Pan;

    if-ne v2, v3, :cond_0

    .line 201
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/androidplot/xy/PanZoom;->firstFingerPos:Landroid/graphics/PointF;

    .line 188
    .local v1, "oldFirstFinger":Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/androidplot/xy/PanZoom;->firstFingerPos:Landroid/graphics/PointF;

    .line 189
    sget-object v2, Lcom/androidplot/xy/PanZoom$Pan;->HORIZONTAL:Lcom/androidplot/xy/PanZoom$Pan;

    sget-object v3, Lcom/androidplot/xy/PanZoom$Pan;->BOTH:Lcom/androidplot/xy/PanZoom$Pan;

    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    iget-object v3, p0, Lcom/androidplot/xy/PanZoom;->pan:Lcom/androidplot/xy/PanZoom$Pan;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0}, Lcom/androidplot/Region;-><init>()V

    .line 191
    .local v0, "newBounds":Lcom/androidplot/Region;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/androidplot/xy/PanZoom;->calculatePan(Landroid/graphics/PointF;Lcom/androidplot/Region;Z)V

    .line 192
    iget-object v2, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v4

    sget-object v5, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v2, v3, v4, v5}, Lcom/androidplot/xy/XYPlot;->setDomainBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 194
    .end local v0    # "newBounds":Lcom/androidplot/Region;
    :cond_1
    sget-object v2, Lcom/androidplot/xy/PanZoom$Pan;->VERTICAL:Lcom/androidplot/xy/PanZoom$Pan;

    sget-object v3, Lcom/androidplot/xy/PanZoom$Pan;->BOTH:Lcom/androidplot/xy/PanZoom$Pan;

    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    iget-object v3, p0, Lcom/androidplot/xy/PanZoom;->pan:Lcom/androidplot/xy/PanZoom$Pan;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0}, Lcom/androidplot/Region;-><init>()V

    .line 196
    .restart local v0    # "newBounds":Lcom/androidplot/Region;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/androidplot/xy/PanZoom;->calculatePan(Landroid/graphics/PointF;Lcom/androidplot/Region;Z)V

    .line 197
    iget-object v2, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v4

    sget-object v5, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v2, v3, v4, v5}, Lcom/androidplot/xy/XYPlot;->setRangeBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 200
    .end local v0    # "newBounds":Lcom/androidplot/Region;
    :cond_2
    iget-object v2, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->redraw()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/androidplot/xy/PanZoom;->firstFingerPos:Landroid/graphics/PointF;

    .line 397
    invoke-virtual {p0, v0}, Lcom/androidplot/xy/PanZoom;->setFingersRect(Landroid/graphics/RectF;)V

    .line 398
    invoke-virtual {p0, v0}, Lcom/androidplot/xy/PanZoom;->setFingersRect(Landroid/graphics/RectF;)V

    .line 399
    return-void
.end method

.method public setDelegate(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "delegate"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/androidplot/xy/PanZoom;->delegate:Landroid/view/View$OnTouchListener;

    .line 393
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/androidplot/xy/PanZoom;->isEnabled:Z

    .line 109
    return-void
.end method

.method protected setFingersRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "fingersRect"    # Landroid/graphics/RectF;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/androidplot/xy/PanZoom;->fingersRect:Landroid/graphics/RectF;

    .line 407
    return-void
.end method

.method public setPan(Lcom/androidplot/xy/PanZoom$Pan;)V
    .locals 0
    .param p1, "pan"    # Lcom/androidplot/xy/PanZoom$Pan;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/androidplot/xy/PanZoom;->pan:Lcom/androidplot/xy/PanZoom$Pan;

    .line 370
    return-void
.end method

.method public setZoom(Lcom/androidplot/xy/PanZoom$Zoom;)V
    .locals 0
    .param p1, "zoom"    # Lcom/androidplot/xy/PanZoom$Zoom;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/androidplot/xy/PanZoom;->zoom:Lcom/androidplot/xy/PanZoom$Zoom;

    .line 378
    return-void
.end method

.method protected zoom(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 253
    iget-object v8, p0, Lcom/androidplot/xy/PanZoom;->zoom:Lcom/androidplot/xy/PanZoom$Zoom;

    sget-object v9, Lcom/androidplot/xy/PanZoom$Zoom;->NONE:Lcom/androidplot/xy/PanZoom$Zoom;

    if-ne v8, v9, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->getFingersRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 257
    .local v2, "oldFingersRect":Landroid/graphics/RectF;
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/PanZoom;->fingerDistance(Landroid/view/MotionEvent;)Landroid/graphics/RectF;

    move-result-object v0

    .line 258
    .local v0, "newFingersRect":Landroid/graphics/RectF;
    invoke-virtual {p0, v0}, Lcom/androidplot/xy/PanZoom;->setFingersRect(Landroid/graphics/RectF;)V

    .line 259
    if-eqz v2, :cond_0

    invoke-static {v2, v0}, Lcom/androidplot/util/RectFUtils;->areIdentical(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 263
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 265
    .local v1, "newRect":Landroid/graphics/RectF;
    const/high16 v6, 0x3f800000    # 1.0f

    .line 266
    .local v6, "scaleX":F
    const/high16 v7, 0x3f800000    # 1.0f

    .line 267
    .local v7, "scaleY":F
    sget-object v8, Lcom/androidplot/xy/PanZoom$1;->$SwitchMap$com$androidplot$xy$PanZoom$Zoom:[I

    iget-object v9, p0, Lcom/androidplot/xy/PanZoom;->zoom:Lcom/androidplot/xy/PanZoom$Zoom;

    invoke-virtual {v9}, Lcom/androidplot/xy/PanZoom$Zoom;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 299
    :cond_2
    sget-object v8, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_HORIZONTAL:Lcom/androidplot/xy/PanZoom$Zoom;

    sget-object v9, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_BOTH:Lcom/androidplot/xy/PanZoom$Zoom;

    sget-object v10, Lcom/androidplot/xy/PanZoom$Zoom;->SCALE:Lcom/androidplot/xy/PanZoom$Zoom;

    invoke-static {v8, v9, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    iget-object v9, p0, Lcom/androidplot/xy/PanZoom;->zoom:Lcom/androidplot/xy/PanZoom$Zoom;

    .line 302
    invoke-virtual {v8, v9}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 303
    const/4 v8, 0x1

    invoke-virtual {p0, v1, v6, v8}, Lcom/androidplot/xy/PanZoom;->calculateZoom(Landroid/graphics/RectF;FZ)V

    .line 304
    iget-object v8, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    iget v9, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget v10, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    sget-object v11, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v8, v9, v10, v11}, Lcom/androidplot/xy/XYPlot;->setDomainBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 306
    :cond_3
    sget-object v8, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_VERTICAL:Lcom/androidplot/xy/PanZoom$Zoom;

    sget-object v9, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_BOTH:Lcom/androidplot/xy/PanZoom$Zoom;

    sget-object v10, Lcom/androidplot/xy/PanZoom$Zoom;->SCALE:Lcom/androidplot/xy/PanZoom$Zoom;

    invoke-static {v8, v9, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    iget-object v9, p0, Lcom/androidplot/xy/PanZoom;->zoom:Lcom/androidplot/xy/PanZoom$Zoom;

    .line 309
    invoke-virtual {v8, v9}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 310
    const/4 v8, 0x0

    invoke-virtual {p0, v1, v7, v8}, Lcom/androidplot/xy/PanZoom;->calculateZoom(Landroid/graphics/RectF;FZ)V

    .line 311
    iget-object v8, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    iget v9, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget v10, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    sget-object v11, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v8, v9, v10, v11}, Lcom/androidplot/xy/XYPlot;->setRangeBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 313
    :cond_4
    iget-object v8, p0, Lcom/androidplot/xy/PanZoom;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v8}, Lcom/androidplot/xy/XYPlot;->redraw()V

    goto/16 :goto_0

    .line 269
    :pswitch_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->getFingersRect()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float v6, v8, v9

    .line 270
    invoke-virtual {p0, v6}, Lcom/androidplot/xy/PanZoom;->isValidScale(F)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_0

    .line 275
    :pswitch_1
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->getFingersRect()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float v7, v8, v9

    .line 276
    invoke-virtual {p0, v7}, Lcom/androidplot/xy/PanZoom;->isValidScale(F)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_0

    .line 281
    :pswitch_2
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->getFingersRect()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float v6, v8, v9

    .line 282
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->getFingersRect()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float v7, v8, v9

    .line 283
    invoke-virtual {p0, v6}, Lcom/androidplot/xy/PanZoom;->isValidScale(F)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0, v7}, Lcom/androidplot/xy/PanZoom;->isValidScale(F)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_0

    .line 288
    :pswitch_3
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v10

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v4, v8

    .line 289
    .local v4, "sc1":F
    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->getFingersRect()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {p0}, Lcom/androidplot/xy/PanZoom;->getFingersRect()Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v5, v8

    .line 290
    .local v5, "sc2":F
    div-float v3, v4, v5

    .line 291
    .local v3, "sc":F
    move v6, v3

    .line 292
    move v7, v3

    .line 293
    invoke-virtual {p0, v6}, Lcom/androidplot/xy/PanZoom;->isValidScale(F)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0, v7}, Lcom/androidplot/xy/PanZoom;->isValidScale(F)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
