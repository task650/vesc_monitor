.class final enum Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CAN_COMMANDS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

.field public static final enum TERMINAL_CAN_ERPMS:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

.field public static final enum TERMINAL_CAN_MEMBER:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

.field public static final enum TERMINAL_FAULTS:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

.field public static final enum TERMINAL_KV:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

.field public static final enum TERMINAL_RPM:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

.field public static final enum TERMINAL_TACHO:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

.field public static final enum TERMINAL_VOLT:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 272
    new-instance v0, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    const-string v1, "TERMINAL_FAULTS"

    invoke-direct {v0, v1, v3}, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_FAULTS:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    .line 273
    new-instance v0, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    const-string v1, "TERMINAL_CAN_MEMBER"

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_CAN_MEMBER:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    .line 274
    new-instance v0, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    const-string v1, "TERMINAL_KV"

    invoke-direct {v0, v1, v5}, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_KV:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    .line 275
    new-instance v0, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    const-string v1, "TERMINAL_TACHO"

    invoke-direct {v0, v1, v6}, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_TACHO:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    .line 276
    new-instance v0, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    const-string v1, "TERMINAL_RPM"

    invoke-direct {v0, v1, v7}, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_RPM:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    .line 277
    new-instance v0, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    const-string v1, "TERMINAL_VOLT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_VOLT:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    .line 278
    new-instance v0, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    const-string v1, "TERMINAL_CAN_ERPMS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_CAN_ERPMS:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    .line 271
    const/4 v0, 0x7

    new-array v0, v0, [Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    sget-object v1, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_FAULTS:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    aput-object v1, v0, v3

    sget-object v1, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_CAN_MEMBER:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    aput-object v1, v0, v4

    sget-object v1, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_KV:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    aput-object v1, v0, v5

    sget-object v1, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_TACHO:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    aput-object v1, v0, v6

    sget-object v1, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_RPM:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_VOLT:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->TERMINAL_CAN_ERPMS:Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    aput-object v2, v0, v1

    sput-object v0, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->$VALUES:[Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

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
    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 271
    const-class v0, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    return-object v0
.end method

.method public static values()[Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->$VALUES:[Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    invoke-virtual {v0}, [Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;

    return-object v0
.end method
