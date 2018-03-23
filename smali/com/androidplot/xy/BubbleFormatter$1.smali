.class Lcom/androidplot/xy/BubbleFormatter$1;
.super Ljava/lang/Object;
.source "BubbleFormatter.java"

# interfaces
.implements Lcom/androidplot/xy/PointLabeler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BubbleFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/androidplot/xy/PointLabeler",
        "<",
        "Lcom/androidplot/xy/BubbleSeries;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidplot/xy/BubbleFormatter;


# direct methods
.method constructor <init>(Lcom/androidplot/xy/BubbleFormatter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/androidplot/xy/BubbleFormatter;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/androidplot/xy/BubbleFormatter$1;->this$0:Lcom/androidplot/xy/BubbleFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabel(Lcom/androidplot/xy/BubbleSeries;I)Ljava/lang/String;
    .locals 2
    .param p1, "series"    # Lcom/androidplot/xy/BubbleSeries;
    .param p2, "index"    # I

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Lcom/androidplot/xy/BubbleSeries;->getZ(I)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    check-cast p1, Lcom/androidplot/xy/BubbleSeries;

    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/BubbleFormatter$1;->getLabel(Lcom/androidplot/xy/BubbleSeries;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
