.class public Lcom/androidplot/xy/CandlestickSeries$Item;
.super Ljava/lang/Object;
.source "CandlestickSeries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/CandlestickSeries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private close:D

.field private high:D

.field private low:D

.field private open:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 1
    .param p1, "low"    # D
    .param p3, "high"    # D
    .param p5, "open"    # D
    .param p7, "close"    # D

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-wide p1, p0, Lcom/androidplot/xy/CandlestickSeries$Item;->low:D

    .line 123
    iput-wide p3, p0, Lcom/androidplot/xy/CandlestickSeries$Item;->high:D

    .line 124
    iput-wide p5, p0, Lcom/androidplot/xy/CandlestickSeries$Item;->open:D

    .line 125
    iput-wide p7, p0, Lcom/androidplot/xy/CandlestickSeries$Item;->close:D

    .line 126
    return-void
.end method


# virtual methods
.method public getClose()D
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/androidplot/xy/CandlestickSeries$Item;->close:D

    return-wide v0
.end method

.method public getHigh()D
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/androidplot/xy/CandlestickSeries$Item;->high:D

    return-wide v0
.end method

.method public getLow()D
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/androidplot/xy/CandlestickSeries$Item;->low:D

    return-wide v0
.end method

.method public getOpen()D
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/androidplot/xy/CandlestickSeries$Item;->open:D

    return-wide v0
.end method

.method public setClose(D)V
    .locals 1
    .param p1, "close"    # D

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/androidplot/xy/CandlestickSeries$Item;->close:D

    .line 158
    return-void
.end method

.method public setHigh(D)V
    .locals 1
    .param p1, "high"    # D

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/androidplot/xy/CandlestickSeries$Item;->high:D

    .line 142
    return-void
.end method

.method public setLow(D)V
    .locals 1
    .param p1, "low"    # D

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/androidplot/xy/CandlestickSeries$Item;->low:D

    .line 134
    return-void
.end method

.method public setOpen(D)V
    .locals 1
    .param p1, "open"    # D

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/androidplot/xy/CandlestickSeries$Item;->open:D

    .line 150
    return-void
.end method
