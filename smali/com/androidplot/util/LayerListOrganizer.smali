.class public Lcom/androidplot/util/LayerListOrganizer;
.super Ljava/lang/Object;
.source "LayerListOrganizer.java"

# interfaces
.implements Lcom/androidplot/util/Layerable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ElementType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/androidplot/util/Layerable",
        "<TElementType;>;"
    }
.end annotation


# static fields
.field private static final ONE:I = 0x1

.field private static final ZERO:I


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TElementType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TElementType;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/androidplot/util/LayerListOrganizer;, "Lcom/androidplot/util/LayerListOrganizer<TElementType;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TElementType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public addToBottom(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/androidplot/util/LayerListOrganizer;, "Lcom/androidplot/util/LayerListOrganizer<TElementType;>;"
    .local p1, "element":Ljava/lang/Object;, "TElementType;"
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 113
    return-void
.end method

.method public addToTop(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/androidplot/util/LayerListOrganizer;, "Lcom/androidplot/util/LayerListOrganizer<TElementType;>;"
    .local p1, "element":Ljava/lang/Object;, "TElementType;"
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 117
    return-void
.end method

.method public elements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TElementType;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/androidplot/util/LayerListOrganizer;, "Lcom/androidplot/util/LayerListOrganizer<TElementType;>;"
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    return-object v0
.end method

.method public moveAbove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;TElementType;)Z"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/androidplot/util/LayerListOrganizer;, "Lcom/androidplot/util/LayerListOrganizer<TElementType;>;"
    .local p1, "objectToMove":Ljava/lang/Object;, "TElementType;"
    .local p2, "reference":Ljava/lang/Object;, "TElementType;"
    if-ne p1, p2, :cond_0

    .line 48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal argument to moveAbove(A, B); A cannot be equal to B."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 54
    .local v0, "refIndex":I
    iget-object v1, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 55
    const/4 v1, 0x1

    return v1
.end method

.method public moveBeneath(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;TElementType;)Z"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/androidplot/util/LayerListOrganizer;, "Lcom/androidplot/util/LayerListOrganizer<TElementType;>;"
    .local p1, "objectToMove":Ljava/lang/Object;, "TElementType;"
    .local p2, "reference":Ljava/lang/Object;, "TElementType;"
    if-ne p1, p2, :cond_0

    .line 60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal argument to moveBeaneath(A, B); A cannot be equal to B."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 65
    .local v0, "refIndex":I
    iget-object v1, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 66
    const/4 v1, 0x1

    return v1
.end method

.method public moveDown(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;)Z"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/androidplot/util/LayerListOrganizer;, "Lcom/androidplot/util/LayerListOrganizer<TElementType;>;"
    .local p1, "key":Ljava/lang/Object;, "TElementType;"
    iget-object v2, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 93
    .local v1, "widgetIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 95
    const/4 v2, 0x0

    .line 103
    :goto_0
    return v2

    .line 97
    :cond_0
    if-gtz v1, :cond_1

    .line 99
    const/4 v2, 0x1

    goto :goto_0

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, "widgetBeneath":Ljava/lang/Object;, "TElementType;"
    invoke-virtual {p0, p1, v0}, Lcom/androidplot/util/LayerListOrganizer;->moveBeneath(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public moveToBottom(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;)Z"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/androidplot/util/LayerListOrganizer;, "Lcom/androidplot/util/LayerListOrganizer<TElementType;>;"
    .local p1, "key":Ljava/lang/Object;, "TElementType;"
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public moveToTop(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;)Z"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/androidplot/util/LayerListOrganizer;, "Lcom/androidplot/util/LayerListOrganizer<TElementType;>;"
    .local p1, "element":Ljava/lang/Object;, "TElementType;"
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveUp(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;)Z"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/androidplot/util/LayerListOrganizer;, "Lcom/androidplot/util/LayerListOrganizer<TElementType;>;"
    .local p1, "key":Ljava/lang/Object;, "TElementType;"
    iget-object v2, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 78
    .local v1, "widgetIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 80
    const/4 v2, 0x0

    .line 88
    :goto_0
    return v2

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_1

    .line 84
    const/4 v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "widgetAbove":Ljava/lang/Object;, "TElementType;"
    invoke-virtual {p0, p1, v0}, Lcom/androidplot/util/LayerListOrganizer;->moveAbove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method
