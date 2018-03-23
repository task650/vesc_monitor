.class public Lcom/androidplot/util/FontUtils;
.super Ljava/lang/Object;
.source "FontUtils.java"


# static fields
.field private static final ZERO:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawTextVerticallyCentered(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 76
    .local v0, "textBounds":Landroid/graphics/Rect;
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p4, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 77
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    sub-float v1, p3, v1

    invoke-virtual {p0, p1, p2, v1, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 78
    return-void
.end method

.method public static getFontHeight(Landroid/graphics/Paint;)F
    .locals 3
    .param p0, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 32
    .local v0, "metrics":Landroid/graphics/Paint$FontMetrics;
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v1, v2

    return v1
.end method

.method public static getPackedStringDimensions(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .local v0, "size":Landroid/graphics/Rect;
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, p0, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 45
    return-object v0
.end method

.method public static getStringDimensions(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 58
    .local v0, "size":Landroid/graphics/Rect;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 63
    .end local v0    # "size":Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .line 61
    .restart local v0    # "size":Landroid/graphics/Rect;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, p0, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 62
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p1}, Lcom/androidplot/util/FontUtils;->getFontHeight(Landroid/graphics/Paint;)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method
