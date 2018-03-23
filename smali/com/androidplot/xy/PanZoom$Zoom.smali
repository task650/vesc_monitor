.class public final enum Lcom/androidplot/xy/PanZoom$Zoom;
.super Ljava/lang/Enum;
.source "PanZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/PanZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Zoom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/xy/PanZoom$Zoom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/PanZoom$Zoom;

.field public static final enum NONE:Lcom/androidplot/xy/PanZoom$Zoom;

.field public static final enum SCALE:Lcom/androidplot/xy/PanZoom$Zoom;

.field public static final enum STRETCH_BOTH:Lcom/androidplot/xy/PanZoom$Zoom;

.field public static final enum STRETCH_HORIZONTAL:Lcom/androidplot/xy/PanZoom$Zoom;

.field public static final enum STRETCH_VERTICAL:Lcom/androidplot/xy/PanZoom$Zoom;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/androidplot/xy/PanZoom$Zoom;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/PanZoom$Zoom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/PanZoom$Zoom;->NONE:Lcom/androidplot/xy/PanZoom$Zoom;

    .line 61
    new-instance v0, Lcom/androidplot/xy/PanZoom$Zoom;

    const-string v1, "STRETCH_HORIZONTAL"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/xy/PanZoom$Zoom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_HORIZONTAL:Lcom/androidplot/xy/PanZoom$Zoom;

    .line 66
    new-instance v0, Lcom/androidplot/xy/PanZoom$Zoom;

    const-string v1, "STRETCH_VERTICAL"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/xy/PanZoom$Zoom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_VERTICAL:Lcom/androidplot/xy/PanZoom$Zoom;

    .line 72
    new-instance v0, Lcom/androidplot/xy/PanZoom$Zoom;

    const-string v1, "STRETCH_BOTH"

    invoke-direct {v0, v1, v5}, Lcom/androidplot/xy/PanZoom$Zoom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_BOTH:Lcom/androidplot/xy/PanZoom$Zoom;

    .line 77
    new-instance v0, Lcom/androidplot/xy/PanZoom$Zoom;

    const-string v1, "SCALE"

    invoke-direct {v0, v1, v6}, Lcom/androidplot/xy/PanZoom$Zoom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/PanZoom$Zoom;->SCALE:Lcom/androidplot/xy/PanZoom$Zoom;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/androidplot/xy/PanZoom$Zoom;

    sget-object v1, Lcom/androidplot/xy/PanZoom$Zoom;->NONE:Lcom/androidplot/xy/PanZoom$Zoom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_HORIZONTAL:Lcom/androidplot/xy/PanZoom$Zoom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_VERTICAL:Lcom/androidplot/xy/PanZoom$Zoom;

    aput-object v1, v0, v4

    sget-object v1, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_BOTH:Lcom/androidplot/xy/PanZoom$Zoom;

    aput-object v1, v0, v5

    sget-object v1, Lcom/androidplot/xy/PanZoom$Zoom;->SCALE:Lcom/androidplot/xy/PanZoom$Zoom;

    aput-object v1, v0, v6

    sput-object v0, Lcom/androidplot/xy/PanZoom$Zoom;->$VALUES:[Lcom/androidplot/xy/PanZoom$Zoom;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/PanZoom$Zoom;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/androidplot/xy/PanZoom$Zoom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/PanZoom$Zoom;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/xy/PanZoom$Zoom;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/androidplot/xy/PanZoom$Zoom;->$VALUES:[Lcom/androidplot/xy/PanZoom$Zoom;

    invoke-virtual {v0}, [Lcom/androidplot/xy/PanZoom$Zoom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/PanZoom$Zoom;

    return-object v0
.end method
