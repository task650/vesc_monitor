.class public Lcom/androidplot/xy/PointLabelFormatter;
.super Ljava/lang/Object;
.source "PointLabelFormatter.java"


# static fields
.field private static final DEFAULT_H_OFFSET_DP:F = 0.0f

.field private static final DEFAULT_TEXT_SIZE_SP:F = 12.0f

.field private static final DEFAULT_V_OFFSET_DP:F = -4.0f


# instance fields
.field public hOffset:F

.field private textPaint:Landroid/graphics/Paint;

.field public vOffset:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/androidplot/xy/PointLabelFormatter;-><init>(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "textColor"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    const/high16 v1, -0x3f800000    # -4.0f

    .line 37
    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    .line 36
    invoke-direct {p0, p1, v0, v1}, Lcom/androidplot/xy/PointLabelFormatter;-><init>(IFF)V

    .line 38
    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 1
    .param p1, "textColor"    # I
    .param p2, "hOffset"    # F
    .param p3, "vOffset"    # F

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/PointLabelFormatter;->initTextPaint(Ljava/lang/Integer;)V

    .line 49
    iput p2, p0, Lcom/androidplot/xy/PointLabelFormatter;->hOffset:F

    .line 50
    iput p3, p0, Lcom/androidplot/xy/PointLabelFormatter;->vOffset:F

    .line 51
    return-void
.end method


# virtual methods
.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/androidplot/xy/PointLabelFormatter;->textPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/PointLabelFormatter;->initTextPaint(Ljava/lang/Integer;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/PointLabelFormatter;->textPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public hasTextPaint()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/androidplot/xy/PointLabelFormatter;->textPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initTextPaint(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "textColor"    # Ljava/lang/Integer;

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/PointLabelFormatter;->setTextPaint(Landroid/graphics/Paint;)V

    .line 79
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/PointLabelFormatter;->setTextPaint(Landroid/graphics/Paint;)V

    .line 73
    invoke-virtual {p0}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    invoke-virtual {p0}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 76
    invoke-virtual {p0}, Lcom/androidplot/xy/PointLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->spToPix(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "textPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/androidplot/xy/PointLabelFormatter;->textPaint:Landroid/graphics/Paint;

    .line 66
    return-void
.end method
