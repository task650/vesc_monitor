.class public Lcom/androidplot/util/FastNumber;
.super Ljava/lang/Number;
.source "FastNumber.java"


# instance fields
.field private doublePrimitive:D

.field private floatPrimitive:F

.field private hasDoublePrimitive:Z

.field private hasFloatPrimitive:Z

.field private hasIntPrimitive:Z

.field private intPrimitive:I

.field private number:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/Number;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 20
    instance-of v1, p1, Lcom/androidplot/util/FastNumber;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 21
    check-cast v0, Lcom/androidplot/util/FastNumber;

    .line 22
    .local v0, "rhs":Lcom/androidplot/util/FastNumber;
    iget-object v1, v0, Lcom/androidplot/util/FastNumber;->number:Ljava/lang/Number;

    iput-object v1, p0, Lcom/androidplot/util/FastNumber;->number:Ljava/lang/Number;

    .line 23
    iget-boolean v1, v0, Lcom/androidplot/util/FastNumber;->hasDoublePrimitive:Z

    iput-boolean v1, p0, Lcom/androidplot/util/FastNumber;->hasDoublePrimitive:Z

    .line 24
    iget-boolean v1, v0, Lcom/androidplot/util/FastNumber;->hasFloatPrimitive:Z

    iput-boolean v1, p0, Lcom/androidplot/util/FastNumber;->hasFloatPrimitive:Z

    .line 25
    iget-boolean v1, v0, Lcom/androidplot/util/FastNumber;->hasIntPrimitive:Z

    iput-boolean v1, p0, Lcom/androidplot/util/FastNumber;->hasIntPrimitive:Z

    .line 26
    iget-wide v2, v0, Lcom/androidplot/util/FastNumber;->doublePrimitive:D

    iput-wide v2, p0, Lcom/androidplot/util/FastNumber;->doublePrimitive:D

    .line 27
    iget v1, v0, Lcom/androidplot/util/FastNumber;->floatPrimitive:F

    iput v1, p0, Lcom/androidplot/util/FastNumber;->floatPrimitive:F

    .line 28
    iget v1, v0, Lcom/androidplot/util/FastNumber;->intPrimitive:I

    iput v1, p0, Lcom/androidplot/util/FastNumber;->intPrimitive:I

    .line 32
    .end local v0    # "rhs":Lcom/androidplot/util/FastNumber;
    :goto_0
    return-void

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/androidplot/util/FastNumber;->number:Ljava/lang/Number;

    goto :goto_0
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/androidplot/util/FastNumber;->hasDoublePrimitive:Z

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/androidplot/util/FastNumber;->number:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidplot/util/FastNumber;->doublePrimitive:D

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidplot/util/FastNumber;->hasDoublePrimitive:Z

    .line 64
    :cond_0
    iget-wide v0, p0, Lcom/androidplot/util/FastNumber;->doublePrimitive:D

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/androidplot/util/FastNumber;->hasFloatPrimitive:Z

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/androidplot/util/FastNumber;->number:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/androidplot/util/FastNumber;->floatPrimitive:F

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidplot/util/FastNumber;->hasFloatPrimitive:Z

    .line 55
    :cond_0
    iget v0, p0, Lcom/androidplot/util/FastNumber;->floatPrimitive:F

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/androidplot/util/FastNumber;->hasIntPrimitive:Z

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/androidplot/util/FastNumber;->number:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/androidplot/util/FastNumber;->intPrimitive:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidplot/util/FastNumber;->hasIntPrimitive:Z

    .line 40
    :cond_0
    iget v0, p0, Lcom/androidplot/util/FastNumber;->intPrimitive:I

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/androidplot/util/FastNumber;->number:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
