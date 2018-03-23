.class Lcom/androidplot/xy/XYLegendWidget$RegionEntryComparator;
.super Ljava/lang/Object;
.source "XYLegendWidget.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/XYLegendWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegionEntryComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Lcom/androidplot/xy/XYRegionFormatter;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidplot/xy/XYLegendWidget$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/androidplot/xy/XYLegendWidget$1;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/androidplot/xy/XYLegendWidget$RegionEntryComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 38
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/XYLegendWidget$RegionEntryComparator;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/androidplot/xy/XYRegionFormatter;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/androidplot/xy/XYRegionFormatter;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "o1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/androidplot/xy/XYRegionFormatter;Ljava/lang/String;>;"
    .local p2, "o2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/androidplot/xy/XYRegionFormatter;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
