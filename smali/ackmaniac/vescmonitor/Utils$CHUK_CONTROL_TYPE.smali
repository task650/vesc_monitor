.class final enum Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CHUK_CONTROL_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

.field public static final enum CHUK_CTRL_TYPE_CURRENT:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

.field public static final enum CHUK_CTRL_TYPE_CURRENT_NOREV:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

.field public static final enum CHUK_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

.field public static final enum CHUK_CTRL_TYPE_WATT:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

.field public static final enum CHUK_CTRL_TYPE_WATT_NOREV:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    new-instance v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    const-string v1, "CHUK_CTRL_TYPE_NONE"

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    .line 232
    new-instance v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    const-string v1, "CHUK_CTRL_TYPE_CURRENT"

    invoke-direct {v0, v1, v3}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_CURRENT:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    .line 233
    new-instance v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    const-string v1, "CHUK_CTRL_TYPE_CURRENT_NOREV"

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_CURRENT_NOREV:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    .line 234
    new-instance v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    const-string v1, "CHUK_CTRL_TYPE_WATT"

    invoke-direct {v0, v1, v5}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_WATT:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    .line 235
    new-instance v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    const-string v1, "CHUK_CTRL_TYPE_WATT_NOREV"

    invoke-direct {v0, v1, v6}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_WATT_NOREV:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    .line 230
    const/4 v0, 0x5

    new-array v0, v0, [Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    sget-object v1, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_CURRENT:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_CURRENT_NOREV:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_WATT:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_WATT_NOREV:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    aput-object v1, v0, v6

    sput-object v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->$VALUES:[Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

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
    .line 230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 230
    const-class v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    return-object v0
.end method

.method public static values()[Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->$VALUES:[Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    invoke-virtual {v0}, [Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    return-object v0
.end method
