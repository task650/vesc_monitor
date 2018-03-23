.class public Lcom/androidplot/xy/FixedSizeEditableXYSeries;
.super Ljava/lang/Object;
.source "FixedSizeEditableXYSeries.java"

# interfaces
.implements Lcom/androidplot/xy/EditableXYSeries;


# instance fields
.field private title:Ljava/lang/String;

.field private xVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/util/FastNumber;",
            ">;"
        }
    .end annotation
.end field

.field private yVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/util/FastNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->xVals:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->yVals:Ljava/util/List;

    .line 22
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->setTitle(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->resize(I)V

    .line 24
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getX(I)Ljava/lang/Number;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->xVals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public getY(I)Ljava/lang/Number;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->yVals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public resize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->xVals:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->resize(Ljava/util/List;I)V

    .line 44
    iget-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->yVals:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->resize(Ljava/util/List;I)V

    .line 45
    return-void
.end method

.method protected resize(Ljava/util/List;I)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;
    .param p2, "size"    # I

    .prologue
    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 49
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 50
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 53
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 57
    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->title:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setX(Ljava/lang/Number;I)V
    .locals 2
    .param p1, "x"    # Ljava/lang/Number;
    .param p2, "index"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->xVals:Ljava/util/List;

    new-instance v1, Lcom/androidplot/util/FastNumber;

    invoke-direct {v1, p1}, Lcom/androidplot/util/FastNumber;-><init>(Ljava/lang/Number;)V

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public setY(Ljava/lang/Number;I)V
    .locals 2
    .param p1, "y"    # Ljava/lang/Number;
    .param p2, "index"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->yVals:Ljava/util/List;

    new-instance v1, Lcom/androidplot/util/FastNumber;

    invoke-direct {v1, p1}, Lcom/androidplot/util/FastNumber;-><init>(Ljava/lang/Number;)V

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->xVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
