.class public Lcom/androidplot/xy/NormedXYSeries;
.super Ljava/lang/Object;
.source "NormedXYSeries.java"

# interfaces
.implements Lcom/androidplot/xy/XYSeries;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/NormedXYSeries$Norm;
    }
.end annotation


# instance fields
.field private minMaxX:Lcom/androidplot/Region;

.field private minMaxY:Lcom/androidplot/Region;

.field private rawData:Lcom/androidplot/xy/XYSeries;

.field private transformX:Lcom/androidplot/Region;

.field private transformY:Lcom/androidplot/Region;


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYSeries;)V
    .locals 5
    .param p1, "rawData"    # Lcom/androidplot/xy/XYSeries;

    .prologue
    const/4 v4, 0x0

    .line 59
    new-instance v0, Lcom/androidplot/xy/NormedXYSeries$Norm;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/androidplot/xy/NormedXYSeries$Norm;-><init>(Lcom/androidplot/Region;DZ)V

    invoke-direct {p0, p1, v4, v0}, Lcom/androidplot/xy/NormedXYSeries;-><init>(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/NormedXYSeries$Norm;Lcom/androidplot/xy/NormedXYSeries$Norm;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/NormedXYSeries$Norm;Lcom/androidplot/xy/NormedXYSeries$Norm;)V
    .locals 0
    .param p1, "rawData"    # Lcom/androidplot/xy/XYSeries;
    .param p2, "x"    # Lcom/androidplot/xy/NormedXYSeries$Norm;
    .param p3, "y"    # Lcom/androidplot/xy/NormedXYSeries$Norm;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/androidplot/xy/NormedXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    .line 70
    invoke-virtual {p0, p2, p3}, Lcom/androidplot/xy/NormedXYSeries;->normalize(Lcom/androidplot/xy/NormedXYSeries$Norm;Lcom/androidplot/xy/NormedXYSeries$Norm;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected calculateTransform(Lcom/androidplot/xy/NormedXYSeries$Norm;)Lcom/androidplot/Region;
    .locals 8
    .param p1, "norm"    # Lcom/androidplot/xy/NormedXYSeries$Norm;

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 86
    iget-boolean v0, p1, Lcom/androidplot/xy/NormedXYSeries$Norm;->useOffsetCompression:Z

    if-eqz v0, :cond_2

    .line 87
    new-instance v6, Lcom/androidplot/Region;

    iget-wide v0, p1, Lcom/androidplot/xy/NormedXYSeries$Norm;->offset:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p1, Lcom/androidplot/xy/NormedXYSeries$Norm;->offset:D

    .line 88
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget-wide v0, p1, Lcom/androidplot/xy/NormedXYSeries$Norm;->offset:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    iget-wide v0, p1, Lcom/androidplot/xy/NormedXYSeries$Norm;->offset:D

    add-double/2addr v0, v4

    .line 89
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    move-object v0, v6

    .line 91
    :goto_2
    return-object v0

    :cond_0
    move-wide v0, v2

    .line 87
    goto :goto_0

    :cond_1
    move-wide v0, v4

    .line 88
    goto :goto_1

    .line 91
    :cond_2
    new-instance v0, Lcom/androidplot/Region;

    iget-wide v6, p1, Lcom/androidplot/xy/NormedXYSeries$Norm;->offset:D

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p1, Lcom/androidplot/xy/NormedXYSeries$Norm;->offset:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    goto :goto_2
.end method

.method public denormalizeXVal(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p1, "xVal"    # Ljava/lang/Number;

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/androidplot/xy/NormedXYSeries;->transformX:Lcom/androidplot/Region;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v1, p0, Lcom/androidplot/xy/NormedXYSeries;->minMaxX:Lcom/androidplot/Region;

    invoke-virtual {v0, v2, v3, v1}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public denormalizeYVal(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p1, "yVal"    # Ljava/lang/Number;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/androidplot/xy/NormedXYSeries;->transformY:Lcom/androidplot/Region;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v1, p0, Lcom/androidplot/xy/NormedXYSeries;->minMaxY:Lcom/androidplot/Region;

    invoke-virtual {v0, v2, v3, v1}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/androidplot/xy/NormedXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getX(I)Ljava/lang/Number;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 121
    iget-object v1, p0, Lcom/androidplot/xy/NormedXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v1, p1}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v0

    .line 122
    .local v0, "xVal":Ljava/lang/Number;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/androidplot/xy/NormedXYSeries;->transformX:Lcom/androidplot/Region;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/androidplot/xy/NormedXYSeries;->minMaxX:Lcom/androidplot/Region;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/androidplot/xy/NormedXYSeries;->transformX:Lcom/androidplot/Region;

    invoke-virtual {v1, v2, v3, v4}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object v0

    .line 125
    .end local v0    # "xVal":Ljava/lang/Number;
    :cond_0
    return-object v0
.end method

.method public getY(I)Ljava/lang/Number;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 130
    iget-object v1, p0, Lcom/androidplot/xy/NormedXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v1, p1}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v0

    .line 131
    .local v0, "yVal":Ljava/lang/Number;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/androidplot/xy/NormedXYSeries;->transformY:Lcom/androidplot/Region;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/androidplot/xy/NormedXYSeries;->minMaxY:Lcom/androidplot/Region;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/androidplot/xy/NormedXYSeries;->transformY:Lcom/androidplot/Region;

    invoke-virtual {v1, v2, v3, v4}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object v0

    .line 134
    .end local v0    # "yVal":Ljava/lang/Number;
    :cond_0
    return-object v0
.end method

.method protected normalize(Lcom/androidplot/xy/NormedXYSeries$Norm;Lcom/androidplot/xy/NormedXYSeries$Norm;)V
    .locals 4
    .param p1, "x"    # Lcom/androidplot/xy/NormedXYSeries$Norm;
    .param p2, "y"    # Lcom/androidplot/xy/NormedXYSeries$Norm;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p1, Lcom/androidplot/xy/NormedXYSeries$Norm;->minMax:Lcom/androidplot/Region;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/androidplot/xy/NormedXYSeries$Norm;->minMax:Lcom/androidplot/Region;

    :goto_0
    iput-object v0, p0, Lcom/androidplot/xy/NormedXYSeries;->minMaxX:Lcom/androidplot/Region;

    .line 76
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/NormedXYSeries;->calculateTransform(Lcom/androidplot/xy/NormedXYSeries$Norm;)Lcom/androidplot/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/NormedXYSeries;->transformX:Lcom/androidplot/Region;

    .line 79
    :cond_0
    if-eqz p2, :cond_1

    .line 80
    iget-object v0, p2, Lcom/androidplot/xy/NormedXYSeries$Norm;->minMax:Lcom/androidplot/Region;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/androidplot/xy/NormedXYSeries$Norm;->minMax:Lcom/androidplot/Region;

    :goto_1
    iput-object v0, p0, Lcom/androidplot/xy/NormedXYSeries;->minMaxY:Lcom/androidplot/Region;

    .line 81
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/NormedXYSeries;->calculateTransform(Lcom/androidplot/xy/NormedXYSeries$Norm;)Lcom/androidplot/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/NormedXYSeries;->transformY:Lcom/androidplot/Region;

    .line 83
    :cond_1
    return-void

    .line 75
    :cond_2
    new-array v0, v3, [Lcom/androidplot/xy/XYSeries;

    iget-object v1, p0, Lcom/androidplot/xy/NormedXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/androidplot/util/SeriesUtils;->minMaxX([Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/Region;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_3
    new-array v0, v3, [Lcom/androidplot/xy/XYSeries;

    iget-object v1, p0, Lcom/androidplot/xy/NormedXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/androidplot/util/SeriesUtils;->minMaxY([Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/Region;

    move-result-object v0

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/androidplot/xy/NormedXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    return v0
.end method
