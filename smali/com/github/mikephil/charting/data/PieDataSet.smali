.class public Lcom/github/mikephil/charting/data/PieDataSet;
.super Lcom/github/mikephil/charting/data/DataSet;
.source "PieDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/DataSet",
        "<",
        "Lcom/github/mikephil/charting/data/PieEntry;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;"
    }
.end annotation


# instance fields
.field private mAutomaticallyDisableSliceSpacing:Z

.field private mShift:F

.field private mSliceSpace:F

.field private mValueLineColor:I

.field private mValueLinePart1Length:F

.field private mValueLinePart1OffsetPercentage:F

.field private mValueLinePart2Length:F

.field private mValueLineVariableLength:Z

.field private mValueLineWidth:F

.field private mXValuePosition:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

.field private mYValuePosition:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/PieEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/PieEntry;>;"
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/DataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mSliceSpace:F

    .line 17
    const/high16 v0, 0x41900000    # 18.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mShift:F

    .line 19
    sget-object v0, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->INSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mXValuePosition:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 20
    sget-object v0, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->INSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mYValuePosition:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 21
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLineColor:I

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLineWidth:F

    .line 23
    const/high16 v0, 0x42960000    # 75.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLinePart1OffsetPercentage:F

    .line 24
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLinePart1Length:F

    .line 25
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLinePart2Length:F

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLineVariableLength:Z

    .line 31
    return-void
.end method


# virtual methods
.method protected bridge synthetic calcMinMax(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/PieDataSet;->calcMinMax(Lcom/github/mikephil/charting/data/PieEntry;)V

    return-void
.end method

.method protected calcMinMax(Lcom/github/mikephil/charting/data/PieEntry;)V
    .locals 0
    .param p1, "e"    # Lcom/github/mikephil/charting/data/PieEntry;

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/PieDataSet;->calcMinMaxY(Lcom/github/mikephil/charting/data/Entry;)V

    goto :goto_0
.end method

.method public copy()Lcom/github/mikephil/charting/data/DataSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<",
            "Lcom/github/mikephil/charting/data/PieEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v2, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/PieEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 39
    iget-object v3, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/PieEntry;->copy()Lcom/github/mikephil/charting/data/PieEntry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/data/PieDataSet;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieDataSet;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 43
    .local v0, "copied":Lcom/github/mikephil/charting/data/PieDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mColors:Ljava/util/List;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/PieDataSet;->mColors:Ljava/util/List;

    .line 44
    iget v3, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mSliceSpace:F

    iput v3, v0, Lcom/github/mikephil/charting/data/PieDataSet;->mSliceSpace:F

    .line 45
    iget v3, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mShift:F

    iput v3, v0, Lcom/github/mikephil/charting/data/PieDataSet;->mShift:F

    .line 46
    return-object v0
.end method

.method public getSelectionShift()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mShift:F

    return v0
.end method

.method public getSliceSpace()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mSliceSpace:F

    return v0
.end method

.method public getValueLineColor()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLineColor:I

    return v0
.end method

.method public getValueLinePart1Length()F
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLinePart1Length:F

    return v0
.end method

.method public getValueLinePart1OffsetPercentage()F
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLinePart1OffsetPercentage:F

    return v0
.end method

.method public getValueLinePart2Length()F
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLinePart2Length:F

    return v0
.end method

.method public getValueLineWidth()F
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLineWidth:F

    return v0
.end method

.method public getXValuePosition()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mXValuePosition:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    return-object v0
.end method

.method public getYValuePosition()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mYValuePosition:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    return-object v0
.end method

.method public isAutomaticallyDisableSliceSpacingEnabled()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mAutomaticallyDisableSliceSpacing:Z

    return v0
.end method

.method public isValueLineVariableLength()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLineVariableLength:Z

    return v0
.end method

.method public setAutomaticallyDisableSliceSpacing(Z)V
    .locals 0
    .param p1, "autoDisable"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mAutomaticallyDisableSliceSpacing:Z

    .line 87
    return-void
.end method

.method public setSelectionShift(F)V
    .locals 1
    .param p1, "shift"    # F

    .prologue
    .line 107
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mShift:F

    .line 108
    return-void
.end method

.method public setSliceSpace(F)V
    .locals 1
    .param p1, "spaceDp"    # F

    .prologue
    .line 66
    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 67
    const/high16 p1, 0x41a00000    # 20.0f

    .line 68
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 69
    const/4 p1, 0x0

    .line 71
    :cond_1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mSliceSpace:F

    .line 72
    return-void
.end method

.method public setValueLineColor(I)V
    .locals 0
    .param p1, "valueLineColor"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLineColor:I

    .line 147
    return-void
.end method

.method public setValueLinePart1Length(F)V
    .locals 0
    .param p1, "valueLinePart1Length"    # F

    .prologue
    .line 182
    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLinePart1Length:F

    .line 183
    return-void
.end method

.method public setValueLinePart1OffsetPercentage(F)V
    .locals 0
    .param p1, "valueLinePart1OffsetPercentage"    # F

    .prologue
    .line 170
    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLinePart1OffsetPercentage:F

    .line 171
    return-void
.end method

.method public setValueLinePart2Length(F)V
    .locals 0
    .param p1, "valueLinePart2Length"    # F

    .prologue
    .line 194
    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLinePart2Length:F

    .line 195
    return-void
.end method

.method public setValueLineVariableLength(Z)V
    .locals 0
    .param p1, "valueLineVariableLength"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLineVariableLength:Z

    .line 207
    return-void
.end method

.method public setValueLineWidth(F)V
    .locals 0
    .param p1, "valueLineWidth"    # F

    .prologue
    .line 158
    iput p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLineWidth:F

    .line 159
    return-void
.end method

.method public setXValuePosition(Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;)V
    .locals 0
    .param p1, "xValuePosition"    # Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mXValuePosition:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 124
    return-void
.end method

.method public setYValuePosition(Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;)V
    .locals 0
    .param p1, "yValuePosition"    # Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mYValuePosition:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 135
    return-void
.end method
