.class public Lcom/androidplot/util/LayerHash;
.super Ljava/lang/Object;
.source "LayerHash.java"

# interfaces
.implements Lcom/androidplot/util/Layerable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyType:",
        "Ljava/lang/Object;",
        "ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/androidplot/util/Layerable",
        "<TKeyType;>;"
    }
.end annotation


# instance fields
.field private hash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TKeyType;TValueType;>;"
        }
    .end annotation
.end field

.field private zlist:Lcom/androidplot/util/LinkedLayerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/util/LinkedLayerList",
            "<TKeyType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/androidplot/util/LayerHash;, "Lcom/androidplot/util/LayerHash<TKeyType;TValueType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    .line 33
    new-instance v0, Lcom/androidplot/util/LinkedLayerList;

    invoke-direct {v0}, Lcom/androidplot/util/LinkedLayerList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    .line 34
    return-void
.end method


# virtual methods
.method public declared-synchronized addToBottom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;TValueType;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/androidplot/util/LayerHash;, "Lcom/androidplot/util/LayerHash<TKeyType;TValueType;>;"
    .local p1, "key":Ljava/lang/Object;, "TKeyType;"
    .local p2, "value":Ljava/lang/Object;, "TValueType;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LinkedLayerList;->addToBottom(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addToTop(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;TValueType;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/androidplot/util/LayerHash;, "Lcom/androidplot/util/LayerHash<TKeyType;TValueType;>;"
    .local p1, "key":Ljava/lang/Object;, "TKeyType;"
    .local p2, "value":Ljava/lang/Object;, "TValueType;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LinkedLayerList;->addToTop(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public elements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TKeyType;>;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lcom/androidplot/util/LayerHash;, "Lcom/androidplot/util/LayerHash<TKeyType;TValueType;>;"
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)TValueType;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/androidplot/util/LayerHash;, "Lcom/androidplot/util/LayerHash<TKeyType;TValueType;>;"
    .local p1, "key":Ljava/lang/Object;, "TKeyType;"
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKeysAsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TKeyType;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/androidplot/util/LayerHash;, "Lcom/androidplot/util/LayerHash<TKeyType;TValueType;>;"
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    return-object v0
.end method

.method public keys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TKeyType;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/androidplot/util/LayerHash;, "Lcom/androidplot/util/LayerHash<TKeyType;TValueType;>;"
    invoke-virtual {p0}, Lcom/androidplot/util/LayerHash;->elements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized moveAbove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;TKeyType;)Z"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/androidplot/util/LayerHash;, "Lcom/androidplot/util/LayerHash<TKeyType;TValueType;>;"
    .local p1, "objectToMove":Ljava/lang/Object;, "TKeyType;"
    .local p2, "reference":Ljava/lang/Object;, "TKeyType;"
    monitor-enter p0

    if-ne p1, p2, :cond_0

    .line 89
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal argument to moveAbove(A, B); A cannot be equal to B."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 91
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 92
    :cond_1
    const/4 v0, 0x0

    .line 94
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/util/LinkedLayerList;->moveAbove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized moveBeneath(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;TKeyType;)Z"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/androidplot/util/LayerHash;, "Lcom/androidplot/util/LayerHash<TKeyType;TValueType;>;"
    .local p1, "objectToMove":Ljava/lang/Object;, "TKeyType;"
    .local p2, "reference":Ljava/lang/Object;, "TKeyType;"
    monitor-enter p0

    if-ne p1, p2, :cond_0

    .line 100
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal argument to moveBeaneath(A, B); A cannot be equal to B."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 103
    :cond_1
    const/4 v0, 0x0

    .line 105
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/util/LinkedLayerList;->moveBeneath(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized moveDown(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)Z"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lcom/androidplot/util/LayerHash;, "Lcom/androidplot/util/LayerHash<TKeyType;TValueType;>;"
    .local p1, "key":Ljava/lang/Object;, "TKeyType;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LinkedLayerList;->moveDown(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized moveToBottom(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)Z"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/androidplot/util/LayerHash;, "Lcom/androidplot/util/LayerHash<TKeyType;TValueType;>;"
    .local p1, "key":Ljava/lang/Object;, "TKeyType;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LinkedLayerList;->moveToBottom(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized moveToTop(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/androidplot/util/LayerHash;, "Lcom/androidplot/util/LayerHash<TKeyType;TValueType;>;"
    .local p1, "element":Ljava/lang/Object;, "TKeyType;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LinkedLayerList;->moveToTop(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized moveUp(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)Z"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/androidplot/util/LayerHash;, "Lcom/androidplot/util/LayerHash<TKeyType;TValueType;>;"
    .local p1, "key":Ljava/lang/Object;, "TKeyType;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LinkedLayerList;->moveUp(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)Z"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/androidplot/util/LayerHash;, "Lcom/androidplot/util/LayerHash<TKeyType;TValueType;>;"
    .local p1, "key":Ljava/lang/Object;, "TKeyType;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LinkedLayerList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    const/4 v0, 0x1

    .line 153
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/androidplot/util/LayerHash;, "Lcom/androidplot/util/LayerHash<TKeyType;TValueType;>;"
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0}, Lcom/androidplot/util/LinkedLayerList;->size()I

    move-result v0

    return v0
.end method
