.class public final enum Lcom/androidplot/xy/PanZoom$Pan;
.super Ljava/lang/Enum;
.source "PanZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/PanZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pan"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/xy/PanZoom$Pan;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/PanZoom$Pan;

.field public static final enum BOTH:Lcom/androidplot/xy/PanZoom$Pan;

.field public static final enum HORIZONTAL:Lcom/androidplot/xy/PanZoom$Pan;

.field public static final enum NONE:Lcom/androidplot/xy/PanZoom$Pan;

.field public static final enum VERTICAL:Lcom/androidplot/xy/PanZoom$Pan;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/androidplot/xy/PanZoom$Pan;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/PanZoom$Pan;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/PanZoom$Pan;->NONE:Lcom/androidplot/xy/PanZoom$Pan;

    .line 46
    new-instance v0, Lcom/androidplot/xy/PanZoom$Pan;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/xy/PanZoom$Pan;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/PanZoom$Pan;->HORIZONTAL:Lcom/androidplot/xy/PanZoom$Pan;

    .line 47
    new-instance v0, Lcom/androidplot/xy/PanZoom$Pan;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/xy/PanZoom$Pan;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/PanZoom$Pan;->VERTICAL:Lcom/androidplot/xy/PanZoom$Pan;

    .line 48
    new-instance v0, Lcom/androidplot/xy/PanZoom$Pan;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v5}, Lcom/androidplot/xy/PanZoom$Pan;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/PanZoom$Pan;->BOTH:Lcom/androidplot/xy/PanZoom$Pan;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/androidplot/xy/PanZoom$Pan;

    sget-object v1, Lcom/androidplot/xy/PanZoom$Pan;->NONE:Lcom/androidplot/xy/PanZoom$Pan;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/xy/PanZoom$Pan;->HORIZONTAL:Lcom/androidplot/xy/PanZoom$Pan;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/xy/PanZoom$Pan;->VERTICAL:Lcom/androidplot/xy/PanZoom$Pan;

    aput-object v1, v0, v4

    sget-object v1, Lcom/androidplot/xy/PanZoom$Pan;->BOTH:Lcom/androidplot/xy/PanZoom$Pan;

    aput-object v1, v0, v5

    sput-object v0, Lcom/androidplot/xy/PanZoom$Pan;->$VALUES:[Lcom/androidplot/xy/PanZoom$Pan;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/PanZoom$Pan;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/androidplot/xy/PanZoom$Pan;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/PanZoom$Pan;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/xy/PanZoom$Pan;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/androidplot/xy/PanZoom$Pan;->$VALUES:[Lcom/androidplot/xy/PanZoom$Pan;

    invoke-virtual {v0}, [Lcom/androidplot/xy/PanZoom$Pan;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/PanZoom$Pan;

    return-object v0
.end method
