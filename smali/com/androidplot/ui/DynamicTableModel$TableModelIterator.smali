.class Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;
.super Ljava/lang/Object;
.source "DynamicTableModel.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/ui/DynamicTableModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TableModelIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# instance fields
.field private calculatedColumns:I

.field private calculatedNumElements:I

.field private calculatedRows:I

.field private dynamicTableModel:Lcom/androidplot/ui/DynamicTableModel;

.field private isOk:Z

.field lastColumn:I

.field lastElement:I

.field private lastElementRect:Landroid/graphics/RectF;

.field lastRow:I

.field private order:Lcom/androidplot/ui/TableOrder;

.field private tableRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/androidplot/ui/DynamicTableModel;

.field private totalElements:I


# direct methods
.method public constructor <init>(Lcom/androidplot/ui/DynamicTableModel;Lcom/androidplot/ui/DynamicTableModel;Landroid/graphics/RectF;I)V
    .locals 6
    .param p2, "dynamicTableModel"    # Lcom/androidplot/ui/DynamicTableModel;
    .param p3, "tableRect"    # Landroid/graphics/RectF;
    .param p4, "totalElements"    # I

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 141
    iput-object p1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->this$0:Lcom/androidplot/ui/DynamicTableModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-boolean v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->isOk:Z

    .line 128
    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastColumn:I

    .line 129
    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastRow:I

    .line 130
    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElement:I

    .line 142
    iput-object p2, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->dynamicTableModel:Lcom/androidplot/ui/DynamicTableModel;

    .line 143
    iput-object p3, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->tableRect:Landroid/graphics/RectF;

    .line 144
    iput p4, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->totalElements:I

    .line 145
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getOrder()Lcom/androidplot/ui/TableOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->order:Lcom/androidplot/ui/TableOrder;

    .line 148
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 149
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v0

    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedRows:I

    .line 152
    new-instance v0, Ljava/lang/Float;

    int-to-float v1, p4

    iget v2, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedRows:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    add-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/lang/Float;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedColumns:I

    .line 164
    :goto_0
    iget v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedRows:I

    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedColumns:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedNumElements:I

    .line 165
    invoke-virtual {p2, p3, p4}, Lcom/androidplot/ui/DynamicTableModel;->getCellRect(Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    .line 166
    return-void

    .line 153
    :cond_0
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 154
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v0

    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedColumns:I

    .line 155
    new-instance v0, Ljava/lang/Float;

    int-to-float v1, p4

    iget v2, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedColumns:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    add-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/lang/Float;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedRows:I

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v0

    if-nez v0, :cond_2

    .line 158
    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedRows:I

    .line 159
    iput p4, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedColumns:I

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v0

    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedRows:I

    .line 162
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v0

    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedColumns:I

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->isOk:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElement:I

    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedNumElements:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Landroid/graphics/RectF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    iput-boolean v3, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->isOk:Z

    .line 177
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 180
    :cond_0
    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElement:I

    if-nez v1, :cond_1

    .line 181
    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElement:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElement:I

    .line 182
    iget-object v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    .line 219
    :goto_0
    return-object v0

    .line 185
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 187
    .local v0, "nextElementRect":Landroid/graphics/RectF;
    sget-object v1, Lcom/androidplot/ui/DynamicTableModel$1;->$SwitchMap$com$androidplot$ui$TableOrder:[I

    iget-object v2, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->order:Lcom/androidplot/ui/TableOrder;

    invoke-virtual {v2}, Lcom/androidplot/ui/TableOrder;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 214
    iput-boolean v3, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->isOk:Z

    .line 215
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 189
    :pswitch_0
    iget-object v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->dynamicTableModel:Lcom/androidplot/ui/DynamicTableModel;

    invoke-virtual {v1}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastColumn:I

    iget-object v2, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->dynamicTableModel:Lcom/androidplot/ui/DynamicTableModel;

    invoke-virtual {v2}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_2

    .line 191
    iget-object v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->tableRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 192
    iput v3, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastColumn:I

    .line 193
    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastRow:I

    .line 217
    :goto_1
    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElement:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElement:I

    .line 218
    iput-object v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    goto :goto_0

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 197
    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastColumn:I

    goto :goto_1

    .line 201
    :pswitch_1
    iget-object v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->dynamicTableModel:Lcom/androidplot/ui/DynamicTableModel;

    invoke-virtual {v1}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v1

    if-lez v1, :cond_3

    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastRow:I

    iget-object v2, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->dynamicTableModel:Lcom/androidplot/ui/DynamicTableModel;

    invoke-virtual {v2}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_3

    .line 203
    iget-object v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->tableRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 204
    iput v3, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastRow:I

    .line 205
    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastColumn:I

    goto :goto_1

    .line 208
    :cond_3
    iget-object v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 209
    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastRow:I

    goto :goto_1

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->next()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
