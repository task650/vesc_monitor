.class final enum Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MC_MOTOR_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

.field public static final enum MOTOR_TYPE_BLDC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

.field public static final enum MOTOR_TYPE_DC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

.field public static final enum MOTOR_TYPE_FOC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 266
    new-instance v0, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    const-string v1, "MOTOR_TYPE_BLDC"

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_BLDC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    .line 267
    new-instance v0, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    const-string v1, "MOTOR_TYPE_DC"

    invoke-direct {v0, v1, v3}, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_DC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    .line 268
    new-instance v0, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    const-string v1, "MOTOR_TYPE_FOC"

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_FOC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    .line 265
    const/4 v0, 0x3

    new-array v0, v0, [Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    sget-object v1, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_BLDC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_DC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->MOTOR_TYPE_FOC:Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->$VALUES:[Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

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
    .line 265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 265
    const-class v0, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    return-object v0
.end method

.method public static values()[Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->$VALUES:[Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    invoke-virtual {v0}, [Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;

    return-object v0
.end method
