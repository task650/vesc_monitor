.class public abstract Lcom/androidplot/xy/CandlestickMaker;
.super Ljava/lang/Object;
.source "CandlestickMaker.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/androidplot/xy/CandlestickMaker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/androidplot/xy/CandlestickMaker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Lcom/androidplot/xy/CandlestickSeries;)V
    .locals 4
    .param p0, "series"    # Lcom/androidplot/xy/CandlestickSeries;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/androidplot/xy/CandlestickSeries;->getOpenSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v0

    invoke-virtual {p0}, Lcom/androidplot/xy/CandlestickSeries;->getCloseSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v1

    invoke-virtual {p0}, Lcom/androidplot/xy/CandlestickSeries;->getHighSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v2

    invoke-virtual {p0}, Lcom/androidplot/xy/CandlestickSeries;->getLowSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/androidplot/xy/CandlestickMaker;->check(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;)V

    .line 60
    return-void
.end method

.method public static check(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;)V
    .locals 15
    .param p0, "openVals"    # Lcom/androidplot/xy/XYSeries;
    .param p1, "closeVals"    # Lcom/androidplot/xy/XYSeries;
    .param p2, "highVals"    # Lcom/androidplot/xy/XYSeries;
    .param p3, "lowVals"    # Lcom/androidplot/xy/XYSeries;

    .prologue
    .line 72
    invoke-interface {p0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v7

    .line 73
    .local v7, "size":I
    sget-boolean v12, Lcom/androidplot/xy/CandlestickMaker;->$assertionsDisabled:Z

    if-nez v12, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v12

    if-eq v12, v7, :cond_0

    new-instance v12, Ljava/lang/AssertionError;

    const-string v13, "closeVals has irregular size."

    invoke-direct {v12, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v12

    .line 74
    :cond_0
    sget-boolean v12, Lcom/androidplot/xy/CandlestickMaker;->$assertionsDisabled:Z

    if-nez v12, :cond_1

    invoke-interface/range {p2 .. p2}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v12

    if-eq v12, v7, :cond_1

    new-instance v12, Ljava/lang/AssertionError;

    const-string v13, "highVals has irregular size."

    invoke-direct {v12, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v12

    .line 75
    :cond_1
    sget-boolean v12, Lcom/androidplot/xy/CandlestickMaker;->$assertionsDisabled:Z

    if-nez v12, :cond_2

    invoke-interface/range {p3 .. p3}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v12

    if-eq v12, v7, :cond_2

    new-instance v12, Ljava/lang/AssertionError;

    const-string v13, "lowVals has irregular size."

    invoke-direct {v12, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v12

    .line 77
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_8

    .line 79
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 80
    .local v4, "highVal":D
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    .line 81
    .local v8, "lowVal":D
    invoke-interface {p0, v6}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    .line 82
    .local v10, "openVal":D
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 84
    .local v2, "closeVal":D
    sget-boolean v12, Lcom/androidplot/xy/CandlestickMaker;->$assertionsDisabled:Z

    if-nez v12, :cond_3

    cmpg-double v12, v10, v4

    if-lez v12, :cond_3

    new-instance v12, Ljava/lang/AssertionError;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Detected openVal > highVal at index "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v12

    .line 85
    :cond_3
    sget-boolean v12, Lcom/androidplot/xy/CandlestickMaker;->$assertionsDisabled:Z

    if-nez v12, :cond_4

    cmpl-double v12, v10, v8

    if-gez v12, :cond_4

    new-instance v12, Ljava/lang/AssertionError;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Detected openVal < lowVal at index "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v12

    .line 86
    :cond_4
    sget-boolean v12, Lcom/androidplot/xy/CandlestickMaker;->$assertionsDisabled:Z

    if-nez v12, :cond_5

    cmpg-double v12, v2, v4

    if-lez v12, :cond_5

    new-instance v12, Ljava/lang/AssertionError;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Detected closeVal > highVal at index "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v12

    .line 87
    :cond_5
    sget-boolean v12, Lcom/androidplot/xy/CandlestickMaker;->$assertionsDisabled:Z

    if-nez v12, :cond_6

    cmpl-double v12, v2, v8

    if-gez v12, :cond_6

    new-instance v12, Ljava/lang/AssertionError;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Detected closeVal < lowVal at index "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v12

    .line 88
    :cond_6
    sget-boolean v12, Lcom/androidplot/xy/CandlestickMaker;->$assertionsDisabled:Z

    if-nez v12, :cond_7

    cmpg-double v12, v8, v4

    if-lez v12, :cond_7

    new-instance v12, Ljava/lang/AssertionError;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Detected lowVal > highVal at index "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v12

    .line 77
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 90
    .end local v2    # "closeVal":D
    .end local v4    # "highVal":D
    .end local v8    # "lowVal":D
    .end local v10    # "openVal":D
    :cond_8
    return-void
.end method

.method public static make(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/CandlestickFormatter;Lcom/androidplot/xy/CandlestickSeries;)V
    .locals 6
    .param p0, "plot"    # Lcom/androidplot/xy/XYPlot;
    .param p1, "formatter"    # Lcom/androidplot/xy/CandlestickFormatter;
    .param p2, "series"    # Lcom/androidplot/xy/CandlestickSeries;

    .prologue
    .line 48
    invoke-virtual {p2}, Lcom/androidplot/xy/CandlestickSeries;->getOpenSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v2

    invoke-virtual {p2}, Lcom/androidplot/xy/CandlestickSeries;->getCloseSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v3

    .line 49
    invoke-virtual {p2}, Lcom/androidplot/xy/CandlestickSeries;->getHighSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v4

    invoke-virtual {p2}, Lcom/androidplot/xy/CandlestickSeries;->getLowSeries()Lcom/androidplot/xy/SimpleXYSeries;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 48
    invoke-static/range {v0 .. v5}, Lcom/androidplot/xy/CandlestickMaker;->make(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/CandlestickFormatter;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;)V

    .line 50
    return-void
.end method

.method public static make(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/CandlestickFormatter;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYSeries;)V
    .locals 2
    .param p0, "plot"    # Lcom/androidplot/xy/XYPlot;
    .param p1, "formatter"    # Lcom/androidplot/xy/CandlestickFormatter;
    .param p2, "openVals"    # Lcom/androidplot/xy/XYSeries;
    .param p3, "closeVals"    # Lcom/androidplot/xy/XYSeries;
    .param p4, "highVals"    # Lcom/androidplot/xy/XYSeries;
    .param p5, "lowVals"    # Lcom/androidplot/xy/XYSeries;

    .prologue
    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/androidplot/xy/XYSeries;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 v1, 0x1

    aput-object p5, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/xy/XYPlot;->addSeries(Lcom/androidplot/ui/Formatter;[Lcom/androidplot/Series;)Z

    .line 38
    return-void
.end method
