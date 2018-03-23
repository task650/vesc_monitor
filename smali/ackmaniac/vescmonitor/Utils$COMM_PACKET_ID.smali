.class final enum Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lackmaniac/vescmonitor/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "COMM_PACKET_ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_ALIVE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_CHANGE_SPEED_MODE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_CUSTOM_APP_DATA:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_DETECT_ENCODER:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_DETECT_HALL_FOC:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_DETECT_MOTOR_FLUX_LINKAGE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_DETECT_MOTOR_PARAM:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_DETECT_MOTOR_R_L:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_ERASE_NEW_APP:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_EXPERIMENT_SAMPLE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_FORWARD_CAN:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_FW_VERSION:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_GET_APPCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_GET_APPCONF_DEFAULT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_GET_DECODED_ADC:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_GET_DECODED_CHUK:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_GET_DECODED_PPM:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_GET_MCCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_GET_MCCONF_DEFAULT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_GET_SPEED_MODE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_GET_VALUES:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_JUMP_TO_BOOTLOADER:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_PRINT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_REBOOT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_ROTOR_POSITION:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_SAMPLE_PRINT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_SET_APPCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_SET_CHUCK_DATA:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_SET_CURRENT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_SET_CURRENT_BRAKE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_SET_CURRENT_CONF_AS_DEFAULT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_SET_DETECT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_SET_DUTY:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_SET_MCCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_SET_MOTOR_TYPE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_SET_POS:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_SET_RPM:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_SET_SERVO_POS:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_SET_SPEED_MODE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_TERMINAL_CMD:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

.field public static final enum COMM_WRITE_NEW_APP_DATA:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_FW_VERSION"

    invoke-direct {v0, v1, v3}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_FW_VERSION:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 59
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_JUMP_TO_BOOTLOADER"

    invoke-direct {v0, v1, v4}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_JUMP_TO_BOOTLOADER:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 60
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_ERASE_NEW_APP"

    invoke-direct {v0, v1, v5}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_ERASE_NEW_APP:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 61
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_WRITE_NEW_APP_DATA"

    invoke-direct {v0, v1, v6}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_WRITE_NEW_APP_DATA:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 62
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_GET_VALUES"

    invoke-direct {v0, v1, v7}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_VALUES:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 63
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_SET_DUTY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_DUTY:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 64
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_SET_CURRENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_CURRENT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 65
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_SET_CURRENT_BRAKE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_CURRENT_BRAKE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 66
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_SET_RPM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_RPM:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 67
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_SET_POS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_POS:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 68
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_SET_DETECT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_DETECT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 69
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_SET_SERVO_POS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_SERVO_POS:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 70
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_SET_MCCONF"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_MCCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 71
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_GET_MCCONF"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_MCCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 72
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_GET_MCCONF_DEFAULT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_MCCONF_DEFAULT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 73
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_SET_APPCONF"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_APPCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 74
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_GET_APPCONF"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_APPCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 75
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_GET_APPCONF_DEFAULT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_APPCONF_DEFAULT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 76
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_SAMPLE_PRINT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SAMPLE_PRINT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 77
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_TERMINAL_CMD"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_TERMINAL_CMD:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 78
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_PRINT"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_PRINT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 79
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_ROTOR_POSITION"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_ROTOR_POSITION:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 80
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_EXPERIMENT_SAMPLE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_EXPERIMENT_SAMPLE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 81
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_DETECT_MOTOR_PARAM"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_DETECT_MOTOR_PARAM:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 82
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_DETECT_MOTOR_R_L"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_DETECT_MOTOR_R_L:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 83
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_DETECT_MOTOR_FLUX_LINKAGE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_DETECT_MOTOR_FLUX_LINKAGE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 84
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_DETECT_ENCODER"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_DETECT_ENCODER:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 85
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_DETECT_HALL_FOC"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_DETECT_HALL_FOC:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 86
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_REBOOT"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_REBOOT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 87
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_ALIVE"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_ALIVE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 88
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_GET_DECODED_PPM"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_DECODED_PPM:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 89
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_GET_DECODED_ADC"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_DECODED_ADC:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 90
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_GET_DECODED_CHUK"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_DECODED_CHUK:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 91
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_FORWARD_CAN"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_FORWARD_CAN:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 92
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_SET_CHUCK_DATA"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_CHUCK_DATA:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 93
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_CUSTOM_APP_DATA"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_CUSTOM_APP_DATA:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 94
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_SET_SPEED_MODE"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_SPEED_MODE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 95
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_CHANGE_SPEED_MODE"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_CHANGE_SPEED_MODE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 96
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_GET_SPEED_MODE"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_SPEED_MODE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 97
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_SET_CURRENT_CONF_AS_DEFAULT"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_CURRENT_CONF_AS_DEFAULT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 98
    new-instance v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    const-string v1, "COMM_SET_MOTOR_TYPE"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_MOTOR_TYPE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .line 57
    const/16 v0, 0x29

    new-array v0, v0, [Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    sget-object v1, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_FW_VERSION:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v1, v0, v3

    sget-object v1, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_JUMP_TO_BOOTLOADER:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v1, v0, v4

    sget-object v1, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_ERASE_NEW_APP:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v1, v0, v5

    sget-object v1, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_WRITE_NEW_APP_DATA:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v1, v0, v6

    sget-object v1, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_VALUES:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_DUTY:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_CURRENT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_CURRENT_BRAKE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_RPM:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_POS:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_DETECT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_SERVO_POS:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_MCCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_MCCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_MCCONF_DEFAULT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_APPCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_APPCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_APPCONF_DEFAULT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SAMPLE_PRINT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_TERMINAL_CMD:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_PRINT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_ROTOR_POSITION:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_EXPERIMENT_SAMPLE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_DETECT_MOTOR_PARAM:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_DETECT_MOTOR_R_L:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_DETECT_MOTOR_FLUX_LINKAGE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_DETECT_ENCODER:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_DETECT_HALL_FOC:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_REBOOT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_ALIVE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_DECODED_PPM:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_DECODED_ADC:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_DECODED_CHUK:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_FORWARD_CAN:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_CHUCK_DATA:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_CUSTOM_APP_DATA:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_SPEED_MODE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_CHANGE_SPEED_MODE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_GET_SPEED_MODE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_CURRENT_CONF_AS_DEFAULT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_SET_MOTOR_TYPE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    aput-object v2, v0, v1

    sput-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->$VALUES:[Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    return-object v0
.end method

.method public static values()[Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->$VALUES:[Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-virtual {v0}, [Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    return-object v0
.end method
