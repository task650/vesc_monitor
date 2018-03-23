.class public Lcom/androidplot/util/PixelUtils;
.super Ljava/lang/Object;
.source "PixelUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/util/PixelUtils$InternalDimension;
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

.field private static metrics:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/androidplot/util/PixelUtils;->initDimensionConstantLookup()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidplot/util/PixelUtils;->dimensionConstantLookup:Ljava/util/Map;

    .line 94
    const-string v0, "^\\-?\\s*(\\d+(\\.\\d+)*)\\s*([a-zA-Z]+)\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/androidplot/util/PixelUtils;->DIMENSION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4
    .param p0, "lhs"    # Landroid/graphics/PointF;
    .param p1, "rhs"    # Landroid/graphics/PointF;

    .prologue
    .line 43
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private static checkMetrics()V
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/androidplot/util/PixelUtils;->metrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PixelUtils not initialized; call PixelUtils.init(Context) before using."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    return-void
.end method

.method public static dpToPix(F)F
    .locals 2
    .param p0, "dp"    # F

    .prologue
    .line 56
    invoke-static {}, Lcom/androidplot/util/PixelUtils;->checkMetrics()V

    .line 57
    const/4 v0, 0x1

    sget-object v1, Lcom/androidplot/util/PixelUtils;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/androidplot/util/PixelUtils;->metrics:Landroid/util/DisplayMetrics;

    .line 40
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

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "px"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "dip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "dp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "sp"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "pt"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "in"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "mm"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static spToPix(F)F
    .locals 2
    .param p0, "sp"    # F

    .prologue
    .line 68
    invoke-static {}, Lcom/androidplot/util/PixelUtils;->checkMetrics()V

    .line 69
    const/4 v0, 0x2

    sget-object v1, Lcom/androidplot/util/PixelUtils;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static stringToDimension(Ljava/lang/String;)F
    .locals 4
    .param p0, "dimension"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/androidplot/util/PixelUtils;->stringToInternalDimension(Ljava/lang/String;)Lcom/androidplot/util/PixelUtils$InternalDimension;

    move-result-object v0

    .line 99
    .local v0, "internalDimension":Lcom/androidplot/util/PixelUtils$InternalDimension;
    iget v1, v0, Lcom/androidplot/util/PixelUtils$InternalDimension;->unit:I

    iget v2, v0, Lcom/androidplot/util/PixelUtils$InternalDimension;->value:F

    sget-object v3, Lcom/androidplot/util/PixelUtils;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method private static stringToInternalDimension(Ljava/lang/String;)Lcom/androidplot/util/PixelUtils$InternalDimension;
    .locals 6
    .param p0, "dimension"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-object v4, Lcom/androidplot/util/PixelUtils;->DIMENSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 105
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 110
    .local v3, "value":F
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "unit":Ljava/lang/String;
    sget-object v4, Lcom/androidplot/util/PixelUtils;->dimensionConstantLookup:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 113
    .local v0, "dimensionUnit":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 115
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4

    .line 118
    :cond_0
    new-instance v4, Lcom/androidplot/util/PixelUtils$InternalDimension;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/androidplot/util/PixelUtils$InternalDimension;-><init>(FI)V

    return-object v4

    .line 122
    .end local v0    # "dimensionUnit":Ljava/lang/Integer;
    .end local v2    # "unit":Ljava/lang/String;
    .end local v3    # "value":F
    :cond_1
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4
.end method

.method public static sub(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4
    .param p0, "lhs"    # Landroid/graphics/PointF;
    .param p1, "rhs"    # Landroid/graphics/PointF;

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
