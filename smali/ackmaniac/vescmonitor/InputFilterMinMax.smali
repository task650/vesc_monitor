.class Lackmaniac/vescmonitor/InputFilterMinMax;
.super Ljava/lang/Object;
.source "InputFilterMinMax.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private max:I

.field private min:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lackmaniac/vescmonitor/InputFilterMinMax;->min:I

    .line 12
    iput p2, p0, Lackmaniac/vescmonitor/InputFilterMinMax;->max:I

    .line 13
    return-void
.end method

.method private isInRange(III)Z
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    if-le p2, p1, :cond_2

    if-lt p3, p1, :cond_1

    if-gt p3, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-lt p3, p2, :cond_3

    if-le p3, p1, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dStart"    # I
    .param p6, "dEnd"    # I

    .prologue
    const/4 v2, 0x0

    .line 19
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-interface {p4, v4, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    invoke-interface {p4, p6, v4}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "text":Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lackmaniac/vescmonitor/InputFilterMinMax;->min:I

    if-gez v3, :cond_1

    .line 25
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 21
    .restart local v1    # "text":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 22
    .local v0, "input":I
    iget v3, p0, Lackmaniac/vescmonitor/InputFilterMinMax;->min:I

    iget v4, p0, Lackmaniac/vescmonitor/InputFilterMinMax;->max:I

    invoke-direct {p0, v3, v4, v0}, Lackmaniac/vescmonitor/InputFilterMinMax;->isInRange(III)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 25
    .end local v0    # "input":I
    .end local v1    # "text":Ljava/lang/String;
    :goto_1
    const-string v2, ""

    goto :goto_0

    .line 23
    :catch_0
    move-exception v2

    goto :goto_1
.end method
