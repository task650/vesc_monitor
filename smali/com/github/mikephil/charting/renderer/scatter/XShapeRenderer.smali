.class public Lcom/github/mikephil/charting/renderer/scatter/XShapeRenderer;
.super Ljava/lang/Object;
.source "XShapeRenderer.java"

# interfaces
.implements Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public renderShape(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p4, "posX"    # F
    .param p5, "posY"    # F
    .param p6, "renderPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 22
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    .line 24
    .local v6, "shapeHalf":F
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 27
    sub-float v1, p4, v6

    sub-float v2, p5, v6

    add-float v3, p4, v6

    add-float v4, p5, v6

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 33
    add-float v1, p4, v6

    sub-float v2, p5, v6

    sub-float v3, p4, v6

    add-float v4, p5, v6

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 40
    return-void
.end method
