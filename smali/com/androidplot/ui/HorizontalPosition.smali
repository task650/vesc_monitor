.class public Lcom/androidplot/ui/HorizontalPosition;
.super Lcom/androidplot/ui/PositionMetric;
.source "HorizontalPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/ui/PositionMetric",
        "<",
        "Lcom/androidplot/ui/HorizontalPositioning;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(FLcom/androidplot/ui/HorizontalPositioning;)V
    .locals 0
    .param p1, "value"    # F
    .param p2, "layoutStyle"    # Lcom/androidplot/ui/HorizontalPositioning;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/androidplot/ui/PositionMetric;-><init>(FLjava/lang/Enum;)V

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/ui/HorizontalPosition;->validatePair(FLcom/androidplot/ui/HorizontalPositioning;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getPixelValue(F)F
    .locals 3
    .param p1, "size"    # F

    .prologue
    .line 46
    sget-object v1, Lcom/androidplot/ui/HorizontalPosition$1;->$SwitchMap$com$androidplot$ui$HorizontalPositioning:[I

    invoke-virtual {p0}, Lcom/androidplot/ui/HorizontalPosition;->getLayoutType()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/HorizontalPositioning;

    invoke-virtual {v0}, Lcom/androidplot/ui/HorizontalPositioning;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported LayoutType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/androidplot/ui/HorizontalPosition;->getLayoutType()Ljava/lang/Enum;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :pswitch_0
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_BEGINING:Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/HorizontalPosition;->getAbsolutePosition(FLcom/androidplot/ui/PositionMetric$Origin;)F

    move-result v0

    .line 58
    :goto_0
    return v0

    .line 50
    :pswitch_1
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_END:Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/HorizontalPosition;->getAbsolutePosition(FLcom/androidplot/ui/PositionMetric$Origin;)F

    move-result v0

    goto :goto_0

    .line 52
    :pswitch_2
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_CENTER:Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/HorizontalPosition;->getAbsolutePosition(FLcom/androidplot/ui/PositionMetric$Origin;)F

    move-result v0

    goto :goto_0

    .line 54
    :pswitch_3
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_BEGINING:Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/HorizontalPosition;->getRelativePosition(FLcom/androidplot/ui/PositionMetric$Origin;)F

    move-result v0

    goto :goto_0

    .line 56
    :pswitch_4
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_END:Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/HorizontalPosition;->getRelativePosition(FLcom/androidplot/ui/PositionMetric$Origin;)F

    move-result v0

    goto :goto_0

    .line 58
    :pswitch_5
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_CENTER:Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/HorizontalPosition;->getRelativePosition(FLcom/androidplot/ui/PositionMetric$Origin;)F

    move-result v0

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setLayoutType(Lcom/androidplot/ui/HorizontalPositioning;)V
    .locals 0
    .param p1, "layoutType"    # Lcom/androidplot/ui/HorizontalPositioning;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/androidplot/ui/PositionMetric;->setLayoutType(Ljava/lang/Enum;)V

    .line 67
    return-void
.end method

.method public bridge synthetic setLayoutType(Ljava/lang/Enum;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/androidplot/ui/HorizontalPositioning;

    invoke-virtual {p0, p1}, Lcom/androidplot/ui/HorizontalPosition;->setLayoutType(Lcom/androidplot/ui/HorizontalPositioning;)V

    return-void
.end method

.method protected validatePair(FLcom/androidplot/ui/HorizontalPositioning;)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "layoutStyle"    # Lcom/androidplot/ui/HorizontalPositioning;

    .prologue
    .line 31
    sget-object v0, Lcom/androidplot/ui/HorizontalPosition$1;->$SwitchMap$com$androidplot$ui$HorizontalPositioning:[I

    invoke-virtual {p2}, Lcom/androidplot/ui/HorizontalPositioning;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 42
    :goto_0
    return-void

    .line 35
    :pswitch_0
    sget-object v0, Lcom/androidplot/ui/PositionMetric$LayoutMode;->ABSOLUTE:Lcom/androidplot/ui/PositionMetric$LayoutMode;

    invoke-static {p1, v0}, Lcom/androidplot/ui/HorizontalPosition;->validateValue(FLcom/androidplot/ui/PositionMetric$LayoutMode;)V

    goto :goto_0

    .line 40
    :pswitch_1
    sget-object v0, Lcom/androidplot/ui/PositionMetric$LayoutMode;->RELATIVE:Lcom/androidplot/ui/PositionMetric$LayoutMode;

    invoke-static {p1, v0}, Lcom/androidplot/ui/HorizontalPosition;->validateValue(FLcom/androidplot/ui/PositionMetric$LayoutMode;)V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic validatePair(FLjava/lang/Enum;)V
    .locals 0

    .prologue
    .line 19
    check-cast p2, Lcom/androidplot/ui/HorizontalPositioning;

    invoke-virtual {p0, p1, p2}, Lcom/androidplot/ui/HorizontalPosition;->validatePair(FLcom/androidplot/ui/HorizontalPositioning;)V

    return-void
.end method
