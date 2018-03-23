.class public Lcom/androidplot/ui/DynamicTableModel;
.super Lcom/androidplot/ui/TableModel;
.source "DynamicTableModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;
    }
.end annotation


# instance fields
.field private numColumns:I

.field private numRows:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "numColumns"    # I
    .param p2, "numRows"    # I

    .prologue
    .line 47
    sget-object v0, Lcom/androidplot/ui/TableOrder;->ROW_MAJOR:Lcom/androidplot/ui/TableOrder;

    invoke-direct {p0, p1, p2, v0}, Lcom/androidplot/ui/DynamicTableModel;-><init>(IILcom/androidplot/ui/TableOrder;)V

    .line 49
    return-void
.end method

.method public constructor <init>(IILcom/androidplot/ui/TableOrder;)V
    .locals 0
    .param p1, "numColumns"    # I
    .param p2, "numRows"    # I
    .param p3, "order"    # Lcom/androidplot/ui/TableOrder;

    .prologue
    .line 52
    invoke-direct {p0, p3}, Lcom/androidplot/ui/TableModel;-><init>(Lcom/androidplot/ui/TableOrder;)V

    .line 53
    iput p1, p0, Lcom/androidplot/ui/DynamicTableModel;->numColumns:I

    .line 54
    iput p2, p0, Lcom/androidplot/ui/DynamicTableModel;->numRows:I

    .line 55
    return-void
.end method

.method private calculateCellSize(Landroid/graphics/RectF;Lcom/androidplot/ui/TableModel$Axis;I)F
    .locals 4
    .param p1, "tableRect"    # Landroid/graphics/RectF;
    .param p2, "axis"    # Lcom/androidplot/ui/TableModel$Axis;
    .param p3, "numElementsInTable"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "axisElements":I
    const/4 v1, 0x0

    .line 91
    .local v1, "axisSizePix":F
    sget-object v2, Lcom/androidplot/ui/DynamicTableModel$1;->$SwitchMap$com$androidplot$ui$TableModel$Axis:[I

    invoke-virtual {p2}, Lcom/androidplot/ui/TableModel$Axis;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 101
    :goto_0
    if-eqz v0, :cond_0

    .line 102
    int-to-float v2, v0

    div-float v2, v1, v2

    .line 104
    :goto_1
    return v2

    .line 93
    :pswitch_0
    iget v0, p0, Lcom/androidplot/ui/DynamicTableModel;->numRows:I

    .line 94
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 95
    goto :goto_0

    .line 97
    :pswitch_1
    iget v0, p0, Lcom/androidplot/ui/DynamicTableModel;->numColumns:I

    .line 98
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    goto :goto_0

    .line 104
    :cond_0
    int-to-float v2, p3

    div-float v2, v1, v2

    goto :goto_1

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCellRect(Landroid/graphics/RectF;I)Landroid/graphics/RectF;
    .locals 3
    .param p1, "tableRect"    # Landroid/graphics/RectF;
    .param p2, "numElements"    # I

    .prologue
    .line 70
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 71
    .local v0, "cellRect":Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 72
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 73
    iget v1, p1, Landroid/graphics/RectF;->top:F

    sget-object v2, Lcom/androidplot/ui/TableModel$Axis;->ROW:Lcom/androidplot/ui/TableModel$Axis;

    invoke-direct {p0, p1, v2, p2}, Lcom/androidplot/ui/DynamicTableModel;->calculateCellSize(Landroid/graphics/RectF;Lcom/androidplot/ui/TableModel$Axis;I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 74
    iget v1, p1, Landroid/graphics/RectF;->left:F

    sget-object v2, Lcom/androidplot/ui/TableModel$Axis;->COLUMN:Lcom/androidplot/ui/TableModel$Axis;

    invoke-direct {p0, p1, v2, p2}, Lcom/androidplot/ui/DynamicTableModel;->calculateCellSize(Landroid/graphics/RectF;Lcom/androidplot/ui/TableModel$Axis;I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 75
    return-object v0
.end method

.method public getIterator(Landroid/graphics/RectF;I)Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;
    .locals 1
    .param p1, "tableRect"    # Landroid/graphics/RectF;
    .param p2, "totalElements"    # I

    .prologue
    .line 59
    new-instance v0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;-><init>(Lcom/androidplot/ui/DynamicTableModel;Lcom/androidplot/ui/DynamicTableModel;Landroid/graphics/RectF;I)V

    return-object v0
.end method

.method public bridge synthetic getIterator(Landroid/graphics/RectF;I)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/ui/DynamicTableModel;->getIterator(Landroid/graphics/RectF;I)Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;

    move-result-object v0

    return-object v0
.end method

.method public getNumColumns()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/androidplot/ui/DynamicTableModel;->numColumns:I

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/androidplot/ui/DynamicTableModel;->numRows:I

    return v0
.end method

.method public setNumColumns(I)V
    .locals 0
    .param p1, "numColumns"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/androidplot/ui/DynamicTableModel;->numColumns:I

    .line 124
    return-void
.end method

.method public setNumRows(I)V
    .locals 0
    .param p1, "numRows"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/androidplot/ui/DynamicTableModel;->numRows:I

    .line 116
    return-void
.end method
