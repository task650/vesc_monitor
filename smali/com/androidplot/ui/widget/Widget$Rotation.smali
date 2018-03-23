.class public final enum Lcom/androidplot/ui/widget/Widget$Rotation;
.super Ljava/lang/Enum;
.source "Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/ui/widget/Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Rotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/androidplot/ui/widget/Widget$Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/ui/widget/Widget$Rotation;

.field public static final enum NEGATIVE_NINETY_DEGREES:Lcom/androidplot/ui/widget/Widget$Rotation;

.field public static final enum NINETY_DEGREES:Lcom/androidplot/ui/widget/Widget$Rotation;

.field public static final enum NONE:Lcom/androidplot/ui/widget/Widget$Rotation;

.field public static final enum ONE_HUNDRED_EIGHTY_DEGREES:Lcom/androidplot/ui/widget/Widget$Rotation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/androidplot/ui/widget/Widget$Rotation;

    const-string v1, "NINETY_DEGREES"

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/widget/Widget$Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/widget/Widget$Rotation;->NINETY_DEGREES:Lcom/androidplot/ui/widget/Widget$Rotation;

    .line 48
    new-instance v0, Lcom/androidplot/ui/widget/Widget$Rotation;

    const-string v1, "NEGATIVE_NINETY_DEGREES"

    invoke-direct {v0, v1, v3}, Lcom/androidplot/ui/widget/Widget$Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/widget/Widget$Rotation;->NEGATIVE_NINETY_DEGREES:Lcom/androidplot/ui/widget/Widget$Rotation;

    .line 49
    new-instance v0, Lcom/androidplot/ui/widget/Widget$Rotation;

    const-string v1, "ONE_HUNDRED_EIGHTY_DEGREES"

    invoke-direct {v0, v1, v4}, Lcom/androidplot/ui/widget/Widget$Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/widget/Widget$Rotation;->ONE_HUNDRED_EIGHTY_DEGREES:Lcom/androidplot/ui/widget/Widget$Rotation;

    .line 50
    new-instance v0, Lcom/androidplot/ui/widget/Widget$Rotation;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/androidplot/ui/widget/Widget$Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/widget/Widget$Rotation;->NONE:Lcom/androidplot/ui/widget/Widget$Rotation;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/androidplot/ui/widget/Widget$Rotation;

    sget-object v1, Lcom/androidplot/ui/widget/Widget$Rotation;->NINETY_DEGREES:Lcom/androidplot/ui/widget/Widget$Rotation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidplot/ui/widget/Widget$Rotation;->NEGATIVE_NINETY_DEGREES:Lcom/androidplot/ui/widget/Widget$Rotation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidplot/ui/widget/Widget$Rotation;->ONE_HUNDRED_EIGHTY_DEGREES:Lcom/androidplot/ui/widget/Widget$Rotation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/androidplot/ui/widget/Widget$Rotation;->NONE:Lcom/androidplot/ui/widget/Widget$Rotation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/androidplot/ui/widget/Widget$Rotation;->$VALUES:[Lcom/androidplot/ui/widget/Widget$Rotation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/ui/widget/Widget$Rotation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/androidplot/ui/widget/Widget$Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/widget/Widget$Rotation;

    return-object v0
.end method

.method public static values()[Lcom/androidplot/ui/widget/Widget$Rotation;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/androidplot/ui/widget/Widget$Rotation;->$VALUES:[Lcom/androidplot/ui/widget/Widget$Rotation;

    invoke-virtual {v0}, [Lcom/androidplot/ui/widget/Widget$Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/ui/widget/Widget$Rotation;

    return-object v0
.end method
