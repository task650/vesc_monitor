.class public final enum Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;
.super Ljava/lang/Enum;
.source "CandlestickFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/CandlestickFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BodyStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

.field public static final enum SQUARE:Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

.field public static final enum TRIANGULAR:Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

    const-string v1, "SQUARE"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;->SQUARE:Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

    .line 50
    new-instance v0, Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

    const-string v1, "TRIANGULAR"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;->TRIANGULAR:Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

    sget-object v1, Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;->SQUARE:Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;->TRIANGULAR:Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;->$VALUES:[Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;->$VALUES:[Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

    invoke-virtual {v0}, [Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/CandlestickFormatter$BodyStyle;

    return-object v0
.end method
