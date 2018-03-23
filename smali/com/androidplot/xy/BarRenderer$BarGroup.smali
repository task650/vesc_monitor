.class Lcom/androidplot/xy/BarRenderer$BarGroup;
.super Ljava/lang/Object;
.source "BarRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarGroup"
.end annotation


# instance fields
.field public bars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/androidplot/xy/BarRenderer",
            "<TFormatterType;>.Bar;>;"
        }
    .end annotation
.end field

.field public intX:I

.field public leftX:I

.field public plotArea:Landroid/graphics/RectF;

.field public prev:Lcom/androidplot/xy/BarRenderer$BarGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/xy/BarRenderer",
            "<TFormatterType;>.BarGroup;"
        }
    .end annotation
.end field

.field public rightX:I

.field final synthetic this$0:Lcom/androidplot/xy/BarRenderer;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/BarRenderer;ILandroid/graphics/RectF;)V
    .locals 1
    .param p2, "intX"    # I
    .param p3, "plotArea"    # Landroid/graphics/RectF;

    .prologue
    .line 376
    .local p0, "this":Lcom/androidplot/xy/BarRenderer$BarGroup;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.BarGroup;"
    iput-object p1, p0, Lcom/androidplot/xy/BarRenderer$BarGroup;->this$0:Lcom/androidplot/xy/BarRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/BarRenderer$BarGroup;->bars:Ljava/util/ArrayList;

    .line 379
    iput p2, p0, Lcom/androidplot/xy/BarRenderer$BarGroup;->intX:I

    .line 380
    iput-object p3, p0, Lcom/androidplot/xy/BarRenderer$BarGroup;->plotArea:Landroid/graphics/RectF;

    .line 381
    return-void
.end method


# virtual methods
.method public addBar(Lcom/androidplot/xy/BarRenderer$Bar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/xy/BarRenderer",
            "<TFormatterType;>.Bar;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, "this":Lcom/androidplot/xy/BarRenderer$BarGroup;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.BarGroup;"
    .local p1, "bar":Lcom/androidplot/xy/BarRenderer$Bar;, "Lcom/androidplot/xy/BarRenderer<TFormatterType;>.Bar;"
    iput-object p0, p1, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    .line 385
    iget-object v0, p0, Lcom/androidplot/xy/BarRenderer$BarGroup;->bars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    return-void
.end method
