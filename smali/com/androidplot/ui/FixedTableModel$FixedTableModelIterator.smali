.class Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;
.super Ljava/lang/Object;
.source "FixedTableModel.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/ui/FixedTableModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedTableModelIterator"
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
.field private lastElement:I

.field private lastRect:Landroid/graphics/RectF;

.field private model:Lcom/androidplot/ui/FixedTableModel;

.field private numElements:I

.field private tableRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/androidplot/ui/FixedTableModel;


# direct methods
.method protected constructor <init>(Lcom/androidplot/ui/FixedTableModel;Lcom/androidplot/ui/FixedTableModel;Landroid/graphics/RectF;I)V
    .locals 6
    .param p2, "model"    # Lcom/androidplot/ui/FixedTableModel;
    .param p3, "tableRect"    # Landroid/graphics/RectF;
    .param p4, "numElements"    # I

    .prologue
    .line 61
    iput-object p1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->this$0:Lcom/androidplot/ui/FixedTableModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->model:Lcom/androidplot/ui/FixedTableModel;

    .line 63
    iput-object p3, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->tableRect:Landroid/graphics/RectF;

    .line 64
    iput p4, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->numElements:I

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p3, Landroid/graphics/RectF;->left:F

    .line 68
    invoke-virtual {p2}, Lcom/androidplot/ui/FixedTableModel;->getCellWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p3, Landroid/graphics/RectF;->top:F

    .line 69
    invoke-virtual {p2}, Lcom/androidplot/ui/FixedTableModel;->getCellHeight()F

    move-result v5

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    .line 70
    return-void
.end method

.method private isColumnFinished()Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->model:Lcom/androidplot/ui/FixedTableModel;

    invoke-virtual {v1}, Lcom/androidplot/ui/FixedTableModel;->getCellHeight()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->tableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRowFinished()Z
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->model:Lcom/androidplot/ui/FixedTableModel;

    invoke-virtual {v1}, Lcom/androidplot/ui/FixedTableModel;->getCellWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->tableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveDown()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 142
    return-void
.end method

.method private moveDownAndBack()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->tableRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 124
    return-void
.end method

.method private moveOver()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 136
    return-void
.end method

.method private moveOverAndUp()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->tableRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 130
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastElement:I

    iget v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->numElements:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->isColumnFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->isRowFinished()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 89
    :try_start_0
    iget v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastElement:I

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastElement:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastElement:I

    .line 114
    :goto_0
    return-object v0

    .line 93
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastElement:I

    iget v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->numElements:I

    if-lt v0, v1, :cond_1

    .line 94
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastElement:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastElement:I

    throw v0

    .line 96
    :cond_1
    :try_start_2
    sget-object v0, Lcom/androidplot/ui/FixedTableModel$1;->$SwitchMap$com$androidplot$ui$TableOrder:[I

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->model:Lcom/androidplot/ui/FixedTableModel;

    invoke-virtual {v1}, Lcom/androidplot/ui/FixedTableModel;->getOrder()Lcom/androidplot/ui/TableOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/ui/TableOrder;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 98
    :pswitch_0
    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->isColumnFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->moveOverAndUp()V

    .line 114
    :goto_1
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    iget v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastElement:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastElement:I

    goto :goto_0

    .line 101
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->moveDown()V

    goto :goto_1

    .line 105
    :pswitch_1
    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->isRowFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->moveDownAndBack()V

    goto :goto_1

    .line 108
    :cond_3
    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->moveOver()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->next()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
