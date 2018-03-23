.class public Lackmaniac/vescmonitor/InputFilterMinMaxFloat;
.super Ljava/lang/Object;
.source "InputFilterMinMaxFloat.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field mPattern:Ljava/util/regex/Pattern;

.field private max:F

.field private min:F


# direct methods
.method public constructor <init>(FFII)V
    .locals 2
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "digitsBeforeZero"    # I
    .param p4, "digitsAfterZero"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[-+]?[0-9]{0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}+((\\.[0-9]{0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})?)||(\\.)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;->mPattern:Ljava/util/regex/Pattern;

    .line 17
    iput p1, p0, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;->min:F

    .line 18
    iput p2, p0, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;->max:F

    .line 19
    return-void
.end method

.method private isInRange(FFF)Z
    .locals 3
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    cmpl-float v2, p2, p1

    if-lez v2, :cond_2

    cmpl-float v2, p3, p1

    if-ltz v2, :cond_1

    cmpg-float v2, p3, p2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    cmpl-float v2, p3, p2

    if-ltz v2, :cond_3

    cmpg-float v2, p3, p1

    if-lez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-interface {p4, v5, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v5

    invoke-interface {p4, p6, v5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "text":Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;->min:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-object v3

    .line 27
    :cond_1
    iget-object v4, p0, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_2

    .line 28
    const-string v3, ""

    goto :goto_0

    .line 30
    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 31
    .local v0, "input":F
    iget v4, p0, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;->min:F

    iget v5, p0, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;->max:F

    invoke-direct {p0, v4, v5, v0}, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;->isInRange(FFF)Z

    move-result v4

    if-nez v4, :cond_0

    .line 34
    iget v3, p0, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;->max:F

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_3

    iget v3, p0, Lackmaniac/vescmonitor/InputFilterMinMaxFloat;->max:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_3

    if-nez p2, :cond_3

    .line 35
    const-string v3, "-"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    .end local v0    # "input":F
    :catch_0
    move-exception v1

    .line 39
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const-string v3, ""

    goto :goto_0

    .line 41
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v0    # "input":F
    :cond_3
    const-string v3, ""

    goto :goto_0
.end method
