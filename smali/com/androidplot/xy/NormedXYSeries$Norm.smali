.class public Lcom/androidplot/xy/NormedXYSeries$Norm;
.super Ljava/lang/Object;
.source "NormedXYSeries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/NormedXYSeries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Norm"
.end annotation


# instance fields
.field final minMax:Lcom/androidplot/Region;

.field final offset:D

.field final useOffsetCompression:Z


# direct methods
.method public constructor <init>(Lcom/androidplot/Region;)V
    .locals 3
    .param p1, "minMax"    # Lcom/androidplot/Region;

    .prologue
    .line 28
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/androidplot/xy/NormedXYSeries$Norm;-><init>(Lcom/androidplot/Region;DZ)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/androidplot/Region;DZ)V
    .locals 2
    .param p1, "minMax"    # Lcom/androidplot/Region;
    .param p2, "offset"    # D
    .param p4, "useOffsetCompression"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/androidplot/xy/NormedXYSeries$Norm;->minMax:Lcom/androidplot/Region;

    .line 44
    iput-wide p2, p0, Lcom/androidplot/xy/NormedXYSeries$Norm;->offset:D

    .line 45
    iput-boolean p4, p0, Lcom/androidplot/xy/NormedXYSeries$Norm;->useOffsetCompression:Z

    .line 47
    if-eqz p4, :cond_1

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v0, p2, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_1

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "When useOffsetCompression is true, offset must be > -1 and < 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    return-void
.end method
