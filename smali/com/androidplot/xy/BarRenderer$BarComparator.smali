.class public Lcom/androidplot/xy/BarRenderer$BarComparator;
.super Ljava/lang/Object;
.source "BarRenderer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BarComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/androidplot/xy/BarRenderer",
        "<TFormatterType;>.Bar;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidplot/xy/BarRenderer;


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/BarRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/androidplot/xy/BarRenderer;

    .prologue
    .line 390
    .local p0, "this":Lcom/androidplot/xy/BarRenderer$BarComparator;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.BarComparator;"
    iput-object p1, p0, Lcom/androidplot/xy/BarRenderer$BarComparator;->this$0:Lcom/androidplot/xy/BarRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/androidplot/xy/BarRenderer$Bar;Lcom/androidplot/xy/BarRenderer$Bar;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/xy/BarRenderer",
            "<TFormatterType;>.Bar;",
            "Lcom/androidplot/xy/BarRenderer",
            "<TFormatterType;>.Bar;)I"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, "this":Lcom/androidplot/xy/BarRenderer$BarComparator;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.BarComparator;"
    .local p1, "bar1":Lcom/androidplot/xy/BarRenderer$Bar;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.Bar;"
    .local p2, "bar2":Lcom/androidplot/xy/BarRenderer$Bar;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.Bar;"
    sget-object v0, Lcom/androidplot/xy/BarRenderer$1;->$SwitchMap$com$androidplot$xy$BarRenderer$Style:[I

    iget-object v1, p0, Lcom/androidplot/xy/BarRenderer$BarComparator;->this$0:Lcom/androidplot/xy/BarRenderer;

    invoke-static {v1}, Lcom/androidplot/xy/BarRenderer;->access$000(Lcom/androidplot/xy/BarRenderer;)Lcom/androidplot/xy/BarRenderer$Style;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/xy/BarRenderer$Style;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 402
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 396
    :pswitch_0
    iget v0, p1, Lcom/androidplot/xy/BarRenderer$Bar;->intY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p2, Lcom/androidplot/xy/BarRenderer$Bar;->intY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0

    .line 398
    :pswitch_1
    iget-object v0, p1, Lcom/androidplot/xy/BarRenderer$Bar;->series:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/androidplot/xy/BarRenderer$Bar;->series:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v1}, Lcom/androidplot/xy/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 400
    :pswitch_2
    iget-object v0, p1, Lcom/androidplot/xy/BarRenderer$Bar;->series:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/androidplot/xy/BarRenderer$Bar;->series:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v1}, Lcom/androidplot/xy/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 389
    .local p0, "this":Lcom/androidplot/xy/BarRenderer$BarComparator;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.BarComparator;"
    check-cast p1, Lcom/androidplot/xy/BarRenderer$Bar;

    check-cast p2, Lcom/androidplot/xy/BarRenderer$Bar;

    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/BarRenderer$BarComparator;->compare(Lcom/androidplot/xy/BarRenderer$Bar;Lcom/androidplot/xy/BarRenderer$Bar;)I

    move-result v0

    return v0
.end method
