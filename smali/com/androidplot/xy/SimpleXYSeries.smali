.class public Lcom/androidplot/xy/SimpleXYSeries;
.super Ljava/lang/Object;
.source "SimpleXYSeries.java"

# interfaces
.implements Lcom/androidplot/xy/EditableXYSeries;
.implements Lcom/androidplot/xy/OrderedXYSeries;
.implements Lcom/androidplot/PlotListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private volatile title:Ljava/lang/String;

.field private xOrder:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

.field private volatile xVals:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private volatile yVals:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/androidplot/xy/SimpleXYSeries;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/androidplot/xy/SimpleXYSeries;->TAG:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;Ljava/lang/String;[Ljava/lang/Number;)V
    .locals 1
    .param p1, "format"    # Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "model"    # [Ljava/lang/Number;

    .prologue
    .line 51
    invoke-static {p3}, Lcom/androidplot/xy/SimpleXYSeries;->asNumberList([Ljava/lang/Number;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->title:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 39
    sget-object v0, Lcom/androidplot/xy/OrderedXYSeries$XOrder;->NONE:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    iput-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xOrder:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    .line 47
    iput-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->title:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;Ljava/lang/String;)V
    .locals 0
    .param p2, "format"    # Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;
    .param p3, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "model":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    invoke-direct {p0, p3}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/SimpleXYSeries;->setModel(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p3, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    .local p2, "yVals":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    invoke-direct {p0, p3}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/lang/String;)V

    .line 109
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither the xVals nor the yVals parameters may be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "xVals and yVals List parameters must be of the same size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 118
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 119
    return-void
.end method

.method protected static varargs asNumberList([Ljava/lang/Number;)Ljava/util/List;
    .locals 4
    .param p0, "model"    # [Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Number;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 87
    .local v0, "n":Ljava/lang/Number;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "n":Ljava/lang/Number;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addFirst(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 2
    .param p1, "x"    # Ljava/lang/Number;
    .param p2, "y"    # Ljava/lang/Number;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 257
    return-void

    .line 255
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public addLast(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 2
    .param p1, "x"    # Ljava/lang/Number;
    .param p2, "y"    # Ljava/lang/Number;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 285
    return-void

    .line 283
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 345
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 349
    return-void

    .line 347
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getX(I)Ljava/lang/Number;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getXOrder()Lcom/androidplot/xy/OrderedXYSeries$XOrder;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xOrder:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    return-object v0
.end method

.method public getY(I)Ljava/lang/Number;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public getxVals()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getyVals()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    return-object v0
.end method

.method public onAfterDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "source"    # Lcom/androidplot/Plot;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 82
    return-void
.end method

.method public onBeforeDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "source"    # Lcom/androidplot/Plot;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 77
    return-void
.end method

.method public removeFirst()Lcom/androidplot/xy/XYCoords;
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lcom/androidplot/xy/SimpleXYSeries;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 267
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 269
    :cond_0
    :try_start_1
    new-instance v2, Lcom/androidplot/xy/XYCoords;

    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-direct {v2, v1, v0}, Lcom/androidplot/xy/XYCoords;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 269
    return-object v2

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public removeLast()Lcom/androidplot/xy/XYCoords;
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 294
    :try_start_0
    invoke-virtual {p0}, Lcom/androidplot/xy/SimpleXYSeries;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 295
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 297
    :cond_0
    :try_start_1
    new-instance v2, Lcom/androidplot/xy/XYCoords;

    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-direct {v2, v1, v0}, Lcom/androidplot/xy/XYCoords;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 297
    return-object v2

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public resize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 216
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    .restart local v0    # "i":I
    :goto_1
    if-le v0, p1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 225
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 229
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 231
    return-void

    .line 229
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public setModel(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;)V
    .locals 7
    .param p2, "format"    # Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "model":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    iget-object v4, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 144
    const/4 v4, 0x0

    :try_start_0
    iput-object v4, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    .line 145
    iget-object v4, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 148
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 180
    :cond_0
    iget-object v4, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 182
    :goto_0
    return-void

    .line 152
    :cond_1
    :try_start_1
    sget-object v4, Lcom/androidplot/xy/SimpleXYSeries$1;->$SwitchMap$com$androidplot$xy$SimpleXYSeries$ArrayFormat:[I

    invoke-virtual {p2}, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 177
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected enum value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v4

    .line 156
    :pswitch_0
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 157
    .local v2, "n":Ljava/lang/Number;
    iget-object v5, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    .end local v2    # "n":Ljava/lang/Number;
    :pswitch_1
    iget-object v4, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    if-nez v4, :cond_2

    .line 164
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    .line 166
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 167
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    const-string v5, "Cannot auto-generate series from odd-sized xy List."

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 170
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    .line 171
    .local v3, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v0, v3, :cond_4

    .line 172
    iget-object v4, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v4, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 180
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v3    # "sz":I
    :cond_4
    iget-object v4, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 311
    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->title:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 313
    return-void

    .line 312
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public setX(Ljava/lang/Number;I)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Number;
    .param p2, "index"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p2, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 196
    return-void

    .line 194
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public setXOrder(Lcom/androidplot/xy/OrderedXYSeries$XOrder;)V
    .locals 0
    .param p1, "xOrder"    # Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->xOrder:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    .line 72
    return-void
.end method

.method public setXY(Ljava/lang/Number;Ljava/lang/Number;I)V
    .locals 2
    .param p1, "xVal"    # Ljava/lang/Number;
    .param p2, "yVal"    # Ljava/lang/Number;
    .param p3, "index"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p3, p2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p3, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public setY(Ljava/lang/Number;I)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Number;
    .param p2, "index"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p2, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 210
    return-void

    .line 208
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useImplicitXVals()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 127
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 131
    return-void

    .line 129
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method
