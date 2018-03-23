.class abstract Lcom/halfhp/fig/FigUtils;
.super Ljava/lang/Object;
.source "FigUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/halfhp/fig/FigUtils$InternalDimension;
    }
.end annotation


# static fields
.field protected static final DIMENSION_PATTERN:Ljava/util/regex/Pattern;

.field protected static final DIMENSION_REGEX:Ljava/lang/String; = "^\\-?\\s*(\\d+(\\.\\d+)*)\\s*([a-zA-Z]+)\\s*$"

.field public static final dimensionConstantLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "^\\-?\\s*(\\d+(\\.\\d+)*)\\s*([a-zA-Z]+)\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/halfhp/fig/FigUtils;->DIMENSION_PATTERN:Ljava/util/regex/Pattern;

    .line 23
    invoke-static {}, Lcom/halfhp/fig/FigUtils;->initDimensionConstantLookup()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/halfhp/fig/FigUtils;->dimensionConstantLookup:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static initDimensionConstantLookup()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "px"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "dip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "dp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "sp"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "pt"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "in"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "mm"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static stringToDimension(Landroid/content/Context;Ljava/lang/String;)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dimension"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p1}, Lcom/halfhp/fig/FigUtils;->stringToInternalDimension(Ljava/lang/String;)Lcom/halfhp/fig/FigUtils$InternalDimension;

    move-result-object v0

    .line 50
    .local v0, "internalDimension":Lcom/halfhp/fig/FigUtils$InternalDimension;
    iget v1, v0, Lcom/halfhp/fig/FigUtils$InternalDimension;->unit:I

    iget v2, v0, Lcom/halfhp/fig/FigUtils$InternalDimension;->value:F

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 50
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method private static stringToInternalDimension(Ljava/lang/String;)Lcom/halfhp/fig/FigUtils$InternalDimension;
    .locals 6
    .param p0, "dimension"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v4, Lcom/halfhp/fig/FigUtils;->DIMENSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 57
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 61
    .local v3, "value":F
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "unit":Ljava/lang/String;
    sget-object v4, Lcom/halfhp/fig/FigUtils;->dimensionConstantLookup:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 64
    .local v0, "dimensionUnit":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 66
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4

    .line 69
    :cond_0
    new-instance v4, Lcom/halfhp/fig/FigUtils$InternalDimension;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/halfhp/fig/FigUtils$InternalDimension;-><init>(FI)V

    return-object v4

    .line 73
    .end local v0    # "dimensionUnit":Ljava/lang/Integer;
    .end local v2    # "unit":Ljava/lang/String;
    .end local v3    # "value":F
    :cond_1
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4
.end method
