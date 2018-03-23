.class public Lcom/androidplot/Region;
.super Ljava/lang/Object;
.source "Region.java"


# instance fields
.field private cachedLength:Lcom/androidplot/util/FastNumber;

.field private defaults:Lcom/androidplot/Region;

.field private max:Lcom/androidplot/util/FastNumber;

.field private min:Lcom/androidplot/util/FastNumber;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p0, p0, Lcom/androidplot/Region;->defaults:Lcom/androidplot/Region;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 4
    .param p1, "v1"    # Ljava/lang/Number;
    .param p2, "v2"    # Ljava/lang/Number;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p0, p0, Lcom/androidplot/Region;->defaults:Lcom/androidplot/Region;

    .line 44
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0, p2}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    goto :goto_0
.end method

.method public static measure(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1
    .param p0, "v1"    # Ljava/lang/Number;
    .param p1, "v2"    # Ljava/lang/Number;

    .prologue
    .line 66
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0, p0, p1}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-virtual {v0}, Lcom/androidplot/Region;->length()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public static withDefaults(Lcom/androidplot/Region;)Lcom/androidplot/Region;
    .locals 3
    .param p0, "defaults"    # Lcom/androidplot/Region;

    .prologue
    .line 35
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/androidplot/Region;->isDefined()Z

    move-result v1

    if-nez v1, :cond_1

    .line 36
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "When specifying default min and max must both be non-null values"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_1
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0}, Lcom/androidplot/Region;-><init>()V

    .line 39
    .local v0, "r":Lcom/androidplot/Region;
    iput-object p0, v0, Lcom/androidplot/Region;->defaults:Lcom/androidplot/Region;

    .line 40
    return-object v0
.end method


# virtual methods
.method public center()Ljava/lang/Number;
    .locals 6

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/androidplot/Region;->length()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Number;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 86
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMax()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/androidplot/Region;->isMaxSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/Region;->max:Lcom/androidplot/util/FastNumber;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androidplot/Region;->defaults:Lcom/androidplot/Region;

    iget-object v0, v0, Lcom/androidplot/Region;->max:Lcom/androidplot/util/FastNumber;

    goto :goto_0
.end method

.method public getMin()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/androidplot/Region;->isMinSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/Region;->min:Lcom/androidplot/util/FastNumber;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androidplot/Region;->defaults:Lcom/androidplot/Region;

    iget-object v0, v0, Lcom/androidplot/Region;->min:Lcom/androidplot/util/FastNumber;

    goto :goto_0
.end method

.method public intersect(Lcom/androidplot/Region;)V
    .locals 4
    .param p1, "input"    # Lcom/androidplot/Region;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 182
    invoke-virtual {p1}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 184
    :cond_1
    return-void
.end method

.method public intersects(Lcom/androidplot/Region;)Z
    .locals 2
    .param p1, "region"    # Lcom/androidplot/Region;

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/androidplot/Region;->intersects(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public intersects(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 6
    .param p1, "line2Min"    # Ljava/lang/Number;
    .param p2, "line2Max"    # Ljava/lang/Number;

    .prologue
    const/4 v0, 0x1

    .line 195
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/androidplot/Region;->contains(Ljava/lang/Number;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/androidplot/Region;->contains(Ljava/lang/Number;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefined()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/androidplot/Region;->min:Lcom/androidplot/util/FastNumber;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/Region;->max:Lcom/androidplot/util/FastNumber;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMaxSet()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/androidplot/Region;->max:Lcom/androidplot/util/FastNumber;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMinSet()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/androidplot/Region;->min:Lcom/androidplot/util/FastNumber;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()Ljava/lang/Number;
    .locals 6

    .prologue
    .line 70
    iget-object v1, p0, Lcom/androidplot/Region;->cachedLength:Lcom/androidplot/util/FastNumber;

    if-nez v1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 73
    .local v0, "l":Ljava/lang/Number;
    :goto_0
    if-eqz v0, :cond_1

    .line 74
    new-instance v1, Lcom/androidplot/util/FastNumber;

    invoke-direct {v1, v0}, Lcom/androidplot/util/FastNumber;-><init>(Ljava/lang/Number;)V

    iput-object v1, p0, Lcom/androidplot/Region;->cachedLength:Lcom/androidplot/util/FastNumber;

    .line 77
    .end local v0    # "l":Ljava/lang/Number;
    :cond_1
    iget-object v1, p0, Lcom/androidplot/Region;->cachedLength:Lcom/androidplot/util/FastNumber;

    return-object v1

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public ratio(DD)D
    .locals 5
    .param p1, "min"    # D
    .param p3, "max"    # D

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/androidplot/Region;->length()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    sub-double v2, p3, p1

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public ratio(Lcom/androidplot/Region;)Ljava/lang/Number;
    .locals 4
    .param p1, "r2"    # Lcom/androidplot/Region;

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/androidplot/Region;->ratio(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public setMax(Ljava/lang/Number;)V
    .locals 2
    .param p1, "max"    # Ljava/lang/Number;

    .prologue
    const/4 v1, 0x0

    .line 232
    iput-object v1, p0, Lcom/androidplot/Region;->cachedLength:Lcom/androidplot/util/FastNumber;

    .line 233
    if-nez p1, :cond_1

    .line 234
    iget-object v0, p0, Lcom/androidplot/Region;->defaults:Lcom/androidplot/Region;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Region values can never be null unless defaults have been set."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    iput-object v1, p0, Lcom/androidplot/Region;->max:Lcom/androidplot/util/FastNumber;

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_1
    new-instance v0, Lcom/androidplot/util/FastNumber;

    invoke-direct {v0, p1}, Lcom/androidplot/util/FastNumber;-><init>(Ljava/lang/Number;)V

    iput-object v0, p0, Lcom/androidplot/Region;->max:Lcom/androidplot/util/FastNumber;

    goto :goto_0
.end method

.method public setMin(Ljava/lang/Number;)V
    .locals 2
    .param p1, "min"    # Ljava/lang/Number;

    .prologue
    const/4 v1, 0x0

    .line 210
    iput-object v1, p0, Lcom/androidplot/Region;->cachedLength:Lcom/androidplot/util/FastNumber;

    .line 211
    if-nez p1, :cond_1

    .line 212
    iget-object v0, p0, Lcom/androidplot/Region;->defaults:Lcom/androidplot/Region;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Region values cannot be null unless defaults have been set."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    iput-object v1, p0, Lcom/androidplot/Region;->min:Lcom/androidplot/util/FastNumber;

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_1
    new-instance v0, Lcom/androidplot/util/FastNumber;

    invoke-direct {v0, p1}, Lcom/androidplot/util/FastNumber;-><init>(Ljava/lang/Number;)V

    iput-object v0, p0, Lcom/androidplot/Region;->min:Lcom/androidplot/util/FastNumber;

    goto :goto_0
.end method

.method public setMinMax(Lcom/androidplot/Region;)V
    .locals 1
    .param p1, "region"    # Lcom/androidplot/Region;

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 55
    invoke-virtual {p1}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    .line 56
    return-void
.end method

.method public transform(DDDZ)D
    .locals 9
    .param p1, "value"    # D
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "flip"    # Z

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/androidplot/Region;->length()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 118
    .local v2, "range":D
    sub-double v0, p5, p3

    .line 121
    .local v0, "r2":D
    div-double v4, v0, v2

    .line 122
    .local v4, "scale":D
    if-nez p7, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    sub-double v6, p1, v6

    mul-double/2addr v6, v4

    add-double/2addr v6, p3

    .line 125
    :goto_0
    return-wide v6

    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    sub-double v6, p1, v6

    mul-double/2addr v6, v4

    sub-double v6, p5, v6

    goto :goto_0
.end method

.method public transform(DLcom/androidplot/Region;)Ljava/lang/Number;
    .locals 1
    .param p1, "value"    # D
    .param p3, "region2"    # Lcom/androidplot/Region;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;Z)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public transform(DLcom/androidplot/Region;Z)Ljava/lang/Number;
    .locals 9
    .param p1, "value"    # D
    .param p3, "region2"    # Lcom/androidplot/Region;
    .param p4, "flip"    # Z

    .prologue
    .line 113
    invoke-virtual {p3}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p3}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-object v1, p0

    move-wide v2, p1

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public union(Lcom/androidplot/Region;)V
    .locals 1
    .param p1, "input"    # Lcom/androidplot/Region;

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidplot/Region;->union(Ljava/lang/Number;)V

    .line 169
    invoke-virtual {p1}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidplot/Region;->union(Ljava/lang/Number;)V

    .line 170
    return-void
.end method

.method public union(Ljava/lang/Number;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 145
    if-nez p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 149
    .local v0, "val":D
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_3

    .line 151
    :cond_2
    invoke-virtual {p0, p1}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 153
    :cond_3
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 154
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 155
    :cond_4
    invoke-virtual {p0, p1}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    goto :goto_0
.end method
