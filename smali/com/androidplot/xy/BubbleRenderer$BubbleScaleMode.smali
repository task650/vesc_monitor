.class public final enum Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;
.super Ljava/lang/Enum;
.source "BubbleRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BubbleRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BubbleScaleMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

.field public static final enum LINEAR:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

.field public static final enum SQUARE_ROOT:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    const-string v1, "LINEAR"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->LINEAR:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    .line 35
    new-instance v0, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    const-string v1, "SQUARE_ROOT"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->SQUARE_ROOT:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    sget-object v1, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->LINEAR:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->SQUARE_ROOT:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->$VALUES:[Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->$VALUES:[Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    invoke-virtual {v0}, [Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    return-object v0
.end method
