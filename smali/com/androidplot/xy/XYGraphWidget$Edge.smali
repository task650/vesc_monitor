.class public final enum Lcom/androidplot/xy/XYGraphWidget$Edge;
.super Ljava/lang/Enum;
.source "XYGraphWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/XYGraphWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Edge"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/xy/XYGraphWidget$Edge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/XYGraphWidget$Edge;

.field public static final enum BOTTOM:Lcom/androidplot/xy/XYGraphWidget$Edge;

.field public static final enum LEFT:Lcom/androidplot/xy/XYGraphWidget$Edge;

.field public static final enum NONE:Lcom/androidplot/xy/XYGraphWidget$Edge;

.field public static final enum RIGHT:Lcom/androidplot/xy/XYGraphWidget$Edge;

.field public static final enum TOP:Lcom/androidplot/xy/XYGraphWidget$Edge;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    new-instance v0, Lcom/androidplot/xy/XYGraphWidget$Edge;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3, v3}, Lcom/androidplot/xy/XYGraphWidget$Edge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/androidplot/xy/XYGraphWidget$Edge;->NONE:Lcom/androidplot/xy/XYGraphWidget$Edge;

    .line 206
    new-instance v0, Lcom/androidplot/xy/XYGraphWidget$Edge;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v4, v4}, Lcom/androidplot/xy/XYGraphWidget$Edge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/androidplot/xy/XYGraphWidget$Edge;->LEFT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    .line 207
    new-instance v0, Lcom/androidplot/xy/XYGraphWidget$Edge;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v5, v5}, Lcom/androidplot/xy/XYGraphWidget$Edge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/androidplot/xy/XYGraphWidget$Edge;->RIGHT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    .line 208
    new-instance v0, Lcom/androidplot/xy/XYGraphWidget$Edge;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v7, v6}, Lcom/androidplot/xy/XYGraphWidget$Edge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/androidplot/xy/XYGraphWidget$Edge;->TOP:Lcom/androidplot/xy/XYGraphWidget$Edge;

    .line 209
    new-instance v0, Lcom/androidplot/xy/XYGraphWidget$Edge;

    const-string v1, "BOTTOM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lcom/androidplot/xy/XYGraphWidget$Edge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/androidplot/xy/XYGraphWidget$Edge;->BOTTOM:Lcom/androidplot/xy/XYGraphWidget$Edge;

    .line 204
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/androidplot/xy/XYGraphWidget$Edge;

    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->NONE:Lcom/androidplot/xy/XYGraphWidget$Edge;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->LEFT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    aput-object v1, v0, v4

    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->RIGHT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    aput-object v1, v0, v5

    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->TOP:Lcom/androidplot/xy/XYGraphWidget$Edge;

    aput-object v1, v0, v7

    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->BOTTOM:Lcom/androidplot/xy/XYGraphWidget$Edge;

    aput-object v1, v0, v6

    sput-object v0, Lcom/androidplot/xy/XYGraphWidget$Edge;->$VALUES:[Lcom/androidplot/xy/XYGraphWidget$Edge;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 214
    iput p3, p0, Lcom/androidplot/xy/XYGraphWidget$Edge;->value:I

    .line 215
    return-void
.end method

.method static synthetic access$200(Lcom/androidplot/xy/XYGraphWidget$Edge;)I
    .locals 1
    .param p0, "x0"    # Lcom/androidplot/xy/XYGraphWidget$Edge;

    .prologue
    .line 204
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget$Edge;->value:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/XYGraphWidget$Edge;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 204
    const-class v0, Lcom/androidplot/xy/XYGraphWidget$Edge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYGraphWidget$Edge;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/xy/XYGraphWidget$Edge;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/androidplot/xy/XYGraphWidget$Edge;->$VALUES:[Lcom/androidplot/xy/XYGraphWidget$Edge;

    invoke-virtual {v0}, [Lcom/androidplot/xy/XYGraphWidget$Edge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/XYGraphWidget$Edge;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget$Edge;->value:I

    return v0
.end method
