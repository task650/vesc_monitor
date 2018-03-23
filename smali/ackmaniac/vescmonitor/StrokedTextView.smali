.class public Lackmaniac/vescmonitor/StrokedTextView;
.super Landroid/widget/TextView;
.source "StrokedTextView.java"


# static fields
.field private static final DEFAULT_STROKE_WIDTH:F = 0.2f


# instance fields
.field private _strokeColor:I

.field private _strokeWidth:F

.field private isDrawing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lackmaniac/vescmonitor/StrokedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lackmaniac/vescmonitor/StrokedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lackmaniac/vescmonitor/StrokedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lackmaniac/vescmonitor/StrokedTextView;->_strokeColor:I

    .line 64
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lackmaniac/vescmonitor/StrokedTextView;->_strokeWidth:F

    .line 65
    iget v0, p0, Lackmaniac/vescmonitor/StrokedTextView;->_strokeWidth:F

    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/StrokedTextView;->setStrokeWidth(F)V

    .line 66
    return-void
.end method

.method private spToPx(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sp"    # F

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 90
    .local v0, "scale":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lackmaniac/vescmonitor/StrokedTextView;->isDrawing:Z

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 101
    iget v2, p0, Lackmaniac/vescmonitor/StrokedTextView;->_strokeWidth:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 102
    const/4 v2, 0x1

    iput-boolean v2, p0, Lackmaniac/vescmonitor/StrokedTextView;->isDrawing:Z

    .line 104
    invoke-virtual {p0}, Lackmaniac/vescmonitor/StrokedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 105
    .local v1, "p":Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 109
    invoke-virtual {p0}, Lackmaniac/vescmonitor/StrokedTextView;->getCurrentTextColor()I

    move-result v0

    .line 112
    .local v0, "currentTextColor":I
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    iget v2, p0, Lackmaniac/vescmonitor/StrokedTextView;->_strokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 114
    iget v2, p0, Lackmaniac/vescmonitor/StrokedTextView;->_strokeColor:I

    invoke-virtual {p0, v2}, Lackmaniac/vescmonitor/StrokedTextView;->setTextColor(I)V

    .line 116
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual {p0, v0}, Lackmaniac/vescmonitor/StrokedTextView;->setTextColor(I)V

    .line 120
    const/4 v2, 0x0

    iput-boolean v2, p0, Lackmaniac/vescmonitor/StrokedTextView;->isDrawing:Z

    .line 124
    .end local v0    # "currentTextColor":I
    .end local v1    # "p":Landroid/graphics/Paint;
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setStrokeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 78
    iput p1, p0, Lackmaniac/vescmonitor/StrokedTextView;->_strokeColor:I

    .line 79
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 85
    invoke-virtual {p0}, Lackmaniac/vescmonitor/StrokedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lackmaniac/vescmonitor/StrokedTextView;->spToPx(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lackmaniac/vescmonitor/StrokedTextView;->_strokeWidth:F

    .line 86
    return-void
.end method

.method public setStrokeWidth(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "width"    # F

    .prologue
    .line 94
    .line 95
    invoke-virtual {p0}, Lackmaniac/vescmonitor/StrokedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 94
    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lackmaniac/vescmonitor/StrokedTextView;->_strokeWidth:F

    .line 96
    return-void
.end method
