.class public Lcom/androidplot/xy/RectRegion;
.super Ljava/lang/Object;
.source "RectRegion.java"


# instance fields
.field private label:Ljava/lang/String;

.field xRegion:Lcom/androidplot/Region;

.field yRegion:Lcom/androidplot/Region;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0}, Lcom/androidplot/Region;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    .line 39
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0}, Lcom/androidplot/Region;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 70
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 71
    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 72
    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 73
    :goto_3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 70
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/androidplot/xy/RectRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    .line 74
    return-void

    .line 70
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_1

    .line 71
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    .line 72
    :cond_3
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_3
.end method

.method public constructor <init>(Lcom/androidplot/xy/XYCoords;Lcom/androidplot/xy/XYCoords;)V
    .locals 4
    .param p1, "min"    # Lcom/androidplot/xy/XYCoords;
    .param p2, "max"    # Lcom/androidplot/xy/XYCoords;

    .prologue
    .line 54
    iget-object v0, p1, Lcom/androidplot/xy/XYCoords;->x:Ljava/lang/Number;

    iget-object v1, p2, Lcom/androidplot/xy/XYCoords;->x:Ljava/lang/Number;

    iget-object v2, p1, Lcom/androidplot/xy/XYCoords;->y:Ljava/lang/Number;

    iget-object v3, p2, Lcom/androidplot/xy/XYCoords;->y:Ljava/lang/Number;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/androidplot/xy/RectRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 6
    .param p1, "minX"    # Ljava/lang/Number;
    .param p2, "maxX"    # Ljava/lang/Number;
    .param p3, "minY"    # Ljava/lang/Number;
    .param p4, "maxY"    # Ljava/lang/Number;

    .prologue
    .line 78
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/androidplot/xy/RectRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)V
    .locals 1
    .param p1, "minX"    # Ljava/lang/Number;
    .param p2, "maxX"    # Ljava/lang/Number;
    .param p3, "minY"    # Ljava/lang/Number;
    .param p4, "maxY"    # Ljava/lang/Number;
    .param p5, "label"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0, p1, p2}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    iput-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    .line 65
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0, p3, p4}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    iput-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    .line 66
    invoke-virtual {p0, p5}, Lcom/androidplot/xy/RectRegion;->setLabel(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private distanceBetween(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p1, "x"    # Ljava/lang/Number;
    .param p2, "y"    # Ljava/lang/Number;

    .prologue
    .line 248
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static withDefaults(Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/RectRegion;
    .locals 3
    .param p0, "defaults"    # Lcom/androidplot/xy/RectRegion;

    .prologue
    .line 43
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->isFullyDefined()Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "When specifying defaults, RectRegion param must contain no null values."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_1
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    invoke-direct {v0}, Lcom/androidplot/xy/RectRegion;-><init>()V

    .line 48
    .local v0, "r":Lcom/androidplot/xy/RectRegion;
    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v1

    invoke-static {v1}, Lcom/androidplot/Region;->withDefaults(Lcom/androidplot/Region;)Lcom/androidplot/Region;

    move-result-object v1

    iput-object v1, v0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    .line 49
    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getyRegion()Lcom/androidplot/Region;

    move-result-object v1

    invoke-static {v1}, Lcom/androidplot/Region;->withDefaults(Lcom/androidplot/Region;)Lcom/androidplot/Region;

    move-result-object v1

    iput-object v1, v0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    .line 50
    return-object v0
.end method


# virtual methods
.method public asRectF()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 191
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 192
    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 191
    return-object v0
.end method

.method public contains(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Number;
    .param p2, "y"    # Ljava/lang/Number;

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/Region;->contains(Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getyRegion()Lcom/androidplot/Region;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/androidplot/Region;->contains(Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/androidplot/xy/RectRegion;->distanceBetween(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxX()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getMaxY()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getMinX()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getMinY()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/androidplot/xy/RectRegion;->distanceBetween(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getxRegion()Lcom/androidplot/Region;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    return-object v0
.end method

.method public getyRegion()Lcom/androidplot/Region;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    return-object v0
.end method

.method public intersect(Lcom/androidplot/xy/RectRegion;)V
    .locals 2
    .param p1, "clippingBounds"    # Lcom/androidplot/xy/RectRegion;

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/RectRegion;->intersects(Lcom/androidplot/xy/RectRegion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    iget-object v1, p1, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, v1}, Lcom/androidplot/Region;->intersect(Lcom/androidplot/Region;)V

    .line 202
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    iget-object v1, p1, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, v1}, Lcom/androidplot/Region;->intersect(Lcom/androidplot/Region;)V

    .line 209
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0, v1}, Lcom/androidplot/xy/RectRegion;->setMinY(Ljava/lang/Number;)V

    .line 205
    invoke-virtual {p0, v1}, Lcom/androidplot/xy/RectRegion;->setMaxY(Ljava/lang/Number;)V

    .line 206
    invoke-virtual {p0, v1}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    .line 207
    invoke-virtual {p0, v1}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    goto :goto_0
.end method

.method public intersects(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/xy/RectRegion;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/xy/RectRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/xy/RectRegion;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v0, "intersectingRegions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/androidplot/xy/RectRegion;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/RectRegion;

    .line 220
    .local v1, "r":Lcom/androidplot/xy/RectRegion;
    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/androidplot/xy/RectRegion;->intersects(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    .end local v1    # "r":Lcom/androidplot/xy/RectRegion;
    :cond_1
    return-object v0
.end method

.method public intersects(Lcom/androidplot/xy/RectRegion;)Z
    .locals 4
    .param p1, "region"    # Lcom/androidplot/xy/RectRegion;

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/androidplot/xy/RectRegion;->intersects(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public intersects(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 1
    .param p1, "minX"    # Ljava/lang/Number;
    .param p2, "maxX"    # Ljava/lang/Number;
    .param p3, "minY"    # Ljava/lang/Number;
    .param p4, "maxY"    # Ljava/lang/Number;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/Region;->intersects(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, p3, p4}, Lcom/androidplot/Region;->intersects(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public intersectsWithLine(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 20
    .param p1, "x1"    # Ljava/lang/Number;
    .param p2, "y1"    # Ljava/lang/Number;
    .param p3, "x2"    # Ljava/lang/Number;
    .param p4, "y2"    # Ljava/lang/Number;

    .prologue
    .line 359
    invoke-virtual/range {p0 .. p2}, Lcom/androidplot/xy/RectRegion;->contains(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v16

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/androidplot/xy/RectRegion;->contains(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 360
    :cond_0
    const/16 v16, 0x1

    .line 380
    :goto_0
    return v16

    .line 364
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    cmpg-double v16, v16, v18

    if-gez v16, :cond_3

    const/4 v5, 0x1

    .line 365
    .local v5, "x1MinRelation":Z
    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    cmpg-double v16, v16, v18

    if-gez v16, :cond_4

    const/4 v7, 0x1

    .line 366
    .local v7, "x2MinRelation":Z
    :goto_2
    if-nez v7, :cond_5

    const/16 v16, 0x1

    :goto_3
    and-int v9, v5, v16

    .line 368
    .local v9, "xMinRelation":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    cmpg-double v16, v16, v18

    if-gez v16, :cond_6

    const/4 v4, 0x1

    .line 369
    .local v4, "x1MaxRelation":Z
    :goto_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    cmpg-double v16, v16, v18

    if-gez v16, :cond_7

    const/4 v6, 0x1

    .line 370
    .local v6, "x2MaxRelation":Z
    :goto_5
    if-nez v6, :cond_8

    const/16 v16, 0x1

    :goto_6
    and-int v8, v4, v16

    .line 372
    .local v8, "xMaxRelation":Z
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    cmpg-double v16, v16, v18

    if-gez v16, :cond_9

    const/4 v11, 0x1

    .line 373
    .local v11, "y1MinRelation":Z
    :goto_7
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    cmpg-double v16, v16, v18

    if-gez v16, :cond_a

    const/4 v13, 0x1

    .line 374
    .local v13, "y2MinRelation":Z
    :goto_8
    if-nez v13, :cond_b

    const/16 v16, 0x1

    :goto_9
    and-int v15, v11, v16

    .line 376
    .local v15, "yMinRelation":Z
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    cmpg-double v16, v16, v18

    if-gez v16, :cond_c

    const/4 v10, 0x1

    .line 377
    .local v10, "y1MaxRelation":Z
    :goto_a
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    cmpg-double v16, v16, v18

    if-gez v16, :cond_d

    const/4 v12, 0x1

    .line 378
    .local v12, "y2MaxRelation":Z
    :goto_b
    if-nez v12, :cond_e

    const/16 v16, 0x1

    :goto_c
    and-int v14, v10, v16

    .line 380
    .local v14, "yMaxRelation":Z
    or-int v16, v9, v8

    if-nez v16, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/androidplot/Region;->contains(Ljava/lang/Number;)Z

    move-result v16

    or-int v17, v15, v14

    and-int v16, v16, v17

    if-nez v16, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/RectRegion;->getyRegion()Lcom/androidplot/Region;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/androidplot/Region;->contains(Ljava/lang/Number;)Z

    move-result v16

    if-eqz v16, :cond_f

    :cond_2
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 364
    .end local v4    # "x1MaxRelation":Z
    .end local v5    # "x1MinRelation":Z
    .end local v6    # "x2MaxRelation":Z
    .end local v7    # "x2MinRelation":Z
    .end local v8    # "xMaxRelation":Z
    .end local v9    # "xMinRelation":Z
    .end local v10    # "y1MaxRelation":Z
    .end local v11    # "y1MinRelation":Z
    .end local v12    # "y2MaxRelation":Z
    .end local v13    # "y2MinRelation":Z
    .end local v14    # "yMaxRelation":Z
    .end local v15    # "yMinRelation":Z
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 365
    .restart local v5    # "x1MinRelation":Z
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 366
    .restart local v7    # "x2MinRelation":Z
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 368
    .restart local v9    # "xMinRelation":Z
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 369
    .restart local v4    # "x1MaxRelation":Z
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 370
    .restart local v6    # "x2MaxRelation":Z
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 372
    .restart local v8    # "xMaxRelation":Z
    :cond_9
    const/4 v11, 0x0

    goto :goto_7

    .line 373
    .restart local v11    # "y1MinRelation":Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_8

    .line 374
    .restart local v13    # "y2MinRelation":Z
    :cond_b
    const/16 v16, 0x0

    goto :goto_9

    .line 376
    .restart local v15    # "yMinRelation":Z
    :cond_c
    const/4 v10, 0x0

    goto :goto_a

    .line 377
    .restart local v10    # "y1MaxRelation":Z
    :cond_d
    const/4 v12, 0x0

    goto :goto_b

    .line 378
    .restart local v12    # "y2MaxRelation":Z
    :cond_e
    const/16 v16, 0x0

    goto :goto_c

    .line 380
    .restart local v14    # "yMaxRelation":Z
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method public isFullyDefined()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->isDefined()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->isDefined()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMaxXSet()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->isMaxSet()Z

    move-result v0

    return v0
.end method

.method public isMaxYSet()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->isMaxSet()Z

    move-result v0

    return v0
.end method

.method public isMinXSet()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->isMinSet()Z

    move-result v0

    return v0
.end method

.method public isMinYSet()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->isMinSet()Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 0
    .param p1, "minX"    # Ljava/lang/Number;
    .param p2, "maxX"    # Ljava/lang/Number;
    .param p3, "minY"    # Ljava/lang/Number;
    .param p4, "maxY"    # Ljava/lang/Number;

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    .line 253
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    .line 254
    invoke-virtual {p0, p3}, Lcom/androidplot/xy/RectRegion;->setMinY(Ljava/lang/Number;)V

    .line 255
    invoke-virtual {p0, p4}, Lcom/androidplot/xy/RectRegion;->setMaxY(Ljava/lang/Number;)V

    .line 256
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/androidplot/xy/RectRegion;->label:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setMaxX(Ljava/lang/Number;)V
    .locals 1
    .param p1, "maxX"    # Ljava/lang/Number;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, p1}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 280
    return-void
.end method

.method public setMaxY(Ljava/lang/Number;)V
    .locals 1
    .param p1, "maxY"    # Ljava/lang/Number;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, p1}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 304
    return-void
.end method

.method public setMinX(Ljava/lang/Number;)V
    .locals 1
    .param p1, "minX"    # Ljava/lang/Number;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, p1}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 268
    return-void
.end method

.method public setMinY(Ljava/lang/Number;)V
    .locals 1
    .param p1, "minY"    # Ljava/lang/Number;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, p1}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 292
    return-void
.end method

.method public setxRegion(Lcom/androidplot/Region;)V
    .locals 0
    .param p1, "xRegion"    # Lcom/androidplot/Region;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    .line 320
    return-void
.end method

.method public setyRegion(Lcom/androidplot/Region;)V
    .locals 0
    .param p1, "yRegion"    # Lcom/androidplot/Region;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    .line 328
    return-void
.end method

.method public transform(Lcom/androidplot/xy/XYCoords;Landroid/graphics/RectF;ZZ)Landroid/graphics/PointF;
    .locals 6
    .param p1, "value"    # Lcom/androidplot/xy/XYCoords;
    .param p2, "region2"    # Landroid/graphics/RectF;
    .param p3, "flipX"    # Z
    .param p4, "flipY"    # Z

    .prologue
    .line 150
    iget-object v1, p1, Lcom/androidplot/xy/XYCoords;->x:Ljava/lang/Number;

    iget-object v2, p1, Lcom/androidplot/xy/XYCoords;->y:Ljava/lang/Number;

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/RectRegion;->transform(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;ZZ)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public transform(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;ZZ)Landroid/graphics/PointF;
    .locals 7
    .param p1, "x"    # Ljava/lang/Number;
    .param p2, "y"    # Ljava/lang/Number;
    .param p3, "region2"    # Landroid/graphics/RectF;
    .param p4, "flipX"    # Z
    .param p5, "flipY"    # Z

    .prologue
    .line 131
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .local v1, "result":Landroid/graphics/PointF;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 132
    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/RectRegion;->transform(Landroid/graphics/PointF;Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;ZZ)V

    .line 133
    return-object v1
.end method

.method public transform(Lcom/androidplot/xy/RectRegion;Lcom/androidplot/xy/RectRegion;ZZ)Lcom/androidplot/xy/RectRegion;
    .locals 8
    .param p1, "r"    # Lcom/androidplot/xy/RectRegion;
    .param p2, "r2"    # Lcom/androidplot/xy/RectRegion;
    .param p3, "flipX"    # Z
    .param p4, "flipY"    # Z

    .prologue
    .line 102
    new-instance v6, Lcom/androidplot/xy/RectRegion;

    .line 103
    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/RectRegion;->transform(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/RectRegion;ZZ)Lcom/androidplot/xy/XYCoords;

    move-result-object v7

    .line 104
    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/RectRegion;->transform(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/RectRegion;ZZ)Lcom/androidplot/xy/XYCoords;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lcom/androidplot/xy/RectRegion;-><init>(Lcom/androidplot/xy/XYCoords;Lcom/androidplot/xy/XYCoords;)V

    .line 102
    return-object v6
.end method

.method public transform(Lcom/androidplot/xy/XYCoords;Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/XYCoords;
    .locals 2
    .param p1, "value"    # Lcom/androidplot/xy/XYCoords;
    .param p2, "region2"    # Lcom/androidplot/xy/RectRegion;

    .prologue
    .line 92
    iget-object v0, p1, Lcom/androidplot/xy/XYCoords;->x:Ljava/lang/Number;

    iget-object v1, p1, Lcom/androidplot/xy/XYCoords;->y:Ljava/lang/Number;

    invoke-virtual {p0, v0, v1, p2}, Lcom/androidplot/xy/RectRegion;->transform(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/XYCoords;

    move-result-object v0

    return-object v0
.end method

.method public transform(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/XYCoords;
    .locals 6
    .param p1, "x"    # Ljava/lang/Number;
    .param p2, "y"    # Ljava/lang/Number;
    .param p3, "region2"    # Lcom/androidplot/xy/RectRegion;

    .prologue
    const/4 v4, 0x0

    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/RectRegion;->transform(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/RectRegion;ZZ)Lcom/androidplot/xy/XYCoords;

    move-result-object v0

    return-object v0
.end method

.method public transform(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/RectRegion;ZZ)Lcom/androidplot/xy/XYCoords;
    .locals 6
    .param p1, "x"    # Ljava/lang/Number;
    .param p2, "y"    # Ljava/lang/Number;
    .param p3, "region2"    # Lcom/androidplot/xy/RectRegion;
    .param p4, "flipX"    # Z
    .param p5, "flipY"    # Z

    .prologue
    .line 82
    iget-object v2, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object v3, p3, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v2, v4, v5, v3, p4}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;Z)Ljava/lang/Number;

    move-result-object v0

    .line 83
    .local v0, "xx":Ljava/lang/Number;
    iget-object v2, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object v3, p3, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v2, v4, v5, v3, p5}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;Z)Ljava/lang/Number;

    move-result-object v1

    .line 84
    .local v1, "yy":Ljava/lang/Number;
    new-instance v2, Lcom/androidplot/xy/XYCoords;

    invoke-direct {v2, v0, v1}, Lcom/androidplot/xy/XYCoords;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    return-object v2
.end method

.method public transform(Landroid/graphics/PointF;Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;ZZ)V
    .locals 9
    .param p1, "result"    # Landroid/graphics/PointF;
    .param p2, "x"    # Ljava/lang/Number;
    .param p3, "y"    # Ljava/lang/Number;
    .param p4, "region2"    # Landroid/graphics/RectF;
    .param p5, "flipX"    # Z
    .param p6, "flipY"    # Z

    .prologue
    .line 126
    iget-object v1, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget v0, p4, Landroid/graphics/RectF;->left:F

    float-to-double v4, v0

    iget v0, p4, Landroid/graphics/RectF;->right:F

    float-to-double v6, v0

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 127
    iget-object v1, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget v0, p4, Landroid/graphics/RectF;->top:F

    float-to-double v4, v0

    iget v0, p4, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v0

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 128
    return-void
.end method

.method public transformScreen(Lcom/androidplot/xy/XYCoords;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 2
    .param p1, "value"    # Lcom/androidplot/xy/XYCoords;
    .param p2, "region2"    # Landroid/graphics/RectF;

    .prologue
    .line 137
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/androidplot/xy/RectRegion;->transform(Lcom/androidplot/xy/XYCoords;Landroid/graphics/RectF;ZZ)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public transformScreen(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 6
    .param p1, "x"    # Ljava/lang/Number;
    .param p2, "y"    # Ljava/lang/Number;
    .param p3, "region2"    # Landroid/graphics/RectF;

    .prologue
    .line 118
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/RectRegion;->transform(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;ZZ)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public transformScreen(Landroid/graphics/PointF;Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;)V
    .locals 7
    .param p1, "result"    # Landroid/graphics/PointF;
    .param p2, "x"    # Ljava/lang/Number;
    .param p3, "y"    # Ljava/lang/Number;
    .param p4, "region2"    # Landroid/graphics/RectF;

    .prologue
    .line 122
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/RectRegion;->transform(Landroid/graphics/PointF;Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;ZZ)V

    .line 123
    return-void
.end method

.method public union(Lcom/androidplot/xy/RectRegion;)V
    .locals 2
    .param p1, "input"    # Lcom/androidplot/xy/RectRegion;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    iget-object v1, p1, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, v1}, Lcom/androidplot/Region;->union(Lcom/androidplot/Region;)V

    .line 168
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    iget-object v1, p1, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, v1}, Lcom/androidplot/Region;->union(Lcom/androidplot/Region;)V

    .line 169
    return-void
.end method

.method public union(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 1
    .param p1, "x"    # Ljava/lang/Number;
    .param p2, "y"    # Ljava/lang/Number;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, p1}, Lcom/androidplot/Region;->union(Ljava/lang/Number;)V

    .line 155
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, p2}, Lcom/androidplot/Region;->union(Ljava/lang/Number;)V

    .line 156
    return-void
.end method
