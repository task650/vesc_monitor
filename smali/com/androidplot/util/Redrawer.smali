.class public Lcom/androidplot/util/Redrawer;
.super Ljava/lang/Object;
.source "Redrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final ONE_SECOND_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private keepAlive:Z

.field private keepRunning:Z

.field private plots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/androidplot/Plot;",
            ">;>;"
        }
    .end annotation
.end field

.field private sleepTime:J

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/androidplot/util/Redrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/androidplot/util/Redrawer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/Plot;FZ)V
    .locals 2
    .param p1, "plot"    # Lcom/androidplot/Plot;
    .param p2, "maxRefreshRate"    # F
    .param p3, "startImmediately"    # Z

    .prologue
    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/androidplot/Plot;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/androidplot/util/Redrawer;-><init>(Ljava/util/List;FZ)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/util/List;FZ)V
    .locals 4
    .param p2, "maxRefreshRate"    # F
    .param p3, "startImmediately"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/androidplot/Plot;",
            ">;FZ)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "plots":Ljava/util/List;, "Ljava/util/List<Lcom/androidplot/Plot;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/androidplot/util/Redrawer;->plots:Ljava/util/List;

    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/Plot;

    .line 57
    .local v0, "plot":Lcom/androidplot/Plot;
    iget-object v2, p0, Lcom/androidplot/util/Redrawer;->plots:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    .end local v0    # "plot":Lcom/androidplot/Plot;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/androidplot/util/Redrawer;->setMaxRefreshRate(F)V

    .line 60
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/androidplot/util/Redrawer;->thread:Ljava/lang/Thread;

    .line 61
    iget-object v1, p0, Lcom/androidplot/util/Redrawer;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 62
    if-eqz p3, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/androidplot/util/Redrawer;->start()V

    .line 65
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/androidplot/util/Redrawer;->keepRunning:Z

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidplot/util/Redrawer;->keepAlive:Z

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 2

    .prologue
    .line 75
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/androidplot/util/Redrawer;->keepRunning:Z

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 77
    sget-object v0, Lcom/androidplot/util/Redrawer;->TAG:Ljava/lang/String;

    const-string v1, "Redrawer paused."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/androidplot/util/Redrawer;->keepAlive:Z

    .line 104
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/androidplot/util/Redrawer;->keepAlive:Z

    if-eqz v1, :cond_2

    .line 105
    iget-boolean v1, p0, Lcom/androidplot/util/Redrawer;->keepRunning:Z

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/androidplot/util/Redrawer;->plots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 112
    .local v0, "plotRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/androidplot/Plot;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/Plot;

    invoke-virtual {v1}, Lcom/androidplot/Plot;->redraw()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 124
    .end local v0    # "plotRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/androidplot/Plot;>;"
    :catch_0
    move-exception v1

    .line 127
    sget-object v1, Lcom/androidplot/util/Redrawer;->TAG:Ljava/lang/String;

    const-string v2, "Redrawer thread exited."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_2
    return-void

    .line 114
    :cond_0
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    :try_start_2
    iget-wide v2, p0, Lcom/androidplot/util/Redrawer;->sleepTime:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 116
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    :catchall_1
    move-exception v1

    sget-object v2, Lcom/androidplot/util/Redrawer;->TAG:Ljava/lang/String;

    const-string v3, "Redrawer thread exited."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    .line 119
    :cond_1
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 120
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 121
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 127
    :cond_2
    sget-object v1, Lcom/androidplot/util/Redrawer;->TAG:Ljava/lang/String;

    const-string v2, "Redrawer thread exited."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setMaxRefreshRate(F)V
    .locals 4
    .param p1, "refreshRate"    # F

    .prologue
    .line 137
    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/androidplot/util/Redrawer;->sleepTime:J

    .line 138
    sget-object v0, Lcom/androidplot/util/Redrawer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Redrawer refresh rate to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/androidplot/util/Redrawer;->sleepTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 84
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/androidplot/util/Redrawer;->keepRunning:Z

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 86
    sget-object v0, Lcom/androidplot/util/Redrawer;->TAG:Ljava/lang/String;

    const-string v1, "Redrawer started."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
