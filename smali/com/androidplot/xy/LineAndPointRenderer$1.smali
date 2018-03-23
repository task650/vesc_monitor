.class Lcom/androidplot/xy/LineAndPointRenderer$1;
.super Ljava/lang/Object;
.source "LineAndPointRenderer.java"

# interfaces
.implements Lcom/androidplot/PlotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidplot/xy/LineAndPointRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidplot/xy/LineAndPointRenderer;


# direct methods
.method constructor <init>(Lcom/androidplot/xy/LineAndPointRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/androidplot/xy/LineAndPointRenderer;

    .prologue
    .line 52
    .local p0, "this":Lcom/androidplot/xy/LineAndPointRenderer$1;, "Lcom/androidplot/xy/LineAndPointRenderer$1;"
    iput-object p1, p0, Lcom/androidplot/xy/LineAndPointRenderer$1;->this$0:Lcom/androidplot/xy/LineAndPointRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "source"    # Lcom/androidplot/Plot;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 61
    .local p0, "this":Lcom/androidplot/xy/LineAndPointRenderer$1;, "Lcom/androidplot/xy/LineAndPointRenderer$1;"
    return-void
.end method

.method public onBeforeDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "source"    # Lcom/androidplot/Plot;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 55
    .local p0, "this":Lcom/androidplot/xy/LineAndPointRenderer$1;, "Lcom/androidplot/xy/LineAndPointRenderer$1;"
    iget-object v0, p0, Lcom/androidplot/xy/LineAndPointRenderer$1;->this$0:Lcom/androidplot/xy/LineAndPointRenderer;

    invoke-virtual {v0}, Lcom/androidplot/xy/LineAndPointRenderer;->cullPointsCache()V

    .line 56
    return-void
.end method
