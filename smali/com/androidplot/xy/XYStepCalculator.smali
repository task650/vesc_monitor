.class public Lcom/androidplot/xy/XYStepCalculator;
.super Ljava/lang/Object;
.source "XYStepCalculator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStep(Lcom/androidplot/xy/StepMode;DLcom/androidplot/Region;Lcom/androidplot/Region;)Lcom/androidplot/xy/Step;
    .locals 11
    .param p0, "typeXY"    # Lcom/androidplot/xy/StepMode;
    .param p1, "stepValue"    # D
    .param p3, "realBounds"    # Lcom/androidplot/Region;
    .param p4, "pixelBounds"    # Lcom/androidplot/Region;

    .prologue
    .line 57
    const-wide/16 v6, 0x0

    .line 58
    .local v6, "stepVal":D
    const-wide/16 v4, 0x0

    .line 59
    .local v4, "stepPix":D
    const-wide/16 v2, 0x0

    .line 60
    .local v2, "stepCount":D
    sget-object v0, Lcom/androidplot/xy/XYStepCalculator$1;->$SwitchMap$com$androidplot$xy$StepMode:[I

    invoke-virtual {p0}, Lcom/androidplot/xy/StepMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    new-instance v1, Lcom/androidplot/xy/Step;

    invoke-direct/range {v1 .. v7}, Lcom/androidplot/xy/Step;-><init>(DDD)V

    return-object v1

    .line 62
    :pswitch_0
    move-wide v6, p1

    .line 63
    invoke-virtual {p3, p4}, Lcom/androidplot/Region;->ratio(Lcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    div-double v4, p1, v0

    .line 64
    invoke-virtual {p4}, Lcom/androidplot/Region;->length()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    div-double v2, v0, v4

    .line 65
    goto :goto_0

    .line 67
    :pswitch_1
    move-wide v4, p1

    .line 68
    invoke-virtual {p3, p4}, Lcom/androidplot/Region;->ratio(Lcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    mul-double v6, v0, v4

    .line 69
    invoke-virtual {p4}, Lcom/androidplot/Region;->length()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    div-double v2, v0, v4

    .line 70
    goto :goto_0

    .line 72
    :pswitch_2
    move-wide v2, p1

    .line 73
    invoke-virtual {p4}, Lcom/androidplot/Region;->length()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v8, v2, v8

    div-double v4, v0, v8

    .line 74
    invoke-virtual {p3, p4}, Lcom/androidplot/Region;->ratio(Lcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    mul-double v6, v0, v4

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getStep(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/Axis;Landroid/graphics/RectF;)Lcom/androidplot/xy/Step;
    .locals 8
    .param p0, "plot"    # Lcom/androidplot/xy/XYPlot;
    .param p1, "axisType"    # Lcom/androidplot/xy/Axis;
    .param p2, "pixRect"    # Landroid/graphics/RectF;

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "step":Lcom/androidplot/xy/Step;
    sget-object v1, Lcom/androidplot/xy/XYStepCalculator$1;->$SwitchMap$com$androidplot$xy$Axis:[I

    invoke-virtual {p1}, Lcom/androidplot/xy/Axis;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 53
    :goto_0
    return-object v0

    .line 41
    :pswitch_0
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainStepMode()Lcom/androidplot/xy/StepMode;

    move-result-object v1

    .line 42
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainStepValue()D

    move-result-wide v2

    .line 43
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v4

    new-instance v5, Lcom/androidplot/Region;

    iget v6, p2, Landroid/graphics/RectF;->left:F

    .line 44
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v7, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 41
    invoke-static {v1, v2, v3, v4, v5}, Lcom/androidplot/xy/XYStepCalculator;->getStep(Lcom/androidplot/xy/StepMode;DLcom/androidplot/Region;Lcom/androidplot/Region;)Lcom/androidplot/xy/Step;

    move-result-object v0

    .line 45
    goto :goto_0

    .line 47
    :pswitch_1
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeStepMode()Lcom/androidplot/xy/StepMode;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeStepValue()D

    move-result-wide v2

    .line 49
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/androidplot/xy/RectRegion;->getyRegion()Lcom/androidplot/Region;

    move-result-object v4

    new-instance v5, Lcom/androidplot/Region;

    iget v6, p2, Landroid/graphics/RectF;->top:F

    .line 50
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v7, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 47
    invoke-static {v1, v2, v3, v4, v5}, Lcom/androidplot/xy/XYStepCalculator;->getStep(Lcom/androidplot/xy/StepMode;DLcom/androidplot/Region;Lcom/androidplot/Region;)Lcom/androidplot/xy/Step;

    move-result-object v0

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
