.class public Lcom/androidplot/ui/FixedTableModel;
.super Lcom/androidplot/ui/TableModel;
.source "FixedTableModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;
    }
.end annotation


# instance fields
.field private cellHeight:F

.field private cellWidth:F


# direct methods
.method public constructor <init>(FFLcom/androidplot/ui/TableOrder;)V
    .locals 0
    .param p1, "cellWidth"    # F
    .param p2, "cellHeight"    # F
    .param p3, "order"    # Lcom/androidplot/ui/TableOrder;

    .prologue
    .line 28
    invoke-direct {p0, p3}, Lcom/androidplot/ui/TableModel;-><init>(Lcom/androidplot/ui/TableOrder;)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/FixedTableModel;->setCellWidth(F)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/androidplot/ui/FixedTableModel;->setCellHeight(F)V

    .line 31
    return-void
.end method


# virtual methods
.method public getCellHeight()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/androidplot/ui/FixedTableModel;->cellHeight:F

    return v0
.end method

.method public getCellWidth()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/androidplot/ui/FixedTableModel;->cellWidth:F

    return v0
.end method

.method public getIterator(Landroid/graphics/RectF;I)Ljava/util/Iterator;
    .locals 1
    .param p1, "tableRect"    # Landroid/graphics/RectF;
    .param p2, "totalElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "I)",
            "Ljava/util/Iterator",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;-><init>(Lcom/androidplot/ui/FixedTableModel;Lcom/androidplot/ui/FixedTableModel;Landroid/graphics/RectF;I)V

    return-object v0
.end method

.method public setCellHeight(F)V
    .locals 0
    .param p1, "cellHeight"    # F

    .prologue
    .line 51
    iput p1, p0, Lcom/androidplot/ui/FixedTableModel;->cellHeight:F

    .line 52
    return-void
.end method

.method public setCellWidth(F)V
    .locals 0
    .param p1, "cellWidth"    # F

    .prologue
    .line 43
    iput p1, p0, Lcom/androidplot/ui/FixedTableModel;->cellWidth:F

    .line 44
    return-void
.end method
