.class Lcom/androidplot/Plot$1;
.super Ljava/lang/Object;
.source "Plot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidplot/Plot;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidplot/Plot;


# direct methods
.method constructor <init>(Lcom/androidplot/Plot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/androidplot/Plot;

    .prologue
    .line 381
    .local p0, "this":Lcom/androidplot/Plot$1;, "Lcom/androidplot/Plot$1;"
    iput-object p1, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/androidplot/Plot$1;, "Lcom/androidplot/Plot$1;"
    const/4 v5, 0x0

    .line 385
    iget-object v2, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/androidplot/Plot;->access$102(Lcom/androidplot/Plot;Z)Z

    .line 386
    :goto_0
    iget-object v2, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-static {v2}, Lcom/androidplot/Plot;->access$100(Lcom/androidplot/Plot;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    iget-object v2, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-static {v2, v5}, Lcom/androidplot/Plot;->access$202(Lcom/androidplot/Plot;Z)Z

    .line 388
    iget-object v2, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-static {v2}, Lcom/androidplot/Plot;->access$300(Lcom/androidplot/Plot;)Lcom/androidplot/Plot$BufferedCanvas;

    move-result-object v3

    monitor-enter v3

    .line 389
    :try_start_0
    iget-object v2, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-static {v2}, Lcom/androidplot/Plot;->access$300(Lcom/androidplot/Plot;)Lcom/androidplot/Plot$BufferedCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/Plot$BufferedCanvas;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 390
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-virtual {v2, v0}, Lcom/androidplot/Plot;->renderOnCanvas(Landroid/graphics/Canvas;)V

    .line 391
    iget-object v2, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-static {v2}, Lcom/androidplot/Plot;->access$300(Lcom/androidplot/Plot;)Lcom/androidplot/Plot$BufferedCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/Plot$BufferedCanvas;->swap()V

    .line 392
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 393
    iget-object v2, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-static {v2}, Lcom/androidplot/Plot;->access$400(Lcom/androidplot/Plot;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 394
    :try_start_1
    iget-object v2, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-virtual {v2}, Lcom/androidplot/Plot;->postInvalidate()V

    .line 397
    iget-object v2, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-static {v2}, Lcom/androidplot/Plot;->access$100(Lcom/androidplot/Plot;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    :try_start_2
    iget-object v2, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-static {v2}, Lcom/androidplot/Plot;->access$400(Lcom/androidplot/Plot;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    :cond_0
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 392
    .end local v0    # "c":Landroid/graphics/Canvas;
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 400
    .restart local v0    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5
    iget-object v2, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/androidplot/Plot;->access$102(Lcom/androidplot/Plot;Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 406
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v2, p0, Lcom/androidplot/Plot$1;->this$0:Lcom/androidplot/Plot;

    invoke-static {v2}, Lcom/androidplot/Plot;->access$300(Lcom/androidplot/Plot;)Lcom/androidplot/Plot$BufferedCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/Plot$BufferedCanvas;->recycle()V

    .line 407
    return-void
.end method
