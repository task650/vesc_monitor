.class public abstract Lcom/androidplot/SeriesRegistry;
.super Ljava/lang/Object;
.source "SeriesRegistry.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BundleType:",
        "Lcom/androidplot/ui/SeriesBundle",
        "<TSeriesType;TFormatterType;>;SeriesType::",
        "Lcom/androidplot/Series;",
        "FormatterType:",
        "Lcom/androidplot/ui/Formatter;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private registry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TBundleType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/androidplot/SeriesRegistry;, "Lcom/androidplot/SeriesRegistry<TBundleType;TSeriesType;TFormatterType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/SeriesRegistry;->registry:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;TFormatterType;)Z"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/androidplot/SeriesRegistry;, "Lcom/androidplot/SeriesRegistry<TBundleType;TSeriesType;TFormatterType;>;"
    .local p1, "series":Lcom/androidplot/Series;, "TSeriesType;"
    .local p2, "formatter":Lcom/androidplot/ui/Formatter;, "TFormatterType;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither series nor formatter param may be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/androidplot/SeriesRegistry;->registry:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/androidplot/SeriesRegistry;->newSeriesBundle(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Lcom/androidplot/ui/SeriesBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 112
    .local p0, "this":Lcom/androidplot/SeriesRegistry;, "Lcom/androidplot/SeriesRegistry<TBundleType;TSeriesType;TFormatterType;>;"
    iget-object v1, p0, Lcom/androidplot/SeriesRegistry;->registry:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TBundleType;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public contains(Lcom/androidplot/Series;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;",
            "Ljava/lang/Class",
            "<+TFormatterType;>;)Z"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/androidplot/SeriesRegistry;, "Lcom/androidplot/SeriesRegistry<TBundleType;TSeriesType;TFormatterType;>;"
    .local p1, "series":Lcom/androidplot/Series;, "TSeriesType;"
    .local p2, "formatterClass":Ljava/lang/Class;, "Ljava/lang/Class<+TFormatterType;>;"
    iget-object v1, p0, Lcom/androidplot/SeriesRegistry;->registry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesBundle;

    .line 131
    .local v0, "b":Lcom/androidplot/ui/SeriesBundle;, "TBundleType;"
    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 132
    const/4 v1, 0x1

    .line 135
    .end local v0    # "b":Lcom/androidplot/ui/SeriesBundle;, "TBundleType;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected get(Lcom/androidplot/Series;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;)",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/ui/SeriesBundle",
            "<TSeriesType;TFormatterType;>;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/androidplot/SeriesRegistry;, "Lcom/androidplot/SeriesRegistry<TBundleType;TSeriesType;TFormatterType;>;"
    .local p1, "series":Lcom/androidplot/Series;, "TSeriesType;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/ui/SeriesBundle<TSeriesType;TFormatterType;>;>;"
    iget-object v2, p0, Lcom/androidplot/SeriesRegistry;->registry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/ui/SeriesBundle;

    .line 74
    .local v1, "thisPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;TFormatterType;>;"
    invoke-virtual {v1}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    .end local v1    # "thisPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;TFormatterType;>;"
    :cond_1
    return-object v0
.end method

.method public getLegendEnabledItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/ui/SeriesBundle",
            "<TSeriesType;TFormatterType;>;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/androidplot/SeriesRegistry;, "Lcom/androidplot/SeriesRegistry<TBundleType;TSeriesType;TFormatterType;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v1, "sfList":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/ui/SeriesBundle<TSeriesType;TFormatterType;>;>;"
    iget-object v2, p0, Lcom/androidplot/SeriesRegistry;->registry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesBundle;

    .line 122
    .local v0, "sf":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;TFormatterType;>;"
    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/ui/Formatter;->isLegendIconEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .end local v0    # "sf":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;TFormatterType;>;"
    :cond_1
    return-object v1
.end method

.method public getSeriesAndFormatterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TBundleType;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/androidplot/SeriesRegistry;, "Lcom/androidplot/SeriesRegistry<TBundleType;TSeriesType;TFormatterType;>;"
    iget-object v0, p0, Lcom/androidplot/SeriesRegistry;->registry:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSeriesList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TSeriesType;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/androidplot/SeriesRegistry;, "Lcom/androidplot/SeriesRegistry<TBundleType;TSeriesType;TFormatterType;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TSeriesType;>;"
    iget-object v2, p0, Lcom/androidplot/SeriesRegistry;->registry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/ui/SeriesBundle;

    .line 43
    .local v1, "sfPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;TFormatterType;>;"
    invoke-virtual {v1}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    .end local v1    # "sfPair":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;TFormatterType;>;"
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/androidplot/SeriesRegistry;, "Lcom/androidplot/SeriesRegistry<TBundleType;TSeriesType;TFormatterType;>;"
    iget-object v0, p0, Lcom/androidplot/SeriesRegistry;->registry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected abstract newSeriesBundle(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Lcom/androidplot/ui/SeriesBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;TFormatterType;)TBundleType;"
        }
    .end annotation
.end method

.method public declared-synchronized remove(Lcom/androidplot/Series;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .param p2, "rendererClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<TBundleType;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/androidplot/SeriesRegistry;, "Lcom/androidplot/SeriesRegistry<TBundleType;TSeriesType;TFormatterType;>;"
    .local p1, "series":Lcom/androidplot/Series;, "TSeriesType;"
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v2, "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TBundleType;>;"
    iget-object v3, p0, Lcom/androidplot/SeriesRegistry;->registry:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TBundleType;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesBundle;

    .line 85
    .local v0, "b":Lcom/androidplot/ui/SeriesBundle;, "TBundleType;"
    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/ui/Formatter;->getRendererClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 87
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 82
    .end local v0    # "b":Lcom/androidplot/ui/SeriesBundle;, "TBundleType;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TBundleType;>;"
    .end local v2    # "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TBundleType;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 90
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TBundleType;>;"
    .restart local v2    # "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TBundleType;>;"
    :cond_1
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized remove(Lcom/androidplot/Series;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;)Z"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/androidplot/SeriesRegistry;, "Lcom/androidplot/SeriesRegistry<TBundleType;TSeriesType;TFormatterType;>;"
    .local p1, "series":Lcom/androidplot/Series;, "TSeriesType;"
    monitor-enter p0

    const/4 v1, 0x0

    .line 99
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/androidplot/SeriesRegistry;->registry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TBundleType;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/ui/SeriesBundle;

    invoke-virtual {v2}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    const/4 v1, 0x1

    goto :goto_0

    .line 105
    :cond_1
    monitor-exit p0

    return v1

    .line 98
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TBundleType;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/androidplot/SeriesRegistry;, "Lcom/androidplot/SeriesRegistry<TBundleType;TSeriesType;TFormatterType;>;"
    iget-object v0, p0, Lcom/androidplot/SeriesRegistry;->registry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
