.class public final enum Lcom/androidplot/xy/PanZoom$DragState;
.super Ljava/lang/Enum;
.source "PanZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/PanZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "DragState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/xy/PanZoom$DragState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/PanZoom$DragState;

.field public static final enum NONE:Lcom/androidplot/xy/PanZoom$DragState;

.field public static final enum ONE_FINGER:Lcom/androidplot/xy/PanZoom$DragState;

.field public static final enum TWO_FINGERS:Lcom/androidplot/xy/PanZoom$DragState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/androidplot/xy/PanZoom$DragState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/PanZoom$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/PanZoom$DragState;->NONE:Lcom/androidplot/xy/PanZoom$DragState;

    .line 40
    new-instance v0, Lcom/androidplot/xy/PanZoom$DragState;

    const-string v1, "ONE_FINGER"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/xy/PanZoom$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/PanZoom$DragState;->ONE_FINGER:Lcom/androidplot/xy/PanZoom$DragState;

    .line 41
    new-instance v0, Lcom/androidplot/xy/PanZoom$DragState;

    const-string v1, "TWO_FINGERS"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/xy/PanZoom$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/PanZoom$DragState;->TWO_FINGERS:Lcom/androidplot/xy/PanZoom$DragState;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/androidplot/xy/PanZoom$DragState;

    sget-object v1, Lcom/androidplot/xy/PanZoom$DragState;->NONE:Lcom/androidplot/xy/PanZoom$DragState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/xy/PanZoom$DragState;->ONE_FINGER:Lcom/androidplot/xy/PanZoom$DragState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/xy/PanZoom$DragState;->TWO_FINGERS:Lcom/androidplot/xy/PanZoom$DragState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/androidplot/xy/PanZoom$DragState;->$VALUES:[Lcom/androidplot/xy/PanZoom$DragState;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/PanZoom$DragState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/androidplot/xy/PanZoom$DragState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/PanZoom$DragState;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/xy/PanZoom$DragState;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/androidplot/xy/PanZoom$DragState;->$VALUES:[Lcom/androidplot/xy/PanZoom$DragState;

    invoke-virtual {v0}, [Lcom/androidplot/xy/PanZoom$DragState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/PanZoom$DragState;

    return-object v0
.end method
