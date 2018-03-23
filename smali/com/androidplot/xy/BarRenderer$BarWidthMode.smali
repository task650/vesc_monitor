.class public final enum Lcom/androidplot/xy/BarRenderer$BarWidthMode;
.super Ljava/lang/Enum;
.source "BarRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BarWidthMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/xy/BarRenderer$BarWidthMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/BarRenderer$BarWidthMode;

.field public static final enum FIXED_WIDTH:Lcom/androidplot/xy/BarRenderer$BarWidthMode;

.field public static final enum VARIABLE_WIDTH:Lcom/androidplot/xy/BarRenderer$BarWidthMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/androidplot/xy/BarRenderer$BarWidthMode;

    const-string v1, "FIXED_WIDTH"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/BarRenderer$BarWidthMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/BarRenderer$BarWidthMode;->FIXED_WIDTH:Lcom/androidplot/xy/BarRenderer$BarWidthMode;

    .line 57
    new-instance v0, Lcom/androidplot/xy/BarRenderer$BarWidthMode;

    const-string v1, "VARIABLE_WIDTH"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/xy/BarRenderer$BarWidthMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/BarRenderer$BarWidthMode;->VARIABLE_WIDTH:Lcom/androidplot/xy/BarRenderer$BarWidthMode;

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/androidplot/xy/BarRenderer$BarWidthMode;

    sget-object v1, Lcom/androidplot/xy/BarRenderer$BarWidthMode;->FIXED_WIDTH:Lcom/androidplot/xy/BarRenderer$BarWidthMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/xy/BarRenderer$BarWidthMode;->VARIABLE_WIDTH:Lcom/androidplot/xy/BarRenderer$BarWidthMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidplot/xy/BarRenderer$BarWidthMode;->$VALUES:[Lcom/androidplot/xy/BarRenderer$BarWidthMode;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/BarRenderer$BarWidthMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/androidplot/xy/BarRenderer$BarWidthMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/BarRenderer$BarWidthMode;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/xy/BarRenderer$BarWidthMode;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/androidplot/xy/BarRenderer$BarWidthMode;->$VALUES:[Lcom/androidplot/xy/BarRenderer$BarWidthMode;

    invoke-virtual {v0}, [Lcom/androidplot/xy/BarRenderer$BarWidthMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/BarRenderer$BarWidthMode;

    return-object v0
.end method
