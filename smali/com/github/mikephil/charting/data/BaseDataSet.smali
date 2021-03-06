.class public abstract Lcom/github/mikephil/charting/data/BaseDataSet;
.super Ljava/lang/Object;
.source "BaseDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field protected mColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDrawIcons:Z

.field protected mDrawValues:Z

.field private mForm:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field private mFormLineDashEffect:Landroid/graphics/DashPathEffect;

.field private mFormLineWidth:F

.field private mFormSize:F

.field protected mHighlightEnabled:Z

.field protected mIconsOffset:Lcom/github/mikephil/charting/utils/MPPointF;

.field private mLabel:Ljava/lang/String;

.field protected mValueColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected transient mValueFormatter:Lcom/github/mikephil/charting/formatter/IValueFormatter;

.field protected mValueTextSize:F

.field protected mValueTypeface:Landroid/graphics/Typeface;

.field protected mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    const/high16 v3, 0x7fc00000    # NaNf

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v2, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    .line 37
    iput-object v2, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    .line 42
    const-string v0, "DataSet"

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mLabel:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 52
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mHighlightEnabled:Z

    .line 64
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->DEFAULT:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mForm:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 65
    iput v3, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormSize:F

    .line 66
    iput v3, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormLineWidth:F

    .line 67
    iput-object v2, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormLineDashEffect:Landroid/graphics/DashPathEffect;

    .line 72
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mDrawValues:Z

    .line 77
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mDrawIcons:Z

    .line 82
    new-instance v0, Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-direct {v0}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mIconsOffset:Lcom/github/mikephil/charting/utils/MPPointF;

    .line 87
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueTextSize:F

    .line 92
    iput-boolean v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mVisible:Z

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    .line 102
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 112
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mLabel:Ljava/lang/String;

    .line 114
    return-void
.end method


# virtual methods
.method public addColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 206
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public contains(Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 484
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    .local p1, "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 485
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    const/4 v1, 0x1

    .line 489
    :goto_1
    return v1

    .line 484
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 1

    .prologue
    .line 421
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object v0
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 139
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColor(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 144
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    iget-object v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    return-object v0
.end method

.method public getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .locals 1

    .prologue
    .line 347
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mForm:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-object v0
.end method

.method public getFormLineDashEffect()Landroid/graphics/DashPathEffect;
    .locals 1

    .prologue
    .line 374
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormLineDashEffect:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public getFormLineWidth()F
    .locals 1

    .prologue
    .line 365
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormLineWidth:F

    return v0
.end method

.method public getFormSize()F
    .locals 1

    .prologue
    .line 356
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormSize:F

    return v0
.end method

.method public getIconsOffset()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 1

    .prologue
    .line 406
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mIconsOffset:Lcom/github/mikephil/charting/utils/MPPointF;

    return-object v0
.end method

.method public getIndexInEntries(I)I
    .locals 3
    .param p1, "xIndex"    # I

    .prologue
    .line 437
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 438
    int-to-float v1, p1

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 442
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 437
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getValueColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    return-object v0
.end method

.method public getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;
    .locals 1

    .prologue
    .line 290
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->needsFormatter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {}, Lcom/github/mikephil/charting/utils/Utils;->getDefaultValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/IValueFormatter;

    goto :goto_0
.end method

.method public getValueTextColor()I
    .locals 2

    .prologue
    .line 323
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getValueTextColor(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 328
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    iget-object v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getValueTextSize()F
    .locals 1

    .prologue
    .line 338
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueTextSize:F

    return v0
.end method

.method public getValueTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 333
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isDrawIconsEnabled()Z
    .locals 1

    .prologue
    .line 394
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mDrawIcons:Z

    return v0
.end method

.method public isDrawValuesEnabled()Z
    .locals 1

    .prologue
    .line 384
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mDrawValues:Z

    return v0
.end method

.method public isHighlightEnabled()Z
    .locals 1

    .prologue
    .line 276
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mHighlightEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 416
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mVisible:Z

    return v0
.end method

.method public needsFormatter()Z
    .locals 1

    .prologue
    .line 297
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/IValueFormatter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 120
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->calcMinMax()V

    .line 121
    return-void
.end method

.method public removeEntry(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 477
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 478
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->removeEntry(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v1

    return v1
.end method

.method public removeEntryByXValue(F)Z
    .locals 2
    .param p1, "xValue"    # F

    .prologue
    .line 470
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    const/high16 v1, 0x7fc00000    # NaNf

    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 471
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->removeEntry(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v1

    return v1
.end method

.method public removeFirst()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    const/4 v1, 0x0

    .line 448
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 450
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 451
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->removeEntry(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v1

    .line 453
    .end local v0    # "entry":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    :cond_0
    return v1
.end method

.method public removeLast()Z
    .locals 2

    .prologue
    .line 459
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/data/BaseDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 462
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->removeEntry(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v1

    .line 464
    .end local v0    # "e":Lcom/github/mikephil/charting/data/Entry;, "TT;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetColors()V
    .locals 1

    .prologue
    .line 249
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 253
    return-void
.end method

.method public setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 0
    .param p1, "dependency"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 426
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 427
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 218
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->resetColors()V

    .line 219
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public setColor(II)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 229
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BaseDataSet;->setColor(I)V

    .line 230
    return-void
.end method

.method public setColors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    .line 162
    return-void
.end method

.method public varargs setColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 174
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/ColorTemplate;->createColors([I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    .line 175
    return-void
.end method

.method public setColors([II)V
    .locals 6
    .param p1, "colors"    # [I
    .param p2, "alpha"    # I

    .prologue
    .line 239
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseDataSet;->resetColors()V

    .line 240
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 241
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {p2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/github/mikephil/charting/data/BaseDataSet;->addColor(I)V

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "color":I
    :cond_0
    return-void
.end method

.method public setColors([ILandroid/content/Context;)V
    .locals 5
    .param p1, "colors"    # [I
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 189
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    if-nez v1, :cond_0

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 195
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v0, p1, v1

    .line 196
    .local v0, "color":I
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mColors:Ljava/util/List;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "color":I
    :cond_1
    return-void
.end method

.method public setDrawIcons(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 389
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mDrawIcons:Z

    .line 390
    return-void
.end method

.method public setDrawValues(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 379
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mDrawValues:Z

    .line 380
    return-void
.end method

.method public setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V
    .locals 0
    .param p1, "form"    # Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .prologue
    .line 342
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mForm:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 343
    return-void
.end method

.method public setFormLineDashEffect(Landroid/graphics/DashPathEffect;)V
    .locals 0
    .param p1, "dashPathEffect"    # Landroid/graphics/DashPathEffect;

    .prologue
    .line 369
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormLineDashEffect:Landroid/graphics/DashPathEffect;

    .line 370
    return-void
.end method

.method public setFormLineWidth(F)V
    .locals 0
    .param p1, "formLineWidth"    # F

    .prologue
    .line 360
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormLineWidth:F

    .line 361
    return-void
.end method

.method public setFormSize(F)V
    .locals 0
    .param p1, "formSize"    # F

    .prologue
    .line 351
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mFormSize:F

    .line 352
    return-void
.end method

.method public setHighlightEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 271
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mHighlightEnabled:Z

    .line 272
    return-void
.end method

.method public setIconsOffset(Lcom/github/mikephil/charting/utils/MPPointF;)V
    .locals 2
    .param p1, "offsetDp"    # Lcom/github/mikephil/charting/utils/MPPointF;

    .prologue
    .line 400
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mIconsOffset:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v1, p1, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iput v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 401
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mIconsOffset:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v1, p1, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iput v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 402
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 261
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mLabel:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setValueFormatter(Lcom/github/mikephil/charting/formatter/IValueFormatter;)V
    .locals 0
    .param p1, "f"    # Lcom/github/mikephil/charting/formatter/IValueFormatter;

    .prologue
    .line 282
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    if-nez p1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 285
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueFormatter:Lcom/github/mikephil/charting/formatter/IValueFormatter;

    goto :goto_0
.end method

.method public setValueTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 302
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 303
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public setValueTextColors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueColors:Ljava/util/List;

    .line 309
    return-void
.end method

.method public setValueTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 318
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueTextSize:F

    .line 319
    return-void
.end method

.method public setValueTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 313
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mValueTypeface:Landroid/graphics/Typeface;

    .line 314
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 411
    .local p0, "this":Lcom/github/mikephil/charting/data/BaseDataSet;, "Lcom/github/mikephil/charting/data/BaseDataSet<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/BaseDataSet;->mVisible:Z

    .line 412
    return-void
.end method
