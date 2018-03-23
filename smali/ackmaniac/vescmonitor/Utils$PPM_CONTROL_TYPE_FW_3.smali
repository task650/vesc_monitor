.class final enum Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PPM_CONTROL_TYPE_FW_3"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

.field public static final enum PPM_CTRL_TYPE_CRUISE_CONTROL_SECONDARY_CHANNEL:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

.field public static final enum PPM_CTRL_TYPE_CURRENT:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

.field public static final enum PPM_CTRL_TYPE_CURRENT_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

.field public static final enum PPM_CTRL_TYPE_CURRENT_NOREV_BRAKE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

.field public static final enum PPM_CTRL_TYPE_DUTY:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

.field public static final enum PPM_CTRL_TYPE_DUTY_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

.field public static final enum PPM_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

.field public static final enum PPM_CTRL_TYPE_PID:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

.field public static final enum PPM_CTRL_TYPE_PID_NOACCELERATION:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

.field public static final enum PPM_CTRL_TYPE_PID_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 217
    new-instance v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    const-string v1, "PPM_CTRL_TYPE_NONE"

    invoke-direct {v0, v1, v3}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    .line 218
    new-instance v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    const-string v1, "PPM_CTRL_TYPE_CURRENT"

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_CURRENT:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    .line 219
    new-instance v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    const-string v1, "PPM_CTRL_TYPE_CURRENT_NOREV"

    invoke-direct {v0, v1, v5}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_CURRENT_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    .line 220
    new-instance v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    const-string v1, "PPM_CTRL_TYPE_CURRENT_NOREV_BRAKE"

    invoke-direct {v0, v1, v6}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_CURRENT_NOREV_BRAKE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    .line 221
    new-instance v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    const-string v1, "PPM_CTRL_TYPE_DUTY"

    invoke-direct {v0, v1, v7}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_DUTY:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    .line 222
    new-instance v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    const-string v1, "PPM_CTRL_TYPE_DUTY_NOREV"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_DUTY_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    .line 223
    new-instance v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    const-string v1, "PPM_CTRL_TYPE_PID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_PID:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    .line 224
    new-instance v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    const-string v1, "PPM_CTRL_TYPE_PID_NOREV"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_PID_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    .line 225
    new-instance v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    const-string v1, "PPM_CTRL_TYPE_PID_NOACCELERATION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_PID_NOACCELERATION:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    .line 226
    new-instance v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    const-string v1, "PPM_CTRL_TYPE_CRUISE_CONTROL_SECONDARY_CHANNEL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_CRUISE_CONTROL_SECONDARY_CHANNEL:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    .line 216
    const/16 v0, 0xa

    new-array v0, v0, [Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    sget-object v1, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    aput-object v1, v0, v3

    sget-object v1, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_CURRENT:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    aput-object v1, v0, v4

    sget-object v1, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_CURRENT_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    aput-object v1, v0, v5

    sget-object v1, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_CURRENT_NOREV_BRAKE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    aput-object v1, v0, v6

    sget-object v1, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_DUTY:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_DUTY_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_PID:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_PID_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_PID_NOACCELERATION:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_CRUISE_CONTROL_SECONDARY_CHANNEL:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    aput-object v2, v0, v1

    sput-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->$VALUES:[Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

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
    .line 216
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 216
    const-class v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    return-object v0
.end method

.method public static values()[Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->$VALUES:[Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, [Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    return-object v0
.end method
