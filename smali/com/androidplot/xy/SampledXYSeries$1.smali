.class Lcom/androidplot/xy/SampledXYSeries$1;
.super Ljava/lang/Object;
.source "SampledXYSeries.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidplot/xy/SampledXYSeries;->resample()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidplot/xy/SampledXYSeries;

.field final synthetic val$thisSeries:Lcom/androidplot/xy/EditableXYSeries;


# direct methods
.method constructor <init>(Lcom/androidplot/xy/SampledXYSeries;Lcom/androidplot/xy/EditableXYSeries;)V
    .locals 0
    .param p1, "this$0"    # Lcom/androidplot/xy/SampledXYSeries;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/androidplot/xy/SampledXYSeries$1;->this$0:Lcom/androidplot/xy/SampledXYSeries;

    iput-object p2, p0, Lcom/androidplot/xy/SampledXYSeries$1;->val$thisSeries:Lcom/androidplot/xy/EditableXYSeries;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/androidplot/xy/SampledXYSeries$1;->this$0:Lcom/androidplot/xy/SampledXYSeries;

    invoke-virtual {v2}, Lcom/androidplot/xy/SampledXYSeries;->getAlgorithm()Lcom/androidplot/xy/Sampler;

    move-result-object v2

    iget-object v3, p0, Lcom/androidplot/xy/SampledXYSeries$1;->this$0:Lcom/androidplot/xy/SampledXYSeries;

    .line 84
    invoke-static {v3}, Lcom/androidplot/xy/SampledXYSeries;->access$000(Lcom/androidplot/xy/SampledXYSeries;)Lcom/androidplot/xy/XYSeries;

    move-result-object v3

    iget-object v4, p0, Lcom/androidplot/xy/SampledXYSeries$1;->val$thisSeries:Lcom/androidplot/xy/EditableXYSeries;

    invoke-interface {v2, v3, v4}, Lcom/androidplot/xy/Sampler;->run(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/EditableXYSeries;)Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    .line 85
    .local v0, "b":Lcom/androidplot/xy/RectRegion;
    iget-object v2, p0, Lcom/androidplot/xy/SampledXYSeries$1;->this$0:Lcom/androidplot/xy/SampledXYSeries;

    invoke-static {v2}, Lcom/androidplot/xy/SampledXYSeries;->access$100(Lcom/androidplot/xy/SampledXYSeries;)Lcom/androidplot/xy/RectRegion;

    move-result-object v2

    if-nez v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/androidplot/xy/SampledXYSeries$1;->this$0:Lcom/androidplot/xy/SampledXYSeries;

    invoke-static {v2, v0}, Lcom/androidplot/xy/SampledXYSeries;->access$102(Lcom/androidplot/xy/SampledXYSeries;Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/RectRegion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "b":Lcom/androidplot/xy/RectRegion;
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/androidplot/xy/SampledXYSeries$1;->this$0:Lcom/androidplot/xy/SampledXYSeries;

    invoke-static {v2, v1}, Lcom/androidplot/xy/SampledXYSeries;->access$202(Lcom/androidplot/xy/SampledXYSeries;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto :goto_0
.end method
