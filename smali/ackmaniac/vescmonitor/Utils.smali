.class public Lackmaniac/vescmonitor/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lackmaniac/vescmonitor/Utils$CAN_COMMANDS;,
        Lackmaniac/vescmonitor/Utils$MC_MOTOR_TYPE;,
        Lackmaniac/vescmonitor/Utils$MC_FAULT_CODE;,
        Lackmaniac/vescmonitor/Utils$APP_USE;,
        Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;,
        Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;,
        Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;,
        Lackmaniac/vescmonitor/Utils$ALARM_TYPE;,
        Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;,
        Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;
    }
.end annotation


# static fields
.field static final BATTERY_TYPE:Ljava/lang/String; = "BATTERY_TYPE"

.field static final BATTERY_WH:Ljava/lang/String; = "BATTERY_WH"

.field static final BI_ACTIVE_WATT:Ljava/lang/String; = "BI_ACTIVE_WATT"

.field static final BI_AH_CHARGED:Ljava/lang/String; = "BI_AH_CHARGED"

.field static final BI_AH_DRAWN:Ljava/lang/String; = "BI_AH_DRAWN"

.field static final BI_RIDING_BATTERY_AMPS_NEG:Ljava/lang/String; = "BI_RIDING_BATTERY_AMPS_NEG"

.field static final BI_RIDING_BATTERY_AMPS_POS:Ljava/lang/String; = "BI_RIDING_BATTERY_AMPS_POS"

.field static final BI_RIDING_MOTOR_AMPS_NEG:Ljava/lang/String; = "BI_RIDING_MOTOR_AMPS_NEG"

.field static final BI_RIDING_MOTOR_AMPS_POS:Ljava/lang/String; = "BI_RIDING_MOTOR_AMPS_POS"

.field static final BI_RIDING_TIME:Ljava/lang/String; = "BI_RIDING_TIME"

.field static final BI_RIDING_WATT:Ljava/lang/String; = "BI_RIDING_WATT"

.field static final BI_TOTAL_KM:Ljava/lang/String; = "BI_TOTAL_KM"

.field static final BI_TOTAL_TIME:Ljava/lang/String; = "BI_TOTAL_TIME"

.field static final BI_TOTAL_USED_NEG_TIME:Ljava/lang/String; = "BI_TOTAL_USED_NEG_TIME"

.field static final BI_TOTAL_USED_POS_TIME:Ljava/lang/String; = "BI_TOTAL_USED_POS_TIME"

.field static final BI_TRIP_TO_SHOW:Ljava/lang/String; = "BI_TRIP_TO_SHOW"

.field static final BI_USED_BATTERY_AMPS_NEG:Ljava/lang/String; = "BI_USED_BATTERY_AMPS_NEG"

.field static final BI_USED_BATTERY_AMPS_POS:Ljava/lang/String; = "BI_USED_BATTERY_AMPS_POS"

.field static final BI_USED_MOTOR_AMPS_NEG:Ljava/lang/String; = "BI_USED_MOTOR_AMPS_NEG"

.field static final BI_USED_MOTOR_AMPS_POS:Ljava/lang/String; = "BI_USED_MOTOR_AMPS_POS"

.field static final BI_WH_CHARGED:Ljava/lang/String; = "BI_WH_CHARGED"

.field static final BI_WH_DRAWN:Ljava/lang/String; = "BI_WH_DRAWN"

.field static final CAN_CONTROLLERID:Ljava/lang/String; = "CAN_CONTROLLERID"

.field public static final COMM_GET_VALUES_BYTE:[B

.field public static final COMM_GET_VALUES_BYTE_BY_SERIAL:[B

.field static final DEFAULT_MODES_ALREADY_CREATED:Ljava/lang/String; = "DEFAULT_MODES_ALREADY_CREATED"

.field static final DISTANCE_UNIT:Ljava/lang/String; = "DISTANCE_UNIT"

.field static final FILENAMECHART:Ljava/lang/String; = "FILENAMECHART"

.field static final FIRWMWARE_VERSION:Ljava/lang/String; = "FIRWMWARE_VERSION"

.field static final IS_CONNECTED_TO_SLAVE:Ljava/lang/String; = "IS_CONNECTED_TO_SLAVE"

.field static final IS_NUNCHUK:Ljava/lang/String; = "IS_NUNCHUK"

.field static final KEY_CRUISE_CONTROL_PID_KD:Ljava/lang/String; = "KEY_CRUISE_CONTROL_PID_KD"

.field static final KEY_CRUISE_CONTROL_PID_KI:Ljava/lang/String; = "KEY_CRUISE_CONTROL_PID_KI"

.field static final KEY_CRUISE_CONTROL_PID_KP:Ljava/lang/String; = "KEY_CRUISE_CONTROL_PID_KP"

.field static final KEY_FRONT_CAN_CONTROLLERID_FIRST:Ljava/lang/String; = "KEY_FRONT_CAN_CONTROLLERID_FIRST"

.field static final KEY_FRONT_CAN_CONTROLLERID_SECOND:Ljava/lang/String; = "KEY_FRONT_CAN_CONTROLLERID_SECOND"

.field static final KEY_FRONT_MAX_BATTERY_C:Ljava/lang/String; = "FRONT_MAX_BATTERY_C"

.field static final KEY_FRONT_MAX_MOTOR_C:Ljava/lang/String; = "FRONT_MAX_MOTOR_C"

.field static final KEY_FRONT_MAX_WATT:Ljava/lang/String; = "FRONT_MAX_WATT"

.field static final KEY_FRONT_MIN_BATTERY_C:Ljava/lang/String; = "FRONT_MIN_BATTERY_C"

.field static final KEY_FRONT_MIN_MOTOR_C:Ljava/lang/String; = "FRONT_MIN_MOTOR_C"

.field static final KEY_FRONT_USE_MAX_WATT:Ljava/lang/String; = "FRONT_USE_MAX_WATT"

.field static final KEY_MAX_BATTERY_C:Ljava/lang/String; = "MAX_BATTERY_C"

.field static final KEY_MAX_ERPM:Ljava/lang/String; = "MAX_ERPM"

.field static final KEY_MAX_MOTOR_C:Ljava/lang/String; = "MAX_MOTOR_C"

.field static final KEY_MAX_SPEED:Ljava/lang/String; = "MAX_SPEED"

.field static final KEY_MAX_WATT:Ljava/lang/String; = "MAX_WATT"

.field static final KEY_MIN_BATTERY_C:Ljava/lang/String; = "MIN_BATTERY_C"

.field static final KEY_MIN_MOTOR_C:Ljava/lang/String; = "MIN_MOTOR_C"

.field static final KEY_NAME:Ljava/lang/String; = "NAME"

.field static final KEY_PID_BRAKING_AT_ENABLED:Ljava/lang/String; = "KEY_PID_BRAKING_AT_ENABLED"

.field static final KEY_PPM_MODE:Ljava/lang/String; = "PPM_MODE"

.field static final KEY_TC_BEZIER_NEG:Ljava/lang/String; = "TC_BEZIER_NEG"

.field static final KEY_TC_BEZIER_POS:Ljava/lang/String; = "TC_BEZIER_POS"

.field static final KEY_TC_NX1:Ljava/lang/String; = "TC_NX1"

.field static final KEY_TC_NX2:Ljava/lang/String; = "TC_NX2"

.field static final KEY_TC_NX3:Ljava/lang/String; = "TC_NX3"

.field static final KEY_TC_NY1:Ljava/lang/String; = "TC_NY1"

.field static final KEY_TC_NY2:Ljava/lang/String; = "TC_NY2"

.field static final KEY_TC_NY3:Ljava/lang/String; = "TC_NY3"

.field static final KEY_TC_X1:Ljava/lang/String; = "TC_X1"

.field static final KEY_TC_X2:Ljava/lang/String; = "TC_X2"

.field static final KEY_TC_X3:Ljava/lang/String; = "TC_X3"

.field static final KEY_TC_Y1:Ljava/lang/String; = "TC_Y1"

.field static final KEY_TC_Y2:Ljava/lang/String; = "TC_Y2"

.field static final KEY_TC_Y3:Ljava/lang/String; = "TC_Y3"

.field static final KEY_THROTTLE_EXP:Ljava/lang/String; = "THROTTLE_EXP"

.field static final KEY_THROTTLE_EXP_BRAKE:Ljava/lang/String; = "THROTTLE_EXP_BRAKE"

.field static final KEY_THROTTLE_EXP_MODE:Ljava/lang/String; = "THROTTLE_EXP_MODE"

.field static final KEY_USE_MAX_WATT:Ljava/lang/String; = "USE_MAX_WATT"

.field static final KEY_USE_OTHER_SETTINGS_FOR_FRONT:Ljava/lang/String; = "KEY_USE_OTHER_SETTINGS_FOR_FRONT"

.field static final KEY_USE_SPECIAL_BRAKING_PID:Ljava/lang/String; = "KEY_USE_SPECIAL_BRAKING_PID"

.field static final KEY_USE_SPECIAL_CRUISE_CONTROL_PID:Ljava/lang/String; = "KEY_USE_SPECIAL_CRUISE_CONTROL_PID"

.field static final KEY_USE_SPECIAL_THROOTLE_CURVE:Ljava/lang/String; = "USE_SPECIAL_THROOTLE_CURVE"

.field static final KILOMETER:I = 0x0

.field static final LINE_CHART_BATTERY_AMPS_ACTIVATED:Ljava/lang/String; = "LINE_CHART_BATTERY_AMPS_ACTIVATED"

.field static final LINE_CHART_DUTY_ACTIVATED:Ljava/lang/String; = "LINE_CHART_DUTY_ACTIVATED"

.field static final LINE_CHART_MOTOR_AMPS_ACTIVATED:Ljava/lang/String; = "LINE_CHART_MOTOR_AMPS_ACTIVATED"

.field static final LINE_CHART_SPEED_ACTIVATED:Ljava/lang/String; = "LINE_CHART_SPEED_ACTIVATED"

.field static final LINE_CHART_TEMP_ACTIVATED:Ljava/lang/String; = "LINE_CHART_TEMP_ACTIVATED"

.field static final LINE_CHART_VOLT_ACTIVATED:Ljava/lang/String; = "LINE_CHART_VOLT_ACTIVATED"

.field static final LINE_CHART_WATT_ACTIVATED:Ljava/lang/String; = "LINE_CHART_WATT_ACTIVATED"

.field static final MAGNETS:Ljava/lang/String; = "MAGNETS"

.field static final MAKE_BACKGROUND_TRANSPARENT:Ljava/lang/String; = "MAKE_BACKGROUND_TRANSPARENT"

.field static final MILES:I = 0x1

.field static final MODE:Ljava/lang/String; = "MODE"

.field static final NO_FRONT_CONTROLLER:I = 0x9

.field static final NO_OF_CELLS:Ljava/lang/String; = "NO_OF_CELLS"

.field static final NO_OF_MOTORS:Ljava/lang/String; = "NO_OF_MOTORS"

.field static final P0:Ljava/lang/String; = "P0"

.field static final P10:Ljava/lang/String; = "P10"

.field static final P100:Ljava/lang/String; = "P100"

.field static final P20:Ljava/lang/String; = "P20"

.field static final P30:Ljava/lang/String; = "P30"

.field static final P40:Ljava/lang/String; = "P40"

.field static final P50:Ljava/lang/String; = "P50"

.field static final P60:Ljava/lang/String; = "P60"

.field static final P70:Ljava/lang/String; = "P70"

.field static final P80:Ljava/lang/String; = "P80"

.field static final P90:Ljava/lang/String; = "P90"

.field static final PACKET_DELAY:Ljava/lang/String; = "PACKET_DELAY"

.field private static PACKET_RX_TIMEOUT:J = 0x0L

.field static final PLAY_BATTERY_ALARM:Ljava/lang/String; = "PLAY_BATTERY_ALARM"

.field static final PREFERENCE:Ljava/lang/String; = "VESC_SETTINGS"

.field static final REALTIMESIZE:Ljava/lang/String; = "REALTIMESIZE"

.field static final SAVE_GPS_POSITION:Ljava/lang/String; = "SAVE_GPS_POSITION"

.field static final SOUND_QUALITY:Ljava/lang/String; = "SOUND_QUALITY"

.field static final TEETH_MOTOR_PULLEY:Ljava/lang/String; = "TEETH_MOTOR_PULLEY"

.field static final TEETH_WHEEL_PULLEY:Ljava/lang/String; = "TEETH_WHEEL_PULLEY"

.field static final USE_DARK_THEME:Ljava/lang/String; = "USE_DARK_THEME"

.field static final VIDEO_LAYOUT:Ljava/lang/String; = "VIDEO_LAYOUT"

.field static final VIDEO_QUALITY:Ljava/lang/String; = "VIDEO_QUALITY"

.field static final VIDEO_RESOLUTION:Ljava/lang/String; = "VIDEO_RESOLUTION"

.field static final WHEEL_SIZE:Ljava/lang/String; = "WHEEL_SIZE"

.field private static counter:I = 0x0

.field private static final crc16_tab:[I

.field private static currentBluetoothAdress:Ljava/lang/String; = null

.field private static distanceFactor:F = 0.0f

.field public static final fileFormatter:Ljava/text/DateFormat;

.field private static firmwareVersion:Ljava/lang/String; = null

.field public static final folderFormatter:Ljava/text/DateFormat;

.field static final folderName:Ljava/lang/String; = "VESCMonitor"

.field public static final formatter:Ljava/text/DateFormat;

.field public static final hourMinuteSecondFormatter:Ljava/text/DateFormat;

.field private static mCrcHigh:B

.field private static mCrcLow:B

.field private static mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private static mPayloadLength:I

.field private static mRxState:I

.field private static payload:[B

.field private static realtimeDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lackmaniac/vescmonitor/RealtimeData;",
            ">;"
        }
    .end annotation
.end field

.field private static rxByteArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private static rx_timeout:J

.field private static speedDevider:F

.field public static terminalCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x4

    const/4 v2, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 22
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lackmaniac/vescmonitor/Utils;->crc16_tab:[I

    .line 281
    new-instance v0, Lackmaniac/vescmonitor/Utils$1;

    invoke-direct {v0}, Lackmaniac/vescmonitor/Utils$1;-><init>()V

    sput-object v0, Lackmaniac/vescmonitor/Utils;->terminalCommands:Ljava/util/List;

    .line 291
    new-array v0, v6, [B

    fill-array-data v0, :array_1

    sput-object v0, Lackmaniac/vescmonitor/Utils;->COMM_GET_VALUES_BYTE:[B

    .line 292
    const/16 v0, 0x9

    new-array v0, v0, [B

    aput-byte v2, v0, v3

    const/4 v1, 0x1

    aput-byte v4, v0, v1

    sget-object v1, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_FORWARD_CAN:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-virtual {v1}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    aput-byte v3, v0, v4

    aput-byte v5, v0, v5

    const/4 v1, 0x5

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    aput-byte v4, v0, v6

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    sput-object v0, Lackmaniac/vescmonitor/Utils;->COMM_GET_VALUES_BYTE_BY_SERIAL:[B

    .line 294
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd_MM_yyyy_HH_mm_ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lackmaniac/vescmonitor/Utils;->formatter:Ljava/text/DateFormat;

    .line 296
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lackmaniac/vescmonitor/Utils;->hourMinuteSecondFormatter:Ljava/text/DateFormat;

    .line 298
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lackmaniac/vescmonitor/Utils;->fileFormatter:Ljava/text/DateFormat;

    .line 300
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lackmaniac/vescmonitor/Utils;->folderFormatter:Ljava/text/DateFormat;

    .line 431
    const-string v0, ""

    sput-object v0, Lackmaniac/vescmonitor/Utils;->firmwareVersion:Ljava/lang/String;

    .line 434
    sput v3, Lackmaniac/vescmonitor/Utils;->mRxState:I

    .line 435
    const/16 v0, 0x200

    new-array v0, v0, [B

    sput-object v0, Lackmaniac/vescmonitor/Utils;->payload:[B

    .line 436
    sput v3, Lackmaniac/vescmonitor/Utils;->counter:I

    .line 437
    sput v3, Lackmaniac/vescmonitor/Utils;->mPayloadLength:I

    .line 438
    sput-byte v3, Lackmaniac/vescmonitor/Utils;->mCrcHigh:B

    .line 439
    sput-byte v3, Lackmaniac/vescmonitor/Utils;->mCrcLow:B

    .line 440
    const-wide/16 v0, 0xfa

    sput-wide v0, Lackmaniac/vescmonitor/Utils;->PACKET_RX_TIMEOUT:J

    .line 442
    const-wide/16 v0, 0x0

    sput-wide v0, Lackmaniac/vescmonitor/Utils;->rx_timeout:J

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lackmaniac/vescmonitor/Utils;->rxByteArrayList:Ljava/util/List;

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lackmaniac/vescmonitor/Utils;->realtimeDataList:Ljava/util/List;

    .line 450
    const/4 v0, 0x0

    sput-object v0, Lackmaniac/vescmonitor/Utils;->currentBluetoothAdress:Ljava/lang/String;

    return-void

    .line 26
    nop

    :array_0
    .array-data 4
        0x0
        0x1021
        0x2042
        0x3063
        0x4084
        0x50a5
        0x60c6
        0x70e7
        0x8108
        0x9129
        0xa14a
        0xb16b
        0xc18c
        0xd1ad
        0xe1ce
        0xf1ef
        0x1231
        0x210
        0x3273
        0x2252
        0x52b5
        0x4294
        0x72f7
        0x62d6
        0x9339
        0x8318
        0xb37b
        0xa35a
        0xd3bd
        0xc39c
        0xf3ff
        0xe3de
        0x2462
        0x3443
        0x420
        0x1401
        0x64e6
        0x74c7
        0x44a4
        0x5485
        0xa56a
        0xb54b
        0x8528
        0x9509
        0xe5ee
        0xf5cf
        0xc5ac
        0xd58d
        0x3653
        0x2672
        0x1611
        0x630
        0x76d7
        0x66f6
        0x5695
        0x46b4
        0xb75b
        0xa77a
        0x9719
        0x8738
        0xf7df
        0xe7fe
        0xd79d
        0xc7bc
        0x48c4
        0x58e5
        0x6886
        0x78a7
        0x840
        0x1861
        0x2802
        0x3823
        0xc9cc
        0xd9ed
        0xe98e
        0xf9af
        0x8948
        0x9969
        0xa90a
        0xb92b
        0x5af5
        0x4ad4
        0x7ab7
        0x6a96
        0x1a71
        0xa50
        0x3a33
        0x2a12
        0xdbfd
        0xcbdc
        0xfbbf
        0xeb9e
        0x9b79
        0x8b58
        0xbb3b
        0xab1a
        0x6ca6
        0x7c87
        0x4ce4
        0x5cc5
        0x2c22
        0x3c03
        0xc60
        0x1c41
        0xedae
        0xfd8f
        0xcdec
        0xddcd
        0xad2a
        0xbd0b
        0x8d68
        0x9d49
        0x7e97
        0x6eb6
        0x5ed5
        0x4ef4
        0x3e13
        0x2e32
        0x1e51
        0xe70
        0xff9f
        0xefbe
        0xdfdd
        0xcffc
        0xbf1b
        0xaf3a
        0x9f59
        0x8f78
        0x9188
        0x81a9
        0xb1ca
        0xa1eb
        0xd10c
        0xc12d
        0xf14e
        0xe16f
        0x1080
        0xa1
        0x30c2
        0x20e3
        0x5004
        0x4025
        0x7046
        0x6067
        0x83b9
        0x9398
        0xa3fb
        0xb3da
        0xc33d
        0xd31c
        0xe37f
        0xf35e
        0x2b1
        0x1290
        0x22f3
        0x32d2
        0x4235
        0x5214
        0x6277
        0x7256
        0xb5ea
        0xa5cb
        0x95a8
        0x8589
        0xf56e
        0xe54f
        0xd52c
        0xc50d
        0x34e2
        0x24c3
        0x14a0
        0x481
        0x7466
        0x6447
        0x5424
        0x4405
        0xa7db
        0xb7fa
        0x8799
        0x97b8
        0xe75f    # 8.3E-41f
        0xf77e
        0xc71d
        0xd73c
        0x26d3
        0x36f2
        0x691
        0x16b0
        0x6657
        0x7676
        0x4615
        0x5634
        0xd94c
        0xc96d
        0xf90e
        0xe92f
        0x99c8
        0x89e9
        0xb98a
        0xa9ab
        0x5844
        0x4865
        0x7806
        0x6827
        0x18c0
        0x8e1
        0x3882
        0x28a3
        0xcb7d
        0xdb5c
        0xeb3f
        0xfb1e
        0x8bf9
        0x9bd8
        0xabbb
        0xbb9a
        0x4a75
        0x5a54
        0x6a37
        0x7a16
        0xaf1
        0x1ad0
        0x2ab3
        0x3a92
        0xfd2e
        0xed0f
        0xdd6c
        0xcd4d
        0xbdaa
        0xad8b
        0x9de8
        0x8dc9
        0x7c26
        0x6c07
        0x5c64
        0x4c45
        0x3ca2
        0x2c83
        0x1ce0
        0xcc1
        0xef1f
        0xff3e
        0xcf5d
        0xdf7c
        0xaf9b
        0xbfba
        0x8fd9
        0x9ff8
        0x6e17
        0x7e36
        0x4e55
        0x5e74
        0x2e93
        0x3eb2
        0xed1
        0x1ef0
    .end array-data

    .line 291
    :array_1
    .array-data 1
        0x2t
        0x1t
        0x4t
        0x40t
        -0x7ct
        0x3t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addRealtimeDate(Lackmaniac/vescmonitor/RealtimeData;)V
    .locals 1
    .param p0, "data"    # Lackmaniac/vescmonitor/RealtimeData;

    .prologue
    .line 659
    sget-object v0, Lackmaniac/vescmonitor/Utils;->realtimeDataList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    return-void
.end method

.method static addRxEntry([B)V
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 644
    sget-object v0, Lackmaniac/vescmonitor/Utils;->rxByteArrayList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    return-void
.end method

.method public static native bufferAppendFloat32Auto(F)[B
.end method

.method public static native bufferGetFloat32Auto([BI)F
.end method

.method static buffer_append_int16([BII)I
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "number"    # I
    .param p2, "index"    # I

    .prologue
    .line 509
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "index":I
    .local v0, "index":I
    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p2

    .line 510
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "index":I
    .restart local p2    # "index":I
    int-to-byte v1, p1

    aput-byte v1, p0, v0

    .line 511
    return p2
.end method

.method static buffer_append_int32([BII)I
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "number"    # I
    .param p2, "index"    # I

    .prologue
    .line 515
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "index":I
    .local v0, "index":I
    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p2

    .line 516
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "index":I
    .restart local p2    # "index":I
    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 517
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "index":I
    .restart local v0    # "index":I
    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p2

    .line 518
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "index":I
    .restart local p2    # "index":I
    int-to-byte v1, p1

    aput-byte v1, p0, v0

    .line 519
    return p2
.end method

.method static buffer_append_uint32([BJI)I
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "number"    # J
    .param p3, "index"    # I

    .prologue
    .line 523
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "index":I
    .local v0, "index":I
    const/16 v1, 0x18

    shr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p3

    .line 524
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "index":I
    .restart local p3    # "index":I
    const/16 v1, 0x10

    shr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 525
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "index":I
    .restart local v0    # "index":I
    const/16 v1, 0x8

    shr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p3

    .line 526
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "index":I
    .restart local p3    # "index":I
    long-to-int v1, p1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 527
    return p3
.end method

.method static buffer_get_float16([BFI)F
    .locals 1
    .param p0, "data"    # [B
    .param p1, "devider"    # F
    .param p2, "index"    # I

    .prologue
    .line 505
    invoke-static {p0, p2}, Lackmaniac/vescmonitor/Utils;->buffer_get_int16([BI)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    return v0
.end method

.method static buffer_get_float32([BFI)F
    .locals 1
    .param p0, "data"    # [B
    .param p1, "devider"    # F
    .param p2, "index"    # I

    .prologue
    .line 501
    invoke-static {p0, p2}, Lackmaniac/vescmonitor/Utils;->buffer_get_int32([BI)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    return v0
.end method

.method static buffer_get_float32_auto([BI)F
    .locals 1
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .prologue
    .line 531
    invoke-static {p0, p1}, Lackmaniac/vescmonitor/Utils;->bufferGetFloat32Auto([BI)F

    move-result v0

    return v0
.end method

.method static buffer_get_int16([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .prologue
    .line 497
    invoke-static {p0, p1}, Lackmaniac/vescmonitor/Utils;->buffer_get_uint16([BI)S

    move-result v0

    return v0
.end method

.method static buffer_get_int32([BI)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .prologue
    .line 489
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "index":I
    .local v1, "index":I
    aget-byte v2, p0, p1

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v2

    shl-int/lit8 v0, v2, 0x18

    .line 490
    .local v0, "i":I
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "index":I
    .restart local p1    # "index":I
    aget-byte v2, p0, v1

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    .line 491
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "index":I
    .restart local v1    # "index":I
    aget-byte v2, p0, p1

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 492
    aget-byte v2, p0, v1

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v2

    add-int/2addr v0, v2

    .line 493
    return v0
.end method

.method private static buffer_get_uint16([BI)S
    .locals 3
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .prologue
    .line 482
    const/4 v0, 0x0

    .line 483
    .local v0, "i":S
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "index":I
    .local v1, "index":I
    aget-byte v2, p0, p1

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v2

    int-to-short v2, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v0

    int-to-short v0, v2

    .line 484
    aget-byte v2, p0, v1

    invoke-static {v2}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v2

    add-int/2addr v2, v0

    int-to-short v0, v2

    .line 485
    return v0
.end method

.method private static buffer_get_uint32([BI)J
    .locals 6
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .prologue
    .line 474
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .local v2, "index":I
    aget-byte v3, p0, p1

    invoke-static {v3}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    int-to-long v0, v3

    .line 475
    .local v0, "i":J
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    aget-byte v3, p0, v2

    invoke-static {v3}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 476
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    aget-byte v3, p0, p1

    invoke-static {v3}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 477
    aget-byte v3, p0, v2

    invoke-static {v3}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 478
    return-wide v0
.end method

.method static clearRealtimeDataList()V
    .locals 1

    .prologue
    .line 672
    sget-object v0, Lackmaniac/vescmonitor/Utils;->realtimeDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 673
    return-void
.end method

.method static clearRxList()V
    .locals 1

    .prologue
    .line 656
    sget-object v0, Lackmaniac/vescmonitor/Utils;->rxByteArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static crc16([BII)I
    .locals 5
    .param p0, "buf"    # [B
    .param p1, "len"    # I
    .param p2, "offset"    # I

    .prologue
    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, "cksum":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 460
    sget-object v2, Lackmaniac/vescmonitor/Utils;->crc16_tab:[I

    shr-int/lit8 v3, v0, 0x8

    aget-byte v4, p0, v1

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    shl-int/lit8 v3, v0, 0x8

    xor-int v0, v2, v3

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    :cond_0
    return v0
.end method

.method static createRaptor2DefaultConfig(Landroid/content/SharedPreferences;)V
    .locals 13
    .param p0, "settings"    # Landroid/content/SharedPreferences;

    .prologue
    .line 902
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 903
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v10, 0x1

    .line 905
    .local v10, "modeNumber":I
    const/4 v2, 0x1

    .line 906
    .local v2, "hasNext":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 907
    const-string v11, "NAME"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-interface {p0, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v2, 0x1

    .line 908
    :goto_1
    if-eqz v2, :cond_0

    .line 909
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 907
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 913
    :cond_2
    const-string v11, "BATTERY_WH"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x190

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 914
    const-string v11, "NO_OF_CELLS"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xa

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 915
    const-string v11, "P100"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x40866666    # 4.2f

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 916
    const-string v11, "P90"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x40828f5c    # 4.08f

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 917
    const-string v11, "P80"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x407eb852    # 3.98f

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 918
    const-string v11, "P70"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x4078f5c3    # 3.89f

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 919
    const-string v11, "P60"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x4073851f    # 3.805f

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 920
    const-string v11, "P50"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x406ccccd    # 3.7f

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 921
    const-string v11, "P40"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x406851ec    # 3.63f

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 922
    const-string v11, "P30"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x40651eb8    # 3.58f

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 923
    const-string v11, "P20"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x4061eb85    # 3.53f

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 924
    const-string v11, "P10"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x405d70a4    # 3.46f

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 925
    const-string v11, "P0"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x4059999a    # 3.4f

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 927
    const-string v11, "MAGNETS"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x1c

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 928
    const-string v11, "WHEEL_SIZE"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x5a

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 929
    const-string v11, "TEETH_WHEEL_PULLEY"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 930
    const-string v11, "TEETH_MOTOR_PULLEY"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 931
    const-string v11, "DISTANCE_UNIT"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 932
    const-string v11, "NO_OF_MOTORS"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 934
    const/4 v11, 0x4

    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Beginner"

    aput-object v12, v9, v11

    const/4 v11, 0x1

    const-string v12, "Intermediate"

    aput-object v12, v9, v11

    const/4 v11, 0x2

    const-string v12, "Advanced"

    aput-object v12, v9, v11

    const/4 v11, 0x3

    const-string v12, "Pro"

    aput-object v12, v9, v11

    .line 935
    .local v9, "modeName":[Ljava/lang/String;
    const/4 v11, 0x4

    new-array v5, v11, [I

    fill-array-data v5, :array_0

    .line 936
    .local v5, "maxMotor":[I
    const/4 v11, 0x4

    new-array v4, v11, [I

    fill-array-data v4, :array_1

    .line 937
    .local v4, "maxBattery":[I
    const/4 v11, 0x4

    new-array v8, v11, [I

    fill-array-data v8, :array_2

    .line 938
    .local v8, "minMotor":[I
    const/4 v11, 0x4

    new-array v7, v11, [I

    fill-array-data v7, :array_3

    .line 940
    .local v7, "minBattery":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v11, v9

    if-ge v3, v11, :cond_4

    .line 941
    const-string v11, "NAME"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aget-object v12, v9, v3

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 942
    const-string v11, "PPM_MODE"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_WATT_NOREV_BRAKE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v12}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v12

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 944
    const-string v11, "USE_MAX_WATT"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 945
    const-string v11, "MAX_WATT"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aget v12, v4, v3

    mul-int/lit8 v12, v12, 0x24

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 946
    const-string v11, "MAX_MOTOR_C"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aget v12, v5, v3

    mul-int/lit8 v12, v12, 0xa

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 947
    const-string v11, "MAX_BATTERY_C"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aget v12, v4, v3

    mul-int/lit8 v12, v12, 0xa

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 948
    const-string v11, "MIN_MOTOR_C"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aget v12, v8, v3

    mul-int/lit8 v12, v12, 0xa

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 949
    const-string v11, "MIN_BATTERY_C"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aget v12, v7, v3

    mul-int/lit8 v12, v12, 0xa

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 951
    const/high16 v6, 0x42700000    # 60.0f

    .line 952
    .local v6, "maxSpeedValue":F
    const-string v11, "DISTANCE_UNIT"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {p0, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 953
    .local v0, "distanceUnit":I
    const/4 v11, 0x1

    if-ne v0, v11, :cond_3

    const v11, 0x3fcdfeda

    :goto_3
    mul-float/2addr v6, v11

    .line 954
    const-string v11, "MAX_SPEED"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11, v6}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 956
    const-string v11, "KEY_USE_OTHER_SETTINGS_FOR_FRONT"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 958
    const-string v11, "KEY_FRONT_CAN_CONTROLLERID_FIRST"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x9

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 960
    const-string v11, "KEY_FRONT_CAN_CONTROLLERID_SECOND"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x9

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 962
    const-string v11, "FRONT_USE_MAX_WATT"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 963
    const-string v11, "FRONT_MAX_WATT"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aget v12, v4, v3

    mul-int/lit8 v12, v12, 0x24

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 964
    const-string v11, "FRONT_MAX_MOTOR_C"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aget v12, v5, v3

    mul-int/lit8 v12, v12, 0xa

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 965
    const-string v11, "FRONT_MAX_BATTERY_C"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aget v12, v4, v3

    mul-int/lit8 v12, v12, 0xa

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 966
    const-string v11, "FRONT_MIN_MOTOR_C"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aget v12, v8, v3

    mul-int/lit8 v12, v12, 0xa

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 967
    const-string v11, "FRONT_MIN_BATTERY_C"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aget v12, v7, v3

    mul-int/lit8 v12, v12, 0xa

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 969
    const-string v11, "USE_SPECIAL_THROOTLE_CURVE"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 971
    const-string v11, "KEY_USE_SPECIAL_BRAKING_PID"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 972
    const-string v11, "KEY_PID_BRAKING_AT_ENABLED"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 974
    const-string v11, "KEY_USE_SPECIAL_CRUISE_CONTROL_PID"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 975
    const-string v11, "KEY_CRUISE_CONTROL_PID_KP"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x3b449ba6    # 0.003f

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 976
    const-string v11, "KEY_CRUISE_CONTROL_PID_KI"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x3b449ba6    # 0.003f

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 977
    const-string v11, "KEY_CRUISE_CONTROL_PID_KD"

    invoke-static {v10, v11}, Lackmaniac/vescmonitor/Utils;->getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 979
    add-int/lit8 v10, v10, 0x1

    .line 940
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 953
    :cond_3
    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_3

    .line 982
    .end local v0    # "distanceUnit":I
    .end local v6    # "maxSpeedValue":F
    :cond_4
    const-string v11, "DEFAULT_MODES_ALREADY_CREATED"

    invoke-static {v11}, Lackmaniac/vescmonitor/Utils;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 983
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 984
    return-void

    .line 935
    :array_0
    .array-data 4
        0x14
        0x28
        0x3c
        0x50
    .end array-data

    .line 936
    :array_1
    .array-data 4
        0x3
        0x7
        0x14
        0x1e
    .end array-data

    .line 937
    :array_2
    .array-data 4
        -0x1e
        -0x28
        -0x2d
        -0x32
    .end array-data

    .line 938
    :array_3
    .array-data 4
        -0xa
        -0xa
        -0xa
        -0xa
    .end array-data
.end method

.method static getChukModeText(IZ)Ljava/lang/String;
    .locals 1
    .param p0, "ppmMode"    # I
    .param p1, "islong"    # Z

    .prologue
    .line 732
    if-eqz p1, :cond_5

    .line 733
    sget-object v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    const-string v0, "Disabled"

    .line 748
    :goto_0
    return-object v0

    .line 734
    :cond_0
    sget-object v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_CURRENT:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_1

    .line 735
    const-string v0, "Current with Reverse"

    goto :goto_0

    .line 736
    :cond_1
    sget-object v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_CURRENT_NOREV:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_2

    .line 737
    const-string v0, "Current"

    goto :goto_0

    .line 738
    :cond_2
    sget-object v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_WATT:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_3

    .line 739
    const-string v0, "Watt with Reverse"

    goto :goto_0

    .line 740
    :cond_3
    sget-object v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_WATT_NOREV:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_4

    const-string v0, "Watt"

    goto :goto_0

    .line 741
    :cond_4
    const-string v0, "Unknown"

    goto :goto_0

    .line 743
    :cond_5
    sget-object v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_6

    const-string v0, "Disabled"

    goto :goto_0

    .line 744
    :cond_6
    sget-object v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_CURRENT:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_7

    const-string v0, "Cur w Rev"

    goto :goto_0

    .line 745
    :cond_7
    sget-object v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_CURRENT_NOREV:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_8

    const-string v0, "Cur"

    goto :goto_0

    .line 746
    :cond_8
    sget-object v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_WATT:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_9

    const-string v0, "Watt w Rev"

    goto :goto_0

    .line 747
    :cond_9
    sget-object v0, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->CHUK_CTRL_TYPE_WATT_NOREV:Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$CHUK_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_a

    const-string v0, "Watt"

    goto :goto_0

    .line 748
    :cond_a
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method static getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I
    .locals 2
    .param p0, "bla"    # Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    .prologue
    .line 162
    sget-object v0, Lackmaniac/vescmonitor/Utils;->firmwareVersion:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lackmaniac/vescmonitor/Utils$2;->$SwitchMap$ackmaniac$vescmonitor$Utils$COMM_PACKET_ID:[I

    invoke-virtual {p0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 194
    invoke-virtual {p0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->ordinal()I

    move-result v0

    .line 197
    :goto_0
    return v0

    .line 164
    :pswitch_0
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_SET_DETECT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto :goto_0

    .line 165
    :pswitch_1
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_SET_SERVO_POS:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto :goto_0

    .line 166
    :pswitch_2
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_SET_MCCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto :goto_0

    .line 167
    :pswitch_3
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_GET_MCCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto :goto_0

    .line 168
    :pswitch_4
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_GET_MCCONF_DEFAULT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto :goto_0

    .line 169
    :pswitch_5
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_SET_APPCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto :goto_0

    .line 170
    :pswitch_6
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_GET_APPCONF:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto :goto_0

    .line 171
    :pswitch_7
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_GET_APPCONF_DEFAULT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto :goto_0

    .line 172
    :pswitch_8
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_SAMPLE_PRINT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto :goto_0

    .line 173
    :pswitch_9
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_TERMINAL_CMD:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto :goto_0

    .line 174
    :pswitch_a
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_PRINT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto :goto_0

    .line 175
    :pswitch_b
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_ROTOR_POSITION:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto :goto_0

    .line 176
    :pswitch_c
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_EXPERIMENT_SAMPLE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto :goto_0

    .line 177
    :pswitch_d
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_DETECT_MOTOR_PARAM:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto :goto_0

    .line 178
    :pswitch_e
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_DETECT_MOTOR_R_L:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto :goto_0

    .line 179
    :pswitch_f
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_DETECT_MOTOR_FLUX_LINKAGE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto :goto_0

    .line 180
    :pswitch_10
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_DETECT_ENCODER:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto :goto_0

    .line 181
    :pswitch_11
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_DETECT_HALL_FOC:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto :goto_0

    .line 182
    :pswitch_12
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_REBOOT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 183
    :pswitch_13
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_ALIVE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 184
    :pswitch_14
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_GET_DECODED_PPM:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 185
    :pswitch_15
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_GET_DECODED_ADC:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 186
    :pswitch_16
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_GET_DECODED_CHUK:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 187
    :pswitch_17
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_FORWARD_CAN:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 188
    :pswitch_18
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_SET_CHUCK_DATA:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 189
    :pswitch_19
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_CUSTOM_APP_DATA:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 190
    :pswitch_1a
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_SET_SPEED_MODE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 191
    :pswitch_1b
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_GET_SPEED_MODE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 192
    :pswitch_1c
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_SET_CURRENT_CONF_AS_DEFAULT:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 193
    :pswitch_1d
    sget-object v0, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->COMM_SET_MOTOR_TYPE:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID_VESC6;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 197
    :cond_0
    invoke-virtual {p0}, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method static getCurrentBluetoothAdress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 824
    sget-object v0, Lackmaniac/vescmonitor/Utils;->currentBluetoothAdress:Ljava/lang/String;

    return-object v0
.end method

.method static getDistanceFactor()F
    .locals 1

    .prologue
    .line 820
    sget v0, Lackmaniac/vescmonitor/Utils;->distanceFactor:F

    return v0
.end method

.method static getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 811
    sget-object v0, Lackmaniac/vescmonitor/Utils;->firmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method static getFolder(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 4
    .param p0, "settings"    # Landroid/content/SharedPreferences;

    .prologue
    .line 845
    new-instance v0, Ljava/io/File;

    const-string v1, "saveFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "VESCMonitor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 846
    .local v0, "vescMonitorDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 847
    new-instance v0, Ljava/io/File;

    .end local v0    # "vescMonitorDirectory":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "VESCMonitor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 848
    .restart local v0    # "vescMonitorDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 849
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 852
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getHourMinuteSeconds(J)Ljava/lang/String;
    .locals 8
    .param p0, "millis"    # J

    .prologue
    .line 875
    const-string v0, "%02d:%02d:%02d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 876
    invoke-virtual {v3, p0, p1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 877
    invoke-virtual {v3, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p0, p1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 878
    invoke-virtual {v3, p0, p1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 875
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getMinuteSeconds(J)Ljava/lang/String;
    .locals 8
    .param p0, "millis"    # J

    .prologue
    .line 869
    const-string v0, "%02d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 870
    invoke-virtual {v3, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 871
    invoke-virtual {v3, p0, p1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 869
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getModeSettingsKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "modeNumber"    # I
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lackmaniac/vescmonitor/Utils;->currentBluetoothAdress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_MODE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getNextFromRealtimeDataList()Lackmaniac/vescmonitor/RealtimeData;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 663
    sget-object v1, Lackmaniac/vescmonitor/Utils;->realtimeDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    sget-object v1, Lackmaniac/vescmonitor/Utils;->realtimeDataList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lackmaniac/vescmonitor/RealtimeData;

    .line 665
    .local v0, "data":Lackmaniac/vescmonitor/RealtimeData;
    sget-object v1, Lackmaniac/vescmonitor/Utils;->realtimeDataList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 668
    :goto_0
    return-object v0

    .end local v0    # "data":Lackmaniac/vescmonitor/RealtimeData;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getNextFromRxList()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 648
    sget-object v1, Lackmaniac/vescmonitor/Utils;->rxByteArrayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    sget-object v1, Lackmaniac/vescmonitor/Utils;->rxByteArrayList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 650
    .local v0, "data":[B
    sget-object v1, Lackmaniac/vescmonitor/Utils;->rxByteArrayList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 653
    :goto_0
    return-object v0

    .end local v0    # "data":[B
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getPPMModeText(IZ)Ljava/lang/String;
    .locals 2
    .param p0, "ppmMode"    # I
    .param p1, "islong"    # Z

    .prologue
    .line 676
    if-eqz p1, :cond_14

    .line 677
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 678
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    const-string v0, "Disabled"

    .line 727
    :goto_0
    return-object v0

    .line 679
    :cond_0
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_CURRENT:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_1

    const-string v0, "Current (with Reverse)"

    goto :goto_0

    .line 680
    :cond_1
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_CURRENT_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_2

    const-string v0, "Current no Reverse"

    goto :goto_0

    .line 681
    :cond_2
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_CURRENT_NOREV_BRAKE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_3

    const-string v0, "Current no Rev. with Break"

    goto :goto_0

    .line 682
    :cond_3
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_DUTY:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_4

    const-string v0, "Duty (with Reverse)"

    goto :goto_0

    .line 683
    :cond_4
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_DUTY_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_5

    const-string v0, "Duty no Reverse"

    goto :goto_0

    .line 684
    :cond_5
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_PID:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_6

    const-string v0, "PID (with Reverse)"

    goto :goto_0

    .line 685
    :cond_6
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_PID_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_7

    const-string v0, "PID no Reverse"

    goto :goto_0

    .line 686
    :cond_7
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_PID_NOACCELERATION:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_13

    const-string v0, "PID no Acceleration"

    goto :goto_0

    .line 688
    :cond_8
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_9

    const-string v0, "Disabled"

    goto :goto_0

    .line 689
    :cond_9
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_CURRENT:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_a

    const-string v0, "Current (with Reverse)"

    goto :goto_0

    .line 690
    :cond_a
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_CURRENT_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_b

    const-string v0, "Current no Reverse"

    goto :goto_0

    .line 691
    :cond_b
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_CURRENT_NOREV_BRAKE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_c

    const-string v0, "Current no Rev. with Break"

    goto/16 :goto_0

    .line 692
    :cond_c
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_DUTY:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_d

    const-string v0, "Duty (with Reverse)"

    goto/16 :goto_0

    .line 693
    :cond_d
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_DUTY_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_e

    const-string v0, "Duty no Reverse"

    goto/16 :goto_0

    .line 694
    :cond_e
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_PID:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_f

    const-string v0, "PID (with Reverse)"

    goto/16 :goto_0

    .line 695
    :cond_f
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_PID_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_10

    const-string v0, "PID no Reverse"

    goto/16 :goto_0

    .line 696
    :cond_10
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_WATT_NOREV_BRAKE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_11

    const-string v0, "Watt no Rev. with Break"

    goto/16 :goto_0

    .line 697
    :cond_11
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_WATT:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_12

    const-string v0, "Watt (with Reverse)"

    goto/16 :goto_0

    .line 698
    :cond_12
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_PID_NOACCELERATION:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_13

    const-string v0, "PID no Acceleration"

    goto/16 :goto_0

    .line 701
    :cond_13
    const-string v0, "Unknown"

    goto/16 :goto_0

    .line 703
    :cond_14
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 704
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_15

    const-string v0, "Disabled"

    goto/16 :goto_0

    .line 705
    :cond_15
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_CURRENT:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_16

    const-string v0, "Cur"

    goto/16 :goto_0

    .line 706
    :cond_16
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_CURRENT_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_17

    const-string v0, "Cur n R"

    goto/16 :goto_0

    .line 707
    :cond_17
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_CURRENT_NOREV_BRAKE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_18

    const-string v0, "Cur n R w Br"

    goto/16 :goto_0

    .line 708
    :cond_18
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_DUTY:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_19

    const-string v0, "Duty"

    goto/16 :goto_0

    .line 709
    :cond_19
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_DUTY_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_1a

    const-string v0, "Duty n R"

    goto/16 :goto_0

    .line 710
    :cond_1a
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_PID:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_1b

    const-string v0, "PID"

    goto/16 :goto_0

    .line 711
    :cond_1b
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_PID_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_1c

    const-string v0, "PID n R"

    goto/16 :goto_0

    .line 712
    :cond_1c
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->PPM_CTRL_TYPE_PID_NOACCELERATION:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE_FW_3;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_28

    const-string v0, "PID n Acc"

    goto/16 :goto_0

    .line 714
    :cond_1d
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_NONE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_1e

    const-string v0, "Disabled"

    goto/16 :goto_0

    .line 715
    :cond_1e
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_CURRENT:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_1f

    const-string v0, "Cur"

    goto/16 :goto_0

    .line 716
    :cond_1f
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_CURRENT_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_20

    const-string v0, "Cur n R"

    goto/16 :goto_0

    .line 717
    :cond_20
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_CURRENT_NOREV_BRAKE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_21

    .line 718
    const-string v0, "Cur n R w Br"

    goto/16 :goto_0

    .line 719
    :cond_21
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_DUTY:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_22

    const-string v0, "Duty"

    goto/16 :goto_0

    .line 720
    :cond_22
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_DUTY_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_23

    const-string v0, "Duty n R"

    goto/16 :goto_0

    .line 721
    :cond_23
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_PID:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_24

    const-string v0, "PID"

    goto/16 :goto_0

    .line 722
    :cond_24
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_PID_NOREV:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_25

    const-string v0, "PID n R"

    goto/16 :goto_0

    .line 723
    :cond_25
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_WATT_NOREV_BRAKE:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_26

    const-string v0, "Watt n R w Br"

    goto/16 :goto_0

    .line 724
    :cond_26
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_WATT:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_27

    const-string v0, "Watt"

    goto/16 :goto_0

    .line 725
    :cond_27
    sget-object v0, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->PPM_CTRL_TYPE_PID_NOACCELERATION:Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;

    invoke-virtual {v0}, Lackmaniac/vescmonitor/Utils$PPM_CONTROL_TYPE;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_28

    const-string v0, "PID n Acc"

    goto/16 :goto_0

    .line 727
    :cond_28
    const-string v0, "Unknown"

    goto/16 :goto_0
.end method

.method static getResolutionSize(Ljava/lang/String;I)Landroid/graphics/Point;
    .locals 4
    .param p0, "resolution"    # Ljava/lang/String;
    .param p1, "orientation"    # I

    .prologue
    .line 856
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 857
    .local v0, "reolutionSize":Landroid/graphics/Point;
    if-nez p1, :cond_0

    .line 858
    const-string v1, "("

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "x"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 859
    const-string v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 864
    :goto_0
    const-string v1, "REOLUTION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return-object v0

    .line 861
    :cond_0
    const-string v1, "("

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "x"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 862
    const-string v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method static getSettingsKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lackmaniac/vescmonitor/Utils;->currentBluetoothAdress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSpeedDevider()F
    .locals 1

    .prologue
    .line 802
    sget v0, Lackmaniac/vescmonitor/Utils;->speedDevider:F

    return v0
.end method

.method static getmGattUpdateReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 894
    sget-object v0, Lackmaniac/vescmonitor/Utils;->mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static isExternalStorageWritable()Z
    .locals 2

    .prologue
    .line 841
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static printBytesForLogging([BLjava/lang/String;)V
    .locals 6
    .param p0, "data"    # [B
    .param p1, "logHeader"    # Ljava/lang/String;

    .prologue
    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    .local v1, "infoString":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v0, p0, v2

    .line 537
    .local v0, "b":B
    invoke-static {v0}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 539
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void
.end method

.method static processData([B)[B
    .locals 13
    .param p0, "data"    # [B

    .prologue
    const/4 v12, 0x3

    const/4 v5, 0x0

    .line 553
    sget-wide v6, Lackmaniac/vescmonitor/Utils;->rx_timeout:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-gtz v4, :cond_0

    .line 554
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->resetProcessReader()V

    .line 557
    :cond_0
    array-length v6, p0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_7

    aget-byte v0, p0, v4

    .line 560
    .local v0, "aData":B
    sget v7, Lackmaniac/vescmonitor/Utils;->mRxState:I

    packed-switch v7, :pswitch_data_0

    .line 634
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->resetProcessReader()V

    .line 638
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lackmaniac/vescmonitor/Utils;->PACKET_RX_TIMEOUT:J

    add-long/2addr v8, v10

    sput-wide v8, Lackmaniac/vescmonitor/Utils;->rx_timeout:J

    .line 557
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 562
    :pswitch_0
    invoke-static {v0}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v3

    .line 563
    .local v3, "value":I
    const/4 v7, 0x2

    if-ne v3, v7, :cond_2

    .line 564
    sget v7, Lackmaniac/vescmonitor/Utils;->mRxState:I

    add-int/lit8 v7, v7, 0x2

    sput v7, Lackmaniac/vescmonitor/Utils;->mRxState:I

    .line 565
    sput v5, Lackmaniac/vescmonitor/Utils;->mPayloadLength:I

    goto :goto_1

    .line 567
    :cond_2
    if-ne v3, v12, :cond_3

    .line 568
    sget v7, Lackmaniac/vescmonitor/Utils;->mRxState:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lackmaniac/vescmonitor/Utils;->mRxState:I

    .line 569
    sput v5, Lackmaniac/vescmonitor/Utils;->mPayloadLength:I

    goto :goto_1

    .line 572
    :cond_3
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->resetProcessReader()V

    goto :goto_1

    .line 576
    .end local v3    # "value":I
    :pswitch_1
    invoke-static {v0}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    sput v7, Lackmaniac/vescmonitor/Utils;->mPayloadLength:I

    .line 577
    sget v7, Lackmaniac/vescmonitor/Utils;->mRxState:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lackmaniac/vescmonitor/Utils;->mRxState:I

    goto :goto_1

    .line 581
    :pswitch_2
    sget v7, Lackmaniac/vescmonitor/Utils;->mPayloadLength:I

    invoke-static {v0}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v8

    or-int/2addr v7, v8

    sput v7, Lackmaniac/vescmonitor/Utils;->mPayloadLength:I

    .line 583
    sget v7, Lackmaniac/vescmonitor/Utils;->mPayloadLength:I

    const/16 v8, 0x200

    if-gt v7, v8, :cond_4

    sget v7, Lackmaniac/vescmonitor/Utils;->mPayloadLength:I

    if-lez v7, :cond_4

    .line 584
    sget v7, Lackmaniac/vescmonitor/Utils;->mRxState:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lackmaniac/vescmonitor/Utils;->mRxState:I

    goto :goto_1

    .line 587
    :cond_4
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->resetProcessReader()V

    goto :goto_1

    .line 591
    :pswitch_3
    sget-object v7, Lackmaniac/vescmonitor/Utils;->payload:[B

    sget v8, Lackmaniac/vescmonitor/Utils;->counter:I

    add-int/lit8 v9, v8, 0x1

    sput v9, Lackmaniac/vescmonitor/Utils;->counter:I

    aput-byte v0, v7, v8

    .line 592
    sget v7, Lackmaniac/vescmonitor/Utils;->counter:I

    sget v8, Lackmaniac/vescmonitor/Utils;->mPayloadLength:I

    if-ne v7, v8, :cond_5

    .line 593
    sget v7, Lackmaniac/vescmonitor/Utils;->mRxState:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lackmaniac/vescmonitor/Utils;->mRxState:I

    goto :goto_1

    .line 594
    :cond_5
    sget v7, Lackmaniac/vescmonitor/Utils;->counter:I

    sget v8, Lackmaniac/vescmonitor/Utils;->mPayloadLength:I

    if-le v7, v8, :cond_1

    .line 595
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->resetProcessReader()V

    goto :goto_1

    .line 600
    :pswitch_4
    sput-byte v0, Lackmaniac/vescmonitor/Utils;->mCrcHigh:B

    .line 601
    sget v7, Lackmaniac/vescmonitor/Utils;->mRxState:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lackmaniac/vescmonitor/Utils;->mRxState:I

    goto/16 :goto_1

    .line 605
    :pswitch_5
    sput-byte v0, Lackmaniac/vescmonitor/Utils;->mCrcLow:B

    .line 606
    sget v7, Lackmaniac/vescmonitor/Utils;->mRxState:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lackmaniac/vescmonitor/Utils;->mRxState:I

    goto/16 :goto_1

    .line 609
    :pswitch_6
    invoke-static {v0}, Lackmaniac/vescmonitor/Utils;->unsignedByteToInt(B)I

    move-result v7

    if-ne v7, v12, :cond_6

    .line 612
    sget-object v7, Lackmaniac/vescmonitor/Utils;->payload:[B

    sget v8, Lackmaniac/vescmonitor/Utils;->mPayloadLength:I

    invoke-static {v7, v8, v5}, Lackmaniac/vescmonitor/Utils;->crc16([BII)I

    move-result v1

    .line 614
    .local v1, "crc":I
    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    sget-byte v8, Lackmaniac/vescmonitor/Utils;->mCrcHigh:B

    if-ne v7, v8, :cond_6

    and-int/lit16 v7, v1, 0xff

    int-to-byte v7, v7

    sget-byte v8, Lackmaniac/vescmonitor/Utils;->mCrcLow:B

    if-ne v7, v8, :cond_6

    sget v7, Lackmaniac/vescmonitor/Utils;->mPayloadLength:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_6

    .line 617
    sget-object v4, Lackmaniac/vescmonitor/Utils;->payload:[B

    sget v5, Lackmaniac/vescmonitor/Utils;->mPayloadLength:I

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 619
    .local v2, "goodPayload":[B
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->resetProcessReader()V

    .line 640
    .end local v0    # "aData":B
    .end local v1    # "crc":I
    .end local v2    # "goodPayload":[B
    :goto_2
    return-object v2

    .line 630
    .restart local v0    # "aData":B
    :cond_6
    invoke-static {}, Lackmaniac/vescmonitor/Utils;->resetProcessReader()V

    goto/16 :goto_1

    .line 640
    .end local v0    # "aData":B
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 560
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static resetProcessReader()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 543
    const/16 v0, 0x200

    new-array v0, v0, [B

    sput-object v0, Lackmaniac/vescmonitor/Utils;->payload:[B

    .line 544
    sput v1, Lackmaniac/vescmonitor/Utils;->mRxState:I

    .line 545
    sput v1, Lackmaniac/vescmonitor/Utils;->counter:I

    .line 546
    return-void
.end method

.method static sendPacket([BIZI)[B
    .locals 9
    .param p0, "data"    # [B
    .param p1, "len_packet"    # I
    .param p2, "sendCan"    # Z
    .param p3, "canId"    # I

    .prologue
    const/16 v7, 0x100

    const/4 v8, 0x3

    .line 753
    new-array v0, v7, [B

    .line 757
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 758
    .local v4, "ind":I
    move v6, p1

    .line 760
    .local v6, "len_tot":I
    if-eqz p2, :cond_0

    .line 761
    add-int/lit8 v6, v6, 0x2

    .line 766
    :cond_0
    if-gt v6, v7, :cond_2

    .line 767
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ind":I
    .local v5, "ind":I
    const/4 v7, 0x2

    aput-byte v7, v0, v4

    .line 768
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ind":I
    .restart local v4    # "ind":I
    int-to-byte v7, v6

    aput-byte v7, v0, v5

    .line 769
    const/4 v2, 0x2

    .local v2, "data_offs":I
    move v5, v4

    .line 777
    .end local v4    # "ind":I
    .restart local v5    # "ind":I
    :goto_0
    if-eqz p2, :cond_1

    .line 778
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ind":I
    .restart local v4    # "ind":I
    sget-object v7, Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;->COMM_FORWARD_CAN:Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;

    invoke-static {v7}, Lackmaniac/vescmonitor/Utils;->getCommId(Lackmaniac/vescmonitor/Utils$COMM_PACKET_ID;)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    .line 779
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ind":I
    .restart local v5    # "ind":I
    int-to-byte v7, p3

    aput-byte v7, v0, v4

    :cond_1
    move v4, v5

    .line 782
    .end local v5    # "ind":I
    .restart local v4    # "ind":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v5, v4

    .end local v4    # "ind":I
    .restart local v5    # "ind":I
    :goto_1
    if-ge v3, p1, :cond_3

    .line 783
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ind":I
    .restart local v4    # "ind":I
    aget-byte v7, p0, v3

    aput-byte v7, v0, v5

    .line 782
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "ind":I
    .restart local v5    # "ind":I
    goto :goto_1

    .line 771
    .end local v2    # "data_offs":I
    .end local v3    # "i":I
    .end local v5    # "ind":I
    .restart local v4    # "ind":I
    :cond_2
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ind":I
    .restart local v5    # "ind":I
    aput-byte v8, v0, v4

    .line 772
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ind":I
    .restart local v4    # "ind":I
    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    .line 773
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ind":I
    .restart local v5    # "ind":I
    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 774
    const/4 v2, 0x3

    .restart local v2    # "data_offs":I
    goto :goto_0

    .line 786
    .restart local v3    # "i":I
    :cond_3
    invoke-static {v0, v5, v2}, Lackmaniac/vescmonitor/Utils;->crc16([BII)I

    move-result v1

    .line 788
    .local v1, "crc":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ind":I
    .restart local v4    # "ind":I
    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    .line 789
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ind":I
    .restart local v5    # "ind":I
    and-int/lit16 v7, v1, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 790
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ind":I
    .restart local v4    # "ind":I
    aput-byte v8, v0, v5

    .line 793
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    return-object v7
.end method

.method static setCurrentBluetoothAdress(Ljava/lang/String;)V
    .locals 0
    .param p0, "newCurrentBluetoothAdress"    # Ljava/lang/String;

    .prologue
    .line 828
    sput-object p0, Lackmaniac/vescmonitor/Utils;->currentBluetoothAdress:Ljava/lang/String;

    .line 829
    return-void
.end method

.method static setDistanceFactor(F)V
    .locals 0
    .param p0, "newDistanceFactor"    # F

    .prologue
    .line 815
    sput p0, Lackmaniac/vescmonitor/Utils;->distanceFactor:F

    .line 817
    return-void
.end method

.method static setFirmwareVersion(Ljava/lang/String;)V
    .locals 0
    .param p0, "newFirmwareVersion"    # Ljava/lang/String;

    .prologue
    .line 806
    sput-object p0, Lackmaniac/vescmonitor/Utils;->firmwareVersion:Ljava/lang/String;

    .line 808
    return-void
.end method

.method static setSpeedDevider(F)V
    .locals 0
    .param p0, "newSpeedDevider"    # F

    .prologue
    .line 797
    sput p0, Lackmaniac/vescmonitor/Utils;->speedDevider:F

    .line 799
    return-void
.end method

.method static setmGattUpdateReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p0, "bluetoothReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 898
    sput-object p0, Lackmaniac/vescmonitor/Utils;->mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 899
    return-void
.end method

.method static truncateFloat(FFF)F
    .locals 1
    .param p0, "number"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 882
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 884
    .end local p2    # "max":F
    :goto_0
    return p2

    .line 883
    .restart local p2    # "max":F
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 884
    goto :goto_0
.end method

.method static truncateInt(III)I
    .locals 0
    .param p0, "number"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 888
    if-le p0, p2, :cond_0

    .line 890
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 889
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 890
    goto :goto_0
.end method

.method static unsignedByteToInt(B)I
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 453
    and-int/lit16 v0, p0, 0xff

    return v0
.end method
