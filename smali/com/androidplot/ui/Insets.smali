.class public Lcom/androidplot/ui/Insets;
.super Ljava/lang/Object;
.source "Insets.java"


# instance fields
.field private bottom:F

.field private left:F

.field private right:F

.field private top:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "top"    # F
    .param p2, "bottom"    # F
    .param p3, "left"    # F
    .param p4, "right"    # F

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/androidplot/ui/Insets;->top:F

    .line 33
    iput p2, p0, Lcom/androidplot/ui/Insets;->bottom:F

    .line 34
    iput p3, p0, Lcom/androidplot/ui/Insets;->left:F

    .line 35
    iput p4, p0, Lcom/androidplot/ui/Insets;->right:F

    .line 36
    return-void
.end method


# virtual methods
.method public getBottom()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/androidplot/ui/Insets;->bottom:F

    return v0
.end method

.method public getLeft()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/androidplot/ui/Insets;->left:F

    return v0
.end method

.method public getRight()F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/androidplot/ui/Insets;->right:F

    return v0
.end method

.method public getTop()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/androidplot/ui/Insets;->top:F

    return v0
.end method

.method public setBottom(F)V
    .locals 0
    .param p1, "bottom"    # F

    .prologue
    .line 51
    iput p1, p0, Lcom/androidplot/ui/Insets;->bottom:F

    .line 52
    return-void
.end method

.method public setLeft(F)V
    .locals 0
    .param p1, "left"    # F

    .prologue
    .line 59
    iput p1, p0, Lcom/androidplot/ui/Insets;->left:F

    .line 60
    return-void
.end method

.method public setRight(F)V
    .locals 0
    .param p1, "right"    # F

    .prologue
    .line 67
    iput p1, p0, Lcom/androidplot/ui/Insets;->right:F

    .line 68
    return-void
.end method

.method public setTop(F)V
    .locals 0
    .param p1, "top"    # F

    .prologue
    .line 43
    iput p1, p0, Lcom/androidplot/ui/Insets;->top:F

    .line 44
    return-void
.end method
