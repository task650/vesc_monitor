.class public Lcom/androidplot/xy/XYConstraints;
.super Ljava/lang/Object;
.source "XYConstraints.java"


# instance fields
.field private domainFramingModel:Lcom/androidplot/xy/XYFramingModel;

.field private domainLowerBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

.field private domainUpperBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

.field private maxX:Ljava/lang/Number;

.field private maxY:Ljava/lang/Number;

.field private minX:Ljava/lang/Number;

.field private minY:Ljava/lang/Number;

.field private rangeFramingModel:Lcom/androidplot/xy/XYFramingModel;

.field private rangeLowerBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

.field private rangeUpperBoundaryMode:Lcom/androidplot/xy/BoundaryMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/androidplot/xy/XYConstraints;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 1
    .param p1, "minX"    # Ljava/lang/Number;
    .param p2, "maxX"    # Ljava/lang/Number;
    .param p3, "minY"    # Ljava/lang/Number;
    .param p4, "maxY"    # Ljava/lang/Number;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    iput-object v0, p0, Lcom/androidplot/xy/XYConstraints;->domainFramingModel:Lcom/androidplot/xy/XYFramingModel;

    .line 30
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    iput-object v0, p0, Lcom/androidplot/xy/XYConstraints;->rangeFramingModel:Lcom/androidplot/xy/XYFramingModel;

    .line 33
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYConstraints;->domainUpperBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    .line 34
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYConstraints;->domainLowerBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    .line 35
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYConstraints;->rangeUpperBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    .line 36
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYConstraints;->rangeLowerBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    .line 48
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->minX:Ljava/lang/Number;

    .line 49
    iput-object p3, p0, Lcom/androidplot/xy/XYConstraints;->minY:Ljava/lang/Number;

    .line 50
    iput-object p2, p0, Lcom/androidplot/xy/XYConstraints;->maxX:Ljava/lang/Number;

    .line 51
    iput-object p4, p0, Lcom/androidplot/xy/XYConstraints;->maxY:Ljava/lang/Number;

    .line 52
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 8
    .param p1, "x"    # Ljava/lang/Number;
    .param p2, "y"    # Ljava/lang/Number;

    .prologue
    const/4 v4, 0x0

    .line 55
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v4

    .line 59
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 61
    .local v0, "dx":D
    iget-object v5, p0, Lcom/androidplot/xy/XYConstraints;->minX:Ljava/lang/Number;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/androidplot/xy/XYConstraints;->minX:Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpg-double v5, v0, v6

    if-ltz v5, :cond_0

    .line 63
    :cond_2
    iget-object v5, p0, Lcom/androidplot/xy/XYConstraints;->maxX:Ljava/lang/Number;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/androidplot/xy/XYConstraints;->maxX:Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpl-double v5, v0, v6

    if-gtz v5, :cond_0

    .line 66
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 67
    .local v2, "dy":D
    iget-object v5, p0, Lcom/androidplot/xy/XYConstraints;->minY:Ljava/lang/Number;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/androidplot/xy/XYConstraints;->minY:Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpg-double v5, v2, v6

    if-ltz v5, :cond_0

    .line 69
    :cond_4
    iget-object v5, p0, Lcom/androidplot/xy/XYConstraints;->maxY:Ljava/lang/Number;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/androidplot/xy/XYConstraints;->maxY:Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpl-double v5, v2, v6

    if-gtz v5, :cond_0

    .line 73
    :cond_5
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public getDomainFramingModel()Lcom/androidplot/xy/XYFramingModel;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->domainFramingModel:Lcom/androidplot/xy/XYFramingModel;

    return-object v0
.end method

.method public getDomainLowerBoundaryMode()Lcom/androidplot/xy/BoundaryMode;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->domainLowerBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    return-object v0
.end method

.method public getDomainUpperBoundaryMode()Lcom/androidplot/xy/BoundaryMode;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->domainUpperBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    return-object v0
.end method

.method public getMaxX()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->maxX:Ljava/lang/Number;

    return-object v0
.end method

.method public getMaxY()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->maxY:Ljava/lang/Number;

    return-object v0
.end method

.method public getMinX()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->minX:Ljava/lang/Number;

    return-object v0
.end method

.method public getMinY()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->minY:Ljava/lang/Number;

    return-object v0
.end method

.method public getRangeFramingModel()Lcom/androidplot/xy/XYFramingModel;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->rangeFramingModel:Lcom/androidplot/xy/XYFramingModel;

    return-object v0
.end method

.method public getRangeLowerBoundaryMode()Lcom/androidplot/xy/BoundaryMode;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->rangeLowerBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    return-object v0
.end method

.method public getRangeUpperBoundaryMode()Lcom/androidplot/xy/BoundaryMode;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->rangeUpperBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    return-object v0
.end method

.method public setDomainFramingModel(Lcom/androidplot/xy/XYFramingModel;)V
    .locals 0
    .param p1, "domainFramingModel"    # Lcom/androidplot/xy/XYFramingModel;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->domainFramingModel:Lcom/androidplot/xy/XYFramingModel;

    .line 99
    return-void
.end method

.method public setDomainLowerBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 0
    .param p1, "domainLowerBoundaryMode"    # Lcom/androidplot/xy/BoundaryMode;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->domainLowerBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    .line 123
    return-void
.end method

.method public setDomainUpperBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 0
    .param p1, "domainUpperBoundaryMode"    # Lcom/androidplot/xy/BoundaryMode;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->domainUpperBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    .line 115
    return-void
.end method

.method public setMaxX(Ljava/lang/Number;)V
    .locals 0
    .param p1, "maxX"    # Ljava/lang/Number;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->maxX:Ljava/lang/Number;

    .line 147
    return-void
.end method

.method public setMaxY(Ljava/lang/Number;)V
    .locals 0
    .param p1, "maxY"    # Ljava/lang/Number;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->maxY:Ljava/lang/Number;

    .line 155
    return-void
.end method

.method public setMinX(Ljava/lang/Number;)V
    .locals 0
    .param p1, "minX"    # Ljava/lang/Number;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->minX:Ljava/lang/Number;

    .line 143
    return-void
.end method

.method public setMinY(Ljava/lang/Number;)V
    .locals 0
    .param p1, "minY"    # Ljava/lang/Number;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->minY:Ljava/lang/Number;

    .line 151
    return-void
.end method

.method public setRangeFramingModel(Lcom/androidplot/xy/XYFramingModel;)V
    .locals 0
    .param p1, "rangeFramingModel"    # Lcom/androidplot/xy/XYFramingModel;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->rangeFramingModel:Lcom/androidplot/xy/XYFramingModel;

    .line 107
    return-void
.end method

.method public setRangeLowerBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 0
    .param p1, "rangeLowerBoundaryMode"    # Lcom/androidplot/xy/BoundaryMode;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->rangeLowerBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    .line 139
    return-void
.end method

.method public setRangeUpperBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 0
    .param p1, "rangeUpperBoundaryMode"    # Lcom/androidplot/xy/BoundaryMode;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->rangeUpperBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    .line 131
    return-void
.end method
