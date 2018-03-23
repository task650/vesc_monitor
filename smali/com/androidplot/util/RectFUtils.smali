.class public abstract Lcom/androidplot/util/RectFUtils;
.super Ljava/lang/Object;
.source "RectFUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyInsets(Landroid/graphics/RectF;Lcom/androidplot/ui/Insets;)Landroid/graphics/RectF;
    .locals 6
    .param p0, "rect"    # Landroid/graphics/RectF;
    .param p1, "insets"    # Lcom/androidplot/ui/Insets;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    .line 54
    invoke-virtual {p1}, Lcom/androidplot/ui/Insets;->getLeft()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/RectF;->top:F

    .line 55
    invoke-virtual {p1}, Lcom/androidplot/ui/Insets;->getTop()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Landroid/graphics/RectF;->right:F

    .line 56
    invoke-virtual {p1}, Lcom/androidplot/ui/Insets;->getRight()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    .line 57
    invoke-virtual {p1}, Lcom/androidplot/ui/Insets;->getBottom()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object p0, v0

    .line 59
    .end local p0    # "rect":Landroid/graphics/RectF;
    :cond_0
    return-object p0
.end method

.method public static areIdentical(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2
    .param p0, "r1"    # Landroid/graphics/RectF;
    .param p1, "r2"    # Landroid/graphics/RectF;

    .prologue
    .line 38
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
