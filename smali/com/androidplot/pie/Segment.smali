.class public Lcom/androidplot/pie/Segment;
.super Ljava/lang/Object;
.source "Segment.java"

# interfaces
.implements Lcom/androidplot/Series;


# instance fields
.field private title:Ljava/lang/String;

.field private value:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/androidplot/pie/Segment;->title:Ljava/lang/String;

    .line 32
    invoke-virtual {p0, p2}, Lcom/androidplot/pie/Segment;->setValue(Ljava/lang/Number;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/androidplot/pie/Segment;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/androidplot/pie/Segment;->value:Ljava/lang/Number;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/androidplot/pie/Segment;->title:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/androidplot/pie/Segment;->value:Ljava/lang/Number;

    .line 50
    return-void
.end method
