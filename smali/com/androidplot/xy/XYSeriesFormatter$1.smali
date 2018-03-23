.class Lcom/androidplot/xy/XYSeriesFormatter$1;
.super Ljava/lang/Object;
.source "XYSeriesFormatter.java"

# interfaces
.implements Lcom/androidplot/xy/PointLabeler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/XYSeriesFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidplot/xy/XYSeriesFormatter;


# direct methods
.method constructor <init>(Lcom/androidplot/xy/XYSeriesFormatter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/androidplot/xy/XYSeriesFormatter;

    .prologue
    .line 28
    .local p0, "this":Lcom/androidplot/xy/XYSeriesFormatter$1;, "Lcom/androidplot/xy/XYSeriesFormatter$1;"
    iput-object p1, p0, Lcom/androidplot/xy/XYSeriesFormatter$1;->this$0:Lcom/androidplot/xy/XYSeriesFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;
    .locals 2
    .param p1, "series"    # Lcom/androidplot/xy/XYSeries;
    .param p2, "index"    # I

    .prologue
    .line 31
    .local p0, "this":Lcom/androidplot/xy/XYSeriesFormatter$1;, "Lcom/androidplot/xy/XYSeriesFormatter$1;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, p2}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

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
