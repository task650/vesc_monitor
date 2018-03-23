.class public Lackmaniac/vescmonitor/DigitsKeyListenerMinMaxFloat;
.super Landroid/text/method/DigitsKeyListener;
.source "DigitsKeyListenerMinMaxFloat.java"


# instance fields
.field mPattern:Ljava/util/regex/Pattern;

.field private max:F

.field private min:F


# direct methods
.method public constructor <init>(FFZ)V
    .locals 1
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "digits"    # Z

    .prologue
    .line 15
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p3}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    .line 16
    iput p1, p0, Lackmaniac/vescmonitor/DigitsKeyListenerMinMaxFloat;->min:F

    .line 17
    iput p2, p0, Lackmaniac/vescmonitor/DigitsKeyListenerMinMaxFloat;->max:F

    .line 18
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInRange(FFF)Z
    .locals 3
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 32
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
    .locals 4
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {p4, v3, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    invoke-interface {p4, p6, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "text":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 26
    .local v0, "input":F
    iget v2, p0, Lackmaniac/vescmonitor/DigitsKeyListenerMinMaxFloat;->min:F

    iget v3, p0, Lackmaniac/vescmonitor/DigitsKeyListenerMinMaxFloat;->max:F

    invoke-direct {p0, v2, v3, v0}, Lackmaniac/vescmonitor/DigitsKeyListenerMinMaxFloat;->isInRange(FFF)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 28
    .end local v0    # "input":F
    :goto_0
    return-object v2

    .line 27
    :catch_0
    move-exception v2

    .line 28
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method
