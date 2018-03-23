.class public Lcom/androidplot/xy/CandlestickSeries;
.super Ljava/lang/Object;
.source "CandlestickSeries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/CandlestickSeries$Item;
    }
.end annotation


# instance fields
.field private closeSeries:Lcom/androidplot/xy/SimpleXYSeries;

.field private highSeries:Lcom/androidplot/xy/SimpleXYSeries;

.field private lowSeries:Lcom/androidplot/xy/SimpleXYSeries;

.field private openSeries:Lcom/androidplot/xy/SimpleXYSeries;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/xy/CandlestickSeries$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/xy/CandlestickSeries$Item;>;"
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/androidplot/xy/CandlestickSeries;->generateRange(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/androidplot/xy/CandlestickSeries;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/xy/CandlestickSeries$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/xy/CandlestickSeries$Item;>;"
    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v2, Lcom/androidplot/xy/SimpleXYSeries;

    invoke-direct {v2, v3}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/androidplot/xy/CandlestickSeries;->highSeries:Lcom/androidplot/xy/SimpleXYSeries;

    .line 35
    new-instance v2, Lcom/androidplot/xy/SimpleXYSeries;

    invoke-direct {v2, v3}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/androidplot/xy/CandlestickSeries;->lowSeries:Lcom/androidplot/xy/SimpleXYSeries;

    .line 36
    new-instance v2, Lcom/androidplot/xy/SimpleXYSeries;

    invoke-direct {v2, v3}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/androidplot/xy/CandlestickSeries;->openSeries:Lcom/androidplot/xy/SimpleXYSeries;

    .line 37
    new-instance v2, Lcom/androidplot/xy/SimpleXYSeries;

    invoke-direct {v2, v3}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/androidplot/xy/CandlestickSeries;->closeSeries:Lcom/androidplot/xy/SimpleXYSeries;

    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "xVals and yVals length must be identical."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 66
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 67
    .local v1, "x":Ljava/lang/Number;
    iget-object v3, p0, Lcom/androidplot/xy/CandlestickSeries;->highSeries:Lcom/androidplot/xy/SimpleXYSeries;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/CandlestickSeries$Item;

    invoke-virtual {v2}, Lcom/androidplot/xy/CandlestickSeries$Item;->getHigh()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/androidplot/xy/SimpleXYSeries;->addLast(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 68
    iget-object v3, p0, Lcom/androidplot/xy/CandlestickSeries;->lowSeries:Lcom/androidplot/xy/SimpleXYSeries;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/CandlestickSeries$Item;

    invoke-virtual {v2}, Lcom/androidplot/xy/CandlestickSeries$Item;->getLow()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/androidplot/xy/SimpleXYSeries;->addLast(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 69
    iget-object v3, p0, Lcom/androidplot/xy/CandlestickSeries;->openSeries:Lcom/androidplot/xy/SimpleXYSeries;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/CandlestickSeries$Item;

    invoke-virtual {v2}, Lcom/androidplot/xy/CandlestickSeries$Item;->getOpen()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/androidplot/xy/SimpleXYSeries;->addLast(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 70
    iget-object v3, p0, Lcom/androidplot/xy/CandlestickSeries;->closeSeries:Lcom/androidplot/xy/SimpleXYSeries;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/CandlestickSeries$Item;

    invoke-virtual {v2}, Lcom/androidplot/xy/CandlestickSeries$Item;->getClose()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/androidplot/xy/SimpleXYSeries;->addLast(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "x":Ljava/lang/Number;
    :cond_1
    return-void
.end method

.method public varargs constructor <init>([Lcom/androidplot/xy/CandlestickSeries$Item;)V
    .locals 1
    .param p1, "items"    # [Lcom/androidplot/xy/CandlestickSeries$Item;

    .prologue
    .line 48
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androidplot/xy/CandlestickSeries;-><init>(Ljava/util/List;)V

    .line 49
    return-void
.end method

.method protected static generateRange(II)Ljava/util/List;
    .locals 3
    .param p0, "start"    # I
    .param p1, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    sub-int v2, p1, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .local v1, "range":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    move v0, p0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getCloseSeries()Lcom/androidplot/xy/SimpleXYSeries;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/androidplot/xy/CandlestickSeries;->closeSeries:Lcom/androidplot/xy/SimpleXYSeries;

    return-object v0
.end method

.method public getHighSeries()Lcom/androidplot/xy/SimpleXYSeries;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/androidplot/xy/CandlestickSeries;->highSeries:Lcom/androidplot/xy/SimpleXYSeries;

    return-object v0
.end method

.method public getLowSeries()Lcom/androidplot/xy/SimpleXYSeries;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/androidplot/xy/CandlestickSeries;->lowSeries:Lcom/androidplot/xy/SimpleXYSeries;

    return-object v0
.end method

.method public getOpenSeries()Lcom/androidplot/xy/SimpleXYSeries;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/androidplot/xy/CandlestickSeries;->openSeries:Lcom/androidplot/xy/SimpleXYSeries;

    return-object v0
.end method

.method public setCloseSeries(Lcom/androidplot/xy/SimpleXYSeries;)V
    .locals 0
    .param p1, "closeSeries"    # Lcom/androidplot/xy/SimpleXYSeries;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/androidplot/xy/CandlestickSeries;->closeSeries:Lcom/androidplot/xy/SimpleXYSeries;

    .line 104
    return-void
.end method

.method public setHighSeries(Lcom/androidplot/xy/SimpleXYSeries;)V
    .locals 0
    .param p1, "highSeries"    # Lcom/androidplot/xy/SimpleXYSeries;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/androidplot/xy/CandlestickSeries;->highSeries:Lcom/androidplot/xy/SimpleXYSeries;

    .line 80
    return-void
.end method

.method public setLowSeries(Lcom/androidplot/xy/SimpleXYSeries;)V
    .locals 0
    .param p1, "lowSeries"    # Lcom/androidplot/xy/SimpleXYSeries;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/androidplot/xy/CandlestickSeries;->lowSeries:Lcom/androidplot/xy/SimpleXYSeries;

    .line 88
    return-void
.end method

.method public setOpenSeries(Lcom/androidplot/xy/SimpleXYSeries;)V
    .locals 0
    .param p1, "openSeries"    # Lcom/androidplot/xy/SimpleXYSeries;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/androidplot/xy/CandlestickSeries;->openSeries:Lcom/androidplot/xy/SimpleXYSeries;

    .line 96
    return-void
.end method
