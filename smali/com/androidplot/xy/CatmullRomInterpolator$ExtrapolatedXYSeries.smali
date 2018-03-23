.class Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;
.super Ljava/lang/Object;
.source "CatmullRomInterpolator.java"

# interfaces
.implements Lcom/androidplot/xy/XYSeries;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/CatmullRomInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExtrapolatedXYSeries"
.end annotation


# instance fields
.field private final first:Lcom/androidplot/xy/XYCoords;

.field private final last:Lcom/androidplot/xy/XYCoords;

.field private final series:Lcom/androidplot/xy/XYSeries;


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/XYCoords;Lcom/androidplot/xy/XYCoords;)V
    .locals 0
    .param p1, "series"    # Lcom/androidplot/xy/XYSeries;
    .param p2, "first"    # Lcom/androidplot/xy/XYCoords;
    .param p3, "last"    # Lcom/androidplot/xy/XYCoords;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;->series:Lcom/androidplot/xy/XYSeries;

    .line 75
    iput-object p2, p0, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;->first:Lcom/androidplot/xy/XYCoords;

    .line 76
    iput-object p3, p0, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;->last:Lcom/androidplot/xy/XYCoords;

    .line 77
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;->series:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getX(I)Ljava/lang/Number;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;->first:Lcom/androidplot/xy/XYCoords;

    iget-object v0, v0, Lcom/androidplot/xy/XYCoords;->x:Ljava/lang/Number;

    .line 86
    :goto_0
    return-object v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;->series:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;->last:Lcom/androidplot/xy/XYCoords;

    iget-object v0, v0, Lcom/androidplot/xy/XYCoords;->x:Ljava/lang/Number;

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;->series:Lcom/androidplot/xy/XYSeries;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0
.end method

.method public getY(I)Ljava/lang/Number;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;->first:Lcom/androidplot/xy/XYCoords;

    iget-object v0, v0, Lcom/androidplot/xy/XYCoords;->y:Ljava/lang/Number;

    .line 97
    :goto_0
    return-object v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;->series:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;->last:Lcom/androidplot/xy/XYCoords;

    iget-object v0, v0, Lcom/androidplot/xy/XYCoords;->y:Ljava/lang/Number;

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;->series:Lcom/androidplot/xy/XYSeries;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries;->series:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
