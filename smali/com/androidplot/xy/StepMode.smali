.class public final enum Lcom/androidplot/xy/StepMode;
.super Ljava/lang/Enum;
.source "StepMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/xy/StepMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/StepMode;

.field public static final enum INCREMENT_BY_PIXELS:Lcom/androidplot/xy/StepMode;

.field public static final enum INCREMENT_BY_VAL:Lcom/androidplot/xy/StepMode;

.field public static final enum SUBDIVIDE:Lcom/androidplot/xy/StepMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/androidplot/xy/StepMode;

    const-string v1, "SUBDIVIDE"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/StepMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/StepMode;->SUBDIVIDE:Lcom/androidplot/xy/StepMode;

    .line 26
    new-instance v0, Lcom/androidplot/xy/StepMode;

    const-string v1, "INCREMENT_BY_VAL"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/xy/StepMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/StepMode;->INCREMENT_BY_VAL:Lcom/androidplot/xy/StepMode;

    .line 27
    new-instance v0, Lcom/androidplot/xy/StepMode;

    const-string v1, "INCREMENT_BY_PIXELS"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/xy/StepMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/StepMode;->INCREMENT_BY_PIXELS:Lcom/androidplot/xy/StepMode;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/androidplot/xy/StepMode;

    sget-object v1, Lcom/androidplot/xy/StepMode;->SUBDIVIDE:Lcom/androidplot/xy/StepMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/xy/StepMode;->INCREMENT_BY_VAL:Lcom/androidplot/xy/StepMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/xy/StepMode;->INCREMENT_BY_PIXELS:Lcom/androidplot/xy/StepMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/androidplot/xy/StepMode;->$VALUES:[Lcom/androidplot/xy/StepMode;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/StepMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/androidplot/xy/StepMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/StepMode;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/xy/StepMode;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/androidplot/xy/StepMode;->$VALUES:[Lcom/androidplot/xy/StepMode;

    invoke-virtual {v0}, [Lcom/androidplot/xy/StepMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/StepMode;

    return-object v0
.end method
