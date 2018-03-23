.class final enum Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MC_FAULT_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

.field public static final enum FAULT_CODE_ABS_OVER_CURRENT:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

.field public static final enum FAULT_CODE_DRV8302:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

.field public static final enum FAULT_CODE_NONE:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

.field public static final enum FAULT_CODE_OVER_TEMP_FET:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

.field public static final enum FAULT_CODE_OVER_TEMP_MOTOR:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

.field public static final enum FAULT_CODE_OVER_VOLTAGE:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

.field public static final enum FAULT_CODE_UNDER_VOLTAGE:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 256
    new-instance v0, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    const-string v1, "FAULT_CODE_NONE"

    invoke-direct {v0, v1, v3}, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_NONE:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    .line 257
    new-instance v0, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    const-string v1, "FAULT_CODE_OVER_VOLTAGE"

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_OVER_VOLTAGE:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    .line 258
    new-instance v0, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    const-string v1, "FAULT_CODE_UNDER_VOLTAGE"

    invoke-direct {v0, v1, v5}, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_UNDER_VOLTAGE:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    .line 259
    new-instance v0, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    const-string v1, "FAULT_CODE_DRV8302"

    invoke-direct {v0, v1, v6}, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_DRV8302:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    .line 260
    new-instance v0, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    const-string v1, "FAULT_CODE_ABS_OVER_CURRENT"

    invoke-direct {v0, v1, v7}, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_ABS_OVER_CURRENT:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    .line 261
    new-instance v0, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    const-string v1, "FAULT_CODE_OVER_TEMP_FET"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_OVER_TEMP_FET:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    .line 262
    new-instance v0, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    const-string v1, "FAULT_CODE_OVER_TEMP_MOTOR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_OVER_TEMP_MOTOR:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    .line 255
    const/4 v0, 0x7

    new-array v0, v0, [Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    sget-object v1, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_NONE:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    aput-object v1, v0, v3

    sget-object v1, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_OVER_VOLTAGE:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    aput-object v1, v0, v4

    sget-object v1, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_UNDER_VOLTAGE:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    aput-object v1, v0, v5

    sget-object v1, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_DRV8302:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    aput-object v1, v0, v6

    sget-object v1, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_ABS_OVER_CURRENT:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_OVER_TEMP_FET:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->FAULT_CODE_OVER_TEMP_MOTOR:Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    aput-object v2, v0, v1

    sput-object v0, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->$VALUES:[Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

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
    .line 255
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 255
    const-class v0, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    return-object v0
.end method

.method public static values()[Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->$VALUES:[Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    invoke-virtual {v0}, [Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;

    return-object v0
.end method
