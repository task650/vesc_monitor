.class public final enum Lcom/androidplot/ui/VerticalPositioning;
.super Ljava/lang/Enum;
.source "VerticalPositioning.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/ui/VerticalPositioning;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/ui/VerticalPositioning;

.field public static final enum ABSOLUTE_FROM_BOTTOM:Lcom/androidplot/ui/VerticalPositioning;

.field public static final enum ABSOLUTE_FROM_CENTER:Lcom/androidplot/ui/VerticalPositioning;

.field public static final enum ABSOLUTE_FROM_TOP:Lcom/androidplot/ui/VerticalPositioning;

.field public static final enum RELATIVE_TO_BOTTOM:Lcom/androidplot/ui/VerticalPositioning;

.field public static final enum RELATIVE_TO_CENTER:Lcom/androidplot/ui/VerticalPositioning;

.field public static final enum RELATIVE_TO_TOP:Lcom/androidplot/ui/VerticalPositioning;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/androidplot/ui/VerticalPositioning;

    const-string v1, "ABSOLUTE_FROM_TOP"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/ui/VerticalPositioning;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_TOP:Lcom/androidplot/ui/VerticalPositioning;

    .line 21
    new-instance v0, Lcom/androidplot/ui/VerticalPositioning;

    const-string v1, "ABSOLUTE_FROM_BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/ui/VerticalPositioning;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_BOTTOM:Lcom/androidplot/ui/VerticalPositioning;

    .line 22
    new-instance v0, Lcom/androidplot/ui/VerticalPositioning;

    const-string v1, "ABSOLUTE_FROM_CENTER"

    invoke-direct {v0, v1, v5}, Lcom/androidplot/ui/VerticalPositioning;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_CENTER:Lcom/androidplot/ui/VerticalPositioning;

    .line 23
    new-instance v0, Lcom/androidplot/ui/VerticalPositioning;

    const-string v1, "RELATIVE_TO_TOP"

    invoke-direct {v0, v1, v6}, Lcom/androidplot/ui/VerticalPositioning;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/VerticalPositioning;->RELATIVE_TO_TOP:Lcom/androidplot/ui/VerticalPositioning;

    .line 24
    new-instance v0, Lcom/androidplot/ui/VerticalPositioning;

    const-string v1, "RELATIVE_TO_BOTTOM"

    invoke-direct {v0, v1, v7}, Lcom/androidplot/ui/VerticalPositioning;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/VerticalPositioning;->RELATIVE_TO_BOTTOM:Lcom/androidplot/ui/VerticalPositioning;

    .line 25
    new-instance v0, Lcom/androidplot/ui/VerticalPositioning;

    const-string v1, "RELATIVE_TO_CENTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/VerticalPositioning;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/VerticalPositioning;->RELATIVE_TO_CENTER:Lcom/androidplot/ui/VerticalPositioning;

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/androidplot/ui/VerticalPositioning;

    sget-object v1, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_TOP:Lcom/androidplot/ui/VerticalPositioning;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_BOTTOM:Lcom/androidplot/ui/VerticalPositioning;

    aput-object v1, v0, v4

    sget-object v1, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_CENTER:Lcom/androidplot/ui/VerticalPositioning;

    aput-object v1, v0, v5

    sget-object v1, Lcom/androidplot/ui/VerticalPositioning;->RELATIVE_TO_TOP:Lcom/androidplot/ui/VerticalPositioning;

    aput-object v1, v0, v6

    sget-object v1, Lcom/androidplot/ui/VerticalPositioning;->RELATIVE_TO_BOTTOM:Lcom/androidplot/ui/VerticalPositioning;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/androidplot/ui/VerticalPositioning;->RELATIVE_TO_CENTER:Lcom/androidplot/ui/VerticalPositioning;

    aput-object v2, v0, v1

    sput-object v0, Lcom/androidplot/ui/VerticalPositioning;->$VALUES:[Lcom/androidplot/ui/VerticalPositioning;

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

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/ui/VerticalPositioning;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/androidplot/ui/VerticalPositioning;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/VerticalPositioning;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/ui/VerticalPositioning;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/androidplot/ui/VerticalPositioning;->$VALUES:[Lcom/androidplot/ui/VerticalPositioning;

    invoke-virtual {v0}, [Lcom/androidplot/ui/VerticalPositioning;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/ui/VerticalPositioning;

    return-object v0
.end method
