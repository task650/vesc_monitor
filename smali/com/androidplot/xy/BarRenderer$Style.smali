.class public final enum Lcom/androidplot/xy/BarRenderer$Style;
.super Ljava/lang/Enum;
.source "BarRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/xy/BarRenderer$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/BarRenderer$Style;

.field public static final enum OVERLAID:Lcom/androidplot/xy/BarRenderer$Style;

.field public static final enum SIDE_BY_SIDE:Lcom/androidplot/xy/BarRenderer$Style;

.field public static final enum STACKED:Lcom/androidplot/xy/BarRenderer$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/androidplot/xy/BarRenderer$Style;

    const-string v1, "OVERLAID"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/BarRenderer$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/BarRenderer$Style;->OVERLAID:Lcom/androidplot/xy/BarRenderer$Style;

    .line 48
    new-instance v0, Lcom/androidplot/xy/BarRenderer$Style;

    const-string v1, "STACKED"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/xy/BarRenderer$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/BarRenderer$Style;->STACKED:Lcom/androidplot/xy/BarRenderer$Style;

    .line 49
    new-instance v0, Lcom/androidplot/xy/BarRenderer$Style;

    const-string v1, "SIDE_BY_SIDE"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/xy/BarRenderer$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/BarRenderer$Style;->SIDE_BY_SIDE:Lcom/androidplot/xy/BarRenderer$Style;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/androidplot/xy/BarRenderer$Style;

    sget-object v1, Lcom/androidplot/xy/BarRenderer$Style;->OVERLAID:Lcom/androidplot/xy/BarRenderer$Style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/xy/BarRenderer$Style;->STACKED:Lcom/androidplot/xy/BarRenderer$Style;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/xy/BarRenderer$Style;->SIDE_BY_SIDE:Lcom/androidplot/xy/BarRenderer$Style;

    aput-object v1, v0, v4

    sput-object v0, Lcom/androidplot/xy/BarRenderer$Style;->$VALUES:[Lcom/androidplot/xy/BarRenderer$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/BarRenderer$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/androidplot/xy/BarRenderer$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/BarRenderer$Style;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/xy/BarRenderer$Style;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/androidplot/xy/BarRenderer$Style;->$VALUES:[Lcom/androidplot/xy/BarRenderer$Style;

    invoke-virtual {v0}, [Lcom/androidplot/xy/BarRenderer$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/BarRenderer$Style;

    return-object v0
.end method
