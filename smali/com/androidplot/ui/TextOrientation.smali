.class public final enum Lcom/androidplot/ui/TextOrientation;
.super Ljava/lang/Enum;
.source "TextOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/ui/TextOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/ui/TextOrientation;

.field public static final enum HORIZONTAL:Lcom/androidplot/ui/TextOrientation;

.field public static final enum VERTICAL_ASCENDING:Lcom/androidplot/ui/TextOrientation;

.field public static final enum VERTICAL_DESCENDING:Lcom/androidplot/ui/TextOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/androidplot/ui/TextOrientation;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/TextOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/TextOrientation;->HORIZONTAL:Lcom/androidplot/ui/TextOrientation;

    .line 21
    new-instance v0, Lcom/androidplot/ui/TextOrientation;

    const-string v1, "VERTICAL_ASCENDING"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/ui/TextOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/TextOrientation;->VERTICAL_ASCENDING:Lcom/androidplot/ui/TextOrientation;

    .line 22
    new-instance v0, Lcom/androidplot/ui/TextOrientation;

    const-string v1, "VERTICAL_DESCENDING"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/ui/TextOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/TextOrientation;->VERTICAL_DESCENDING:Lcom/androidplot/ui/TextOrientation;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/androidplot/ui/TextOrientation;

    sget-object v1, Lcom/androidplot/ui/TextOrientation;->HORIZONTAL:Lcom/androidplot/ui/TextOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/ui/TextOrientation;->VERTICAL_ASCENDING:Lcom/androidplot/ui/TextOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/ui/TextOrientation;->VERTICAL_DESCENDING:Lcom/androidplot/ui/TextOrientation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/androidplot/ui/TextOrientation;->$VALUES:[Lcom/androidplot/ui/TextOrientation;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/ui/TextOrientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/androidplot/ui/TextOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/TextOrientation;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/ui/TextOrientation;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/androidplot/ui/TextOrientation;->$VALUES:[Lcom/androidplot/ui/TextOrientation;

    invoke-virtual {v0}, [Lcom/androidplot/ui/TextOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/ui/TextOrientation;

    return-object v0
.end method
