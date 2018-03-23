.class public Lcom/androidplot/ui/RenderStack$StackElement;
.super Ljava/lang/Object;
.source "RenderStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/ui/RenderStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StackElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SeriesType::",
        "Lcom/androidplot/Series;",
        "FormatterType:",
        "Lcom/androidplot/ui/Formatter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private isEnabled:Z

.field private seriesBundle:Lcom/androidplot/ui/SeriesBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/ui/SeriesBundle",
            "<TSeriesType;TFormatterType;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/androidplot/ui/RenderStack;


# direct methods
.method public constructor <init>(Lcom/androidplot/ui/RenderStack;Lcom/androidplot/ui/SeriesBundle;)V
    .locals 1
    .param p1, "this$0"    # Lcom/androidplot/ui/RenderStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/ui/SeriesBundle",
            "<TSeriesType;TFormatterType;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/androidplot/ui/RenderStack$StackElement;, "Lcom/androidplot/ui/RenderStack<TSeriesType;TFormatterType;>.StackElement<TSeriesType;TFormatterType;>;"
    .local p2, "seriesBundle":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;TFormatterType;>;"
    iput-object p1, p0, Lcom/androidplot/ui/RenderStack$StackElement;->this$0:Lcom/androidplot/ui/RenderStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidplot/ui/RenderStack$StackElement;->isEnabled:Z

    .line 47
    invoke-virtual {p0, p2}, Lcom/androidplot/ui/RenderStack$StackElement;->set(Lcom/androidplot/ui/SeriesBundle;)V

    .line 48
    return-void
.end method


# virtual methods
.method public get()Lcom/androidplot/ui/SeriesBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/androidplot/ui/SeriesBundle",
            "<TSeriesType;TFormatterType;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/androidplot/ui/RenderStack$StackElement;, "Lcom/androidplot/ui/RenderStack<TSeriesType;TFormatterType;>.StackElement<TSeriesType;TFormatterType;>;"
    iget-object v0, p0, Lcom/androidplot/ui/RenderStack$StackElement;->seriesBundle:Lcom/androidplot/ui/SeriesBundle;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/androidplot/ui/RenderStack$StackElement;, "Lcom/androidplot/ui/RenderStack<TSeriesType;TFormatterType;>.StackElement<TSeriesType;TFormatterType;>;"
    iget-boolean v0, p0, Lcom/androidplot/ui/RenderStack$StackElement;->isEnabled:Z

    return v0
.end method

.method public set(Lcom/androidplot/ui/SeriesBundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/ui/SeriesBundle",
            "<TSeriesType;TFormatterType;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/androidplot/ui/RenderStack$StackElement;, "Lcom/androidplot/ui/RenderStack<TSeriesType;TFormatterType;>.StackElement<TSeriesType;TFormatterType;>;"
    .local p1, "seriesBundle":Lcom/androidplot/ui/SeriesBundle;, "Lcom/androidplot/ui/SeriesBundle<TSeriesType;TFormatterType;>;"
    iput-object p1, p0, Lcom/androidplot/ui/RenderStack$StackElement;->seriesBundle:Lcom/androidplot/ui/SeriesBundle;

    .line 57
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 69
    .local p0, "this":Lcom/androidplot/ui/RenderStack$StackElement;, "Lcom/androidplot/ui/RenderStack<TSeriesType;TFormatterType;>.StackElement<TSeriesType;TFormatterType;>;"
    iput-boolean p1, p0, Lcom/androidplot/ui/RenderStack$StackElement;->isEnabled:Z

    .line 70
    return-void
.end method
