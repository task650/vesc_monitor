.class public Lcom/androidplot/ui/SizeMetric;
.super Lcom/androidplot/ui/LayoutMetric;
.source "SizeMetric.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/ui/LayoutMetric",
        "<",
        "Lcom/androidplot/ui/SizeMode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(FLcom/androidplot/ui/SizeMode;)V
    .locals 0
    .param p1, "value"    # F
    .param p2, "layoutType"    # Lcom/androidplot/ui/SizeMode;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/androidplot/ui/LayoutMetric;-><init>(FLjava/lang/Enum;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getPixelValue(F)F
    .locals 3
    .param p1, "size"    # F

    .prologue
    .line 47
    sget-object v1, Lcom/androidplot/ui/SizeMetric$1;->$SwitchMap$com$androidplot$ui$SizeMode:[I

    invoke-virtual {p0}, Lcom/androidplot/ui/SizeMetric;->getLayoutType()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SizeMode;

    invoke-virtual {v0}, Lcom/androidplot/ui/SizeMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported LayoutType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/androidplot/ui/SizeMetric;->getLayoutType()Ljava/lang/Enum;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :pswitch_0
    invoke-virtual {p0}, Lcom/androidplot/ui/SizeMetric;->getValue()F

    move-result v0

    .line 53
    :goto_0
    return v0

    .line 51
    :pswitch_1
    invoke-virtual {p0}, Lcom/androidplot/ui/SizeMetric;->getValue()F

    move-result v0

    mul-float/2addr v0, p1

    goto :goto_0

    .line 53
    :pswitch_2
    invoke-virtual {p0}, Lcom/androidplot/ui/SizeMetric;->getValue()F

    move-result v0

    sub-float v0, p1, v0

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic getValue()F
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/androidplot/ui/LayoutMetric;->getValue()F

    move-result v0

    return v0
.end method

.method public setLayoutType(Lcom/androidplot/ui/SizeMode;)V
    .locals 0
    .param p1, "layoutType"    # Lcom/androidplot/ui/SizeMode;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/androidplot/ui/LayoutMetric;->setLayoutType(Ljava/lang/Enum;)V

    .line 62
    return-void
.end method

.method public bridge synthetic setLayoutType(Ljava/lang/Enum;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/androidplot/ui/SizeMode;

    invoke-virtual {p0, p1}, Lcom/androidplot/ui/SizeMetric;->setLayoutType(Lcom/androidplot/ui/SizeMode;)V

    return-void
.end method

.method public bridge synthetic setValue(F)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/androidplot/ui/LayoutMetric;->setValue(F)V

    return-void
.end method

.method protected validatePair(FLcom/androidplot/ui/SizeMode;)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "layoutType"    # Lcom/androidplot/ui/SizeMode;

    .prologue
    .line 32
    sget-object v0, Lcom/androidplot/ui/SizeMetric$1;->$SwitchMap$com$androidplot$ui$SizeMode:[I

    invoke-virtual {p2}, Lcom/androidplot/ui/SizeMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 42
    :cond_0
    return-void

    .line 34
    :pswitch_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SizeMetric Relative and Hybrid layout values must be within the range of 0 to 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic validatePair(FLjava/lang/Enum;)V
    .locals 0

    .prologue
    .line 25
    check-cast p2, Lcom/androidplot/ui/SizeMode;

    invoke-virtual {p0, p1, p2}, Lcom/androidplot/ui/SizeMetric;->validatePair(FLcom/androidplot/ui/SizeMode;)V

    return-void
.end method
